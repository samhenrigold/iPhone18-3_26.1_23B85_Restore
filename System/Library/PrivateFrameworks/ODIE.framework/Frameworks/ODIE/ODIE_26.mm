BOOL mlir::emitOptionalError<char const(&)[38]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<38ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::fold(uint64_t a1)
{
  v1 = *(*a1 - 8);
  v2 = v1 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v3 = *(*(*a1 + 72) + 24);
  v4 = *(v3 + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v2 + 8);
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v8 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v8 + 8);
    v11 = 8 * v9;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if ((v4 ^ v1) <= 7)
  {
    return v3 | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verify(mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = (*(v1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = v3;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v2[1];
    v5 = v2[2];
    if (v5)
    {
      v6 = 8 * v5;
      v7 = v2[1];
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v8 = v3[2];
        if (v8)
        {
          v9 = v3[1];
          v10 = 8 * v8;
          v11 = v10;
          v12 = v9;
          while (*v12 != 0x8000000000000000)
          {
            ++v12;
            v11 -= 8;
            if (!v11)
            {
              if (!v5)
              {
                return 1;
              }

              v13 = v10 - 8;
              v14 = 8 * v5 - 8;
              v15 = 1;
              while (*v4 <= *v9)
              {
                if (v14)
                {
                  ++v4;
                  ++v9;
                  v16 = v13;
                  v13 -= 8;
                  v14 -= 8;
                  if (v16)
                  {
                    continue;
                  }
                }

                return v15;
              }

              v21[16] = 257;
              mlir::Operation::emitError(&v25, v1, v21);
              if (v25)
              {
                mlir::Diagnostic::operator<<<67ul>(v26, "broadcast_in_dims op is decreasing number of elements. Input type ");
                if (v25)
                {
                  v23 = 4;
                  v24 = v2;
                  v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
                  v19 = v27 + 24 * v28;
                  v20 = *v18;
                  *(v19 + 16) = *(v18 + 16);
                  *v19 = v20;
                  ++v28;
                  if (v25)
                  {
                    mlir::Diagnostic::operator<<<14ul>(v26, " output type ");
                    if (v25)
                    {
                      mlir::Diagnostic::operator<<<mlir::TensorType &>(v26, &v22);
                    }
                  }
                }
              }

              v15 = (v29 & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
              return v15;
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::fold(uint64_t a1)
{
  v1 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = *(*(*a1 + 72) + 24);
  v3 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::ODIE::Compiler::CoreML::canCompareTensorTypes(v1, v3) && v1 == v3)
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::canCompareTensorTypes(void *a1, void *a2)
{
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v3 = a1[2];
  if (v3)
  {
    v4 = a1[1];
    v5 = 8 * v3;
    while (*v4 != 0x8000000000000000)
    {
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v6 = a2[2];
      if (!v6)
      {
        return 1;
      }

      v7 = a2[1];
      v8 = 8 * v6;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          return 1;
        }
      }
    }
  }

  return v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && (v10 = a1[4]) != 0 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && (v11 = a2[4]) != 0 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastToOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v58[2] = *MEMORY[0x277D85DE8];
  v58[0] = a4;
  v58[1] = a5;
  if (a5 == 2)
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

    v15 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = "input must be a ranked tensor";
LABEL_15:

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, v16);
    }

    v17 = mlir::ValueRange::dereference_iterator(v58, 1);
    v18 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v18)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = "shape must be a ranked tensor";
      goto LABEL_15;
    }

    v19 = v17;
    v20 = *v18[1];
    v55 = v57;
    v56 = 0x600000000;
    v49 = 0uLL;
    v52 = &v49;
    if ((~*(v17 + 8) & 7) != 0)
    {
      v21 = v17;
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
        v23 = v21 + 24 * *(v21 + 16);
        v24 = v23 + 120;
        if (v23 == -120)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = v21 + 16 * v22 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v52, v24))
      {
        mlir::ODIE::Compiler::extract1DIntVector<int>(v19, &v49);
        if ((v51 & 1) == 0)
        {
          v40 = std::__throw_bad_optional_access[abi:nn200100]();
          return mlir::ODIE::Compiler::CoreML::BroadcastToOp::refineReturnTypes(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11);
        }

        v52 = v54;
        v53 = 0xC00000000;
        if (!DWORD2(v49) || (llvm::SmallVectorImpl<int>::operator=(&v52, &v49), (v51 & 1) != 0))
        {
          if (v49 != v50)
          {
            free(v49);
          }
        }

        v25 = v52;
        if (v53)
        {
          v26 = 4 * v53;
          do
          {
            v27 = *v25;
            v25 = (v25 + 4);
            llvm::SmallVectorTemplateBase<long long,true>::push_back(&v55, v27);
            v26 -= 4;
          }

          while (v26);
          v25 = v52;
        }

        if (v25 == v54)
        {
          goto LABEL_52;
        }

        v28 = v25;
        goto LABEL_51;
      }
    }

LABEL_38:
    if ((~*(v19 + 8) & 7) != 0)
    {
      v29 = v19;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
LABEL_47:
      if (v20 >= 1)
      {
        do
        {
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&v55, 0x8000000000000000);
          --v20;
        }

        while (v20);
      }

      goto LABEL_52;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    if (*(*(v31 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
      goto LABEL_47;
    }

    v32 = (*(*(*(v31 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v33 = *v32;
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v35 = mlir::detail::InterfaceMap::lookup(v33 + 8, v34);
    v36 = (*(v35 + 24))(v35, v32);
    *&v49 = v50;
    *(&v49 + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v49, v36, &v36[8 * v37]);
    llvm::SmallVectorImpl<long long>::operator=(&v55, &v49);
    v28 = v49;
    if (v49 == v50)
    {
LABEL_52:
      v38 = v15[3];
      *&v49 = v55;
      *(&v49 + 1) = v56;
      v52 = v38;
      v48 = 0;
      v39 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v38 + 32), &v49, &v52, &v48);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v39);
      if (v55 != v57)
      {
        free(v55);
      }

      return 1;
    }

LABEL_51:
    free(v28);
    goto LABEL_52;
  }

  return mlir::emitOptionalError<char const(&)[48]>(a2, a3, "expected exactly 2 operands for broadcast_to op");
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastToOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::BroadcastToOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
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
    v15 = mlir::emitOptionalError<char const(&)[43]>(a2, a3, "fails to infer the type of broadcast_to op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  if (!**((*(v2 + 8) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
    return v3 | 4;
  }

  if (!**((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8) || v2 == v3)
  {
    return v2 | 4;
  }

  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v34, v2);
  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v30, v3);
  if (v37 == 1 && v33 == 1)
  {
    v27 = v29;
    v28 = 0x600000000;
    BroadcastedShape = mlir::OpTrait::util::getBroadcastedShape(v34, v35, v30, v31, &v27);
    v6 = v27;
    if (BroadcastedShape)
    {
      if (!v28)
      {
LABEL_11:
        v24 = v26;
        v25 = 0xC00000000;
        llvm::SmallVectorImpl<int>::resizeImpl<false>(&v24, v28);
        if (v28)
        {
          v8 = v27;
          v9 = v24;
          v10 = 8 * v28;
          do
          {
            v11 = *v8++;
            *v9++ = v11;
            v10 -= 8;
          }

          while (v10);
        }

        v23 = v25;
        v12 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 1);
        *&v22 = &v23;
        *(&v22 + 1) = 1;
        v20 = 0;
        v21 = v12;
        v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v12 + 32), &v22, &v21, &v20);
        v14 = v13;
        if (v13)
        {
          v15 = *v13;
          v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        }

        else
        {
          v17 = 0;
        }

        v18 = mlir::DenseIntOrFPElementsAttr::getRaw(v14, v17, v24, 4 * v25) & 0xFFFFFFFFFFFFFFFBLL;
        if (v24 != v26)
        {
          free(v24);
        }

        v6 = v27;
        goto LABEL_31;
      }

      v7 = 0;
      while (*(v27 + v7) != 0x8000000000000000)
      {
        v7 += 8;
        if (8 * v28 == v7)
        {
          goto LABEL_11;
        }
      }
    }

    v18 = 0;
LABEL_31:
    if (v6 != v29)
    {
      free(v6);
    }

    goto LABEL_19;
  }

  v18 = 0;
LABEL_19:
  if (v33 == 1 && v30 != &v32)
  {
    free(v30);
  }

  if (v37 == 1 && v34 != &v36)
  {
    free(v34);
  }

  return v18;
}

void mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v29 = &v25;
  v4 = *(a2 + 8) & 7;
  if (v4 == 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
LABEL_24:
    if (v4 == 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16) + 120;
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = v15 + 16 * v16 + 16;
    }

    if (*(*(v17 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
LABEL_33:
      *a1 = 0;
      *(a1 + 64) = 0;
      return;
    }

    v18 = (*(*(*(v17 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v18;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v21 = mlir::detail::InterfaceMap::lookup(v19 + 8, v20);
    v22 = (*(v21 + 24))(v21, v18);
    v9 = v27;
    v25 = v27;
    v26 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v25, v22, &v22[8 * v23]);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v26)
    {
      llvm::SmallVectorImpl<long long>::operator=(a1, &v25);
    }

    *(a1 + 64) = 1;
    v14 = v25;
    goto LABEL_37;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v29, v8))
  {
    v4 = *(a2 + 8) & 7;
    goto LABEL_24;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(a2, &v25);
  if ((v28 & 1) == 0)
  {
    v24 = std::__throw_bad_optional_access[abi:nn200100]();
    mlir::ODIE::Compiler::CoreML::XorOp::fold(v24);
    return;
  }

  v9 = v31;
  v29 = v31;
  v30 = 0xC00000000;
  if (!v26 || (llvm::SmallVectorImpl<int>::operator=(&v29, &v25), (v28 & 1) != 0))
  {
    if (v25 != v27)
    {
      free(v25);
    }
  }

  v25 = v27;
  v26 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v25, v30);
  if (v30)
  {
    v10 = v29;
    v11 = v25;
    v12 = 4 * v30;
    do
    {
      v13 = *v10;
      v10 = (v10 + 4);
      *v11++ = v13;
      v12 -= 4;
    }

    while (v12);
  }

  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (v26)
  {
    llvm::SmallVectorImpl<long long>::operator=(a1, &v25);
  }

  *(a1 + 64) = 1;
  if (v25 != v27)
  {
    free(v25);
  }

  v14 = v29;
LABEL_37:
  if (v14 != v9)
  {
    free(v14);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::XorOp::fold(uint64_t *a1)
{
  v1 = *a1;
  if (*(*(*a1 + 72) + 24) != *(*(*a1 + 72) + 56))
  {
    return 0;
  }

  v2 = *(v1 + 36);
  v3 = v1 - 16;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = v4[1];
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v8 = v4[3];
  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v13 = mlir::IntegerAttr::get(v8, 0);
  v10 = *v4;
  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  return mlir::DenseElementsAttr::get(v4, v12, &v13, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::ODIE::Compiler::CoreML::StackOp::build(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = a3;
  __src[0] = a4;
  if (a5)
  {
    for (i = 0; i != a5; *(&__src[0] + 1) = ++i)
    {
      a1 = mlir::ValueRange::dereference_iterator(__src, i);
      if (*(*(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_18;
      }
    }
  }

  *&__src[0] = &v40;
  if ((~*(a3 + 8) & 7) != 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
LABEL_18:
    v19 = llvm::errs(a1);
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 > 0x67uLL)
    {
      qmemcpy(v20, "Custom builder for Stack Op requires all tensors to be ranked and the axis to be compile time constant.\n", 104);
      *(v19 + 4) += 104;
    }

    else
    {
      llvm::raw_ostream::write(v19, "Custom builder for Stack Op requires all tensors to be ranked and the axis to be compile time constant.\n", 0x68uLL);
    }

    return;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = v10 + 16 * v11 + 16;
  }

  a1 = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(__src, v13);
  if (!a1)
  {
    goto LABEL_18;
  }

  __src[0] = a4;
  v14 = *(mlir::ValueRange::dereference_iterator(__src, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 16);
  v16 = v15 + 1;
  std::vector<long long>::vector[abi:nn200100]<long long const*,0>(&__p, *(v14 + 8), (*(v14 + 8) + 8 * v15));
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v40, __src);
  v42[0] = __src[0];
  v42[1] = __src[1];
  mlir::DenseElementsAttr::IntElementIterator::operator*(v42, __src);
  if (DWORD2(__src[0]) > 0x40)
  {
    v18 = **&__src[0];
    v17 = MEMORY[0x25F891010]();
  }

  else if (DWORD2(__src[0]))
  {
    v18 = (*&__src[0] << -BYTE8(__src[0])) >> -BYTE8(__src[0]);
  }

  else
  {
    v18 = 0;
  }

  v21 = (v16 & (v18 >> 63)) + v18;
  if (v21 >= 0 && v21 <= *(v14 + 16))
  {
    v24 = v38;
    v25 = __p + 8 * v21;
    if (v38 >= v39)
    {
      v28 = ((v38 - __p) >> 3) + 1;
      if (v28 >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v29 = v39 - __p;
      if ((v39 - __p) >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__p, v30);
      }

      v31 = (8 * v21);
      if (!v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__p, 1uLL);
      }

      *v31 = a5;
      memcpy(v31 + 1, v25, v38 - v25);
      v32 = v31 + v38 - v25 + 8;
      v38 = v25;
      v33 = v25 - __p;
      v34 = v31 - (v25 - __p);
      memcpy(v34, __p, v33);
      v35 = __p;
      __p = v34;
      v38 = v32;
      v39 = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else if (v25 == v38)
    {
      *v38 = a5;
      v38 = v24 + 8;
    }

    else
    {
      v26 = v25 + 8;
      if (v38 < 8)
      {
        v27 = v38;
      }

      else
      {
        *v38 = *(v38 - 1);
        v27 = v24 + 8;
      }

      v38 = v27;
      if (v24 != v26)
      {
        memmove(v25 + 8, v25, v24 - v26);
      }

      *v25 = a5;
    }

    v36 = *(v14 + 24);
    *&__src[0] = __p;
    *(&__src[0] + 1) = (v38 - __p) >> 3;
    *&v42[0] = v36;
    v43 = 0;
    *&__src[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v36 + 32), __src, v42, &v43);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v41, 0, &v41, 1);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a4, 0, a4, a5);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8);
  }

  else
  {
    v22 = llvm::errs(v17);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 0x57uLL)
    {
      qmemcpy(v23, "Custom builder for Stack Op requires axis to be [-input_rank-1, input_rank](inclusive).\n", 88);
      *(v22 + 4) += 88;
    }

    else
    {
      llvm::raw_ostream::write(v22, "Custom builder for Stack Op requires axis to be [-input_rank-1, input_rank](inclusive).\n", 0x58uLL);
    }
  }

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::StackOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = a3;
  v71 = *MEMORY[0x277D85DE8];
  v63[6] = a6;
  LOBYTE(v64) = 0;
  v65 = 0;
  v66 = a9;
  v67 = a10;
  if (a6)
  {
    mlir::OperationName::OperationName(&v64, "coreml.stack", 0xC, *(**a6 + 32));
    v65 = 1;
  }

  v68 = a4;
  v69 = a5;
  *&v59 = a4;
  *(&v59 + 1) = 1;
  v14 = mlir::ValueRange::offset_base(&v59, 1);
  v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 6) != 0 || !v15)
  {
    if ((v14 & 6) == 2 && v15)
    {
      v15 = v15[3];
    }
  }

  else
  {
    v15 = *v15;
  }

  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v15[1] & 0xFFFFFFFFFFFFFFF8));
  if (!v16)
  {
    return mlir::emitOptionalError<char const(&)[46]>(a2, v56, "expected a ShapedType for all inputs to stack");
  }

  v18 = v16;
  v19 = v17;
  v20 = (*(v17 + 24))(v17, v16);
  v61 = v63;
  v62 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v61, v20, &v20[8 * v21]);
  (*(v19 + 24))(v19, v18);
  v23 = v22;
  v55 = v69;
  *&v59 = v68;
  *(&v59 + 1) = 1;
  mlir::ValueRange::offset_base(&v59, 1);
  v24 = (*(v19 + 8))(v19, v18);
  v25 = v69;
  *&v59 = v68;
  *(&v59 + 1) = 1;
  v26 = v69 - 1;
  *&v70 = mlir::ValueRange::offset_base(&v59, 1);
  *(&v70 + 1) = 1;
  if (v25 == 2)
  {
LABEL_11:
    v27 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) != 0 || !v27)
    {
      if ((a4 & 6) == 2 && v27)
      {
        v27 = *(v27 + 24);
      }
    }

    else
    {
      v27 = *v27;
    }

    v59 = 0uLL;
    *&v70 = &v59;
    if ((~*(v27 + 8) & 7) != 0)
    {
      v42 = v27;
    }

    else
    {
      v42 = 0;
    }

    if (!v42)
    {
      goto LABEL_51;
    }

    v43 = *(v42 + 8) & 7;
    if (v43 == 6)
    {
      v44 = v42 + 24 * *(v42 + 16);
      v45 = v44 + 120;
      if (v44 == -120)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v45 = v42 + 16 * v43 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v70, v45))
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v27, &v59);
      if ((v60[48] & 1) == 0)
      {
        v52 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::emitOptionalError<char const(&)[46]>(v52, v53, v54);
      }

      v46 = *v59;
      if (v59 != v60)
      {
        free(v59);
      }

      v47 = ((v23 + 1) & (v46 >> 31)) + v46;
      if (v47 < 0 || v23 < v47)
      {
        v48 = mlir::emitOptionalError<char const(&)[27]>(a2, v56, "invalid dim  for stack op.");
        goto LABEL_57;
      }

      *&v59 = v55 - 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v61, v61 + 8 * v47, &v59);
      *&v59 = v61;
      *(&v59 + 1) = v62;
      *&v70 = v24;
      v58 = 0;
      v51 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v59, &v70, &v58);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v51);
LABEL_53:
      v25 = 1;
      goto LABEL_58;
    }

LABEL_51:
    *&v59 = v60;
    *(&v59 + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&v59, v23 + 1, 0x8000000000000000);
    *&v70 = v59;
    *(&v70 + 1) = DWORD2(v59);
    v57 = 0;
    v58 = v24;
    v49 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v70, &v58, &v57);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v49);
    if (v59 != v60)
    {
      free(v59);
    }

    goto LABEL_53;
  }

  v28 = 1;
  while (1)
  {
    v29 = mlir::ValueRange::dereference_iterator(&v70, v28);
    v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v29 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v30)
    {
      v48 = mlir::emitOptionalError<char const(&)[46]>(a2, v56, "expected a ShapedType for all inputs to stack");
      goto LABEL_57;
    }

    v32 = v30;
    v33 = v31;
    if ((*(v31 + 8))(v31, v30) != v24)
    {
      v48 = mlir::emitOptionalError<char const(&)[55]>(a2, v56, "expected the same element type for all inputs to stack");
      goto LABEL_57;
    }

    (*(v33 + 24))(v33, v32);
    if (v34 != v23)
    {
      break;
    }

    v35 = (*(v33 + 24))(v33, v32);
    *&v59 = v60;
    *(&v59 + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v59, v35, &v35[8 * v36]);
    v37 = v59;
    if (!v23)
    {
      goto LABEL_25;
    }

    if (*v61 == *v59)
    {
      v38 = 1;
      while (v23 != v38)
      {
        v39 = *(v61 + v38);
        v40 = *(v59 + 8 * v38++);
        if (v39 != v40)
        {
          v41 = v38 - 1 < v23;
          goto LABEL_27;
        }
      }

LABEL_25:
      v41 = 0;
      goto LABEL_28;
    }

    v41 = 1;
LABEL_27:
    v25 = mlir::emitOptionalError<char const(&)[55]>(a2, v56, "expected all input shapes to be the same for stack op.");
    v37 = v59;
LABEL_28:
    if (v37 != v60)
    {
      free(v37);
    }

    if (v41)
    {
      goto LABEL_58;
    }

    *(&v70 + 1) = ++v28;
    if (v28 == v26)
    {
      goto LABEL_11;
    }
  }

  v48 = mlir::emitOptionalError<char const(&)[47]>(a2, v56, "expected the same rank for all inputs to stack");
LABEL_57:
  v25 = v48;
LABEL_58:
  if (v61 != v63)
  {
    free(v61);
  }

  return v25;
}

BOOL mlir::emitOptionalError<char const(&)[46]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<46ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[55]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<55ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[47]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<47ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[27]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<27ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::StackOp::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v38 = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  v16 = mlir::ValueRange::dereference_iterator(v32, 1);
  v33 = 0;
  v34[0] = 0;
  __src = &v33;
  if ((~*(v16 + 8) & 7) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    return 1;
  }

  v18 = *(v17 + 8) & 7;
  if (v18 == 6)
  {
    v19 = v17 + 24 * *(v17 + 16);
    v20 = v19 + 120;
    if (v19 == -120)
    {
      return 1;
    }
  }

  else
  {
    v20 = v17 + 16 * v18 + 16;
  }

  v21 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__src, v20);
  if (!v21)
  {
    return 1;
  }

  __src = v31;
  v30 = 0x600000000;
  if (mlir::ODIE::Compiler::CoreML::StackOp::inferReturnTypes(v21, a2, a3, a4, a5, a6, v22, v23, a9, a10, &__src))
  {
    v24 = a11[2];
    v33 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v34[0] = v24;
    v36[0] = __src & 0xFFFFFFFFFFFFFFF9 | 2;
    v36[1] = v30;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v33, v36))
    {
      v25 = __src;
      v26 = __src + 8 * v30;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v25, v26);
      v27 = 1;
    }

    else if (a3)
    {
      v37 = 257;
      emitDiag(a2, 2, v36, &v33);
      if (v33)
      {
        mlir::Diagnostic::operator<<<68ul>(v34, "inferred return types did not match actual return types of stack op");
      }

      v27 = (v35 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = mlir::emitOptionalError<char const(&)[36]>(a2, a3, "fails to infer the type of stack op");
  }

  if (__src != v31)
  {
    free(__src);
  }

  return v27;
}

BOOL mlir::emitOptionalError<char const(&)[36]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<36ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

__n128 mlir::ODIE::Compiler::CoreML::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(*a1 + 36);
    v6 = (*a1 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
    if (!v5)
    {
      v6 = 4;
    }

    v18 = 0;
    v19 = v6;
    v20 = v5;
  }

  else
  {
    v7 = *(*a1 + 40);
    v8 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
    v19 = 0;
    v20 = 0;
    v18 = v8 + 32 * v7;
    v9 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v18, 1);
    v10 = *a3 + 24 * *(a3 + 8);
    v11 = *v9;
    *(v10 + 16) = *(v9 + 16);
    *v10 = v11;
    ++*(a3 + 8);
    v12 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v14 = *(v12 + 24);
    v13 = v12 + 24;
    if (v14 == v13)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v18 = v13;
    }
  }

  v15 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v18, 1);
  v16 = (*a3 + 24 * *(a3 + 8));
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a4, v13);
  v6 = *a1;
  v7 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v9 = *(v7 + 24);
  v8 = v7 + 24;
  if (v9 == v8)
  {
    v11 = *(v6 + 36);
    v12 = v6 - 16;
    if (!v11)
    {
      v12 = 0;
    }

    v13[0] = v12;
    v13[1] = v11;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a4, v13);
  }

  else
  {
    v13[0] = v8;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a4, v13);
  }
}

uint64_t llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a1, a2);
  }

  v3 = (*a1 + 24 * v2);
  v4 = *a2;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v4;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 24 * v3 - 24;
}

uint64_t llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a1, a2);
  }

  v3 = (*a1 + 24 * v2);
  v4 = a2[1];
  v5 = *a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  *v3 = 0;
  v3[1] = v5;
  v3[2] = v4;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 24 * v3 - 24;
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    v8 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v18 = v8;
    if (*v8 != v8)
    {
      v7 = v8[1];
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v5 = *a1;
  v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (v6 + 3 != a2)
  {
    v9 = *(v5 + 36);
    v10 = v5 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    v17 = v9;
    llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v16);
    v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v18 = v11 + 24;
    if (*(v11 + 24) != v11 + 24)
    {
      v7 = *(v11 + 32);
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v18 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  if (*v6 == v6)
  {
    goto LABEL_14;
  }

  v7 = v6[1];
LABEL_11:
  v12 = v7 - 8;
  if (!v7)
  {
    v12 = 0;
  }

  v13 = *(v12 + 48);
  v14 = (*(v12 + 56) - v13) >> 3;
LABEL_15:
  v16 = v13;
  v17 = v14;
  return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v18, &v16);
}

uint64_t llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a1, a2, a3);
  }

  v4 = (*a1 + 24 * v3);
  v5 = a3[1];
  v6 = *a3 & 0xFFFFFFFFFFFFFFF9;
  *v4 = *a2;
  v4[1] = v6;
  v4[2] = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 24 * v4 - 24;
}

BOOL mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents(uint64_t a1, void **a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a4[1] == 1)
  {
    v9 = *a4 & 6;
    v10 = (*a4 & 0xFFFFFFFFFFFFFFF8);
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

    v14 = (v10[1] & 0xFFFFFFFFFFFFFFF8);
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
    v18 = (*(v17 + 24))(v17, v14);
    v20[0] = v21;
    v20[1] = 0x300000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(v20, v18, &v18[8 * v19]);
    v21[3] = 0;
    v21[4] = 0;
    v22 = 1;
    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::push_back(a9, v20);
    if (v20[0] != v21)
    {
      free(v20[0]);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

__n128 llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<mlir::ShapedTypeComponents,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>>(a1, a2, 1);
  v4 = *a1 + (*(a1 + 8) << 6);
  *v4 = v4 + 16;
  *(v4 + 8) = 0x300000000;
  if (*(v3 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(v4, v3);
  }

  result = *(v3 + 40);
  *(v4 + 56) = *(v3 + 56);
  *(v4 + 40) = result;
  ++*(a1 + 8);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::fold(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 72) + 24);
  if ((~*(v2 + 8) & 7) != 0)
  {
    v3 = *(*(*a1 + 72) + 24);
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16) + 120;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v3 + 16 * v4 + 16;
  }

  if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v6 = *(*(v5 + 72) + 24);
    if ((*(v1 - 8) ^ *(v6 + 8)) <= 7)
    {
      return v6 | 4;
    }
  }

LABEL_12:
  v8 = *(v1 - 8) ^ *(v2 + 8);
  v9 = v2 | 4;
  if (v8 >= 8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::CastOp *this, mlir::OpBuilder *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v41 = 0;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v41, 1))
  {
    v5 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = *v5;
    v38 = v5;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
    v9 = *((*(v8 + 8))(v8, v5) + 8);
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v37 = v11;
    v12 = (*(PartsOfComplex - 1) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
    v16 = *v15;
    LOBYTE(v41) = 0;
    LOBYTE(v43) = 0;
    v35 = v16(v15, v12, &v41, v9);
    v17 = *(*this + 24);
    v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a2, *(**v17 + 32));
    v41 = v17;
    v42 = v18;
    v43 = v45;
    v44 = 0x400000000;
    v46 = v48;
    v47 = 0x400000000;
    v49 = v51;
    v50 = 0x400000000;
    v52 = 4;
    v53 = &v55;
    v54 = 0x100000000;
    v56 = &v58;
    v57 = 0x100000000;
    v59 = 0;
    v60 = 0;
    v61 = &mlir::detail::TypeIDResolver<void,void>::id;
    v62 = 0;
    v63 = 0;
    v39 = PartsOfComplex - 16;
    __src = v35;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v43, &v39, 0, &v39, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v46, &__src, &v41);
    v19 = mlir::Operation::create(&v41);
    mlir::OpBuilder::insert(a2, v19);
    v20 = *(*(v19 + 6) + 16);
    mlir::OperationState::~OperationState(&v41);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v36 = v21;
    v22 = *(*this + 24);
    v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a2, *(**v22 + 32));
    v41 = v22;
    v42 = v23;
    v43 = v45;
    v44 = 0x400000000;
    v46 = v48;
    v47 = 0x400000000;
    v49 = v51;
    v50 = 0x400000000;
    v52 = 4;
    v53 = &v55;
    v54 = 0x100000000;
    v56 = &v58;
    v57 = 0x100000000;
    v59 = 0;
    v60 = 0;
    v61 = &mlir::detail::TypeIDResolver<void,void>::id;
    v62 = 0;
    v63 = 0;
    v39 = (v37 - 16);
    __src = v35;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v43, &v39, 0, &v39, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v46, &__src, &v41);
    v24 = mlir::Operation::create(&v41);
    mlir::OpBuilder::insert(a2, v24);
    v25 = *(*(v24 + 6) + 16);
    mlir::OperationState::~OperationState(&v41);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v24 = 0;
    }

    v26 = *(*this + 24);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v26 + 32));
    v41 = v26;
    v42 = Complex;
    v43 = v45;
    v44 = 0x400000000;
    v46 = v48;
    v47 = 0x400000000;
    v49 = v51;
    v50 = 0x400000000;
    v52 = 4;
    v53 = &v55;
    v54 = 0x100000000;
    v56 = &v58;
    v57 = 0x100000000;
    v59 = 0;
    v60 = 0;
    v61 = &mlir::detail::TypeIDResolver<void,void>::id;
    v62 = 0;
    v63 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v41, v38, (v36 - 16), (v24 - 16));
    v28 = mlir::Operation::create(&v41);
    mlir::OpBuilder::insert(a2, v28);
    v29 = *(*(v28 + 6) + 16);
    mlir::OperationState::~OperationState(&v41);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = (*this - 16);
    v32 = *(v30 + 9);
    v33 = (v30 - 16);
    if (!v32)
    {
      v33 = 0;
    }

    v41 = v33;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v31, &v41);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::hasComplexInputs(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = 8 * a3 - 8;
  do
  {
    v6 = (*(*(*(a1 + 72) + 32 * *a2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
    v9 = v7;
    if (v7)
    {
      v7 = (*(v8 + 8))(v8, v7);
    }

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(*v10 + 136);
    result = v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    v13 = v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v5 == 0;
    v5 -= 8;
    a2 += 2;
  }

  while (!v13);
  return result;
}

mlir::Operation *mlir::ODIE::Compiler::CoreML::getPartsOfComplex(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = *v5;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *((*(v8 + 8))(v8, v5) + 8);
  v10 = *v8;
  LOBYTE(v15[0]) = 0;
  v16 = 0;
  v15[0] = v10(v8, v5, v15, v9);
  v15[1] = v11;
  v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, v15, &v14);
  mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, v15, &v14);
  return v12;
}

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::fold(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v1 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = v1[2];
  if (v4)
  {
    v5 = 8 * v4;
    v6 = v1[1];
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v19 = v21;
  v20 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v19, v3, &v3[8 * v4]);
  v18 = v1[2];
  v7 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 1);
  *&v17 = &v18;
  *(&v17 + 1) = 1;
  v15 = 0;
  v16 = v7;
  v8 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v7 + 32), &v17, &v16, &v15);
  v9 = v8;
  if (v8)
  {
    v10 = *v8;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v12, v19, 4 * v20) & 0xFFFFFFFFFFFFFFFBLL;
  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a3;
  v28 = *MEMORY[0x277D85DE8];
  if (a5 == 1)
  {
    mlir::ODIE::Compiler::CoreML::detail::GetShapeOpGenericAdaptorBase::GetShapeOpGenericAdaptorBase(v25, a6, &v23, a9, a10);
    v26 = a4;
    v27 = 1;
    v15 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v15)
    {
      if ((a4 & 6) == 2 && v15)
      {
        v15 = v15[3];
      }
    }

    else
    {
      v15 = *v15;
    }

    v17 = (v15[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      return mlir::emitOptionalError<char const(&)[37]>(a2, v12, "expected operand to be ranked tensor");
    }

    v24 = v17[2];
    v18 = 1;
    v19 = mlir::IntegerType::get(a1, 32, 1);
    *&v23 = &v24;
    *(&v23 + 1) = 1;
    v21 = 0;
    v22 = v19;
    v20 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v19 + 32), &v23, &v22, &v21);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v20);
    return v18;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

BOOL mlir::emitOptionalError<char const(&)[37]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<37ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::printNamedRegionOp(v3, InterfaceFor, 0, 0, a2);
}

void mlir::ODIE::Compiler::CoreML::printNamedRegionOp(unsigned int *a1, uint64_t (**a2)(void, unsigned int *), _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v10 = (*(*a5 + 16))(a5);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    *v11 = 32;
    ++*(v10 + 4);
  }

  v12 = (*a2)(a2, a1);
  (*(*a5 + 88))(a5, *(v12 + 16), *(v12 + 24));
  v18 = v20;
  v19 = 0x300000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v18, a3, &a3[16 * a4]);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (v13)
  {
    (*(v14 + 32))(v14, v13, a5);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "param_decls", 11);
  }

  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  (*(*a5 + 200))(a5, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, v19);
  v16 = (*(*a5 + 16))(a5);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, " ", 1uLL);
  }

  else
  {
    *v17 = 32;
    ++*(v16 + 4);
  }

  (*(*a5 + 224))(a5, ((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10], 0, 0, 0);
  if (v18 != v20)
  {
    free(v18);
  }
}

void mlir::ODIE::Compiler::CoreML::parseNamedRegionOp(mlir::AsmParser *a1, mlir::OperationState *this, uint64_t (*a3)(uint64_t, mlir::AsmParser *, mlir::OperationState *), uint64_t a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  mlir::OperationState::addRegion(this);
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a1 + 64;
  v19 = v21;
  v20 = 0x600000000;
  v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v11 + 8);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24), v8))
      {
        llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v19, v15);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v16 = v19;
    v17 = v20;
  }

  else
  {
    v17 = 0;
    v16 = v21;
  }

  *(v10 + 16 * ((*(v9 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v11[0] = a1;
  v11[1] = a2;
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v12 = &unk_286E80538;
  v13 = a3;
  v15 = &v12;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(v8, &v12);
  std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](&v12);
  v12 = v11;
  v13 = v8;
  v14 = a4;
  v6 = mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1>, &v12, 0) != 0;
  MEMORY[0x25F891030](v9, 8);
  v12 = &v8[1] + 1;
  std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = v8;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v8 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(a2);
  if (v10)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v8))
    {
      return 0;
    }
  }

  else
  {
    *v8 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***a2 + 32), 0, 0, v7);
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v8 + 1);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E308))
  {
    qword_27FC1E2F8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>();
    unk_27FC1E300 = v11;
    __cxa_guard_release(&qword_27FC1E308);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E2F8;
    v15 = unk_27FC1E300;
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::print(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  result = (*(*a2 + 40))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80));
  v7 = *a1;
  v8 = (*(*a1 + 44) >> 23) & 1;
  if (*(*(*a1 + 16 * v8 + 80) + 8) != *(*a1 + 16 * v8 + 72))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 3uLL)
    {
      *v10 = 544432416;
      *(v9 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v9, " as ", 4uLL);
    }

    v11 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
    result = (*(*a2 + 88))(a2, *(v11 + 16), *(v11 + 24));
    v7 = *a1;
    v8 = (*(*a1 + 44) >> 23) & 1;
  }

  v12 = *(v7 + 16 * v8 + 64);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if ((*(v15 + 3) - v16) > 5)
    {
      *(v16 + 4) = 8301;
      *v16 = 1869768224;
      *(v15 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v15, " from ", 6uLL);
    }

    v17 = *(*a2 + 80);

    return v17(a2, v13, v14);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::parse(mlir::AsmParser *a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(a2);
  v13 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v13, 0))
  {
    return 0;
  }

  v3[2] = v13;
  if ((*(*a1 + 408))(a1, "as", 2))
  {
    v9[0] = 0;
    if ((mlir::AsmParser::parseSymbolName(a1, v9) & 1) == 0)
    {
      return 0;
    }

    v4 = v9[0];
  }

  else
  {
    v4 = *(v13 + 8);
  }

  v3[1] = v4;
  if (((*(*a1 + 408))(a1, "from", 4) & 1) == 0)
  {
    return 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v5 = mlir::AsmParser::parseString(a1, __p);
  if (v5)
  {
    v6 = (*(*a1 + 32))(a1);
    v10 = 260;
    v9[0] = __p;
    *v3 = mlir::StringAttr::get(*v6, v9, v7);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 1;
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v12 = 0;
  if (((*(*a1 + 440))(a1, &v12, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v12;
  if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = 1;
  if (!v7)
  {
    v10 = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v6, &v10);
    v8 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v8;
}

uint64_t mlir::AsmParser::parseSymbolName(mlir::AsmParser *this, mlir::StringAttr *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*this + 528))(this, a2))
  {
    return 1;
  }

  v4 = (*(*this + 40))(this);
  v6[16] = 257;
  (*(*this + 24))(&v7, this, v4, v6);
  if (v7)
  {
    mlir::Diagnostic::operator<<<46ul>(v8, "expected valid '@'-identifier for symbol name");
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::printNamedRegionOp(v3, InterfaceFor, 0, 0, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getValue@<X0>(mlir::ODIE::Compiler::CoreML::MemberOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v3)
  {
    v4 = *v3;
    v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
    *a2 = v3;
    *(a2 + 8) = result;
    v7 = 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v7;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a1 + 64;
  v19 = v21;
  v20 = 0x600000000;
  v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v11 + 8);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24), v8))
      {
        llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v19, v15);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v16 = v19;
    v17 = v20;
  }

  else
  {
    v17 = 0;
    v16 = v21;
  }

  *(v10 + 16 * ((*(v9 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::print(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmPrinter *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if ((*(v7 + 3) - v8) > 2)
  {
    *(v8 + 2) = 32;
    *v8 = 14880;
    *(v7 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v7, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 8));
  mlir::ODIE::Compiler::CoreML::MemberOp::getValue(this, &v24);
  if (v25 == 1)
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 2)
    {
      *(v10 + 2) = 32;
      *v10 = 15648;
      *(v9 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v9, " = ", 3uLL);
    }

    if (v24 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
    {
      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v24);
    }

    else
    {
      (*(*a2 + 48))(a2);
    }
  }

  v11 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v11)
  {
    if (*(v11 + 24) > 0x40u)
    {
      operator new[]();
    }

    v12 = *(v11 + 16);
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 0xCuLL)
    {
      qmemcpy(v14, " alignInBits(", 13);
      *(v13 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v13, " alignInBits(", 0xDuLL);
    }

    v15 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v15, v12, 0, 0, 0);
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ")", 1uLL);
    }

    else
    {
      *v17 = 41;
      ++*(v16 + 4);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v19 = *(AttrDictionary + 8);
  v20 = *(AttrDictionary + 16);
  v21 = *(*(*this + 48) + 96);
  v22 = *(v21[3] + 16);
  v24 = *(v21[1] + 16);
  v25 = v22;
  v26 = *(*v21 + 16);
  v27 = *(v21[2] + 16);
  return (*(*a2 + 200))(a2, v19, v20, &v24, 4);
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  if ((mlir::AsmParser::parseSymbolName(a1, &v14) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v14);
  v4 = *(*(*(a2 + 8) + 96) + 16);
  v5 = mlir::TypeAttr::get(v13);
  mlir::NamedAttrList::push_back(a2 + 112, v4, v5);
  if ((*(*a1 + 144))(a1))
  {
    v12[0] = 0;
    v12[1] = 0;
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, v12) & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 24), v12[0]);
  }

  if (((*(*a1 + 408))(a1, "alignInBits", 11) & 1) == 0)
  {
    return (*(*a1 + 496))(a1, a2 + 112) & 1;
  }

  v12[0] = 0;
  if ((*(*a1 + 280))(a1) & 1) != 0 && (mlir::AsmParser::parseInteger<unsigned long long>(a1, v12) & 1) != 0 && ((*(*a1 + 296))(a1))
  {
    v6 = **(*(a2 + 8) + 96);
    v7 = (*(*a1 + 32))(a1);
    v8 = (*(*a1 + 32))(a1);
    v9 = mlir::IntegerType::get(*v8, 64, 2);
    IntegerAttr = mlir::Builder::getIntegerAttr(v7, v9, v12[0]);
    mlir::NamedAttrList::push_back(a2 + 112, v6, IntegerAttr);
    return (*(*a1 + 496))(a1, a2 + 112) & 1;
  }

  return 0;
}

uint64_t mlir::AsmParser::parseInteger<unsigned long long>(uint64_t a1, uint64_t **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v9[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(a1, a2, v9);
  if ((v5 & 0x100) == 0)
  {
    v7 = "expected integer value";
    v8 = 259;
    (*(*a1 + 24))(v9, a1, v4, &v7);
    v5 = (v10 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::verify(mlir::ODIE::Compiler::CoreML::MemberOp *this)
{
  v13 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::MemberOp::getValue(this, &v8);
  if (v10 != 1)
  {
    return 1;
  }

  v2 = (*v9)(v9, v8);
  v3 = *this;
  if (v2 == *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 8))
  {
    return 1;
  }

  v7 = 257;
  mlir::Operation::emitError(&v11, v3, v6);
  if (v11)
  {
    mlir::Diagnostic::operator<<<46ul>(v12, "default value type and member type must match");
  }

  v4 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::print(mlir::ODIE::Compiler::CoreML::GetMemberOp **this, mlir::OpAsmPrinter *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8233;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ") ", 2uLL);
  }

  MemberAttr = mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
  v9 = MemberAttr;
  v10 = *(*MemberAttr + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v9 = MemberAttr[1];
  }

  else if (MemberAttr && v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, MemberAttr);
    goto LABEL_13;
  }

  (*(*a2 + 40))(a2, v9);
LABEL_13:
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 2)
  {
    *(v12 + 2) = 32;
    *v12 = 14880;
    *(v11 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v11, " : ", 3uLL);
  }

  mlir::OpAsmPrinter::printFunctionalType(a2, *this);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v14 = *(AttrDictionary + 8);
  v15 = *(AttrDictionary + 16);
  v17 = *(**(*(*this + 6) + 96) + 16);
  return (*(*a2 + 200))(a2, v14, v15, &v17, 1);
}

uint64_t *mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(mlir::ODIE::Compiler::CoreML::GetMemberOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::parse(uint64_t a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x100000000;
  if (((*(*a1 + 720))(a1, &v23, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  v18 = 0;
  v19 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v20 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &v20) || ((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    v4 = v20;
    if (v20)
    {
      v5 = *v20;
      v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    }

    else
    {
      v7 = 0;
    }

    v18 = v4;
    v19 = v7;
  }

  else if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v18) & 1) == 0)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v17 = 0;
  if (!mlir::AsmParser::parseColonType<mlir::FunctionType>(a1, &v17) || ((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = v22;
  v21 = 0x600000000;
  if (v24 && (v8 = *(v17 + 8), v8))
  {
    v9 = *(v17 + 16);
    v10 = v23;
    v11 = 8 * v8 - 8;
    v12 = 32 * v24 - 32;
    while (((*(*a1 + 728))(a1, v10, *v9, &v20) & 1) != 0)
    {
      if (v12)
      {
        v10 += 32;
        ++v9;
        v13 = v11;
        v11 -= 8;
        v12 -= 32;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = 0;
  }

  else
  {
LABEL_19:
    mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 8) + 96), v18);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v20 & 0xFFFFFFFFFFFFFFF9, 0, v20 & 0xFFFFFFFFFFFFFFF9, v21);
    v14 = (*(v17 + 16) + 8 * *(v17 + 8));
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v14, &v14[8 * *(v17 + 12)]);
    v15 = 1;
  }

  if (v20 != v22)
  {
    free(v20);
  }

LABEL_21:
  if (v23 != v25)
  {
    free(v23);
  }

  return v15;
}

BOOL mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 440))(a1, &v10, 0) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of attribute specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

BOOL mlir::AsmParser::parseColonType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 576))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::GetMemberOp **this, mlir::SymbolTableCollection *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  MemberAttr = mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
  v5 = *(*MemberAttr + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  v6 = *this;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = MemberAttr;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = *mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
    v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v8 + 8, v9))
    {
      v33 = 257;
      mlir::Operation::emitError(&v36, *this, v32);
      if (v36)
      {
        mlir::Diagnostic::operator<<<61ul>(&v37, "expected a parameter attribute if the callee is not resolved");
      }

LABEL_29:
      v17 = (v41 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
      return v17;
    }

    return 1;
  }

  while (1)
  {
    v10 = *(v6 + 2);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      break;
    }

    v6 = *(v11 + 16);
    if (!v6 || *(*(v6 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:
  v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7);
  if (!v12 || ((v13 = v12, v14 = *(*(v12 + 48) + 16), v15 = v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id, v14 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id) ? (v16 = 0) : (v16 = v12), v31 = v16, !v15))
  {
    if (!mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7[1]))
    {
      v33 = 257;
      mlir::Operation::emitError(&v36, *this, v32);
      if (v36)
      {
        mlir::Diagnostic::operator<<<19ul>(&v37, "could not resolve ");
        if (v36)
        {
          v34 = 0;
          v35 = v7;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
          v19 = v39 + 24 * v40;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v40;
          if (v36)
          {
            mlir::Diagnostic::operator<<<22ul>(&v37, " to a class or import");
          }
        }
      }

      goto LABEL_29;
    }

    return 1;
  }

  v22 = mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v24 = v22[3];
    v23 = v22[4];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v13 + 24);
  v26 = *(*this + 3);
  v27 = mlir::Operation::getParentOfType<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(v13);
  (*(v28 + 16))(&v36, v28, v27);
  v29 = *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 80) + 8);
  v32[0] = this;
  v32[1] = &v31;
  v17 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v25, v26, v36, v37, v24, v23, v29, v30, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<mlir::ODIE::Compiler::CoreML::GetMemberOp::verifySymbolUses(mlir::SymbolTableCollection &)::$_0>, v32);
  if (v36 != &v38)
  {
    free(v36);
  }

  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t (*a9)(uint64_t, void *), uint64_t a10)
{
  v47 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v39 = a4;
  v36 = a5;
  v37 = a6;
  v35 = 0;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  v44 = &unk_286E805C8;
  v45[0] = &v38;
  v45[1] = &v36;
  v45[2] = &v44;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(v33, &v44);
  std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](&v44);
  if (v37 && v39)
  {
    v13 = v38;
    v14 = 8 * v39 - 8;
    v15 = (v36 + 8);
    v16 = 16 * v37 - 16;
    do
    {
      v17 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(v33, *(*v13 + 16));
      if (v17 != (**v15)())
      {
        v46 = 257;
        emitDiag(a2, 2, &v44, &v40);
        if (v40)
        {
          mlir::Diagnostic::operator<<<21ul>(v41, "got binding of type ");
        }

        v21 = (**v15)();
        if (v40)
        {
          LODWORD(v44) = 4;
          v45[0] = v21;
          v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v42, &v44, 1);
          v23 = v42 + 24 * v43;
          v24 = *v22;
          *(v23 + 16) = *(v22 + 16);
          *v23 = v24;
          ++v43;
          if (v40)
          {
            mlir::Diagnostic::operator<<<11ul>(v41, " for decl ");
            if (v40)
            {
              v25 = *(*v13 + 8);
              LODWORD(v44) = 0;
              v45[0] = v25;
              v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v42, &v44, 1);
              v27 = v42 + 24 * v43;
              v28 = *v26;
              *(v27 + 16) = *(v26 + 16);
              *v27 = v28;
              ++v43;
              if (v40)
              {
                mlir::Diagnostic::operator<<<10ul>(v41, " of type ");
                if (v40)
                {
                  LODWORD(v44) = 4;
                  v45[0] = v17;
                  v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v42, &v44, 1);
                  v30 = v42 + 24 * v43;
                  v31 = *v29;
                  *(v30 + 16) = *(v29 + 16);
                  *v30 = v31;
                  ++v43;
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v44, &v40);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
        mlir::Diagnostic::attachNote(v45, a1, 1);
      }

      if (!v16)
      {
        break;
      }

      v13 += 8;
      v18 = v14;
      v14 -= 8;
      v15 += 2;
      v16 -= 16;
    }

    while (v18);
  }

  v19 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(v33, a7);
  v20 = a9(a10, v19);
  MEMORY[0x25F891030](v34, 8);
  v44 = &v33[1] + 1;
  std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v44);
  v44 = v33;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v44);
  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::print(mlir::ODIE::Compiler::CoreML::SetMemberOp **this, mlir::OpAsmPrinter *a2)
{
  v28 = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8236;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8233;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ") ", 2uLL);
  }

  MemberAttr = mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
  v11 = MemberAttr;
  v12 = *(*MemberAttr + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v11 = MemberAttr[1];
  }

  else if (MemberAttr && v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, MemberAttr);
    goto LABEL_16;
  }

  (*(*a2 + 40))(a2, v11);
LABEL_16:
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 32;
    *v14 = 14880;
    *(v13 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v13, " : ", 3uLL);
  }

  v15 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v16 = *(v15 + 17);
    if (v16)
    {
      v17 = *(v15 + 9);
      (*(*a2 + 32))(a2, *(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v16 != 1)
      {
        v18 = v16 - 1;
        v19 = (v17 + 56);
        do
        {
          v20 = (*(*a2 + 16))(a2);
          v21 = *(v20 + 4);
          if (*(v20 + 3) - v21 > 1uLL)
          {
            *v21 = 8236;
            *(v20 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v20, ", ", 2uLL);
          }

          v22 = *v19;
          v19 += 4;
          (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v18;
        }

        while (v18);
      }
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v24 = *(AttrDictionary + 8);
  v25 = *(AttrDictionary + 16);
  v27 = *(**(*(*this + 6) + 96) + 16);
  return (*(*a2 + 200))(a2, v24, v25, &v27, 1);
}

uint64_t *mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(mlir::ODIE::Compiler::CoreML::SetMemberOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::parse(uint64_t a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x100000000;
  if (((*(*a1 + 720))(a1, &v23, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v17 = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &v17) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v4 = v17;
      if (v17)
      {
        v5 = *v17;
        v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
      }

      else
      {
        v7 = 0;
      }

      v15 = v4;
      v16 = v7;
      goto LABEL_14;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v15) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v20 = v22;
  v21 = 0x200000000;
  if ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v20) & 1) != 0 && ((*(*a1 + 496))(a1, a2 + 112))
  {
    v17 = v19;
    v18 = 0x600000000;
    if (v24 && v21)
    {
      v10 = v23;
      v11 = v20;
      v12 = 8 * v21 - 8;
      v13 = 32 * v24 - 32;
      while (((*(*a1 + 728))(a1, v10, *v11, &v17) & 1) != 0)
      {
        if (v13)
        {
          v10 += 32;
          ++v11;
          v14 = v12;
          v12 -= 8;
          v13 -= 32;
          if (v14)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v8 = 0;
    }

    else
    {
LABEL_23:
      mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 8) + 96), v15);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v17 & 0xFFFFFFFFFFFFFFF9, 0, v17 & 0xFFFFFFFFFFFFFFF9, v18);
      v8 = 1;
    }

    if (v17 != v19)
    {
      free(v17);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v20 != v22)
  {
    free(v20);
  }

LABEL_9:
  if (v23 != v25)
  {
    free(v23);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::SetMemberOp **this, mlir::SymbolTableCollection *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  MemberAttr = mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
  v5 = *(*MemberAttr + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  v6 = *this;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = MemberAttr;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = *mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
    v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v8 + 8, v9))
    {
      v33 = 257;
      mlir::Operation::emitError(&v36, *this, v32);
      if (v36)
      {
        mlir::Diagnostic::operator<<<61ul>(&v37, "expected a parameter attribute if the callee is not resolved");
      }

LABEL_29:
      v17 = (v41 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
      return v17;
    }

    return 1;
  }

  while (1)
  {
    v10 = *(v6 + 2);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      break;
    }

    v6 = *(v11 + 16);
    if (!v6 || *(*(v6 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:
  v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7);
  if (!v12 || ((v13 = v12, v14 = *(*(v12 + 48) + 16), v15 = v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id, v14 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id) ? (v16 = 0) : (v16 = v12), v31 = v16, !v15))
  {
    if (!mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7[1]))
    {
      v33 = 257;
      mlir::Operation::emitError(&v36, *this, v32);
      if (v36)
      {
        mlir::Diagnostic::operator<<<19ul>(&v37, "could not resolve ");
        if (v36)
        {
          v34 = 0;
          v35 = v7;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
          v19 = v39 + 24 * v40;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v40;
          if (v36)
          {
            mlir::Diagnostic::operator<<<22ul>(&v37, " to a class or import");
          }
        }
      }

      goto LABEL_29;
    }

    return 1;
  }

  v22 = mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v24 = v22[3];
    v23 = v22[4];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v13 + 24);
  v26 = *(*this + 3);
  v27 = mlir::Operation::getParentOfType<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(v13);
  (*(v28 + 16))(&v36, v28, v27);
  v29 = *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 80) + 8);
  v32[0] = this;
  v32[1] = &v31;
  v17 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v25, v26, v36, v37, v24, v23, v29, v30, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::SymbolTableCollection &)::$_0>, v32);
  if (v36 != &v38)
  {
    free(v36);
  }

  return v17;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  *&v11 = *(*this + 2 * v5 + 9);
  BYTE8(v11) = v11 != 0;
  if (v11)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++*(v6 + 4);
    }

    mlir::ODIE::Compiler::detail::KeywordPrintableAttrTrait<mlir::ODIE::Compiler::CoreML::ExternAttr>::printAsKeyword(&v11, a2);
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 11))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 8)
    {
      *(v9 + 8) = 101;
      *v9 = *" noinline";
      *(v8 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v8, " noinline", 9uLL);
    }

    v4 = *this;
  }

  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
  v11 = *(*(*(*(*this + 6) + 96) + 8) + 16);
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v4, InterfaceFor, &v11, 1, a2);
}

void mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(mlir::Operation *a1, uint64_t a2, _BYTE *__src, uint64_t a4, uint64_t a5)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v27 = v29;
  v28 = 0x300000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v27, __src, &__src[16 * a4]);
  v8 = (*(*a5 + 16))(a5);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++*(v8 + 4);
  }

  v10 = (**(a2 + 40))();
  (*(*a5 + 88))(a5, *(v10 + 16), *(v10 + 24));
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "sym_name", 8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (v11)
  {
    (*(v12 + 32))(v12, v11, a5);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "param_decls", 11);
  }

  v13 = (*a2)(a2, a1);
  v14 = *(v13 + 16);
  v15 = *(v13 + 8);
  v16 = *(v13 + 12);
  v17 = v14 + 8 * v15;
  v18 = v14 & 0xFFFFFFFFFFFFFFF9;
  v19 = (*(*(a2 + 48) + 24))();
  v20 = (*(*(a2 + 48) + 32))();
  mlir::call_interface_impl::printFunctionSignature(a5, v18 | 2, v15, v19, 0, v17 & 0xFFFFFFFFFFFFFFF9 | 2, v16, v20, (((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10)), 0);
  __srca[0] = xmmword_2799BDAD8;
  __srca[1] = *&off_2799BDAE8;
  __srca[2] = xmmword_2799BDAF8;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v27, __srca, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  (*(*a5 + 200))(a5, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, v28);
  v22 = (*(*a5 + 16))(a5);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, " ", 1uLL);
  }

  else
  {
    *v23 = 32;
    ++*(v22 + 4);
  }

  v24 = (((a1 + 16 * ((*(a1 + 11) >> 23) & 1) + ((*(a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  if (*v24 != v24)
  {
    (*(*a5 + 224))(a5);
  }

  if (v27 != v29)
  {
    free(v27);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::parse(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v4 = mlir::ODIE::Compiler::detail::KeywordPrintableAttrTrait<mlir::ODIE::Compiler::CoreML::ExternAttr>::parseAsKeyword(&v8, a1);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v8);
  }

  if ((*(*a1 + 408))(a1, "noinline", 8))
  {
    v5 = *(*(*(a2 + 8) + 96) + 24);
    v6 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v5, *(**v6 + 608));
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(a1, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList);
}

uint64_t mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(mlir::AsmParser *a1, uint64_t a2, uint64_t (*a3)(uint64_t, mlir::AsmParser *, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v8 = (*(*a1 + 40))(a1);
  if (mlir::AsmParser::parseSymbolName(a1, &v35))
  {
    mlir::OperationState::addAttribute(a2, "sym_name", 8, v35);
    v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(*(a2 + 8) + 32, v9) && (a3(a4, a1, a2) & 1) == 0)
    {
      v31 = 0;
    }

    else
    {
      v51 = v53;
      v52 = 0x100000000;
      v34 = 0;
      v48 = v50;
      v49 = 0x600000000;
      v45 = v47;
      v46 = 0x600000000;
      v10 = (*(*a1 + 40))(a1);
      if (mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, 0, &v51, &v34, &v48, &v45))
      {
        v11 = (*(*a1 + 32))(a1);
        v33 = v51;
        v12 = v52;
        v13 = v45;
        v14 = v46;
        v15 = *(*(*a1 + 32))(a1);
        v55 = 262;
        *&v54[0] = "arg_attrs";
        *(&v54[0] + 1) = 9;
        v17 = mlir::StringAttr::get(v15, v54, v16);
        v18 = *(*(*a1 + 32))(a1);
        v40 = 262;
        *&__src = "res_attrs";
        *(&__src + 1) = 9;
        v20 = mlir::StringAttr::get(v18, &__src, v19);
        mlir::call_interface_impl::addArgAndResultAttrs(v11, a2, v33, v12, v13, v14, v17, v20);
        v42 = v44;
        v43 = 0x600000000;
        v21 = v52;
        if (v52 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v52, 8);
          v21 = v52;
        }

        if (v21)
        {
          v22 = v21 << 6;
          v23 = v51 + 4;
          do
          {
            v24 = *v23;
            v23 += 8;
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v42, v24);
            v22 -= 64;
          }

          while (v22);
        }

        v25 = *(*(*a1 + 32))(a1);
        *&v54[0] = v42 & 0xFFFFFFFFFFFFFFF9 | 2;
        *(&v54[0] + 1) = v43;
        *&__src = v48 & 0xFFFFFFFFFFFFFFF9 | 2;
        *(&__src + 1) = v49;
        v26 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v25, v54, &__src);
        if (v26)
        {
          v27 = mlir::TypeAttr::get(v26);
          mlir::OperationState::addAttribute(a2, "function_type", 0xD, v27);
          *&__src = v39;
          *(&__src + 1) = 0x400000000;
          v41 = 4;
          v28 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 496))(a1, &__src))
          {
            v29 = __src;
            v30 = (__src + 16 * DWORD2(__src));
            *(a2 + 192) = 0;
            llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), v29, v30);
            mlir::OperationState::addRegion(a2);
          }

          v37 = 257;
          (*(*a1 + 24))(v54, a1, v28, v36);
          if (*&v54[0])
          {
            mlir::Diagnostic::operator<<<41ul>(v54 + 8, "failed to parse the attribute dictionary");
          }

          v31 = v56 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v54);
          if (__src != v39)
          {
            free(__src);
          }
        }

        else
        {
          v40 = 257;
          (*(*a1 + 24))(v54, a1, v10, &__src);
          if (*&v54[0])
          {
            mlir::Diagnostic::operator<<<34ul>(v54 + 8, "failed to construct function type");
          }

          v31 = v56 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v54);
        }

        if (v42 != v44)
        {
          free(v42);
        }
      }

      else
      {
        v40 = 257;
        (*(*a1 + 24))(v54, a1, v10, &__src);
        if (*&v54[0])
        {
          mlir::Diagnostic::operator<<<39ul>(v54 + 8, "failed to parse the function signature");
        }

        v31 = v56 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v54);
      }

      if (v45 != v47)
      {
        free(v45);
      }

      if (v48 != v50)
      {
        free(v48);
      }

      if (v51 != v53)
      {
        free(v51);
      }
    }
  }

  else
  {
    v40 = 257;
    (*(*a1 + 24))(v54, a1, v8, &__src);
    if (*&v54[0])
    {
      mlir::Diagnostic::operator<<<28ul>(v54 + 8, "expected valid symbol name.");
    }

    v31 = v56 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v54);
  }

  return v31 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a1 + 64;
  v19 = v21;
  v20 = 0x600000000;
  v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v11 + 8);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24), v8))
      {
        llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v19, v15);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v16 = v19;
    v17 = v20;
  }

  else
  {
    v17 = 0;
    v16 = v21;
  }

  *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getInputIntents(mlir::ODIE::Compiler::CoreML::FuncOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getInputIntentsForFunctionLike(a2, v5, InterfaceFor, a3);
}

void mlir::ODIE::Compiler::CoreML::getInputIntentsForFunctionLike(mlir::ODIE::Compiler::CoreML *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23 = a3;
  (*(*(a3 + 48) + 8))();
  v29 = v31;
  v30 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v29, v7, 0);
  (*(*(a3 + 48) + 8))();
  if (v8)
  {
    for (i = 0; i < v11; ++i)
    {
      ArgAttr = mlir::FunctionOpInterface::getArgAttr(&v22, i, "coreml.intent", 0xDuLL);
      if (ArgAttr && *(*ArgAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
      {
        *(v29 + i) = ArgAttr;
      }

      (*(*(v23 + 48) + 8))();
    }
  }

  v27[0] = v28;
  v27[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(v27, v30, 0);
  v12 = v22;
  v13 = (((v22 + 16 * ((*(v22 + 44) >> 23) & 1) + ((*(v22 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v22 + 40));
  if (*v13 != v13)
  {
    v14 = v13[1];
    if (v14)
    {
      v15 = (v14 - 8);
    }

    else
    {
      v15 = 0;
    }

    mlir::ODIE::Compiler::CoreML::deriveInputIntentsForBlock(v24, a1, v15);
    if (v26 == 1)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v27, v24);
      if ((v26 & 1) != 0 && v24[0] != &v25)
      {
        free(v24[0]);
      }
    }

    v12 = v22;
  }

  v16 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(v12 + 24) + 32), 3uLL);
  v17 = v30;
  if (v30)
  {
    v18 = v29;
    v19 = v27[0];
    do
    {
      if (!*v18)
      {
        v20 = *v19;
        if (!*v19)
        {
          v20 = v16;
        }

        *v18 = v20;
      }

      ++v19;
      ++v18;
      --v17;
    }

    while (v17);
    v21 = v30;
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (v21)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a4, &v29);
    }
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
  }

  *(a4 + 64) = 1;
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::FuncOp *this@<X0>, uint64_t x8_0@<X8>)
{
  v4 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getOutputIntentsForFunctionLike(v4, InterfaceFor, x8_0);
}

void mlir::ODIE::Compiler::CoreML::getOutputIntentsForFunctionLike(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32[6] = *MEMORY[0x277D85DE8];
  (*(*(a3 + 48) + 16))();
  v30 = v32;
  v31 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v30, v7, 0);
  (*(*(a3 + 48) + 16))();
  if (v8)
  {
    for (i = 0; i < v15; ++i)
    {
      v10 = (*(*(a3 + 48) + 32))();
      if (v10)
      {
        v11 = *(*(v10 + 8) + 8 * i);
        if (v11)
        {
          v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v11 + 8), *(v11 + 8) + 16 * *(v11 + 16), "coreml.intent", 0xDuLL);
          if (v13)
          {
            v14 = *(v12 + 8);
            if (v14)
            {
              if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
              {
                *(v30 + i) = v14;
              }
            }
          }
        }
      }

      (*(*(a3 + 48) + 16))();
    }
  }

  v28[0] = v29;
  v28[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(v28, v31, 0);
  v16 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v16 != v16)
  {
    v17 = v16[1];
    v18 = v17 ? (v17 - 8) : 0;
    mlir::ODIE::Compiler::CoreML::deriveOutputIntentsForBlock(v25, v18);
    if (v27 == 1)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v28, v25);
      if ((v27 & 1) != 0 && v25[0] != &v26)
      {
        free(v25[0]);
      }
    }
  }

  v19 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a2 + 24) + 32), 0);
  v20 = v31;
  if (v31)
  {
    v21 = v30;
    v22 = v28[0];
    do
    {
      if (!*v21)
      {
        v23 = *v22;
        if (!*v22)
        {
          v23 = v19;
        }

        *v21 = v23;
      }

      ++v22;
      ++v21;
      --v20;
    }

    while (v20);
    v24 = v31;
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (v24)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a4, &v30);
    }
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
  }

  *(a4 + 64) = 1;
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }
}

void mlir::ODIE::Compiler::CoreML::GraphOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  if (*(*this + 2 * v5 + 13))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x6574617669727020;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, " private", 8uLL);
    }

    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 9))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 0xB)
    {
      *(v9 + 8) = 1702521196;
      *v9 = *" externalize";
      *(v8 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v8, " externalize", 0xCuLL);
    }

    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 11))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if ((*(v10 + 3) - v11) > 8)
    {
      *(v11 + 8) = 101;
      *v11 = *" noinline";
      *(v10 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " noinline", 9uLL);
    }

    v4 = *this;
  }

  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
  v13 = *(*(*this + 6) + 96);
  v14[0] = *(v13[5] + 16);
  v14[1] = *(v13[1] + 16);
  v14[2] = *(v13[3] + 16);
  v15 = "sym_visibility";
  v16 = 14;
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v4, InterfaceFor, v14, 4, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = xmmword_2799BDAA8;
  v14 = *&off_2799BDAB8;
  for (i = xmmword_2799BDAC8; ((*(*a1 + 424))(a1, &v11, &v13, 3) & 1) != 0; i = xmmword_2799BDAC8)
  {
    v4 = *(*(a2 + 8) + 96);
    if (v12 == 11)
    {
      if (*v11 == 0x6C616E7265747865 && *(v11 + 3) == 0x657A696C616E7265)
      {
        v6 = v4 + 1;
        goto LABEL_19;
      }
    }

    else if (v12 == 8)
    {
      if (*v11 == 0x656E696C6E696F6ELL)
      {
        v6 = v4 + 3;
        goto LABEL_19;
      }
    }

    else if (v12 == 7 && *v11 == 1986622064 && *(v11 + 3) == 1702125942)
    {
      v6 = v4 + 5;
LABEL_19:
      v8 = *v6;
      goto LABEL_20;
    }

    v8 = 0;
LABEL_20:
    v9 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v8, *(**v9 + 608));
    v13 = xmmword_2799BDAA8;
    v14 = *&off_2799BDAB8;
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(a1, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, const char *a4, uint64_t a5, unsigned int *a6, uint64_t a7, int a8, char a9, char a10, uint64_t a11, uint64_t a12)
{
  v26 = 261;
  v25[0] = a3;
  v25[1] = a4;
  v18 = mlir::StringAttr::get(*a1, v25, a3);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 56) = v18;
  v19 = mlir::TypeAttr::get(a5);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 16) = v19;
  v21 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a6, a7, v20);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 32) = v21;
  if (a8)
  {
    v22 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 40) = v22;
  }

  if (a9)
  {
    v23 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 8) = v23;
  }

  if (a10)
  {
    v24 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 24) = v24;
  }

  if (a11)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) = a11;
  }

  if (a12)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 48) = a12;
  }

  mlir::OperationState::addRegion(a2);
}

uint64_t *mlir::ODIE::Compiler::CoreML::GraphOp::setVisibility(uint64_t *result, int a2, BOOL a3)
{
  if (a2 == 2)
  {
    llvm::report_fatal_error("GraphOp has no concept of 'nested' visibility", 1, a3);
  }

  v3 = *result;
  if (a2 == 1)
  {
    v4 = *(**(***(v3 + 24) + 32) + 608);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 16 * ((*(*result + 44) >> 23) & 1) + 104) = v4;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(uint64_t *a1, uint64_t a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v18 = a2;
  v19 = v2;
  v3 = *(*(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 80) + 8);
  mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getAllParamDecls(&v19, &v27);
  CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(&v18);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = CalleeAttr;
    v8 = CalleeAttr[4];
    if (v8 != v28)
    {
      v13 = *(v18 + 24);
      v26 = 257;
      emitDiag(v13, 2, &v24, &v20);
      if (v20)
      {
        mlir::Diagnostic::operator<<<35ul>(v21, "not enough parameters provided by ");
        if (v20)
        {
          LODWORD(v24) = 0;
          v25[0] = v7;
          v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v24, 1);
          v15 = v22 + 24 * v23;
          v16 = *v14;
          *(v15 + 16) = *(v14 + 16);
          *v15 = v16;
          ++v23;
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v24, &v20);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      mlir::Diagnostic::attachNote(v25, *(v19 + 24), 1);
    }

    v9 = CalleeAttr[3];
    v10 = *(v19 + 24);
    v11 = *(v18 + 24);
    v24 = &v18;
    v25[0] = &v19;
    v12 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v10, v11, v27, v8, v9, v8, v3, v5, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<llvm::LogicalResult mlir::ODIE::Compiler::CoreML::verifyMatchForParametricOp<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::InvokeOp>(mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::InvokeOp)::{lambda(mlir::Type)#1}>, &v24);
  }

  else
  {
    if (v28)
    {
      v6 = *(v18 + 24);
      v26 = 257;
      emitDiag(v6, 2, &v24, &v20);
      if (v20)
      {
        mlir::Diagnostic::operator<<<21ul>(v21, "no bindings provided");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v24, &v20);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      mlir::Diagnostic::attachNote(v25, *(v19 + 24), 1);
    }

    v12 = 1;
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v12;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verify(void ****this)
{
  v82 = *MEMORY[0x277D85DE8];
  if (mlir::Operation::hasAttr(*this, "sym_visibility", 0xEuLL))
  {
    LOWORD(v62) = 257;
    mlir::Operation::emitError(&v79, *this, v61);
    if (v79)
    {
      mlir::Diagnostic::operator<<<55ul>(v80, "graphs do not allow the default symbol visibility attr");
    }

LABEL_21:
    v15 = v81 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
    return v15 & 1;
  }

  v2 = *this;
  v3 = *(*this + 11);
  v4 = &(*this)[2 * ((v3 >> 23) & 1) + 8];
  if (v4[5])
  {
    if (v4[1])
    {
      LOWORD(v62) = 257;
      mlir::Operation::emitError(&v79, v2, v61);
      if (v79)
      {
        mlir::Diagnostic::operator<<<48ul>(v80, "graphs marked 'externalize' must not be private");
      }

      goto LABEL_21;
    }

    v6 = *(v2 + 10);
    v5 = (v3 >> 21) & 0x7F8;
  }

  else
  {
    v5 = (v3 >> 21) & 0x7F8;
    v6 = *(v2 + 10);
    v7 = (((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v6);
    if (*v7 == v7)
    {
      LOWORD(v62) = 257;
      mlir::Operation::emitError(&v79, v2, v61);
      if (v79)
      {
        mlir::Diagnostic::operator<<<36ul>(v80, "non-private graphs must have a body");
      }

      goto LABEL_21;
    }
  }

  v8 = (((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v6);
  if (*v8 == v8)
  {
    v15 = 1;
    return v15 & 1;
  }

  v9 = v8[1];
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  v13 = *(v10 + 32);
  v12 = (v10 + 32);
  v11 = v13;
  if (v13 == v12 || !mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>((v11 + 6)) || (v14 = *v12, *(*(*v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id))
  {
    LOWORD(v62) = 257;
    mlir::Operation::emitError(&v79, *this, v61);
    if (v79)
    {
      mlir::Diagnostic::operator<<<40ul>(v80, "expected the 'coreml.output' terminator");
    }

    goto LABEL_21;
  }

  if ((*(v14 + 46) & 0x80) != 0)
  {
    v17 = *(v14 + 72);
    v18 = *(v14 + 68);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v19 = v78;
  v76 = v78;
  v77 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v76, v17, 0, v17, v18);
  v20 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10][1];
  v21 = v20[2];
  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  v24 = v75;
  v73 = v75;
  v74 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v73, (v21 + 8 * v23), (v21 + 8 * v23 + 8 * v22));
  v25 = v77;
  v26 = v74;
  if (v77 != v74)
  {
    LOWORD(v62) = 257;
    mlir::Operation::emitError(&v79, *this, v61);
    if (v79)
    {
      mlir::Diagnostic::operator<<<10ul>(v80, "expected ");
    }

    v60[0] = v26;
    v48 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v79, v60);
    v49 = v48;
    if (*v48)
    {
      mlir::Diagnostic::operator<<<15ul>((v48 + 1), " results, got ");
    }

    v59[0] = v25;
    v50 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v49, v59);
    goto LABEL_65;
  }

  if (!v77)
  {
LABEL_53:
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    memset(v61, 0, sizeof(v61));
    goto LABEL_66;
  }

  v27 = v76;
  v28 = v73;
  v57 = v14;
  v58 = (v76 + 8 * v77);
  while (1)
  {
    v29 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(*v27);
    v31 = v30;
    v60[0] = v29;
    v60[1] = v30;
    v32 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(*v28);
    v59[0] = v32;
    v59[1] = v33;
    if (v29)
    {
      v34 = v32 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34 || (v35 = v32, *(*v29 + 136) != *(*v32 + 136)))
    {
      if (*v27 != *v28)
      {
        LOWORD(v62) = 257;
        mlir::Operation::emitError(&v79, *this, v61);
        if (v79)
        {
          mlir::Diagnostic::operator<<<15ul>(v80, "expected type ");
          if (v79)
          {
            mlir::Diagnostic::operator<<<mlir::Type const&>(v80, v28);
            if (v79)
            {
              mlir::Diagnostic::operator<<<7ul>(v80, ", got ");
              if (v79)
              {
                mlir::Diagnostic::operator<<<mlir::Type const&>(v80, v27);
              }
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_35;
    }

    v36 = v33;
    (*(v31 + 24))(v31, v29);
    v37 = v24;
    v38 = v19;
    v40 = v39;
    (*(v36 + 24))(v36, v35);
    v34 = v40 == v41;
    v19 = v38;
    v24 = v37;
    v14 = v57;
    if (!v34)
    {
      goto LABEL_54;
    }

    v42 = (*(v31 + 24))(v31, v29);
    v44 = v43;
    v45 = (*(v36 + 24))(v36, v35);
    if (v44)
    {
      break;
    }

LABEL_35:
    ++v27;
    ++v28;
    if (v27 == v58)
    {
      goto LABEL_53;
    }
  }

  v46 = 8 * v44;
  while (*v45 == 0x8000000000000000 || *v45 == *v42)
  {
    ++v42;
    ++v45;
    v46 -= 8;
    if (!v46)
    {
      goto LABEL_35;
    }
  }

LABEL_54:
  LOWORD(v62) = 257;
  mlir::Operation::emitError(&v79, *this, v61);
  if (v79)
  {
    mlir::Diagnostic::operator<<<10ul>(v80, "expected ");
    if (v79)
    {
      mlir::Diagnostic::operator<<<mlir::ShapedType &>(v80, v59);
      if (v79)
      {
        mlir::Diagnostic::operator<<<7ul>(v80, ", got ");
        if (v79)
        {
          mlir::Diagnostic::operator<<<mlir::ShapedType &>(v80, v60);
        }
      }
    }
  }

LABEL_64:
  v50 = &v79;
LABEL_65:
  mlir::InFlightDiagnostic::InFlightDiagnostic(v61, v50);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
LABEL_66:
  v51 = BYTE8(v72);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v61);
  if (v51)
  {
    v15 = 0;
    goto LABEL_78;
  }

  v52 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10][1];
  if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(v52[2] & 0xFFFFFFFFFFFFFFF9 | 2, *(v52 + 2), (v52[2] + 8 * *(v52 + 2)) & 0xFFFFFFFFFFFFFFF9 | 2, *(v52 + 3)))
  {
    Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(this);
    if ((*(v14 + 46) & 0x80) != 0)
    {
      v55 = *(v14 + 68);
      v56 = *(v14 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v55 = 0;
      v56 = 2;
    }

    if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(Arguments & 0xFFFFFFFFFFFFFFF9, v54, v56, v55))
    {
      v15 = 1;
      goto LABEL_78;
    }

    LOWORD(v62) = 257;
    mlir::Operation::emitError(&v79, *this, v61);
    if (v79)
    {
      mlir::Diagnostic::operator<<<61ul>(v80, "order of token outputs does not match order of handle inputs");
    }
  }

  else
  {
    LOWORD(v62) = 257;
    mlir::Operation::emitError(&v79, *this, v61);
    if (v79)
    {
      mlir::Diagnostic::operator<<<59ul>(v80, "number of handle inputs must match number of token outputs");
    }
  }

  v15 = v81 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
LABEL_78:
  if (v73 != v24)
  {
    free(v73);
  }

  if (v76 != v19)
  {
    free(v76);
  }

  return v15 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = 0;
    for (i = 0; i != a2; ++i)
    {
      if (*(*mlir::TypeRange::dereference_iterator(a1, i) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        ++v8;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  if (a4)
  {
    v11 = 0;
    do
    {
      if (*(*mlir::TypeRange::dereference_iterator(a3, v11) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        ++v10;
      }

      ++v11;
    }

    while (a4 != v11);
  }

  return v8 == v10;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v17 = a1;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v17);
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v27);
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v8 = *(&v27 + 1);
  v27 = a3;
  *&v28 = a3;
  *(&v28 + 1) = a4;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v27);
  v23 = a3;
  v24 = a4;
  v25 = a3;
  v26 = a4;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v23);
  v19 = v29;
  v17 = v27;
  v18 = v28;
  v9 = v24;
  v30[0] = v20;
  v30[1] = v21;
  v31 = v22;
  v33 = v29;
  v32[0] = v27;
  v32[1] = v28;
  for (i = *(&v20 + 1); *(&v30[0] + 1) != v8; i = *(&v30[0] + 1))
  {
    v11 = *(&v32[0] + 1);
    if (*(&v32[0] + 1) == v9)
    {
      break;
    }

    v12 = mlir::ValueRange::dereference_iterator(v30, i);
    v13 = mlir::ValueRange::dereference_iterator(v32, v11);
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
    if (HandleForToken)
    {
      v15 = HandleForToken == v12;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      return 0;
    }

    *(&v30[0] + 1) = i + 1;
    llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(v30);
    ++*(&v32[0] + 1);
    llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(v32);
  }

  return 1;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getInputIntents(mlir::ODIE::Compiler::CoreML::GraphOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getInputIntentsForFunctionLike(a2, v5, InterfaceFor, a3);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::GraphOp *this@<X0>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getOutputIntentsForFunctionLike(v4, InterfaceFor, a3);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (!mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a1 + 64;
  v19 = v21;
  v20 = 0x600000000;
  v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v11 + 8);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24), v8))
      {
        llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v19, v15);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v16 = v19;
    v17 = v20;
  }

  else
  {
    v17 = 0;
    v16 = v21;
  }

  *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::readProperties(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v7) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v7 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v7 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v7 + 3))
  {
    return 0;
  }

  if (v10)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v7 + 4))
    {
      return 0;
    }
  }

  else
  {
    v7[4] = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***a2 + 32), 0, 0, v8);
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v7 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v7 + 6))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v7 + 7);
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::ArrayAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ArrayAttr>();
    *algn_27FC187E8 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::ArrayAttr>(void)::Name;
    v15 = *algn_27FC187E8;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  if (!v13)
  {
    return 1;
  }

  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::UnitAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::UnitAttr>();
    unk_27FC18800 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::UnitAttr>(void)::Name;
    v15 = unk_27FC18800;
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

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::TypeAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypeAttr>();
    *algn_27FC18818 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::TypeAttr>(void)::Name;
    v15 = *algn_27FC18818;
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

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getModuleSymbolRef(mlir::ODIE::Compiler::CoreML::GraphOp *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v21 = mlir::SymbolRefAttr::get(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 120), 0, 0, a4);
  v22 = v24;
  v23 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(&v22, &v21, &v22);
  v6 = *this;
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
    if (!v6)
    {
      break;
    }

    if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
    {
LABEL_6:
      v9 = mlir::SymbolRefAttr::get(*(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72), 0, 0, v5);
      llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v22, v9);
      while (1)
      {
        v10 = *(v6 + 16);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v11)
        {
          goto LABEL_12;
        }

        v6 = *(v11 + 16);
        if (!v6)
        {
          goto LABEL_12;
        }

        if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_12:
  v12 = v22;
  v13 = v23;
  v14 = v22 + 8 * v23 - 8;
  if (v23)
  {
    v15 = v14 > v22;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = v22 + 8;
    do
    {
      v17 = *(v16 - 1);
      *(v16 - 1) = *v14;
      *v14 = v17;
      v14 -= 8;
      v18 = v16 >= v14;
      v16 += 8;
    }

    while (!v18);
    v12 = v22;
    v13 = v23;
  }

  v19 = mlir::SymbolRefAttr::get(*(*v12 + 8), v12 + 2, (8 * v13 - 8) >> 3, v5);
  if (v22 != v24)
  {
    free(v22);
  }

  return v19;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verify(void ****this)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    goto LABEL_51;
  }

  v2 = v1[1];
  v3 = v2 - 8;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if (v4 == v3 + 32 || !mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(v4 + 48))
  {
    goto LABEL_51;
  }

  v6 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[4];
  if ((*(v8 + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 68);
    v10 = *(v8 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v9 = 0;
    v10 = 2;
  }

  if ((mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(v7[6] & 0xFFFFFFFFFFFFFFF9, (v7[7] - v7[6]) >> 3, v10, v9) & 1) == 0)
  {
    LOWORD(v42) = 257;
    mlir::Operation::emitError(&v46, *this, v39);
    if (v46)
    {
      mlir::Diagnostic::operator<<<61ul>(v47, "order of token outputs does not match order of handle inputs");
    }

    goto LABEL_32;
  }

  v11 = *(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getArgAttrs(*this) + 16);
  v12 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v13 = *(v12 + 17);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getResAttrs(v12) + 16);
  v15 = *this;
  v16 = *(*this + 9);
  if (!v11 || v11 == v13)
  {
    if (v14 && v14 != v16)
    {
      LOWORD(v42) = 257;
      mlir::Operation::emitError(&v46, v15, v39);
      if (v46)
      {
        mlir::Diagnostic::operator<<<34ul>(v47, "expected number of result attrs (");
      }

      mlir::InFlightDiagnostic::operator<<<unsigned long const&>(&v46, v14);
      if (v46)
      {
        mlir::Diagnostic::operator<<<31ul>(v47, ") to match number of outputs (");
      }

      v17 = v16;
      goto LABEL_30;
    }

    ArgAttrs = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getArgAttrs(v15);
    v20 = *(ArgAttrs + 8);
    v21 = v20 + 8 * *(ArgAttrs + 16);
    ResAttrs = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getResAttrs(*this);
    v23 = *(ResAttrs + 8);
    v24 = v23 + 8 * *(ResAttrs + 16);
    v39[0] = v20;
    v39[1] = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    v40 = v23;
    v41 = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    v42 = v21;
    v43 = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    v44 = v24;
    v45 = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    while (v20 != v21 || v23 != v24 || v42 != v21 || v44 != v24)
    {
      v26 = &unk_286E806D8;
      do
      {
        v27 = *(v26 - 1);
        v28 = (v39 + (*v26 >> 1));
        if (*v26)
        {
          v27 = *(*v28 + v27);
        }

        v26 += 2;
        v29 = v27(v28);
      }

      while ((v30 & 1) == 0);
      mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v29 + 8), *(v29 + 8) + 16 * *(v29 + 16), "coreml.intent", 0xDuLL);
      if (v31)
      {
        v38[16] = 257;
        mlir::Operation::emitError(&v46, *this, v38);
        if (v46)
        {
          mlir::Diagnostic::operator<<<90ul>(v47, "intents cannot be supplied on IsolatedGroupOp; intents are derived from the contained ops");
        }

        goto LABEL_32;
      }

      v32 = &unk_286E806B8;
      v33 = 16;
      do
      {
        v34 = v33;
        v35 = *(v32 - 1);
        v36 = (v39 + (*v32 >> 1));
        if (*v32)
        {
          v35 = *(*v36 + v35);
        }

        if (v35(v36))
        {
          break;
        }

        v32 += 2;
        v33 = v34 - 16;
      }

      while (v34);
      v20 = v39[0];
      v23 = v40;
    }

LABEL_51:
    v18 = 1;
    return v18 & 1;
  }

  LOWORD(v42) = 257;
  mlir::Operation::emitError(&v46, v15, v39);
  if (v46)
  {
    mlir::Diagnostic::operator<<<36ul>(v47, "expected number of argument attrs (");
  }

  mlir::InFlightDiagnostic::operator<<<unsigned long const&>(&v46, v11);
  if (v46)
  {
    mlir::Diagnostic::operator<<<30ul>(v47, ") to match number of inputs (");
  }

  v17 = v13;
LABEL_30:
  mlir::InFlightDiagnostic::operator<<<unsigned long const&>(&v46, v17);
  if (v46)
  {
    mlir::Diagnostic::operator<<<2ul>(v47, ")");
  }

LABEL_32:
  v18 = v47[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  return v18 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getArgAttrs(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this)
{
  if (*(this + 2 * ((*(this + 11) >> 23) & 1) + 8))
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return mlir::ArrayAttr::get(*(***(this + 3) + 32), 0, 0);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getResAttrs(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this)
{
  if (*(this + 2 * ((*(this + 11) >> 23) & 1) + 10))
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 10);
  }

  else
  {
    return mlir::ArrayAttr::get(*(***(this + 3) + 32), 0, 0);
  }
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long const&>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v7 = 5;
    v8 = a2;
    v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v7, 1);
    v4 = *(a1 + 24) + 24 * *(a1 + 32);
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
    ++*(a1 + 32);
  }

  return a1;
}

void mlir::ODIE::Compiler::CoreML::deriveInputIntentsForBlock(uint64_t *__return_ptr a1@<X8>, mlir::ODIE::Compiler::CoreML *this@<X0>, mlir::SymbolTableCollection *a3@<X1>)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = ((*(a3 + 7) - *(a3 + 6)) >> 3);
  v35 = v37;
  v36 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v35, v6, 0);
  v7 = *(a3 + 6);
  for (i = *(a3 + 7); v7 != i; ++v7)
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = v10[2];
        v13 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(v12);
        if (v13)
        {
          (*v14)(&v42, v14, v13, this);
          v15 = *(v12 + 72);
          v16 = *(v12 + 68);
          if (v16)
          {
            v17 = 32 * v16;
            v18 = v15 + 32 * v16;
            while (*(v15 + 24) != v9)
            {
              v15 += 32;
              v17 -= 32;
              if (!v17)
              {
                v15 = v18;
                break;
              }
            }
          }

          v19 = *(v15 + 16);
          v20 = (*(v19 + 46) & 0x80) != 0 ? *(v19 + 72) : 0;
          if (v44 == 1)
          {
            v21 = ((v15 - v20) >> 5);
            if (v11)
            {
              if (v11 != v42[v21])
              {
                v30 = "Expected operand ";
                v31 = 259;
                mlir::Operation::emitError(&v38, v12, &v30);
                if (v38)
                {
                  mlir::Diagnostic::operator<<(v39, *(*(v12 + 72) + 32 * v21 + 24));
                  if (v38)
                  {
                    mlir::Diagnostic::operator<<<17ul>(v39, " to have intent ");
                    if (v38)
                    {
                      v23 = *(v11 + 8);
                      if (v23 > 3)
                      {
                        v24 = 0;
                        v25 = &str_56;
                      }

                      else
                      {
                        v24 = qword_25D09F678[v23];
                        v25 = off_2799BDB08[v23];
                      }

                      v34 = 261;
                      v32 = v25;
                      v33 = v24;
                      mlir::Diagnostic::operator<<(v39, &v32);
                      if (v38)
                      {
                        mlir::Diagnostic::operator<<<10ul>(v39, " but got ");
                        if (v38)
                        {
                          v26 = v42[v21];
                          LODWORD(v32) = 0;
                          v33 = v26;
                          v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v32, 1);
                          v28 = v40 + 24 * v41;
                          v29 = *v27;
                          *(v28 + 16) = *(v27 + 16);
                          *v28 = v29;
                          ++v41;
                          if (v38)
                          {
                            mlir::Diagnostic::operator<<<2ul>(v39, ".");
                          }
                        }
                      }
                    }
                  }
                }

                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
                if ((v44 & 1) != 0 && v42 != v43)
                {
                  free(v42);
                }

                v22 = 0;
                *a1 = 0;
                goto LABEL_42;
              }
            }

            else
            {
              v11 = v42[v21];
            }

            if (v42 != v43)
            {
              free(v42);
            }
          }
        }

        v10 = *v10;
      }

      while (v10);
      if (v11)
      {
        *(v35 + *(*v7 + 6)) = v11;
      }
    }
  }

  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v36)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a1, &v35);
  }

  v22 = 1;
LABEL_42:
  *(a1 + 64) = v22;
  if (v35 != v37)
  {
    free(v35);
  }
}

void mlir::ODIE::Compiler::CoreML::deriveOutputIntentsForBlock(uint64_t *__return_ptr a1@<X8>, mlir::SymbolTableCollection *a2@<X1>)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 68);
  }

  else
  {
    v4 = 0;
  }

  v32 = v34;
  v33 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v32, v4, 0);
  if ((*(v3 + 46) & 0x80) == 0)
  {
    goto LABEL_48;
  }

  v5 = *(v3 + 68);
  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = *(v3 + 72);
  v7 = v6 + 32 * v5;
  do
  {
    v8 = *(v6 + 24);
    if ((~*(v8 + 8) & 7) == 0)
    {
      v8 = 0;
    }

    if (!v8)
    {
      goto LABEL_45;
    }

    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16);
      v11 = v10 + 120;
      if (v10 == -120)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v11 = v8 + 16 * v9 + 16;
    }

    if (!llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(v11))
    {
      goto LABEL_45;
    }

    v13 = *(v11 + 36);
    v14 = v11 - 16;
    if (v13)
    {
      v15 = v11 - 16;
    }

    else
    {
      v15 = 0;
    }

    if (!v13)
    {
      v15 = 0;
      goto LABEL_36;
    }

    v16 = 0;
    v17 = *(v6 + 24);
    v18 = v11 - 16;
    do
    {
      if (!v16)
      {
        if (v15 == v17)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      v19 = *(v11 - 8) & 7;
      v20 = v11 - 16;
      v21 = v16;
      if (v19 != 6)
      {
        v22 = (5 - v19);
        v23 = v18;
        v21 = v16 - v22;
        if (v16 <= v22)
        {
          goto LABEL_25;
        }

        v20 = v14 - 16 * v22;
      }

      v23 = v20 - 24 * v21;
LABEL_25:
      if (v23 == v17)
      {
        goto LABEL_30;
      }

LABEL_28:
      ++v16;
      v18 -= 16;
    }

    while (v13 != v16);
    v16 = *(v11 + 36);
LABEL_30:
    v24 = *(v11 - 8) & 7;
    if (v24 == 6)
    {
LABEL_33:
      v15 = v14 - 24 * v16;
    }

    else
    {
      v25 = (5 - v24);
      if (v16 > v25)
      {
        v14 -= 16 * v25;
        v16 -= v25;
        goto LABEL_33;
      }

      v15 = v14 - 16 * v16;
    }

LABEL_36:
    (*(v12 + 8))(&v29);
    if (v31 == 1)
    {
      v26 = *(v15 + 8) & 7;
      if (v15 && v26 == 6)
      {
        v26 = (*(v15 + 16) + 6);
      }

      v27 = *(v6 + 16);
      if ((*(v27 + 46) & 0x80) != 0)
      {
        v28 = *(v27 + 72);
      }

      else
      {
        v28 = 0;
      }

      *(v32 + ((v6 - v28) >> 5)) = *(v29 + v26);
      if ((v31 & 1) != 0 && v29 != &v30)
      {
        free(v29);
      }
    }

LABEL_45:
    v6 += 32;
  }

  while (v6 != v7);
LABEL_48:
  *a1 = (a1 + 2);
  a1[1] = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a1, &v32);
  }

  *(a1 + 64) = 1;
  if (v32 != v34)
  {
    free(v32);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2);
  result = 0;
  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1))
  {
    v4 = (*(*a1 + 24))(a1, "coreml", 6);
    if ((v5 & 1) == 0 || *(v4 + 8) < 4uLL || mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getInputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, uint64_t a2@<X8>)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(*this + 44);
  v6 = *(*this + 16 * ((v5 >> 23) & 1) + 64) != 0;
  v29 = *(*this + 16 * ((v5 >> 23) & 1) + 64);
  LOBYTE(v30) = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(v4 + 68);
  }

  else
  {
    v7 = 0;
  }

  mlir::ODIE::Compiler::CoreML::getIntentsFromAttrs(&v32, &v29, v7);
  v8 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 72);
    v10 = *(v8 + 68);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v32;
  v12 = v33;
  v29 = v31;
  v30 = 0x600000000;
  if (!v33 || !v10)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    goto LABEL_30;
  }

  v13 = v10 - 1;
  v14 = (v33 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v13 < v14)
  {
    v14 = v13;
  }

  v28 = v14 + 1;
  if (v14 < 6)
  {
    v15 = 0;
    v16 = v31;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v14 + 1, 8);
    v15 = v30;
    v16 = v29;
  }

  v17 = 8 * v12;
  v18 = &v16[8 * v15];
  v19 = v17 - 8;
  v20 = v9 + 24;
  do
  {
    v21 = *(*(*(*v20 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      v23 = 1;
    }

    else
    {
      v24 = *v11;
      if (*v11)
      {
        goto LABEL_23;
      }

      v23 = 3;
    }

    v24 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), v23);
LABEL_23:
    *v18++ = v24;
    v26 = v13-- != 0;
    if (!v19)
    {
      break;
    }

    ++v11;
    v19 -= 8;
    v20 += 32;
  }

  while (v26);
  v27 = v30;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  LODWORD(v30) = v27 + v28;
  if (v27 + v28)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v29);
  }

LABEL_30:
  *(a2 + 64) = 1;
  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
  }
}

void mlir::ODIE::Compiler::CoreML::getIntentsFromAttrs(void *a1, _BYTE *a2, unint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(a1, a3, 0);
  if (a3 && (a2[8] & 1) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *(*(*a2 + 8) + 8 * v6);
      if (v7)
      {
        if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v7[1], v7[1] + 16 * v7[2], "coreml.intent", 0xDuLL);
          if (v9)
          {
            v10 = *(v8 + 8);
            if (v10)
            {
              if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
              {
                *(*a1 + 8 * v6) = v10;
              }
            }
          }
        }
      }

      ++v6;
    }

    while (a3 != v6);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, void *a2@<X8>)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) != 0;
  v31 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  LOBYTE(v32) = v5;
  mlir::ODIE::Compiler::CoreML::getIntentsFromAttrs(&v34, &v31, *(v4 + 36));
  v6 = *this;
  v7 = *(*this + 36);
  if (v7)
  {
    v8 = *this - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = v35;
  v10 = v33;
  v30 = v34;
  v31 = v33;
  v32 = 0x600000000;
  if (!v35 || !v7)
  {
    *a2 = a2 + 2;
    a2[1] = 0x600000000;
    goto LABEL_32;
  }

  v11 = v7 - 1;
  v12 = (v35 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 < v12)
  {
    v12 = v11;
  }

  v29 = a2;
  v28 = v12 + 1;
  if (v12 < 6)
  {
    v13 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v12 + 1, 8);
    v13 = v32;
    v10 = v31;
  }

  v14 = 0;
  v15 = &v10[8 * v13];
  v16 = 8 * v9 - 8;
  v17 = v8;
  do
  {
    v18 = v8;
    if (!v14)
    {
      goto LABEL_18;
    }

    v19 = *(v6 - 8) & 7;
    v20 = v8;
    v21 = v14;
    if (v19 != 6)
    {
      v22 = (5 - v19);
      v18 = v17;
      v21 = v14 - v22;
      if (v14 <= v22)
      {
        goto LABEL_18;
      }

      v20 = v8 - 16 * v22;
    }

    v18 = v20 - 24 * v21;
LABEL_18:
    v23 = *(*(*(v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v24 = v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    if (v24)
    {
      v25 = 1;
LABEL_26:
      v26 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), v25);
      goto LABEL_27;
    }

    v26 = v30[v14];
    if (!v26)
    {
      v25 = 0;
      goto LABEL_26;
    }

LABEL_27:
    *&v15[8 * v14] = v26;
    if (!v16)
    {
      break;
    }

    v16 -= 8;
    v17 -= 16;
    v24 = v11 == v14++;
  }

  while (!v24);
  v27 = v32;
  a2 = v29;
  *v29 = v29 + 2;
  v29[1] = 0x600000000;
  LODWORD(v32) = v27 + v28;
  if (v27 + v28)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v29, &v31);
  }

LABEL_32:
  *(a2 + 64) = 1;
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::verify(mlir::ODIE::Compiler::CoreML::DelegateOp *this)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 44);
  v4 = v2 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 80);
  if (v5 && *(v5 + 16) != *(v2 + 36))
  {
    v19 = 257;
    mlir::Operation::emitError(&v20, v2, v18);
    if (v20)
    {
      mlir::Diagnostic::operator<<<34ul>(v21, "expected number of result attrs (");
    }

    v17 = *(v5 + 16);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v20, &v17);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<31ul>((v9 + 1), ") to match number of results (");
    }

    v11 = *(*this + 36);
  }

  else
  {
    v6 = *(v4 + 64);
    if (!v6 || ((v3 & 0x800000) == 0 ? (v7 = 0) : (v7 = *(v2 + 68)), *(v6 + 16) == v7))
    {
      v8 = 1;
      return v8 & 1;
    }

    v19 = 257;
    mlir::Operation::emitError(&v20, v2, v18);
    if (v20)
    {
      mlir::Diagnostic::operator<<<36ul>(v21, "expected number of argument attrs (");
    }

    v17 = *(v6 + 16);
    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v20, &v17);
    v10 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<32ul>((v12 + 1), ") to match number of operands (");
    }

    if ((*(*this + 46) & 0x80) != 0)
    {
      v11 = *(*this + 68);
    }

    else
    {
      v11 = 0;
    }
  }

  v16 = v11;
  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v10, &v16);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<2ul>((v13 + 1), ")");
  }

  v8 = *(v14 + 200) ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  return v8 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(a2);
  result = 0;
  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(a1, v3 + 3))
  {
    v4 = (*(*a1 + 24))(a1, "coreml", 6);
    if ((v5 & 1) == 0 || *(v4 + 8) < 4uLL || mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (((*(*a1 + 48))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = v12[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 8)
  {
    *a2 = v12;
    return 1;
  }

  else
  {
    *a2 = 0;
    v11[16] = 257;
    (*(*a1 + 16))(&v16, a1, v11);
    if (v16)
    {
      mlir::Diagnostic::operator<<<10ul>(v17, "expected ");
    }

    if ((atomic_load_explicit(&qword_27FC1E3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E3C0))
    {
      qword_27FC1E3B0 = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<signed char>>();
      *algn_27FC1E3B8 = v10;
      __cxa_guard_release(&qword_27FC1E3C0);
    }

    if (v16)
    {
      v15 = 261;
      v13 = qword_27FC1E3B0;
      v14 = *algn_27FC1E3B8;
      mlir::Diagnostic::operator<<(v17, &v13);
      if (v16)
      {
        mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
        if (v16)
        {
          LODWORD(v13) = 0;
          v14 = v12;
          v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
          v7 = v18 + 24 * v19;
          v8 = *v6;
          *(v7 + 16) = *(v6 + 16);
          *v7 = v8;
          ++v19;
        }
      }
    }

    v5 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verify(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v9 = *MEMORY[0x277D85DE8];
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*(*v3)(v3, CalleeAttr) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  v6[16] = 257;
  mlir::Operation::emitError(&v7, *this, v6);
  if (v7)
  {
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  v40[6] = *MEMORY[0x277D85DE8];
  ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this);
  if (!ResolvedCallee)
  {
    v12 = *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v12 + 8, v13))
    {
      return 1;
    }

    LOWORD(v33) = 257;
    mlir::Operation::emitError(&v34, *this, &v30);
    if (v34)
    {
      mlir::Diagnostic::operator<<<61ul>(v35, "expected a parameter attribute if the callee is not resolved");
    }

LABEL_22:
    v14 = (v37 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    return v14;
  }

  v5 = ResolvedCallee;
  v6 = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(this, a2);
  v7 = *this;
  if (!v6)
  {
    while (1)
    {
      v15 = *(v7 + 16);
      if (!v15)
      {
        break;
      }

      v16 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v16)
      {
        break;
      }

      v7 = *(v16 + 16);
      if (!v7 || *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_19;
      }
    }

    v7 = 0;
LABEL_19:
    v17 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v7, v5[1]);
    if (v17 && *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      return 1;
    }

    LOWORD(v33) = 259;
    mlir::Operation::emitOpError(&v34, *this, &v30);
    goto LABEL_22;
  }

  if (*(*(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 88) + 8))
  {
    return 1;
  }

  v28 = *this;
  v29 = v6;
  v8 = *(v6[2 * ((*(v6 + 11) >> 23) & 1) + 10] + 8);
  mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::getAllParamDecls(&v29, &v38);
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(&v28);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v18 = CalleeAttr;
    v19 = CalleeAttr[4];
    if (v19 != v39)
    {
      v23 = *(v28 + 24);
      v36 = 257;
      emitDiag(v23, 2, &v34, &v30);
      if (v30)
      {
        mlir::Diagnostic::operator<<<35ul>(v31, "not enough parameters provided by ");
        if (v30)
        {
          LODWORD(v34) = 0;
          v35[0] = v18;
          v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v34, 1);
          v25 = v32 + 24 * v33;
          v26 = *v24;
          *(v25 + 16) = *(v24 + 16);
          *v25 = v26;
          ++v33;
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v34, &v30);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
      mlir::Diagnostic::attachNote(v35, v29[3], 1);
    }

    v20 = CalleeAttr[3];
    v21 = v29[3];
    v22 = *(v28 + 24);
    v34 = &v28;
    v35[0] = &v29;
    v14 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v21, v22, v38, v19, v20, v19, v8, v10, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<llvm::LogicalResult mlir::ODIE::Compiler::CoreML::verifyMatchForParametricOp<mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::CallOp>(mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::CallOp)::{lambda(mlir::Type)#1}>, &v34);
  }

  else
  {
    if (v39)
    {
      v11 = *(v28 + 24);
      v36 = 257;
      emitDiag(v11, 2, &v34, &v30);
      if (v30)
      {
        mlir::Diagnostic::operator<<<21ul>(v31, "no bindings provided");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v34, &v30);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
      mlir::Diagnostic::attachNote(v35, v29[3], 1);
    }

    v14 = 1;
  }

  if (v38 != v40)
  {
    free(v38);
  }

  return v14;
}

uint64_t *mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  v2 = *(*result + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this);
  if (result)
  {
    v5 = *this;
    if (!a2)
    {
      while (1)
      {
        v9 = *(v5 + 16);
        if (!v9)
        {
          break;
        }

        v8 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v8)
        {
          break;
        }

        v5 = *(v8 + 16);
        if (!v5 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
        {
          goto LABEL_13;
        }
      }

      v5 = 0;
LABEL_13:
      result = mlir::SymbolTable::lookupSymbolIn(v5, result);
      goto LABEL_16;
    }

    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v7)
      {
        break;
      }

      v5 = *(v7 + 16);
      if (!v5 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_15;
      }
    }

    v5 = 0;
LABEL_15:
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, v5, result);
    if (result)
    {
LABEL_16:
      if (*(result[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
      {
        return 0;
      }
    }
  }

  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::CallOp::print(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmPrinter *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) + 8);
  if (v6)
  {
    v7 = (*(*a2 + 16))(a2);
    if (v6 > 3)
    {
      v9 = 0;
      v8 = &str_56;
    }

    else
    {
      v8 = off_2799BDB28[v6 - 1];
      v9 = 3;
    }

    llvm::raw_ostream::operator<<(v7, v8, v9);
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, " ", 1uLL);
    }

    else
    {
      *v11 = 32;
      ++*(v10 + 4);
    }
  }

  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  v13 = CalleeAttr;
  v14 = *(*CalleeAttr + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v13 = CalleeAttr[1];
  }

  else if (CalleeAttr && v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, CalleeAttr);
    goto LABEL_17;
  }

  (*(*a2 + 40))(a2, v13);
LABEL_17:
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, "(", 1uLL);
  }

  else
  {
    *v16 = 40;
    ++*(v15 + 4);
  }

  v17 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v18 = *(v17 + 68);
    v19 = *(v17 + 72);
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *&v38 = v19;
  *(&v38 + 1) = v18;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v38);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8233;
    *(v20 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v23 = *(AttrDictionary + 8);
  v24 = *(AttrDictionary + 16);
  v25 = *(*(*this + 48) + 96);
  v26 = *(*(v25 + 16) + 16);
  v38 = *(*(v25 + 8) + 16);
  v39 = v26;
  (*(*a2 + 192))(a2, v23, v24, &v38, 2);
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if ((*(v27 + 3) - v28) > 2)
  {
    *(v28 + 2) = 32;
    *v28 = 14880;
    *(v27 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v27, " : ", 3uLL);
  }

  v29 = *this;
  v30 = *(*this + 44);
  if ((v30 & 0x800000) != 0 && (v31 = *(v29 + 68), v31))
  {
    if ((*(v29 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v32 = *(v29 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = *(v29 + 16 * ((v30 >> 23) & 1) + 64);
  v34 = *(v29 + 36);
  v35 = v29 - 16;
  if (!v34)
  {
    v35 = 0;
  }

  v38 = v35;
  *&v39 = v35;
  *(&v39 + 1) = v34;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v37, &v38);
  return mlir::call_interface_impl::printFunctionSignature(a2, v32, v31, v33, 0, v37[0], v37[1], *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96), 0, 1u);
}

llvm::raw_ostream *mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = (*(*a1 + 16))(a1);
  if (v4)
  {
    v6 = result;
    result = (*(*a1 + 160))(a1, *(v3 + 24));
    v7 = v4 - 1;
    if (v7)
    {
      v8 = (v3 + 56);
      do
      {
        v9 = *(v6 + 4);
        if (*(v6 + 3) - v9 > 1uLL)
        {
          *v9 = 8236;
          *(v6 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v6, ", ", 2uLL);
        }

        v10 = *v8;
        v8 += 4;
        result = (*(*a1 + 160))(a1, v10);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 416))(a1, &v29))
  {
    v5 = mlir::ODIE::Compiler::CoreML::symbolizeComputeTarget(v29, v30);
    if ((v5 & 0x100000000) == 0)
    {
      v43 = 257;
      (*(*a1 + 24))(&__src, a1, v4, &v40);
      if (!__src)
      {
        goto LABEL_48;
      }

      mlir::Diagnostic::operator<<<40ul>(&v52, "could not symbolize the compute target ");
      if (!__src)
      {
        goto LABEL_48;
      }

      v47 = 261;
      v44 = v29;
      v45 = v30;
LABEL_47:
      mlir::Diagnostic::operator<<(&v52, &v44);
LABEL_48:
      v14 = (v54 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      return v14;
    }

    v6 = v5;
    if (v5 != 1)
    {
      v43 = 257;
      (*(*a1 + 24))(&__src, a1, v4, &v40);
      if (!__src)
      {
        goto LABEL_48;
      }

      mlir::Diagnostic::operator<<<41ul>(&v52, "cannot currently support compute target ");
      if (!__src)
      {
        goto LABEL_48;
      }

      if (v6 > 3)
      {
        v16 = 0;
        v17 = &str_56;
      }

      else
      {
        v15 = v6 & 3;
        v16 = *(&unk_25D09F698 + v15 * 8);
        v17 = (&off_2799BDB40)[v15];
      }

      v47 = 261;
      v44 = v17;
      v45 = v16;
      goto LABEL_47;
    }

    v7 = *(*(*(a2 + 8) + 96) + 16);
    v8 = (*(*a1 + 32))(a1);
    v9 = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(*v8, 1u);
    mlir::NamedAttrList::push_back(a2 + 112, v7, v9);
  }

  v27 = 0;
  v28 = 0;
  if ((*(*a1 + 160))(a1))
  {
    __src = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &__src) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v10 = __src;
      if (__src)
      {
        v11 = *__src;
        v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      }

      else
      {
        v13 = 0;
      }

      v27 = v10;
      v28 = v13;
      goto LABEL_21;
    }

    return 0;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v27) & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v48 = v50;
  v49 = 0x100000000;
  __src = v53;
  v52 = 0x400000000;
  v53[8] = 4;
  v44 = v46;
  v45 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v34 = v36;
  v35 = 0x600000000;
  if ((*(*a1 + 720))(a1, &v48, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, &__src) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(a1, &v44, &v37, &v40, &v34, 1))
  {
    v31 = v33;
    v32 = 0x600000000;
    if (v49 && v45)
    {
      v18 = v48;
      v19 = v44;
      v20 = 8 * v45 - 8;
      v21 = 32 * v49 - 32;
      while (((*(*a1 + 728))(a1, v18, *v19, &v31) & 1) != 0)
      {
        if (v21)
        {
          v18 += 32;
          ++v19;
          v22 = v20;
          v20 -= 8;
          v21 -= 32;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v14 = 0;
    }

    else
    {
LABEL_31:
      mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v27);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v31 & 0xFFFFFFFFFFFFFFF9, 0, v31 & 0xFFFFFFFFFFFFFFF9, v32);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v40, v40 + 8 * v41);
      v23 = __src;
      v24 = __src + 16 * v52;
      *(a2 + 192) = 0;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), v23, v24);
      v25 = (*(*a1 + 32))(a1);
      mlir::call_interface_impl::addArgAndResultAttrs(v25, a2, v37, v38, v34, v35, **(*(a2 + 8) + 96), *(*(*(a2 + 8) + 96) + 24));
      v14 = 1;
    }

    if (v31 != v33)
    {
      free(v31);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  if (__src != v53)
  {
    free(__src);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getInputIntents@<X0>(mlir::ODIE::Compiler::CoreML::CallOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v10;
  }

  if (mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this) && (v6 = mlir::detail::CallOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::CallOp>::resolveCallableInTable(this, v5)) != 0)
  {
    v7 = v6;
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    (*InterfaceFor)(InterfaceFor, v7, v5);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v10);
  return MEMORY[0x25F891030](v10[0], 8);
}

void mlir::ODIE::Compiler::CoreML::CallOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::CallOp *this@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) + 8))
  {
    v5 = *(v4 + 36);
    v6 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(v4 + 24) + 32), 0);
    v12 = v14;
    v13 = 0x600000000;
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v12, v5, v6);
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v13)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a3, &v12);
    }

    *(a3 + 64) = 1;
    if (v12 != v14)
    {
      free(v12);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14[0] = 0;
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = &v12;
    }

    if (mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this) && (v9 = mlir::detail::CallOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::CallOp>::resolveCallableInTable(this, v8)) != 0)
    {
      v10 = v9;
      InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
      (*(InterfaceFor + 8))(InterfaceFor, v10, v8);
    }

    else
    {
      *a3 = 0;
      *(a3 + 64) = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v12);
    MEMORY[0x25F891030](v12, 8);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(a2);
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if ((v5 & 1) == 0)
  {
    v10 = &unk_286E7A000;
    v11 = 0;
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8));
  }

  v6 = *(v4 + 8);
  v10 = &unk_286E7A000;
  v11 = v6;
  if (v6 <= 3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8));
  }

  if (v6 == 4)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8)))
    {
      return 0;
    }

    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 32));
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8)))
  {
    if (v11 == 6)
    {
      v9 = 0;
      if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, &v9))
      {
        return 0;
      }

      if (v9)
      {
        v8 = (*(*a1 + 32))(a1);
        *(v3 + 24) = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(v8, 1u);
      }
    }

    else if (!mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>(a1, (v3 + 24)))
    {
      return 0;
    }

    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 32));
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(uint64_t a1, uint64_t **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypedAttr>();
    *algn_27FC173F8 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::TypedAttr>(void)::Name;
    v15 = *algn_27FC173F8;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v8 = v19 + 24 * v20;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v20;
      }
    }
  }

  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v6;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC1E400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E400))
  {
    qword_27FC1E3F0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>();
    *algn_27FC1E3F8 = v11;
    __cxa_guard_release(&qword_27FC1E400);
  }

  if (v17)
  {
    v16 = 261;
    v14 = qword_27FC1E3F0;
    v15 = *algn_27FC1E3F8;
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

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, mlir::SymbolOpInterface *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v38[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  else
  {
    InterfaceFor = 0;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    llvm::report_fatal_error("expected to be inserting into some kind of block", 1, a3);
  }

  v12 = *(*(v7 + 2 * ((*(v7 + 11) >> 23) & 1) + 10) + 8);
  v13 = *(v12 + 12);
  v14 = *(v12 + 16) + 8 * *(v12 + 8);
  v15 = *(v11 + 32);
  if (v15 == (v11 + 32))
  {
    v16 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v15 = *(v16 + 16);
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = v14 & 0xFFFFFFFFFFFFFFF9;
  v36 = v38;
  v37 = 0x600000000;
  if (v7)
  {
    v18 = *(InterfaceFor + 40);
    do
    {
      if (!(*v18)(v18, v7))
      {
        break;
      }

      if (!*((*v18)(v18, v7) + 24) || v7 == v15)
      {
        break;
      }

      v20 = v15;
      while (1)
      {
        v21 = *(v20 + 2);
        if (!v21)
        {
          break;
        }

        v22 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v22)
        {
          break;
        }

        v20 = *(v22 + 16);
        if (v20 == v7 || v20 == 0)
        {
          if (v20)
          {
            goto LABEL_26;
          }

          break;
        }
      }

      v24 = (*v18)(v18, v7);
      v26 = mlir::SymbolRefAttr::get(v24, 0, 0, v25);
      llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v36, v26);
      v7 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(v7, v27);
      v18 = v28;
    }

    while (v7);
LABEL_26:
    v29 = v36;
    v30 = v37;
  }

  else
  {
    v30 = 0;
    v29 = v38;
  }

  v33 = v35;
  v34 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<std::reverse_iterator<mlir::FlatSymbolRefAttr*>,void>(&v33, &v29[v30], &v29[v30], v29, v29);
  v32 = mlir::SymbolRefAttr::get(*(*v33 + 8), v33 + 2, v34 - 1, v31);
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(v32, a2, v32, v17 | 2, v13, a4, a5);
  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::parse(uint64_t a1, uint64_t a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v35 = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &v35) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v4 = v35;
      if (v35)
      {
        v5 = *v35;
        v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
      }

      else
      {
        v7 = 0;
      }

      v18 = v4;
      v19 = v7;
      goto LABEL_10;
    }

    return 0;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v18) & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v39 = 0x100000000;
  v35 = v37;
  v36 = 0x400000000;
  v37[8] = 4;
  v38 = v40;
  v32 = v34;
  v33 = 0x600000000;
  __src = v31;
  v30 = 0x600000000;
  v26 = v28;
  v27 = 0x600000000;
  v23 = v25;
  v24 = 0x600000000;
  if ((*(*a1 + 720))(a1, &v38, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, &v35) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(a1, &v32, &v26, &__src, &v23, 1))
  {
    v20 = v22;
    v21 = 0x600000000;
    if (v39 && v33)
    {
      v9 = v38;
      v10 = v32;
      v11 = 8 * v33 - 8;
      v12 = 32 * v39 - 32;
      while (((*(*a1 + 728))(a1, v9, *v10, &v20) & 1) != 0)
      {
        if (v12)
        {
          v9 += 32;
          ++v10;
          v13 = v11;
          v11 -= 8;
          v12 -= 32;
          if (v13)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v8 = 0;
    }

    else
    {
LABEL_20:
      mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v18);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v20 & 0xFFFFFFFFFFFFFFF9, 0, v20 & 0xFFFFFFFFFFFFFFF9, v21);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v30);
      v14 = v35;
      v15 = &v35[2 * v36];
      *(a2 + 192) = 0;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), v14, v15);
      v16 = (*(*a1 + 32))(a1);
      mlir::call_interface_impl::addArgAndResultAttrs(v16, a2, v26, v27, v23, v24, **(*(a2 + 8) + 96), *(*(*(a2 + 8) + 96) + 16));
      v8 = 1;
    }

    if (v20 != v22)
    {
      free(v20);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (__src != v31)
  {
    free(__src);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  return v8;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::InvokeOp::print(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmPrinter *a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
  v7 = CalleeAttr;
  v8 = *(*CalleeAttr + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v7 = CalleeAttr[1];
  }

  else if (CalleeAttr && v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, CalleeAttr);
    goto LABEL_10;
  }

  (*(*a2 + 40))(a2, v7);
LABEL_10:
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
  }

  v11 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v12 = *(v11 + 68);
    v13 = *(v11 + 72);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *&v29 = v13;
  *(&v29 + 1) = v12;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v29);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8233;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v17 = *(AttrDictionary + 8);
  v18 = *(AttrDictionary + 16);
  v29 = *(*(*(*(*this + 48) + 96) + 8) + 16);
  (*(*a2 + 192))(a2, v17, v18, &v29, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    *(v19 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  v21 = *this;
  v22 = *(*this + 44);
  if ((v22 & 0x800000) != 0 && (v23 = *(v21 + 68), v23))
  {
    if ((*(v21 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = *(v21 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v21 + 16 * ((v22 >> 23) & 1) + 64);
  v26 = *(v21 + 36);
  v27 = v21 - 16;
  if (!v26)
  {
    v27 = 0;
  }

  v29 = v27;
  v30 = v27;
  v31 = v26;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v32, &v29);
  return mlir::call_interface_impl::printFunctionSignature(a2, v24, v23, v25, 0, v32[0], v32[1], *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88), 0, 1u);
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(a2);
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if ((v5 & 1) == 0)
  {
    v13 = &unk_286E7A000;
    v14 = 0;
LABEL_8:
    v12 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, &v12))
    {
      v7 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v12);
      v8 = v7;
      if (v7)
      {
        v9 = *v7;
        v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v7 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
      }

      *(v3 + 8) = v8;
      *(v3 + 16) = v7;
      return 1;
    }

    return 0;
  }

  v6 = *(v4 + 8);
  v13 = &unk_286E7A000;
  v14 = v6;
  if (v6 >= 5)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 24));
  }

  if (v6 - 3 > 1)
  {
    goto LABEL_8;
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolRefAttr>();
    unk_27FC18830 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name;
    v15 = unk_27FC18830;
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

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[8]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
  v2 = *(*result + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(mlir::SymbolOpInterface **a1, mlir::SymbolOpInterface *a2)
{
  v2 = a2;
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x600000000;
  v4 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2, a2);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      if (!(*v7)(v7, v6))
      {
        break;
      }

      if (!*((*v7)(v7, v6) + 24))
      {
        break;
      }

      v8 = *a1;
      if (v2 == *a1)
      {
        break;
      }

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
        if (v8 == v2 || v8 == 0)
        {
          if (v8)
          {
            goto LABEL_19;
          }

          break;
        }
      }

      v12 = (*v7)(v7, v6);
      v14 = mlir::SymbolRefAttr::get(v12, 0, 0, v13);
      llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v24, v14);
      v16 = *(v6 + 2);
      if (v16 && (v17 = *(v16 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v2 = *(v17 + 16);
      }

      else
      {
        v2 = 0;
      }

      v6 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v2, v15);
      v7 = v18;
    }

    while (v6);
  }

LABEL_19:
  v21 = v23;
  v22 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<std::reverse_iterator<mlir::FlatSymbolRefAttr*>,void>(&v21, v24 + 8 * v25, v24 + 8 * v25, v24, v24);
  v20 = mlir::SymbolRefAttr::get(*(*v21 + 8), v21 + 2, v22 - 1, v19);
  mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(a1, v20 & 0xFFFFFFFFFFFFFFFBLL);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  result = mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(this);
  if (result)
  {
    v5 = result;
    result = mlir::ODIE::Compiler::CoreML::resolveSymbol(a2, *this, result);
    if (!result)
    {
      v7 = *this;
      v8 = mlir::SymbolRefAttr::get(v5[1], 0, 0, v6);

      return mlir::ODIE::Compiler::CoreML::resolveSymbol(a2, v7, v8);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::resolveSymbol(uint64_t a1, uint64_t a2, void *a3)
{
  do
  {
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(a2);
    if (!result)
    {
      break;
    }

    a2 = result;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a1, result, a3);
  }

  while (!result);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(this))
  {
    v12 = *mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v12 + 8, v13))
    {
      return 1;
    }
  }

  v4 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, a2);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v4[6] + 16);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    return mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(&v19, *this);
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
  {
    return 1;
  }

LABEL_8:
  v15 = "could not resolve the callee ";
  v16 = 259;
  mlir::Operation::emitOpError(&v19, *this, &v15);
  CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
  if (v19)
  {
    v17 = 0;
    v18 = CalleeAttr;
    v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
    v9 = v21 + 24 * v22;
    v10 = *v8;
    *(v9 + 16) = *(v8 + 16);
    *v9 = v10;
    ++v22;
    if (v19)
    {
    }
  }

  v11 = (v23 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getInputIntents@<X0>(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v9;
  }

  v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, v4);
  if (v5)
  {
    v6 = v5;
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    (*InterfaceFor)(InterfaceFor, v6, v4);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v9);
  return MEMORY[0x25F891030](v9[0], 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getOutputIntents@<X0>(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v9;
  }

  v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, v4);
  if (v5)
  {
    v6 = v5;
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    (*(InterfaceFor + 8))(InterfaceFor, v6, v4);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v9);
  return MEMORY[0x25F891030](v9[0], 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v31[8] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a1, "coreml.keep_placeholder", 0x17uLL);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v20[0] = "coreml.keep_placeholder requested";
    v22 = 259;
    v17[0] = v20;
    v16 = *(a2 + 16);
    if (!v16 || v16[2] != 1)
    {
      return 0;
    }

LABEL_15:
    (*(*v16 + 88))(v16);
    return 0;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  mlir::OperationName::OperationName(v19, *(v5 + 16), *(v5 + 24), *(a2 + 8));
  if (*(v19[0] + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v18 = 1283;
    v17[0] = "dialect ";
    v17[2] = mlir::OperationName::getDialectNamespace(v19);
    v17[3] = v15;
    v20[0] = v17;
    v21[0] = " is not registered";
    v22 = 770;
    v19[1] = v20;
    v16 = *(a2 + 16);
    if (!v16 || v16[2] != 1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v20[0] = *(a1 + 24);
  v20[1] = v19[0];
  v21[0] = &v22;
  v21[1] = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x400000000;
  v25[0] = &v26;
  v25[1] = 0x400000000;
  v27 = 4;
  v28 = v30;
  v29 = 0x100000000;
  v30[1] = v31;
  v30[2] = 0x100000000;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v31[4] = 0;
  v31[6] = 0;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = *(AttrDictionary + 8);
  v8 = &v7[16 * *(AttrDictionary + 16)];
  v27 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v25, v7, v8);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v9 = *(a1 + 68);
    v10 = *(a1 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v9 = 0;
    v10 = 2;
  }

  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v21, v10, 0, v10, v9);
  v11 = *(a1 + 36);
  if (v11)
  {
    v12 = a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v23, v12, 0, v12, v11);
  v13 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert((a2 + 8), v13);
  (*(*a2 + 8))(a2, a1, v13);
  mlir::OperationState::~OperationState(v20);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PointerIndexOp::verify(mlir::ODIE::Compiler::CoreML::PointerIndexOp *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if ((*(v3 + 8) ^ *(*(*(v2 + 72) + 24) + 8)) < 8)
  {
    return 1;
  }

  v16 = 257;
  mlir::Operation::emitError(&v19, v2, v15);
  if (v19)
  {
    mlir::Diagnostic::operator<<<26ul>(v20, "expected pointer operand ");
    if (v19)
    {
      v5 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v17 = 4;
      v18 = v5;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
      v7 = v21 + 24 * v22;
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++v22;
      if (v19)
      {
        mlir::Diagnostic::operator<<<13ul>(v20, " and result ");
        if (v19)
        {
          v9 = *this - 16;
          if (!*(*this + 36))
          {
            v9 = 0;
          }

          v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
          v17 = 4;
          v18 = v10;
          v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
          v12 = v21 + 24 * v22;
          v13 = *v11;
          *(v12 + 16) = *(v11 + 16);
          *v12 = v13;
          ++v22;
          if (v19)
          {
            mlir::Diagnostic::operator<<<23ul>(v20, " to have the same type");
          }
        }
      }
    }
  }

  v4 = (v23 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::PointerIndexOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v69[2] = *MEMORY[0x277D85DE8];
  v69[0] = a4;
  v69[1] = a5;
  if (a5 != 3)
  {
    v14 = "expected exactly 2 operands for split op";
    v15 = a2;
    v16 = v11;

    return mlir::emitOptionalError<char const(&)[41]>(v15, v16, v14);
  }

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

  v18 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {

    return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
  }

  v19 = v18[1];
  v20 = &v19[8 * v18[2]];
  v67[0] = v68;
  v67[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(v67, v19, v20);
  v21 = v18[2];
  v22 = mlir::ValueRange::dereference_iterator(v69, 1);
  v23 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v25 = v22;
    v26 = v23[2];
    v63 = 0;
    v64 = 0;
    v60 = &v63;
    if ((~*(v22 + 8) & 7) != 0)
    {
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_33;
    }

    v28 = *(v27 + 8) & 7;
    if (v28 == 6)
    {
      v29 = v27 + 24 * *(v27 + 16);
      v30 = v29 + 120;
      if (v29 == -120)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v30 = v27 + 16 * v28 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, v30))
    {
LABEL_33:
      v24 = mlir::emitOptionalError<char const(&)[43]>(a2, v11, "split_size_or_sections must be a constant.");
      goto LABEL_53;
    }

    v31 = mlir::ValueRange::dereference_iterator(v69, 2);
    v63 = 0;
    v64 = 0;
    v60 = &v63;
    if ((~*(v31 + 8) & 7) != 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_52;
    }

    v33 = v31;
    v34 = *(v32 + 8) & 7;
    if (v34 == 6)
    {
      v35 = v32 + 24 * *(v32 + 16);
      v36 = v35 + 120;
      if (v35 == -120)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v36 = v32 + 16 * v34 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v60, v36))
    {
LABEL_52:
      v24 = mlir::emitOptionalError<char const(&)[24]>(a2, v11, "dim must be a constant.");
      goto LABEL_53;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v33, &v63);
    if (v66)
    {
      v37 = *v63;
      if (v63 != v65)
      {
        free(v63);
      }

      v38 = (v21 & (v37 >> 31)) + v37;
      if ((v38 & 0x80000000) != 0 || v21 <= v38)
      {
        v24 = mlir::emitOptionalError<char const(&)[12]>(a2, v11);
        goto LABEL_53;
      }

      v39 = *(v67[0] + v38);
      v60 = v62;
      v61 = 0x600000000;
      if (v26 == 1)
      {
        mlir::ODIE::Compiler::extract1DIntVector<int>(v25, &v63);
        if (v66)
        {
          *&v58 = v59;
          *(&v58 + 1) = 0xC00000000;
          if (!v64 || (llvm::SmallVectorImpl<int>::operator=(&v58, &v63), (v66 & 1) != 0))
          {
            if (v63 != v65)
            {
              free(v63);
            }
          }

          if (DWORD2(v58))
          {
            LODWORD(v43) = 0;
            v44 = v58;
            v45 = 4 * DWORD2(v58);
            while (1)
            {
              v46 = *v44;
              if ((v46 & 0x80000000) != 0)
              {
                break;
              }

              v43 = (v46 + v43);
              llvm::SmallVectorTemplateBase<long long,true>::push_back(&v60, v46);
              ++v44;
              v45 -= 4;
              if (!v45)
              {
                goto LABEL_72;
              }
            }

            v42 = mlir::emitOptionalError<char const(&)[41]>(a2, v11, "split sections must be positive numbers.");
            v48 = 0;
          }

          else
          {
            v43 = 0;
LABEL_72:
            v42 = 0;
            v48 = v39 == v43;
          }

          if (v58 != v59)
          {
            free(v58);
          }

          if (!v48)
          {
            goto LABEL_83;
          }

          goto LABEL_77;
        }
      }

      else
      {
        if (v26)
        {
          v47 = mlir::emitOptionalError<char const(&)[52]>(a2, v11);
          goto LABEL_70;
        }

        mlir::ODIE::Compiler::extract1DIntVector<int>(v25, &v63);
        if (v66)
        {
          v40 = *v63;
          if (v63 != v65)
          {
            free(v63);
          }

          if (v40 >= 1)
          {
            if (v39 / v40 >= 1)
            {
              v41 = v39 / v40;
              do
              {
                llvm::SmallVectorTemplateBase<long long,true>::push_back(&v60, v40);
                --v41;
              }

              while (v41);
            }

            if (v39 % v40 > 0)
            {
              llvm::SmallVectorTemplateBase<long long,true>::push_back(&v60, v39 % v40);
            }

LABEL_77:
            if (v61)
            {
              v49 = v60;
              v50 = 8 * v61;
              do
              {
                v51 = v18[1];
                v52 = &v51[8 * v18[2]];
                v63 = v65;
                v64 = 0x600000000;
                llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v63, v51, v52);
                v53 = v63;
                *(v63 + v38) = *v49;
                v54 = v18[3];
                *&v58 = v53;
                *(&v58 + 1) = v64;
                v56 = 0;
                v57 = v54;
                v55 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v54 + 32), &v58, &v57, &v56);
                llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v55);
                if (v63 != v65)
                {
                  free(v63);
                }

                ++v49;
                v50 -= 8;
              }

              while (v50);
            }

            v42 = 1;
            goto LABEL_83;
          }

          v47 = mlir::emitOptionalError<char const(&)[24]>(a2, v11, "split size must be >= 1");
LABEL_70:
          v42 = v47;
LABEL_83:
          if (v60 != v62)
          {
            free(v60);
          }

          goto LABEL_54;
        }
      }
    }

    v15 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::emitOptionalError<char const(&)[41]>(v15, v16, v14);
  }

  v24 = mlir::emitOptionalError<char const(&)[47]>(a2, v11, "split_size_or_sections must be a ranked tensor");
LABEL_53:
  v42 = v24;
LABEL_54:
  if (v67[0] != v68)
  {
    free(v67[0]);
  }

  return v42;
}

BOOL mlir::emitOptionalError<char const(&)[41]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<41ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[24]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<24ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[12]>(void **a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v4[16] = 257;
  emitDiag(a1, 2, v4, &v5);
  if (v5)
  {
    mlir::Diagnostic::operator<<<12ul>(v6, "invalid dim");
  }

  v2 = (v6[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v5);
  return v2;
}

BOOL mlir::emitOptionalError<char const(&)[52]>(void **a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v4[16] = 257;
  emitDiag(a1, 2, v4, &v5);
  if (v5)
  {
    mlir::Diagnostic::operator<<<52ul>(v6, "split_size_or_sections must be a 0-D or 1-D tensor.");
  }

  v2 = (v6[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v5);
  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::SplitOp::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = 0x600000000;
  __src = v18;
  if (mlir::ODIE::Compiler::CoreML::SplitOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, &__src) && !mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v11 = __src;
    v12 = __src + 8 * v17;
    a11[2] = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
  }

  if (__src != v18)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyMatchingPointeeAndConcreteTypes(void **a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v5 = *(*v4 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id)
    {
      if (v4 == a3[1])
      {
        goto LABEL_22;
      }

      v32 = 257;
      emitDiag(a1, 2, &v30, &v33);
      if (!v33 || (mlir::Diagnostic::operator<<<64ul>(v34, "expected the parameter reference to match between the pointer: "), !v33) || (v30 = 0, v31 = v4, v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v30, 1), v26 = v35 + 24 * v36, v27 = *v25, *(v26 + 16) = *(v25 + 16), *v26 = v27, ++v36, !v33) || (mlir::Diagnostic::operator<<<17ul>(v34, " and the value: "), !v33))
      {
LABEL_28:
        v24 = v37 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
        return v24 & 1;
      }

      v28 = a3[1];
      v30 = 0;
      v31 = v28;
    }

    else
    {
      v32 = 257;
      emitDiag(a1, 2, &v30, &v33);
      if (!v33)
      {
        goto LABEL_28;
      }

      mlir::Diagnostic::operator<<<65ul>(v34, "expected a !coreml.param_ref type for a parametric pointer, got ");
      if (!v33)
      {
        goto LABEL_28;
      }

      v30 = 4;
      v31 = a3;
    }

    v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v30, 1);
    v14 = v35 + 24 * v36;
    v15 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v15;
    ++v36;
    goto LABEL_28;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v32 = 257;
    emitDiag(a1, 2, &v30, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<18ul>(v34, "expected pointer ");
      if (v33)
      {
        v30 = 4;
        v31 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v30, 1);
        v8 = v35 + 24 * v36;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v36;
        if (v33)
        {
          mlir::Diagnostic::operator<<<12ul>(v34, " and value ");
          if (v33)
          {
            v30 = 4;
            v31 = a3;
            v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v30, 1);
            v11 = v35 + 24 * v36;
            v12 = *v10;
            *(v11 + 16) = *(v10 + 16);
            *v11 = v12;
            ++v36;
            if (v33)
            {
              mlir::Diagnostic::operator<<<24ul>(v34, " to have matching types");
            }
          }
        }
      }
    }

    goto LABEL_28;
  }

  v16 = v4[1];
  if (*(v16 + 8) != a3)
  {
    v32 = 257;
    emitDiag(a1, 2, &v30, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<27ul>(v34, "expected the pointee type ");
      if (v33)
      {
        v17 = *(v16 + 8);
        v30 = 4;
        v31 = v17;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v30, 1);
        v19 = v35 + 24 * v36;
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++v36;
        if (v33)
        {
          mlir::Diagnostic::operator<<<21ul>(v34, " and the value type ");
          if (v33)
          {
            v30 = 4;
            v31 = a3;
            v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v30, 1);
            v22 = v35 + 24 * v36;
            v23 = *v21;
            *(v22 + 16) = *(v21 + 16);
            *v22 = v23;
            ++v36;
            if (v33)
            {
              mlir::Diagnostic::operator<<<10ul>(v34, " to match");
            }
          }
        }
      }
    }

    goto LABEL_28;
  }

LABEL_22:
  v24 = 1;
  return v24 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::PointerLoadOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
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

    v20[3] = v11;
    v20[4] = v12;
    v15 = v13[1] & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v15 + 8);
    v17 = *(*v16 + 136);
    if (v16)
    {
      v18 = v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v16[1];
      v17 = *(*v19 + 136);
    }

    else
    {
      v19 = *(v15 + 8);
    }

    if (v17 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && v19[1])
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v19[1]);
    }

    else
    {
      v20[0] = mlir::ODIE::Compiler::CoreML::ParamRefType::get(*(**v16 + 32), v16, *(v15 + 16));
      llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(a11, v20);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t))
{
  mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 8) + 96), a3);
  __src = (*a4)(a4, a3);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v8);
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if (a5)
  {

    return mlir::emitOptionalError<char const(&)[21]>(a2, a3, "expected no operands");
  }

  else
  {
    if (a7)
    {
      v18 = *a7;
    }

    else
    {
      v18 = 0uLL;
    }

    mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v19, a6, &v18, a9, a10);
    v20 = a4;
    v21 = 0;
    ValueAttr = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::getValueAttr(v19);
    if (ValueAttr)
    {
      v17 = (*v16)(v16, ValueAttr);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v17);
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[28]>(a2, v12, "no value attribute provided");
    }
  }
}

BOOL mlir::emitOptionalError<char const(&)[21]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<21ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::ConstantOp *this@<X0>, uint64_t a2@<X8>)
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

mlir::Operation *mlir::ODIE::Compiler::CoreML::ConstantOp::walkAttrsToHash(mlir::Operation **a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  result = *a1;
  v7 = *(result + 6);
  if (*(v7 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v7 + 8) + 32;
  }

  else
  {
    v8 = v7 + 24;
  }

  v9 = *(*v8 + 128);
  if (v9 != 2)
  {
    if (v9 != 1)
    {
      if (!v9)
      {
        result = mlir::Operation::getAttrDictionary(result);
        v10 = *(result + 2);
        if (v10)
        {
          v11 = *(result + 1);
          v12 = &v11[2 * v10];
          do
          {
            v13 = *v11;
            v14 = v11[1];
            v11 += 2;
            result = a2(a3, v13, v14);
          }

          while (v11 != v12);
        }
      }

      return result;
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(result);
    v16 = *(AttrDictionary + 16);
    if (v16)
    {
      v17 = 16 * v16;
      v18 = *(AttrDictionary + 8) + 8;
      do
      {
        if (*(**v18 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
        {
          (a2)(a3, *(v18 - 8));
        }

        v18 += 16;
        v17 -= 16;
      }

      while (v17);
    }
  }

  result = mlir::Operation::getAttrDictionary(*a1);
  v19 = *(result + 2);
  if (v19)
  {
    v20 = (*(result + 1) + 8);
    v21 = 16 * v19;
    do
    {
      v22 = *(v20 - 1);
      if (v22 != **(*(*a1 + 6) + 96))
      {
        result = a2(a3, v22, *v20);
      }

      v20 += 2;
      v21 -= 16;
    }

    while (v21);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v81 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(v75, a6, a9, a10);
  v76 = a4;
  v77 = a5;
  v15 = a4 & 0xFFFFFFFFFFFFFFF8;
  v64 = 0;
  if ((a4 & 6) != 0 || !v15)
  {
    if ((a4 & 6) == 2 && v15)
    {
      v15 = *(v15 + 24);
    }
  }

  else
  {
    v15 = *v15;
  }

  *&v78 = &v64;
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
      return 0;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v78, v18))
  {
    return 0;
  }

  v19 = (*(*(v64 + 16) + 24))();
  if (v20)
  {
    v21 = 8 * v20;
    v22 = 1;
    do
    {
      v23 = *v19++;
      v22 *= v23;
      v21 -= 8;
    }

    while (v21);
    if (v22 != 1)
    {
      if (v13)
      {
        v74[8] = 257;
        emitDiag(a2, 2, &v72, &v78);
        if (v78)
        {
          mlir::Diagnostic::operator<<<50ul>(&v78 + 8, "expected a single dimension along which to concat");
        }

        v39 = (v80 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
        return v39;
      }

      return 0;
    }
  }

  v24 = v64;
  (*(*(v64 + 16) + 24))();
  (*(*(v64 + 16) + 24))();
  v78 = v24;
  v25 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v78);
  v26 = *(v25 + 24);
  if (v26 > 0x40)
  {
    operator new[]();
  }

  if (v26)
  {
    v27 = (*(v25 + 16) << -v26) >> -v26;
  }

  else
  {
    v27 = 0;
  }

  v72 = v74;
  v73 = 0x600000000;
  *&v78 = v76;
  *(&v78 + 1) = 1;
  v28 = mlir::ValueRange::offset_base(&v78, 1);
  v29 = (v28 & 0xFFFFFFFFFFFFFFF8);
  if ((v28 & 6) != 0 || !v29)
  {
    if ((v28 & 6) == 2 && v29)
    {
      v29 = v29[3];
    }
  }

  else
  {
    v29 = *v29;
  }

  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v29[1] & 0xFFFFFFFFFFFFFFF8));
  if (!v30)
  {
    v39 = mlir::emitOptionalError<char const(&)[47]>(a2, v13, "expected a ShapedType for all inputs to concat");
    goto LABEL_81;
  }

  v32 = v30;
  v33 = v31;
  v34 = (*(v31 + 24))(v31, v30);
  *&v78 = v79;
  *(&v78 + 1) = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v78, v34, &v34[8 * v35]);
  llvm::SmallVectorImpl<long long>::operator=(&v72, &v78);
  if (v78 != v79)
  {
    free(v78);
  }

  if (!v73)
  {
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v72, 1);
  }

  v63 = a2;
  if (v27 < 0)
  {
    (*(v33 + 24))(v33, v32);
    v27 += v36;
  }

  v37 = (*(v33 + 8))(v33, v32);
  v38 = v77;
  v39 = 1;
  *&v78 = v76;
  *(&v78 + 1) = 1;
  v40 = v77 - 1;
  v70 = mlir::ValueRange::offset_base(&v78, 1);
  v71 = 1;
  if (v38 == 2)
  {
LABEL_38:
    *&v78 = v72;
    *(&v78 + 1) = v73;
    v67 = v37;
    v65[0] = 0;
    v41 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v37 + 32), &v78, &v67, v65);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v41);
    v39 = 1;
    goto LABEL_81;
  }

  v43 = 1;
LABEL_47:
  v44 = mlir::ValueRange::dereference_iterator(&v70, v43);
  v45 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v44 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v45)
  {
    v62 = mlir::emitOptionalError<char const(&)[47]>(v63, v13, "expected a ShapedType for all inputs to concat");
    goto LABEL_80;
  }

  v47 = v45;
  v48 = v46;
  if ((*(v46 + 8))(v46, v45) == v37)
  {
    if (!(*(v48 + 16))(v48, v47) || ((*(v48 + 24))(v48, v47), v49 != v73))
    {
      (*(v48 + 24))(v48, v47);
      if (v50 || v73 != 1)
      {
        v62 = mlir::emitOptionalError<char const(&)[49]>(v63, v13);
        goto LABEL_80;
      }
    }

    v52 = (*(v48 + 24))(v48, v47);
    v67 = v69;
    v68 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v67, v52, &v52[8 * v53]);
    if (!v68)
    {
      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v67, 1);
    }

    v54 = v73;
    if (!v73)
    {
LABEL_67:
      v57 = 0;
      goto LABEL_68;
    }

    v55 = 0;
    v56 = v72;
    v57 = 1;
    v58 = v67;
    while (1)
    {
      if (v27 == v55)
      {
        v59 = v56[v27];
        if (v59 != 0x8000000000000000)
        {
          v60 = v58[v27];
          v61 = v60 + v59;
          if (v60 == 0x8000000000000000)
          {
            v61 = v58[v27];
          }

          v56[v27] = v61;
        }
      }

      else if (v56[v55] != v58[v55])
      {
        if (v13)
        {
          v66 = 257;
          emitDiag(v63, 2, v65, &v78);
          if (v78)
          {
            mlir::Diagnostic::operator<<<88ul>(&v78 + 8, "expected all input shapes to match along all dimensions other than the concat dimension");
          }

          v39 = (v80 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
        }

        else
        {
          v39 = 0;
        }

LABEL_68:
        if (v67 != v69)
        {
          free(v67);
        }

        if (v57)
        {
          goto LABEL_81;
        }

        v71 = ++v43;
        if (v43 == v40)
        {
          goto LABEL_38;
        }

        goto LABEL_47;
      }

      v57 = ++v55 < v54;
      if (v54 == v55)
      {
        goto LABEL_67;
      }
    }
  }

  v62 = mlir::emitOptionalError<char const(&)[56]>(v63, v13, "expected the same element type for all inputs to concat");
LABEL_80:
  v39 = v62;
LABEL_81:
  if (v72 != v74)
  {
    free(v72);
  }

  return v39;
}

BOOL mlir::emitOptionalError<char const(&)[56]>(void **a1, char a2, char *a3)
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
    mlir::Diagnostic::operator<<<56ul>(v8, a3);
  }

  v4 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v4;
}