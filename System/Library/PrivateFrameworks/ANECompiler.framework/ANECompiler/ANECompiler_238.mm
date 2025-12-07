BOOL mlir::mps::DepthwiseConv3DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
}

uint64_t mlir::mps::DepthwiseConv3DOp::getChannelAxis(mlir::mps::DepthwiseConv3DOp *this)
{
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v6, &v4);
  if (v5 > 0x40)
  {
    v3 = *v4;
    MEMORY[0x1AC55A040]();
    return v3;
  }

  else if (v5)
  {
    return ((v4 << -v5) >> -v5);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::mps::DepthwiseConv3DOp::verifyInvariantsImpl(uint64_t **this)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v3 = v1[8];
  v4 = v1[9];
  v2 = v1 + 8;
  if (v4)
  {
    v5 = v2[2];
    if (v5)
    {
      v6 = v2[3];
      if (v6)
      {
        v7 = v2[4];
        if (v7)
        {
          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v7, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v4, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v5, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v6, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "channelAxis", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
          {
            return 0;
          }

          if (*(*this + 9))
          {
            v9 = *this - 2;
          }

          else
          {
            v9 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
          return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
        }

        v39[0] = "requires attribute 'strides'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

          v32 = __p;
          if (__p)
          {
            v33 = v47;
            v34 = __p;
            if (v47 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v47 = v32;
            operator delete(v34);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_83;
          }

          v35 = v45;
          v17 = v44;
          if (v45 == v44)
          {
LABEL_82:
            v45 = v15;
            operator delete(v17);
LABEL_83:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v11;
          }

          do
          {
            v37 = *--v35;
            v36 = v37;
            *v35 = 0;
            if (v37)
            {
              MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
            }
          }

          while (v35 != v15);
LABEL_81:
          v17 = v44;
          goto LABEL_82;
        }
      }

      else
      {
        v39[0] = "requires attribute 'padding_style'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

          v26 = __p;
          if (__p)
          {
            v27 = v47;
            v28 = __p;
            if (v47 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v47 = v26;
            operator delete(v28);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_83;
          }

          v29 = v45;
          v17 = v44;
          if (v45 == v44)
          {
            goto LABEL_82;
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

          while (v29 != v15);
          goto LABEL_81;
        }
      }
    }

    else
    {
      v39[0] = "requires attribute 'explicit_padding'";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, v41);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

        v20 = __p;
        if (__p)
        {
          v21 = v47;
          v22 = __p;
          if (v47 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v47 = v20;
          operator delete(v22);
        }

        v15 = v44;
        if (!v44)
        {
          goto LABEL_83;
        }

        v23 = v45;
        v17 = v44;
        if (v45 == v44)
        {
          goto LABEL_82;
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

        while (v23 != v15);
        goto LABEL_81;
      }
    }
  }

  else
  {
    v39[0] = "requires attribute 'dilation_rates'";
    v40 = 259;
    mlir::OpState::emitOpError(this, v39, v41);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

      v12 = __p;
      if (__p)
      {
        v13 = v47;
        v14 = __p;
        if (v47 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v47 = v12;
        operator delete(v14);
      }

      v15 = v44;
      if (!v44)
      {
        goto LABEL_83;
      }

      v16 = v45;
      v17 = v44;
      if (v45 == v44)
      {
        goto LABEL_82;
      }

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
      goto LABEL_81;
    }
  }

  return v11;
}

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
}

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v3 = v1[8];
  v4 = v1[9];
  v2 = v1 + 8;
  if (v4)
  {
    v5 = v2[2];
    if (v5)
    {
      v6 = v2[3];
      if (v6)
      {
        v7 = v2[4];
        if (v7)
        {
          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v7, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v4, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v5, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v6, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41))
          {
            return 0;
          }

          v41[0] = *this;
          if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "channelAxis", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
          {
            return 0;
          }

          if (*(*this + 9))
          {
            v9 = *this - 2;
          }

          else
          {
            v9 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
          return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
        }

        v39[0] = "requires attribute 'strides'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

          v32 = __p;
          if (__p)
          {
            v33 = v47;
            v34 = __p;
            if (v47 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v47 = v32;
            operator delete(v34);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_84;
          }

          v35 = v45;
          v17 = v44;
          if (v45 == v44)
          {
LABEL_83:
            v45 = v15;
            operator delete(v17);
LABEL_84:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v11;
          }

          do
          {
            v37 = *--v35;
            v36 = v37;
            *v35 = 0;
            if (v37)
            {
              MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
            }
          }

          while (v35 != v15);
LABEL_82:
          v17 = v44;
          goto LABEL_83;
        }
      }

      else
      {
        v39[0] = "requires attribute 'padding_style'";
        v40 = 259;
        mlir::OpState::emitOpError(this, v39, v41);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

          v26 = __p;
          if (__p)
          {
            v27 = v47;
            v28 = __p;
            if (v47 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v47 = v26;
            operator delete(v28);
          }

          v15 = v44;
          if (!v44)
          {
            goto LABEL_84;
          }

          v29 = v45;
          v17 = v44;
          if (v45 == v44)
          {
            goto LABEL_83;
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

          while (v29 != v15);
          goto LABEL_82;
        }
      }
    }

    else
    {
      v39[0] = "requires attribute 'explicit_padding'";
      v40 = 259;
      mlir::OpState::emitOpError(this, v39, v41);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

        v20 = __p;
        if (__p)
        {
          v21 = v47;
          v22 = __p;
          if (v47 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v47 = v20;
          operator delete(v22);
        }

        v15 = v44;
        if (!v44)
        {
          goto LABEL_84;
        }

        v23 = v45;
        v17 = v44;
        if (v45 == v44)
        {
          goto LABEL_83;
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

        while (v23 != v15);
        goto LABEL_82;
      }
    }
  }

  else
  {
    v39[0] = "requires attribute 'dilation_rates'";
    v40 = 259;
    mlir::OpState::emitOpError(this, v39, v41);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

      v12 = __p;
      if (__p)
      {
        v13 = v47;
        v14 = __p;
        if (v47 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v47 = v12;
        operator delete(v14);
      }

      v15 = v44;
      if (!v44)
      {
        goto LABEL_84;
      }

      v16 = v45;
      v17 = v44;
      if (v45 == v44)
      {
        goto LABEL_83;
      }

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
      goto LABEL_82;
    }
  }

  return v11;
}

uint64_t mlir::mps::DequantizeLUTOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "axis", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 49;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

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
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeLUTOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "axis", 4uLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::DequantizeLUTOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

BOOL mlir::mps::DequantizeLUTOp::verifyInvariantsImpl(uint64_t **this)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v58[0] = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v58))
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v18 = v12[1];
      goto LABEL_21;
    }

LABEL_19:
    v18 = 0;
LABEL_21:
    v58[0] = v5;
    v58[1] = v18;
    v53[0] = mlir::ElementsAttr::isSplat(v58);
    if (mlir::Type::isUnsignedInteger(v53, 2) || mlir::Type::isUnsignedInteger(v53, 3) || mlir::Type::isUnsignedInteger(v53, 4) || mlir::Type::isUnsignedInteger(v53, 6) || mlir::Type::isUnsignedInteger(v53, 8))
    {
      goto LABEL_56;
    }
  }

  v54 = 261;
  v53[0] = "operand";
  v53[1] = 7;
  mlir::Operation::emitOpError(v4, v53, v58);
  if (v58[0])
  {
    v55 = 3;
    v56 = " #";
    v57 = 2;
    v19 = &v55;
    v20 = v59;
    if (v60 >= v61)
    {
      if (v59 <= &v55 && v59 + 24 * v60 > &v55)
      {
        v49 = &v55 - v59;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
        v20 = v59;
        v19 = (v59 + v49);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
        v19 = &v55;
        v20 = v59;
      }
    }

    v21 = &v20[24 * v60];
    v22 = *v19;
    *(v21 + 2) = *(v19 + 2);
    *v21 = v22;
    v23 = ++v60;
    if (v58[0])
    {
      v55 = 5;
      v56 = 0;
      v24 = &v55;
      v25 = v59;
      if (v23 >= v61)
      {
        if (v59 <= &v55 && v59 + 24 * v23 > &v55)
        {
          v50 = &v55 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v23 + 1, 24);
          v25 = v59;
          v24 = (v59 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v23 + 1, 24);
          v24 = &v55;
          v25 = v59;
        }
      }

      v26 = &v25[24 * v60];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      v28 = ++v60;
      if (v58[0])
      {
        v55 = 3;
        v56 = " must be tensor of palette LUT index values, but got ";
        v57 = 53;
        v29 = &v55;
        v30 = v59;
        if (v28 >= v61)
        {
          if (v59 <= &v55 && v59 + 24 * v28 > &v55)
          {
            v51 = &v55 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v28 + 1, 24);
            v30 = v59;
            v29 = (v59 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v28 + 1, 24);
            v29 = &v55;
            v30 = v59;
          }
        }

        v31 = &v30[24 * v60];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v60;
        if (v58[0])
        {
          v33 = &v55;
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v5);
          v34 = v59;
          if (v60 >= v61)
          {
            if (v59 <= &v55 && v59 + 24 * v60 > &v55)
            {
              v52 = &v55 - v59;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
              v34 = v59;
              v33 = (v59 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
              v33 = &v55;
              v34 = v59;
            }
          }

          v35 = &v34[24 * v60];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v60;
        }
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
  if (v58[0])
  {
    mlir::InFlightDiagnostic::report(v58);
  }

  if (v68 == 1)
  {
    if (v67 != &v68)
    {
      free(v67);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v66;
      v40 = __p;
      if (v66 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v66 = v38;
      operator delete(v40);
    }

    v41 = v63;
    if (v63)
    {
      v42 = v64;
      v43 = v63;
      if (v64 != v63)
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
        v43 = v63;
      }

      v64 = v41;
      operator delete(v43);
    }

    if (v59 != v62)
    {
      free(v59);
    }
  }

  if (!v37)
  {
    return 0;
  }

LABEL_56:
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v46 = *this - 2;
  }

  else
  {
    v46 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::mps::DequantizeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
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
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "axis", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 49;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v58, "dtype", 5uLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 50;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "axis", 4uLL, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "dtype", 5uLL, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

BOOL mlir::mps::DequantizeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::DequantizeOp::getAxis(mlir::mps::DequantizeOp *this)
{
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &v4);
  if (v5 > 0x40)
  {
    v3 = *v4;
    MEMORY[0x1AC55A040]();
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (v4 << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

void mlir::mps::DequantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = a7;
  if (a8)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a8;
  }

  __src = v34;
  v33 = 0x200000000;
  v14 = *a1;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DequantizeOp::inferReturnTypes(v14, v18, v19, v31[0], v31[1], Dictionary, v17, v20, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v21);
  }

  v22 = __src;
  v23 = v33;
  v24 = *(a2 + 72);
  v25 = v24 + v33;
  if (v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v25, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v23);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v34)
  {
    free(__src);
  }
}

BOOL mlir::mps::DequantizeOp::verifyInvariantsImpl(uint64_t **this)
{
  v139 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    v127 = v2;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v4, "dtype", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v127))
    {
      return 0;
    }

    v127 = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v5, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v127))
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    v9 = *(*v7 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_57;
    }

    {
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = *(v8 + 8);
      v13 = *(v8 + 16);
      if (!v13)
      {
        goto LABEL_41;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = *(v8 + 8);
      v13 = *(v8 + 16);
      if (!v13)
      {
        goto LABEL_41;
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
      v29 = v14[1];
LABEL_43:
      v127 = v7;
      v128 = v29;
      isSplat = mlir::ElementsAttr::isSplat(&v127);
      if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_118;
      }

      v8 = *v7;
      v9 = *(*v7 + 136);
LABEL_57:
      if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
LABEL_88:
        v123 = 261;
        v121 = "operand";
        v122 = 7;
        mlir::Operation::emitOpError(v6, &v121, &v127);
        if (v127)
        {
          LODWORD(isSplat) = 3;
          v125 = " #";
          v126 = 2;
          p_isSplat = &isSplat;
          v42 = v129;
          if (v130 >= v131)
          {
            if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
            {
              v113 = &isSplat - v129;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
              v42 = v129;
              p_isSplat = (v129 + v113);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
              p_isSplat = &isSplat;
              v42 = v129;
            }
          }

          v43 = &v42[24 * v130];
          v44 = *p_isSplat;
          *(v43 + 2) = p_isSplat[2];
          *v43 = v44;
          v45 = ++v130;
          if (v127)
          {
            LODWORD(isSplat) = 5;
            v125 = 0;
            v46 = &isSplat;
            v47 = v129;
            if (v45 >= v131)
            {
              if (v129 <= &isSplat && v129 + 24 * v45 > &isSplat)
              {
                v115 = &isSplat - v129;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v45 + 1, 24);
                v47 = v129;
                v46 = (v129 + v115);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v45 + 1, 24);
                v46 = &isSplat;
                v47 = v129;
              }
            }

            v48 = &v47[24 * v130];
            v49 = *v46;
            *(v48 + 2) = v46[2];
            *v48 = v49;
            v50 = ++v130;
            if (v127)
            {
              LODWORD(isSplat) = 3;
              v125 = " must be tensor of mps native type values or tensor of quantized values, but got ";
              v126 = 81;
              v51 = &isSplat;
              v52 = v129;
              if (v50 >= v131)
              {
                if (v129 <= &isSplat && v129 + 24 * v50 > &isSplat)
                {
                  v117 = &isSplat - v129;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v50 + 1, 24);
                  v52 = v129;
                  v51 = (v129 + v117);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v50 + 1, 24);
                  v51 = &isSplat;
                  v52 = v129;
                }
              }

              v53 = &v52[24 * v130];
              v54 = *v51;
              *(v53 + 2) = v51[2];
              *v53 = v54;
              ++v130;
              if (v127)
              {
                v55 = &isSplat;
                mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v7);
                v56 = v129;
                if (v130 >= v131)
                {
                  if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
                  {
                    v119 = &isSplat - v129;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                    v56 = v129;
                    v55 = (v129 + v119);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                    v55 = &isSplat;
                    v56 = v129;
                  }
                }

                v57 = &v56[24 * v130];
                v58 = *v55;
                *(v57 + 2) = v55[2];
                *v57 = v58;
                ++v130;
              }
            }
          }
        }

        v59 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
        if (v127)
        {
          mlir::InFlightDiagnostic::report(&v127);
        }

        if (v138 == 1)
        {
          if (v137 != &v138)
          {
            free(v137);
          }

          v60 = __p;
          if (__p)
          {
            v61 = v136;
            v62 = __p;
            if (v136 != __p)
            {
              do
              {
                v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
              }

              while (v61 != v60);
              v62 = __p;
            }

            v136 = v60;
            operator delete(v62);
          }

          v63 = v133;
          if (v133)
          {
            v64 = v134;
            v65 = v133;
            if (v134 != v133)
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
              v65 = v133;
            }

            v134 = v63;
            operator delete(v65);
          }

          if (v129 != v132)
          {
            free(v129);
          }
        }

        if (!v59)
        {
          return 0;
        }

LABEL_118:
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
        {
          return 0;
        }

        v68 = *this;
        v69 = *(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
        v70 = *v69;
        v71 = *(*v69 + 136);
        if (v71 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v71 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_162;
        }

        {
          v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v74 = *(v70 + 8);
          v75 = *(v70 + 16);
          if (v75)
          {
            goto LABEL_126;
          }
        }

        else
        {
          mlir::Builder::getI32VectorAttr();
          v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v74 = *(v70 + 8);
          v75 = *(v70 + 16);
          if (v75)
          {
LABEL_126:
            v76 = v74;
            v77 = v75;
            do
            {
              v78 = v77 >> 1;
              v79 = &v76[2 * (v77 >> 1)];
              v81 = *v79;
              v80 = v79 + 2;
              v77 += ~(v77 >> 1);
              if (v81 < v73)
              {
                v76 = v80;
              }

              else
              {
                v77 = v78;
              }
            }

            while (v77);
LABEL_146:
            if (v76 != &v74[2 * v75] && *v76 == v73)
            {
              v82 = v76[1];
            }

            else
            {
              v82 = 0;
            }

            v127 = v69;
            v128 = v82;
            v121 = mlir::ElementsAttr::isSplat(&v127);
            if (mlir::Type::isSignedInteger(&v121, 2) || mlir::Type::isSignedInteger(&v121, 4) || mlir::Type::isSignedInteger(&v121, 8) || mlir::Type::isSignedInteger(&v121, 16) || mlir::Type::isSignedInteger(&v121, 32) || mlir::Type::isUnsignedInteger(&v121, 1) || mlir::Type::isUnsignedInteger(&v121, 2) || mlir::Type::isUnsignedInteger(&v121, 4) || mlir::Type::isUnsignedInteger(&v121, 8) || mlir::Type::isUnsignedInteger(&v121, 16) || mlir::Type::isUnsignedInteger(&v121, 32) || *(*v121 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
            {
LABEL_192:
              if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
              {
                if (*(*this + 9))
                {
                  v110 = *this - 2;
                }

                else
                {
                  v110 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v110, 0);
                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
              }

              return 0;
            }

LABEL_162:
            v123 = 261;
            v121 = "operand";
            v122 = 7;
            mlir::Operation::emitOpError(v68, &v121, &v127);
            if (v127)
            {
              LODWORD(isSplat) = 3;
              v125 = " #";
              v126 = 2;
              v83 = &isSplat;
              v84 = v129;
              if (v130 >= v131)
              {
                if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
                {
                  v114 = &isSplat - v129;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                  v84 = v129;
                  v83 = (v129 + v114);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                  v83 = &isSplat;
                  v84 = v129;
                }
              }

              v85 = &v84[24 * v130];
              v86 = *v83;
              *(v85 + 2) = v83[2];
              *v85 = v86;
              v87 = ++v130;
              if (v127)
              {
                LODWORD(isSplat) = 5;
                v125 = 2;
                v88 = &isSplat;
                v89 = v129;
                if (v87 >= v131)
                {
                  if (v129 <= &isSplat && v129 + 24 * v87 > &isSplat)
                  {
                    v116 = &isSplat - v129;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v87 + 1, 24);
                    v89 = v129;
                    v88 = (v129 + v116);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v87 + 1, 24);
                    v88 = &isSplat;
                    v89 = v129;
                  }
                }

                v90 = &v89[24 * v130];
                v91 = *v88;
                *(v90 + 2) = v88[2];
                *v90 = v91;
                v92 = ++v130;
                if (v127)
                {
                  LODWORD(isSplat) = 3;
                  v125 = " must be tensor of quantized values, but got ";
                  v126 = 45;
                  v93 = &isSplat;
                  v94 = v129;
                  if (v92 >= v131)
                  {
                    if (v129 <= &isSplat && v129 + 24 * v92 > &isSplat)
                    {
                      v118 = &isSplat - v129;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v92 + 1, 24);
                      v94 = v129;
                      v93 = (v129 + v118);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v92 + 1, 24);
                      v93 = &isSplat;
                      v94 = v129;
                    }
                  }

                  v95 = &v94[24 * v130];
                  v96 = *v93;
                  *(v95 + 2) = v93[2];
                  *v95 = v96;
                  ++v130;
                  if (v127)
                  {
                    v97 = &isSplat;
                    mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v69);
                    v98 = v129;
                    if (v130 >= v131)
                    {
                      if (v129 <= &isSplat && v129 + 24 * v130 > &isSplat)
                      {
                        v120 = &isSplat - v129;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                        v98 = v129;
                        v97 = (v129 + v120);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
                        v97 = &isSplat;
                        v98 = v129;
                      }
                    }

                    v99 = &v98[24 * v130];
                    v100 = *v97;
                    *(v99 + 2) = v97[2];
                    *v99 = v100;
                    ++v130;
                  }
                }
              }
            }

            v101 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
            if (v127)
            {
              mlir::InFlightDiagnostic::report(&v127);
            }

            if (v138 == 1)
            {
              if (v137 != &v138)
              {
                free(v137);
              }

              v102 = __p;
              if (__p)
              {
                v103 = v136;
                v104 = __p;
                if (v136 != __p)
                {
                  do
                  {
                    v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
                  }

                  while (v103 != v102);
                  v104 = __p;
                }

                v136 = v102;
                operator delete(v104);
              }

              v105 = v133;
              if (v133)
              {
                v106 = v134;
                v107 = v133;
                if (v134 != v133)
                {
                  do
                  {
                    v109 = *--v106;
                    v108 = v109;
                    *v106 = 0;
                    if (v109)
                    {
                      MEMORY[0x1AC55A040](v108, 0x1000C8077774924);
                    }
                  }

                  while (v106 != v105);
                  v107 = v133;
                }

                v134 = v105;
                operator delete(v107);
              }

              if (v129 != v132)
              {
                free(v129);
              }
            }

            if (!v101)
            {
              return 0;
            }

            goto LABEL_192;
          }
        }

        v75 = 0;
        v76 = v74;
        goto LABEL_146;
      }

      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v8 + 8);
        v33 = *(v8 + 16);
        if (!v33)
        {
          goto LABEL_74;
        }
      }

      else
      {
        mlir::Builder::getI32VectorAttr();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v8 + 8);
        v33 = *(v8 + 16);
        if (!v33)
        {
          goto LABEL_74;
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
        v40 = v34[1];
        goto LABEL_76;
      }

LABEL_74:
      v40 = 0;
LABEL_76:
      v121 = v7;
      v122 = v40;
      isSplat = mlir::ElementsAttr::isSplat(&v121);
      if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
      {
        goto LABEL_118;
      }

      goto LABEL_88;
    }

LABEL_41:
    v29 = 0;
    goto LABEL_43;
  }

  v121 = "requires attribute 'dtype'";
  v123 = 259;
  mlir::OpState::emitOpError(this, &v121, &v127);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
  if (v127)
  {
    mlir::InFlightDiagnostic::report(&v127);
  }

  if (v138 == 1)
  {
    if (v137 != &v138)
    {
      free(v137);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v136;
      v23 = __p;
      if (v136 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v136 = v21;
      operator delete(v23);
    }

    v24 = v133;
    if (v133)
    {
      v25 = v134;
      v26 = v133;
      if (v134 != v133)
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
        v26 = v133;
      }

      v134 = v24;
      operator delete(v26);
    }

    if (v129 != v132)
    {
      free(v129);
    }
  }

  return v20;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  v12 = a1;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v9 + 8);
    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v9;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
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
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isSignedInteger(v57, 32))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v57, 64);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_23:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of mps index type values, but got ";
        v61 = 50;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
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

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
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
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::mps::DynamicShapeCastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "unranked", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 53;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

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
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::DynamicShapeCastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "unranked", 8uLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::DynamicShapeCastOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::DynamicShapeCastOp::verifyInvariantsImpl(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v41[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "unranked", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 9))
      {
        v31 = (v4 - 2);
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v4, (*(*(v4[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v36 = "operand group starting at #";
  v37 = 259;
  mlir::OpState::emitOpError(this, &v36, v41);
  if (v41[0])
  {
    v38 = 5;
    v39 = 1;
    v7 = &v38;
    v8 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v8 = v42;
        v7 = (v42 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = &v38;
        v8 = v42;
      }
    }

    v9 = &v8[24 * v43];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v43;
    if (v41[0])
    {
      v38 = 3;
      v39 = " requires 0 or 1 element, but found ";
      v40 = 36;
      v12 = &v38;
      v13 = v42;
      if (v11 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v11 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v13 = v42;
          v12 = (v42 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v12 = &v38;
          v13 = v42;
        }
      }

      v14 = &v13[24 * v43];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = v6;
        v17 = &v38;
        v18 = v42;
        if (v16 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v16 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v18 = v42;
            v17 = (v42 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v17 = &v38;
            v18 = v42;
          }
        }

        v19 = &v18[24 * v43];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v43;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  v22 = result;
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
    result = v22;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v42 != v45)
    {
      free(v42);
      return v22;
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = a1;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      mlir::Builder::getZeroAttr();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
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
LABEL_20:
      v61[0] = a2;
      v61[1] = v22;
      v56[0] = mlir::ElementsAttr::isSplat(v61);
      v23 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(v56, 1);
      a1 = v12;
      if (isSignlessInteger)
      {
        return v23;
      }

      goto LABEL_21;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

LABEL_21:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
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
        v52 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v26 = v62;
        v25 = (v62 + v52);
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
          v53 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v29 + 1, 24);
          v31 = v62;
          v30 = (v62 + v53);
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
        v59 = " must be tensor of 1-bit signless integer values, but got ";
        v60 = 58;
        v35 = &v58;
        v36 = v62;
        if (v34 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v34 > &v58)
          {
            v54 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v34 + 1, 24);
            v36 = v62;
            v35 = (v62 + v54);
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
              v55 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v40 = v62;
              v39 = (v62 + v55);
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

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
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
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
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
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
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

  return v23;
}

uint64_t mlir::mps::FastFourierTransformOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
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
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "inverse", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 52;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v58, "scaling_mode", 0xCuLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 57;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::FastFourierTransformOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "inverse", 7uLL, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "scaling_mode", 0xCuLL, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid FFT scaling mode";
        v29 = 54;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::FastFourierTransformOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(a1, (v3 + 8));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::FFTScalingModeAttr]";
  v38 = 79;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
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
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

BOOL mlir::mps::FastFourierTransformOp::verifyInvariantsImpl(uint64_t **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    v20[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v4, "scaling_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) && (v20[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "inverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v6 = *this - 2;
      }

      else
      {
        v6 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = "requires attribute 'scaling_mode'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  {
    v73 = a1;
    v21 = v9;
    mlir::Builder::getZeroAttr();
    a1 = v73;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v21 + 8);
    v14 = *(v21 + 16);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v83[0] = a2;
  v83[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 136);
  a1 = v22;
LABEL_24:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_45;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::Builder::getI32VectorAttr();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v35 + 8);
    v27 = *(v35 + 16);
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_41:
    v36 = a1;
    v37 = 0;
    goto LABEL_43;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v9 + 8);
  v27 = *(v9 + 16);
  if (!v27)
  {
    goto LABEL_41;
  }

LABEL_31:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_41;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_43:
  v74 = a2;
  v75 = v37;
  v38 = mlir::ElementsAttr::isSplat(&v74);
  if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v66 = v38;
    v79 = v38;
    isSplat = mlir::AffineMapAttr::getValue(&v79);
    if (!mlir::Type::isF16(&isSplat))
    {
      v77 = v66;
      Value = mlir::AffineMapAttr::getValue(&v77);
      isF32 = mlir::Type::isF32(&Value);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_45;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_45:
  v76 = 261;
  v74 = a3;
  v75 = a4;
  mlir::Operation::emitOpError(a1, &v74, v83);
  if (v83[0])
  {
    LODWORD(isSplat) = 3;
    v81 = " #";
    v82 = 2;
    p_isSplat = &isSplat;
    v40 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
      {
        v69 = &isSplat - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v40 = v84;
        p_isSplat = (v84 + v69);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        p_isSplat = &isSplat;
        v40 = v84;
      }
    }

    v41 = &v40[24 * v85];
    v42 = *p_isSplat;
    *(v41 + 2) = p_isSplat[2];
    *v41 = v42;
    v43 = ++v85;
    if (v83[0])
    {
      LODWORD(isSplat) = 5;
      v81 = a5;
      v44 = &isSplat;
      v45 = v84;
      if (v43 >= v86)
      {
        if (v84 <= &isSplat && v84 + 24 * v43 > &isSplat)
        {
          v70 = &isSplat - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v45 = v84;
          v44 = (v84 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v44 = &isSplat;
          v45 = v84;
        }
      }

      v46 = &v45[24 * v85];
      v47 = *v44;
      *(v46 + 2) = v44[2];
      *v46 = v47;
      v48 = ++v85;
      if (v83[0])
      {
        LODWORD(isSplat) = 3;
        v81 = " must be tensor of floating point values or tensor of complex values, but got ";
        v82 = 78;
        v49 = &isSplat;
        v50 = v84;
        if (v48 >= v86)
        {
          if (v84 <= &isSplat && v84 + 24 * v48 > &isSplat)
          {
            v71 = &isSplat - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v50 = v84;
            v49 = (v84 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v49 = &isSplat;
            v50 = v84;
          }
        }

        v51 = &v50[24 * v85];
        v52 = *v49;
        *(v51 + 2) = v49[2];
        *v51 = v52;
        ++v85;
        if (v83[0])
        {
          v53 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, a2);
          v54 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
            {
              v72 = &isSplat - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v54 = v84;
              v53 = (v84 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v53 = &isSplat;
              v54 = v84;
            }
          }

          v55 = &v54[24 * v85];
          v56 = *v53;
          *(v55 + 2) = v53[2];
          *v55 = v56;
          ++v85;
        }
      }
    }
  }

  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v83);
  if (v83[0])
  {
    mlir::InFlightDiagnostic::report(v83);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v91;
      v60 = __p;
      if (v91 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v91 = v58;
      operator delete(v60);
    }

    v61 = v88;
    if (v88)
    {
      v62 = v89;
      v63 = v88;
      if (v89 != v88)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x1AC55A040](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        v63 = v88;
      }

      v89 = v61;
      operator delete(v63);
    }

    if (v84 != v87)
    {
      free(v84);
    }
  }

  return v57;
}

uint64_t mlir::mps::GRUGradientOp::getAsmResultNames(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "gradient_recurrent_weight", 25);
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 2);
  v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  a2(a3, v12, "gradient_input_state", 20);
  v13 = *a1;
  v14 = *(*a1 + 36);
  v15 = v13 - 16;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 3);
  if (v14 != 3)
  {
    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return a2(a3, v18, "gradient_bias", 13);
  }

  return result;
}

uint64_t mlir::mps::GRUGradientOp::getODSResults(mlir::mps::GRUGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_1A75E72E4 + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "hared_ptr_emplaceIN4mlir16ThreadLocalCacheIPNS1_14StorageUniquer16StorageAllocatorEE16PerInstanceStateENS_9allocatorIS7_EEEE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_1A75E72E4 + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 4) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 4) * v5);
  }

  return result;
}

BOOL mlir::mps::GRUGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v92 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v76 = v6;
  if (!v6)
  {
    a3(&v80, a4);
    if (v80)
    {
      LODWORD(v77) = 3;
      v78 = "expected DictionaryAttr to set properties";
      v79 = 41;
      v26 = &v77;
      v27 = v82;
      if (v83 >= v84)
      {
        if (v82 <= &v77 && v82 + 24 * v83 > &v77)
        {
          v69 = &v77 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v27 = v82;
          v26 = (v82 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v26 = &v77;
          v27 = v82;
        }
      }

      v28 = &v27[24 * v83];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v83;
      if (v80)
      {
        mlir::InFlightDiagnostic::report(&v80);
      }
    }

    if (v91 != 1)
    {
      return 0;
    }

    if (v90 != &v91)
    {
      free(v90);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v89;
      v32 = __p;
      if (v89 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v89 = v30;
      operator delete(v32);
    }

    v21 = v86;
    if (!v86)
    {
      goto LABEL_70;
    }

    v33 = v87;
    v23 = v86;
    if (v87 == v86)
    {
LABEL_69:
      v87 = v21;
      operator delete(v23);
LABEL_70:
      if (v82 != v85)
      {
        free(v82);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v86;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v76, "flip_z", 6uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 51;
        v10 = &v77;
        v11 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v70 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v11 = v82;
            v10 = (v82 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v10 = &v77;
            v11 = v82;
          }
        }

        v12 = &v11[24 * v83];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v83;
        if (v80)
        {
          v14 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v9);
          v15 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v71 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v15 = v82;
              v14 = (v82 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v14 = &v77;
              v15 = v82;
            }
          }

          v16 = &v15[24 * v83];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if ((v91 & 1) == 0)
      {
        return 0;
      }

      if (v90 != &v91)
      {
        free(v90);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v89;
        v20 = __p;
        if (v89 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v89 = v18;
        operator delete(v20);
      }

      v21 = v86;
      if (!v86)
      {
        goto LABEL_70;
      }

      v22 = v87;
      v23 = v86;
      if (v87 == v86)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v76, "gate_layout", 0xBuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
    {
      v37 = v36;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 56;
        v38 = &v77;
        v39 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v72 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v39 = v82;
            v38 = (v82 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v38 = &v77;
            v39 = v82;
          }
        }

        v40 = &v39[24 * v83];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v83;
        if (v80)
        {
          v42 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v37);
          v43 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v73 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v43 = v82;
              v42 = (v82 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v42 = &v77;
              v43 = v82;
            }
          }

          v44 = &v43[24 * v83];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if ((v91 & 1) == 0)
      {
        return 0;
      }

      if (v90 != &v91)
      {
        free(v90);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v89;
        v48 = __p;
        if (v89 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v89 = v46;
        operator delete(v48);
      }

      v21 = v86;
      if (!v86)
      {
        goto LABEL_70;
      }

      v49 = v87;
      v23 = v86;
      if (v87 == v86)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v52 = mlir::DictionaryAttr::get(&v76, "ogate_activation", 0x10uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v53 = v52;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 61;
        v54 = &v77;
        v55 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v74 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v55 = v82;
            v54 = (v82 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v54 = &v77;
            v55 = v82;
          }
        }

        v56 = &v55[24 * v83];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v83;
        if (v80)
        {
          v58 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v53);
          v59 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v75 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v59 = v82;
              v58 = (v82 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v58 = &v77;
              v59 = v82;
            }
          }

          v60 = &v59[24 * v83];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if (v91 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v81);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v62 = mlir::DictionaryAttr::get(&v76, "reset_after", 0xBuLL);
  v77 = v62;
  if (v62)
  {
    if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v80, a4);
LABEL_96:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v77);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
      return 0;
    }

    a1[3] = v62;
  }

  v64 = mlir::DictionaryAttr::get(&v76, "rgate_activation", 0x10uLL);
  v77 = v64;
  if (v64)
  {
    if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v80, a4);
LABEL_95:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v80, v65);
      goto LABEL_96;
    }

    a1[4] = v64;
  }

  v66 = mlir::DictionaryAttr::get(&v76, "zgate_activation", 0x10uLL);
  v77 = v66;
  if (v66)
  {
    if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v80, a4);
      goto LABEL_95;
    }

    a1[5] = v66;
  }

  v68 = mlir::DictionaryAttr::get(&v76, "operandSegmentSizes", 0x13uLL);
  if (!v68)
  {
    v68 = mlir::DictionaryAttr::get(&v76, "operand_segment_sizes", 0x15uLL);
    if (!v68)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 6, 7, v68, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::GRUGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v60[6] = *MEMORY[0x1E69E9840];
  v57 = a1;
  v58 = v60;
  v59 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v57, "flip_z", 6uLL, *a2);
    v6 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v45 = NamedAttr;
      v46 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v5 = v46;
      NamedAttr = v45;
      v6 = v59;
    }

    v7 = (v58 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v59) = v59 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v57, "gate_layout", 0xBuLL, v8);
    v11 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v47 = v9;
      v48 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v10 = v48;
      v9 = v47;
      v11 = v59;
    }

    v12 = (v58 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v59) = v59 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v57, "ogate_activation", 0x10uLL, v13);
    v16 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v49 = v14;
      v50 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v15 = v50;
      v14 = v49;
      v16 = v59;
    }

    v17 = (v58 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v59) = v59 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v57, "reset_after", 0xBuLL, v18);
    v21 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v51 = v19;
      v52 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v20 = v52;
      v19 = v51;
      v21 = v59;
    }

    v22 = (v58 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v59) = v59 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v57, "rgate_activation", 0x10uLL, v23);
    v26 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v53 = v24;
      v54 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v25 = v54;
      v24 = v53;
      v26 = v59;
    }

    v27 = (v58 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    LODWORD(v59) = v59 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v57, "zgate_activation", 0x10uLL, v28);
    v31 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v55 = v29;
      v56 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v30 = v56;
      v29 = v55;
      v31 = v59;
    }

    v32 = (v58 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    LODWORD(v59) = v59 + 1;
  }

  v33 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 6), 7);
  v34 = mlir::Builder::getNamedAttr(&v57, "operandSegmentSizes", 0x13uLL, v33);
  v36 = v59;
  if (v59 >= HIDWORD(v59))
  {
    v43 = v34;
    v44 = v35;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
    v35 = v44;
    v34 = v43;
    v36 = v59;
  }

  v37 = (v58 + 16 * v36);
  *v37 = v34;
  v37[1] = v35;
  v38 = __CFADD__(v59, 1);
  v39 = (v59 + 1);
  LODWORD(v59) = v59 + 1;
  if (v38)
  {
    DictionaryAttr = 0;
    v41 = v58;
    if (v58 == v60)
    {
      return DictionaryAttr;
    }

    goto LABEL_32;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v57, v58, v39);
  v41 = v58;
  if (v58 != v60)
  {
LABEL_32:
    free(v41);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::GRUGradientOp::computePropertiesHash(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[3];
  v8 = HIDWORD(a1[2]);
  v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v30 = v6;
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v28 = v12;
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = 0xB492B66FBE98F273 * a1[6];
  v20 = 0x9AE16A3B2F90404FLL * *(a1 + 68);
  v21 = __ROR8__(v20 ^ 0xFF51AFD7ED558CCDLL, 30);
  v22 = __ROR8__(v19 - v18, 43) - 0x3C5A37A36834CED9 * *(a1 + 60);
  v23 = v19 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v20 + 28;
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)))) ^ ((0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)))) >> 47));
  memset(v32, 0, sizeof(v32));
  v33 = 0xFF51AFD7ED558CCDLL;
  v31 = 0x9DDFEA08EB382D69 * v3;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v31, 0, v32, &v32[3] + 8, &v30, &v29, &v28, &v27, &v26, &v25);
}

uint64_t mlir::mps::GRUGradientOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, _WORD *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n == 6)
    {
      if (*__s1 == 1885957222 && __s1[2] == 31327)
      {
        return *a2;
      }
    }

    else if (__n == 11)
    {
      if (!memcmp(__s1, "gate_layout", 0xBuLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "reset_after", 0xBuLL))
      {
        return a2[3];
      }
    }

    return 0;
  }

  if (__n != 16)
  {
    if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 6), 7);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 6), 7);
    }

    return 0;
  }

  if (!memcmp(__s1, "ogate_activation", 0x10uLL))
  {
    return a2[2];
  }

  if (memcmp(__s1, "rgate_activation", 0x10uLL))
  {
    if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
    {
      return a2[5];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::GRUGradientOp::setInherentAttr(uint64_t result, _WORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 <= 15)
  {
    if (a3 == 6)
    {
      if (*__s1 == 1885957222 && __s1[2] == 31327)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          *result = v14;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 11)
    {
      result = memcmp(__s1, "gate_layout", 0xBuLL);
      if (result)
      {
        result = memcmp(__s1, "reset_after", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[3] = v7;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        v5[1] = v16;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 16)
  {
    result = memcmp(__s1, "ogate_activation", 0x10uLL);
    if (result)
    {
      result = memcmp(__s1, "rgate_activation", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }

            v5[5] = v10;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }

        v5[4] = v17;
      }

      else
      {
        v5[4] = 0;
      }
    }

    else if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v15 = a4;
      }

      else
      {
        v15 = 0;
      }

      v5[2] = v15;
    }

    else
    {
      v5[2] = 0;
    }
  }

  else
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v18 = v11;
      if (v11)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v18);
        if (result == 7)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v18);
          if (v12)
          {
            return memmove(v5 + 6, result, 4 * v12);
          }
        }
      }
    }
  }

  return result;
}

void mlir::mps::GRUGradientOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "flip_z", 6uLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 0xBuLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 0x10uLL, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "reset_after", 0xBuLL, v8);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "rgate_activation", 0x10uLL, v9);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 0x10uLL, v10);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 6), 7);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v11);
}

BOOL mlir::mps::GRUGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "flip_z", 6, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(v9, "gate_layout", 0xB, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v10, "ogate_activation", 0x10, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "reset_after", 0xB, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "rgate_activation", 0x10, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v13, "zgate_activation", 0x10, a3, a4))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid GRU gate layout";
        v29 = 53;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid RNN activation";
        v29 = 52;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::mps::GRUGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::GRUGateLayoutAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 2))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 8)
    {
      v7[0] = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove(v3 + 6, v4, 4 * v5);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 5))
  {
    v7[0] = a1;
    v7[1] = (v3 + 6);
    return mlir::mps::GRUGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v7) & 1;
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::GRUGateLayoutAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::GRUGateLayoutAttr]";
  v38 = 78;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::RNNActivationAttr]";
  v38 = 78;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::mps::GRUGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 7);
}

uint64_t mlir::mps::GRUGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 24))(a2, *(v5 + 2));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 12), 7);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 3));
  (*(*a2 + 24))(a2, *(v5 + 4));
  (*(*a2 + 24))(a2, *(v5 + 5));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 12, 7);
  }

  return result;
}

mlir::MLIRContext *mlir::mps::GRUGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v15 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v15);
  v4 = result;
  if (a2[5])
  {
    if (a2[4])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v9 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
    v10 = v4;
    v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v16 = &v9;
    v14 = 3;
    v12 = &v15;
    v13 = &v14;
    v11 = &v14;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
    a2[5] = result;
    if (a2[4])
    {
LABEL_3:
      if (a2[2])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v6 = mlir::MLIRContext::getAttributeUniquer(v4);
  v9 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v10 = v4;
  v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v16 = &v9;
  v14 = 3;
  v11 = &v14;
  v12 = &v15;
  v13 = &v14;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v6, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  a2[4] = result;
  if (a2[2])
  {
LABEL_4:
    if (a2[1])
    {
      return result;
    }

LABEL_9:
    v8 = mlir::MLIRContext::getAttributeUniquer(v4);
    v9 = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
    v10 = v4;
    v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v16 = &v9;
    v14 = 0;
    v11 = &v14;
    v12 = &v15;
    v13 = &v14;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v8, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
    a2[1] = result;
    return result;
  }

LABEL_8:
  v7 = mlir::MLIRContext::getAttributeUniquer(v4);
  v9 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v10 = v4;
  v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v16 = &v9;
  v14 = 2;
  v11 = &v14;
  v12 = &v15;
  v13 = &v14;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  a2[2] = result;
  if (!a2[1])
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::mps::GRUGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v105[26] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v105[0] = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "zgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v105))
  {
    return 0;
  }

  v105[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "rgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v105))
  {
    return 0;
  }

  v105[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v7, "ogate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v105))
  {
    return 0;
  }

  v105[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(v5, "gate_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v105))
  {
    return 0;
  }

  v105[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v6, "reset_after", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v105))
  {
    return 0;
  }

  v105[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v4, "flip_z", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v105))
  {
    return 0;
  }

  v104 = 0;
  v10 = *(*this + 11);
  v11 = LODWORD((*this)[2 * ((v10 >> 23) & 1) + 14]);
  if ((v10 & 0x800000) != 0)
  {
    v12 = (*this)[9];
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_9:
      v13 = v12 + 24;
      do
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v16 = v104++;
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v14, (v15 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v16))
        {
          return 0;
        }

        v13 += 32;
      }

      while (--v11);
    }
  }

  ODSOperands = mlir::mps::GRUGradientOp::getODSOperands(this, 1u);
  if (v18)
  {
    v19 = v18;
    v20 = ODSOperands + 24;
    do
    {
      v21 = *this;
      v22 = *(*v20 + 8);
      v23 = v104++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v21, (v22 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v23))
      {
        return 0;
      }

      v20 += 32;
    }

    while (--v19);
  }

  v24 = mlir::mps::GRUGradientOp::getODSOperands(this, 2u);
  if (v25)
  {
    v26 = v25;
    v27 = v24 + 24;
    do
    {
      v28 = *this;
      v29 = *(*v27 + 8);
      v30 = v104++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v28, (v29 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v30))
      {
        return 0;
      }

      v27 += 32;
    }

    while (--v26);
  }

  v31 = mlir::mps::GRUGradientOp::getODSOperands(this, 3u);
  if (v32)
  {
    v33 = v32;
    v34 = v31 + 24;
    do
    {
      v35 = *this;
      v36 = *(*v34 + 8);
      v37 = v104++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v35, (v36 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v37))
      {
        return 0;
      }

      v34 += 32;
    }

    while (--v33);
  }

  v38 = mlir::mps::GRUGradientOp::getODSOperands(this, 4u);
  v40 = v39;
  if (v39 >= 2)
  {
    goto LABEL_25;
  }

  if (v39)
  {
    v46 = *(v38 + 24);
    v47 = *this;
    v48 = *(v46 + 8);
    v49 = v104++;
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v47, (v48 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v49))
    {
      return 0;
    }
  }

  v50 = mlir::mps::GRUGradientOp::getODSOperands(this, 5u);
  v40 = v51;
  if (v51 >= 2)
  {
    goto LABEL_25;
  }

  if (v51)
  {
    v52 = *(v50 + 24);
    v53 = *this;
    v54 = *(v52 + 8);
    v55 = v104++;
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v53, (v54 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v55))
    {
      return 0;
    }
  }

  v56 = mlir::mps::GRUGradientOp::getODSOperands(this, 6u);
  v40 = v57;
  if (v57 >= 2)
  {
LABEL_25:
    v102[0] = "operand group starting at #";
    v103 = 259;
    mlir::OpState::emitOpError(this, v102, v105);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v105, &v104);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, " requires 0 or 1 element, but found ");
    v101 = v40;
LABEL_26:
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v42, &v101);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v105);
    return v44;
  }

  if (v57)
  {
    v60 = *(v56 + 24);
    v61 = *this;
    v62 = *(v60 + 8);
    v63 = v104++;
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v61, (v62 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v63))
    {
      return 0;
    }
  }

  v104 = 0;
  ODSResults = mlir::mps::GRUGradientOp::getODSResults(this, 0, v58, v59);
  if (v65)
  {
    v68 = ODSResults;
    v69 = v65;
    v70 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, v70);
      v72 = *this;
      v73 = *(NextResultAtOffset + 8);
      v104 = v70 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v72, (v73 & 0xFFFFFFFFFFFFFFF8), "result", 6, v70))
      {
        return 0;
      }

      if (v69 == ++v70)
      {
        goto LABEL_44;
      }
    }
  }

  LODWORD(v70) = 0;
LABEL_44:
  v74 = mlir::mps::GRUGradientOp::getODSResults(this, 1u, v66, v67);
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    v80 = 0;
    while (1)
    {
      v81 = mlir::detail::OpResultImpl::getNextResultAtOffset(v78, v80);
      v82 = *this;
      v83 = *(v81 + 8);
      v84 = v70 + 1;
      v104 = v70 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v82, (v83 & 0xFFFFFFFFFFFFFFF8), "result", 6, v70))
      {
        return 0;
      }

      ++v80;
      LODWORD(v70) = v70 + 1;
      if (v79 == v80)
      {
        goto LABEL_50;
      }
    }
  }

  v84 = v70;
LABEL_50:
  v85 = mlir::mps::GRUGradientOp::getODSResults(this, 2u, v76, v77);
  if (v86)
  {
    v89 = v85;
    v90 = v86;
    v91 = 0;
    while (1)
    {
      v92 = mlir::detail::OpResultImpl::getNextResultAtOffset(v89, v91);
      v93 = *this;
      v94 = *(v92 + 8);
      v95 = v84 + 1;
      v104 = v84 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v93, (v94 & 0xFFFFFFFFFFFFFFF8), "result", 6, v84))
      {
        return 0;
      }

      ++v91;
      ++v84;
      if (v90 == v91)
      {
        goto LABEL_56;
      }
    }
  }

  v95 = v84;
LABEL_56:
  v96 = mlir::mps::GRUGradientOp::getODSResults(this, 3u, v87, v88);
  v98 = v97;
  if (v97 >= 2)
  {
    v102[0] = "result group starting at #";
    v103 = 259;
    mlir::OpState::emitOpError(this, v102, v105);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v105, &v104);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v99, " requires 0 or 1 element, but found ");
    v101 = v98;
    goto LABEL_26;
  }

  if (v97)
  {
    v100 = mlir::detail::OpResultImpl::getNextResultAtOffset(v96, 0);
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v100 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v95))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::mps::GRUOp::getODSResults(mlir::mps::GRUOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_1A75EBD5A + v4 + 3;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "SDialectE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_1A75EBD5A + v21 + 3);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 2) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 2) * v5);
  }

  return result;
}

BOOL mlir::mps::GRUOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v77 = v6;
  if (!v6)
  {
    a3(&v81, a4);
    if (v81)
    {
      LODWORD(v78) = 3;
      v79 = "expected DictionaryAttr to set properties";
      v80 = 41;
      v26 = &v78;
      v27 = v83;
      if (v84 >= v85)
      {
        if (v83 <= &v78 && v83 + 24 * v84 > &v78)
        {
          v70 = &v78 - v83;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v27 = v83;
          v26 = (v83 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v26 = &v78;
          v27 = v83;
        }
      }

      v28 = &v27[24 * v84];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v84;
      if (v81)
      {
        mlir::InFlightDiagnostic::report(&v81);
      }
    }

    if (v92 != 1)
    {
      return 0;
    }

    if (v91 != &v92)
    {
      free(v91);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v90;
      v32 = __p;
      if (v90 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v90 = v30;
      operator delete(v32);
    }

    v21 = v87;
    if (!v87)
    {
      goto LABEL_70;
    }

    v33 = v88;
    v23 = v87;
    if (v88 == v87)
    {
LABEL_69:
      v88 = v21;
      operator delete(v23);
LABEL_70:
      if (v83 != v86)
      {
        free(v83);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v87;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v77, "flip_z", 6uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 51;
        v10 = &v78;
        v11 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v71 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v11 = v83;
            v10 = (v83 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v10 = &v78;
            v11 = v83;
          }
        }

        v12 = &v11[24 * v84];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v84;
        if (v81)
        {
          v14 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v9);
          v15 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v72 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v15 = v83;
              v14 = (v83 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v14 = &v78;
              v15 = v83;
            }
          }

          v16 = &v15[24 * v84];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if ((v92 & 1) == 0)
      {
        return 0;
      }

      if (v91 != &v92)
      {
        free(v91);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v90;
        v20 = __p;
        if (v90 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v90 = v18;
        operator delete(v20);
      }

      v21 = v87;
      if (!v87)
      {
        goto LABEL_70;
      }

      v22 = v88;
      v23 = v87;
      if (v88 == v87)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v77, "gate_layout", 0xBuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
    {
      v37 = v36;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 56;
        v38 = &v78;
        v39 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v73 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v39 = v83;
            v38 = (v83 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v38 = &v78;
            v39 = v83;
          }
        }

        v40 = &v39[24 * v84];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v84;
        if (v81)
        {
          v42 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v37);
          v43 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v74 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v43 = v83;
              v42 = (v83 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v42 = &v78;
              v43 = v83;
            }
          }

          v44 = &v43[24 * v84];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if ((v92 & 1) == 0)
      {
        return 0;
      }

      if (v91 != &v92)
      {
        free(v91);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v90;
        v48 = __p;
        if (v90 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v90 = v46;
        operator delete(v48);
      }

      v21 = v87;
      if (!v87)
      {
        goto LABEL_70;
      }

      v49 = v88;
      v23 = v87;
      if (v88 == v87)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v52 = mlir::DictionaryAttr::get(&v77, "ogate_activation", 0x10uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v53 = v52;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 61;
        v54 = &v78;
        v55 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v75 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v55 = v83;
            v54 = (v83 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v54 = &v78;
            v55 = v83;
          }
        }

        v56 = &v55[24 * v84];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v84;
        if (v81)
        {
          v58 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v53);
          v59 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v76 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v59 = v83;
              v58 = (v83 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v58 = &v78;
              v59 = v83;
            }
          }

          v60 = &v59[24 * v84];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if (v92 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v82);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v62 = mlir::DictionaryAttr::get(&v77, "reset_after", 0xBuLL);
  v78 = v62;
  if (v62)
  {
    if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v81, a4);
LABEL_100:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v78);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
      return 0;
    }

    a1[3] = v62;
  }

  v64 = mlir::DictionaryAttr::get(&v77, "rgate_activation", 0x10uLL);
  v78 = v64;
  if (v64)
  {
    if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v81, a4);
LABEL_99:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v81, v65);
      goto LABEL_100;
    }

    a1[4] = v64;
  }

  v66 = mlir::DictionaryAttr::get(&v77, "training", 8uLL);
  v78 = v66;
  if (v66)
  {
    if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v81, a4);
      goto LABEL_100;
    }

    a1[5] = v66;
  }

  v67 = mlir::DictionaryAttr::get(&v77, "zgate_activation", 0x10uLL);
  v78 = v67;
  if (v67)
  {
    if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v81, a4);
      goto LABEL_99;
    }

    a1[6] = v67;
  }

  v69 = mlir::DictionaryAttr::get(&v77, "operandSegmentSizes", 0x13uLL);
  if (!v69)
  {
    v69 = mlir::DictionaryAttr::get(&v77, "operand_segment_sizes", 0x15uLL);
    if (!v69)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 7, 5, v69, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::GRUOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v67[6] = *MEMORY[0x1E69E9840];
  v64 = a1;
  v65 = v67;
  v66 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v64, "flip_z", 6uLL, *a2);
    v6 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v50 = NamedAttr;
      v51 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v5 = v51;
      NamedAttr = v50;
      v6 = v66;
    }

    v7 = (v65 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v66) = v66 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v64, "gate_layout", 0xBuLL, v8);
    v11 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v52 = v9;
      v53 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v10 = v53;
      v9 = v52;
      v11 = v66;
    }

    v12 = (v65 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v66) = v66 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v64, "ogate_activation", 0x10uLL, v13);
    v16 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v54 = v14;
      v55 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v15 = v55;
      v14 = v54;
      v16 = v66;
    }

    v17 = (v65 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v66) = v66 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v64, "reset_after", 0xBuLL, v18);
    v21 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v56 = v19;
      v57 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v20 = v57;
      v19 = v56;
      v21 = v66;
    }

    v22 = (v65 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v66) = v66 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v64, "rgate_activation", 0x10uLL, v23);
    v26 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v58 = v24;
      v59 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v25 = v59;
      v24 = v58;
      v26 = v66;
    }

    v27 = (v65 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    LODWORD(v66) = v66 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v64, "training", 8uLL, v28);
    v31 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v60 = v29;
      v61 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v30 = v61;
      v29 = v60;
      v31 = v66;
    }

    v32 = (v65 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    LODWORD(v66) = v66 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v64, "zgate_activation", 0x10uLL, v33);
    v36 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v62 = v34;
      v63 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v35 = v63;
      v34 = v62;
      v36 = v66;
    }

    v37 = (v65 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    LODWORD(v66) = v66 + 1;
  }

  v38 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 7), 5);
  v39 = mlir::Builder::getNamedAttr(&v64, "operandSegmentSizes", 0x13uLL, v38);
  v41 = v66;
  if (v66 >= HIDWORD(v66))
  {
    v48 = v39;
    v49 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
    v40 = v49;
    v39 = v48;
    v41 = v66;
  }

  v42 = (v65 + 16 * v41);
  *v42 = v39;
  v42[1] = v40;
  v43 = __CFADD__(v66, 1);
  v44 = (v66 + 1);
  LODWORD(v66) = v66 + 1;
  if (v43)
  {
    DictionaryAttr = 0;
    v46 = v65;
    if (v65 == v67)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v64, v65, v44);
  v46 = v65;
  if (v65 != v67)
  {
LABEL_36:
    free(v46);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::GRUOp::computePropertiesHash(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = (0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v31 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v29 = v14;
  v17 = a1[7];
  v18 = HIDWORD(a1[6]);
  v19 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v18);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v20 = 0xB492B66FBE98F273 * v17;
  v21 = a1[8];
  v22 = 0x9AE16A3B2F90404FLL * *(a1 + 68);
  v23 = __ROR8__(v20 - v21, 43) - 0x3C5A37A36834CED9 * *(a1 + 60) + __ROR8__(v22 ^ 0xFF51AFD7ED558CCDLL, 30);
  v24 = v20 + __ROR8__(v21 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v22 + 20;
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) >> 47));
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v35 = 0;
  v36 = 0xFF51AFD7ED558CCDLL;
  v32[0] = v3;
  v32[1] = 0x9DDFEA08EB382D69 * v6;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v32, 0, v33, v34, &v31, &v30, &v29, &v28, &v27, &v26);
}

uint64_t mlir::mps::GRUOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n > 15)
  {
    if (__n == 16)
    {
      if (!memcmp(__s1, "ogate_activation", 0x10uLL))
      {
        return a2[2];
      }

      if (memcmp(__s1, "rgate_activation", 0x10uLL))
      {
        if (!memcmp(__s1, "zgate_activation", 0x10uLL))
        {
          return a2[6];
        }

        return 0;
      }

      return a2[4];
    }

    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 7), 5);
  }

  if (__n == 6)
  {
    if (*__s1 == 1885957222 && *(__s1 + 2) == 31327)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "training", 8uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 11)
  {
    return 0;
  }

  if (memcmp(__s1, "gate_layout", 0xBuLL))
  {
    if (!memcmp(__s1, "reset_after", 0xBuLL))
    {
      return a2[3];
    }

    return 0;
  }

  return a2[1];
}

uint64_t mlir::mps::GRUOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "ogate_activation", 0x10uLL);
      if (result)
      {
        result = memcmp(__s1, "rgate_activation", 0x10uLL);
        if (result)
        {
          result = memcmp(__s1, "zgate_activation", 0x10uLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
              {
                v10 = a4;
              }

              else
              {
                v10 = 0;
              }

              v5[6] = v10;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
          {
            v16 = a4;
          }

          else
          {
            v16 = 0;
          }

          v5[4] = v16;
        }

        else
        {
          v5[4] = 0;
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v5[2] = v14;
      }

      else
      {
        v5[2] = 0;
      }
    }

    else
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (a3 != 21)
        {
          return result;
        }

        result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
        if (result)
        {
          return result;
        }
      }

      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
        v12 = result ? a4 : 0;
        v18 = v12;
        if (v12)
        {
          result = mlir::AffineBinaryOpExpr::getLHS(&v18);
          if (result == 5)
          {
            result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v18);
            if (v13)
            {
              return memmove(v5 + 7, result, 4 * v13);
            }
          }
        }
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 6:
        if (*__s1 == 1885957222 && *(__s1 + 2) == 31327)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            *result = v8;
          }

          else
          {
            *result = 0;
          }
        }

        break;
      case 8:
        result = memcmp(__s1, "training", 8uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[5] = v11;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 11:
        result = memcmp(__s1, "gate_layout", 0xBuLL);
        if (result)
        {
          result = memcmp(__s1, "reset_after", 0xBuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v17 = a4;
              }

              else
              {
                v17 = 0;
              }

              v5[3] = v17;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[1] = v15;
        }

        else
        {
          v5[1] = 0;
        }

        break;
    }
  }

  return result;
}

void mlir::mps::GRUOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "flip_z", 6uLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 0xBuLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 0x10uLL, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "reset_after", 0xBuLL, v8);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "rgate_activation", 0x10uLL, v9);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "training", 8uLL, v10);
  }

  v11 = a2[6];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 0x10uLL, v11);
  }

  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 7), 5);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v12);
}

BOOL mlir::mps::GRUOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "flip_z", 6, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(v9, "gate_layout", 0xB, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v10, "ogate_activation", 0x10, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "reset_after", 0xB, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "rgate_activation", 0x10, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v13, "training", 8, a3, a4))
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v14, "zgate_activation", 0x10, a3, a4))
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::GRUOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::GRUGateLayoutAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 2))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 6)
    {
      v7[0] = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove(v3 + 7, v4, 4 * v5);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 6))
  {
    v7[0] = a1;
    v7[1] = (v3 + 7);
    return mlir::mps::GRUOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v7) & 1;
  }

  return 0;
}

uint64_t mlir::mps::GRUOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 5);
}

uint64_t mlir::mps::GRUOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 24))(a2, *(v5 + 2));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 14), 5);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 3));
  (*(*a2 + 24))(a2, *(v5 + 4));
  (*(*a2 + 24))(a2, *(v5 + 5));
  (*(*a2 + 24))(a2, *(v5 + 6));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 14, 5);
  }

  return result;
}

mlir::MLIRContext *mlir::mps::GRUOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v15 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v15);
  v4 = result;
  if (a2[6])
  {
    if (a2[4])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v9 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
    v10 = v4;
    v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v16 = &v9;
    v14 = 3;
    v12 = &v15;
    v13 = &v14;
    v11 = &v14;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
    a2[6] = result;
    if (a2[4])
    {
LABEL_3:
      if (a2[2])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v6 = mlir::MLIRContext::getAttributeUniquer(v4);
  v9 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v10 = v4;
  v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v16 = &v9;
  v14 = 3;
  v11 = &v14;
  v12 = &v15;
  v13 = &v14;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v6, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  a2[4] = result;
  if (a2[2])
  {
LABEL_4:
    if (a2[1])
    {
      return result;
    }

LABEL_9:
    v8 = mlir::MLIRContext::getAttributeUniquer(v4);
    v9 = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
    v10 = v4;
    v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v16 = &v9;
    v14 = 0;
    v11 = &v14;
    v12 = &v15;
    v13 = &v14;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v8, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
    a2[1] = result;
    return result;
  }

LABEL_8:
  v7 = mlir::MLIRContext::getAttributeUniquer(v4);
  v9 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v10 = v4;
  v15 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v16 = &v9;
  v14 = 2;
  v11 = &v14;
  v12 = &v15;
  v13 = &v14;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  a2[2] = result;
  if (!a2[1])
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::mps::GRUOp::verifyInvariantsImpl(uint64_t **this)
{
  v70[26] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v10 = v3[14];
  v70[0] = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v10, "zgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "rgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v7, "ogate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(v5, "gate_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "training", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v6, "reset_after", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v4, "flip_z", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v69 = 0;
  v11 = *(*this + 11);
  v12 = LODWORD((*this)[2 * ((v11 >> 23) & 1) + 15]);
  if ((v11 & 0x800000) != 0)
  {
    v13 = (*this)[9];
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
LABEL_10:
      v14 = v13 + 24;
      do
      {
        v15 = *this;
        v16 = *(*v14 + 8);
        v17 = v69++;
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, (v16 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v17))
        {
          return 0;
        }

        v14 += 32;
      }

      while (--v12);
    }
  }

  ODSOperands = mlir::mps::GRUOp::getODSOperands(this, 1u);
  if (v19)
  {
    v20 = v19;
    v21 = ODSOperands + 24;
    do
    {
      v22 = *this;
      v23 = *(*v21 + 8);
      v24 = v69++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v22, (v23 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v24))
      {
        return 0;
      }

      v21 += 32;
    }

    while (--v20);
  }

  v25 = mlir::mps::GRUOp::getODSOperands(this, 2u);
  v27 = v26;
  if (v26 >= 2)
  {
    goto LABEL_18;
  }

  if (v26)
  {
    v33 = *(v25 + 24);
    v34 = *this;
    v35 = *(v33 + 8);
    v36 = v69++;
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v34, (v35 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v36))
    {
      return 0;
    }
  }

  v37 = mlir::mps::GRUOp::getODSOperands(this, 3u);
  v27 = v38;
  if (v38 >= 2)
  {
    goto LABEL_18;
  }

  if (v38)
  {
    v39 = *(v37 + 24);
    v40 = *this;
    v41 = *(v39 + 8);
    v42 = v69++;
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v40, (v41 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v42))
    {
      return 0;
    }
  }

  v43 = mlir::mps::GRUOp::getODSOperands(this, 4u);
  v27 = v44;
  if (v44 >= 2)
  {
LABEL_18:
    v67[0] = "operand group starting at #";
    v68 = 259;
    mlir::OpState::emitOpError(this, v67, v70);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v70, &v69);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, " requires 0 or 1 element, but found ");
    v66 = v27;
LABEL_19:
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v29, &v66);
    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v70);
    return v31;
  }

  if (v44)
  {
    v47 = *(v43 + 24);
    v48 = *this;
    v49 = *(v47 + 8);
    v50 = v69++;
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v48, (v49 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v50))
    {
      return 0;
    }
  }

  v69 = 0;
  ODSResults = mlir::mps::GRUOp::getODSResults(this, 0, v45, v46);
  if (v52)
  {
    v55 = ODSResults;
    v56 = v52;
    v57 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v55, v57);
      v59 = *this;
      v60 = *(NextResultAtOffset + 8);
      v69 = v57 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v59, (v60 & 0xFFFFFFFFFFFFFFF8), "result", 6, v57))
      {
        return 0;
      }

      if (v56 == ++v57)
      {
        goto LABEL_37;
      }
    }
  }

  LODWORD(v57) = 0;
LABEL_37:
  v61 = mlir::mps::GRUOp::getODSResults(this, 1u, v53, v54);
  v63 = v62;
  if (v62 >= 2)
  {
    v67[0] = "result group starting at #";
    v68 = 259;
    mlir::OpState::emitOpError(this, v67, v70);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v70, &v69);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v64, " requires 0 or 1 element, but found ");
    v66 = v63;
    goto LABEL_19;
  }

  if (v62)
  {
    v65 = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0);
    if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v65 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v57))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::mps::GatherAlongAxisOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "allow_negative_indices", 0x16uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 67;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

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
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::GatherAlongAxisOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "allow_negative_indices", 0x16uLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::GatherAlongAxisOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::GatherAlongAxisOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v7 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "allow_negative_indices", 0x16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 2;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::mps::GatherNDOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
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
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "allow_negative_indices", 0x16uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 67;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v58, "batch_dims", 0xAuLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 55;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}