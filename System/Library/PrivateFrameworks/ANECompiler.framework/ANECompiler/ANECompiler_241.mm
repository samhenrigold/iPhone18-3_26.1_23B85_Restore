BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(const char *a1, const char *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v57 + 8);
      v13 = *(v57 + 16);
      if (!v13)
      {
        goto LABEL_15;
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
      v21 = v14[1];
      v62 = a1;
      v63 = v21;
      Type = mlir::ElementsAttr::getType(&v62);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v62 = a1;
    v63 = 0;
    Type = mlir::ElementsAttr::getType(&v62);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v22;
      v58 = Type;
      mlir::Builder::getI32VectorAttr();
      Type = v58;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v56 + 8);
      v25 = *(v56 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v66 = Type;
    v67 = v32;
    Shape = mlir::ShapedType::getShape(&v66);
    v78 = 8;
    if (v34 == 1 && *Shape == v78)
    {
      v59 = a1;
      v60[0] = mlir::ArrayAttr::getValue(&v59);
      v60[1] = v35;
      isSplat = mlir::ElementsAttr::isSplat(v60);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v66, a5);
  if (v66)
  {
    LODWORD(v62) = 3;
    v63 = "attribute '";
    v64 = 11;
    v37 = &v62;
    v38 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v62 && v68 + 24 * v69 > &v62)
      {
        v54 = &v62 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v38 = v68;
        v37 = (v68 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v37 = &v62;
        v38 = v68;
      }
    }

    v39 = &v38[24 * v69];
    v40 = *v37;
    *(v39 + 2) = v37[2];
    *v39 = v40;
    ++v69;
    if (v66)
    {
      v65 = 261;
      v62 = a2;
      v63 = a3;
      mlir::Diagnostic::operator<<(&v67, &v62);
      if (v66)
      {
        LODWORD(v62) = 3;
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {8}";
        v64 = 68;
        v41 = &v62;
        v42 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v62 && v68 + 24 * v69 > &v62)
          {
            v55 = &v62 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v42 = v68;
            v41 = (v68 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v41 = &v62;
            v42 = v68;
          }
        }

        v43 = &v42[24 * v69];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        ++v69;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v75;
      v47 = __p;
      if (v75 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v75 = v45;
      operator delete(v47);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
          }
        }

        while (v49 != v48);
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v36;
}

BOOL mlir::mps::PoolAvgGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PaddingStyleAttr]";
  v38 = 77;
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

mlir::MLIRContext *mlir::mps::PoolAvgGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  *&v16 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v16);
  v12 = result;
  if (a2[5])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18[0] = 4;
    IntegerType = mlir::Builder::getIntegerType(&v12, 64, 0);
    v13[0] = mlir::RankedTensorType::get(v18, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(v13);
    v16 = xmmword_1A75F4140;
    v17 = unk_1A75F4150;
    result = mlir::DenseElementsAttr::getFromRawBuffer(v5, v6, &v16, 32);
    a2[5] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[4])
      {
        return result;
      }

LABEL_7:
      v10 = v12;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
      v18[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v18[1] = v10;
      *&v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      *(&v16 + 1) = v18;
      v15 = 2;
      v13[0] = &v15;
      v13[1] = &v16;
      v14 = &v15;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
      a2[4] = result;
      return result;
    }
  }

  v18[0] = 4;
  v7 = mlir::Builder::getIntegerType(&v12, 64, 0);
  v13[0] = mlir::RankedTensorType::get(v18, 1, v7, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(v13);
  v16 = xmmword_1A75F4140;
  v17 = unk_1A75F4150;
  result = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, &v16, 32);
  a2[1] = result;
  if (!a2[4])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PoolAvgGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v11 = *this - 2;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
  }

  return v13;
}

BOOL mlir::mps::PoolAvgOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

BOOL mlir::mps::PoolAvgOp::verifyInvariantsImpl(uint64_t **this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v11 = *this - 2;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
  }

  return v13;
}

BOOL mlir::mps::PoolL2NormGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

BOOL mlir::mps::PoolL2NormOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
}

BOOL mlir::mps::PoolMaxGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v81 = v6;
  if (!v6)
  {
    a3(&v85, a4);
    if (v85)
    {
      LODWORD(v82) = 3;
      v83 = "expected DictionaryAttr to set properties";
      v84 = 41;
      v26 = &v82;
      v27 = v87;
      if (v88 >= v89)
      {
        if (v87 <= &v82 && v87 + 24 * v88 > &v82)
        {
          v74 = &v82 - v87;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v27 = v87;
          v26 = (v87 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v26 = &v82;
          v27 = v87;
        }
      }

      v28 = &v27[24 * v88];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v88;
      if (v85)
      {
        mlir::InFlightDiagnostic::report(&v85);
      }
    }

    if (v96 != 1)
    {
      return 0;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v94;
      v32 = __p;
      if (v94 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v94 = v30;
      operator delete(v32);
    }

    v21 = v91;
    if (!v91)
    {
      goto LABEL_77;
    }

    v33 = v92;
    v23 = v91;
    if (v92 == v91)
    {
LABEL_76:
      v92 = v21;
      operator delete(v23);
LABEL_77:
      if (v87 != v90)
      {
        free(v87);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v81, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v85, a4);
      if (v85)
      {
        LODWORD(v82) = 3;
        v84 = 54;
        v10 = &v82;
        v11 = v87;
        if (v88 >= v89)
        {
          if (v87 <= &v82 && v87 + 24 * v88 > &v82)
          {
            v75 = &v82 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v11 = v87;
            v10 = (v87 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v10 = &v82;
            v11 = v87;
          }
        }

        v12 = &v11[24 * v88];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v88;
        if (v85)
        {
          v14 = &v82;
          mlir::DiagnosticArgument::DiagnosticArgument(&v82, v9);
          v15 = v87;
          if (v88 >= v89)
          {
            if (v87 <= &v82 && v87 + 24 * v88 > &v82)
            {
              v76 = &v82 - v87;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v15 = v87;
              v14 = (v87 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v14 = &v82;
              v15 = v87;
            }
          }

          v16 = &v15[24 * v88];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v88;
          if (v85)
          {
            mlir::InFlightDiagnostic::report(&v85);
          }
        }
      }

      if ((v96 & 1) == 0)
      {
        return 0;
      }

      if (v95 != &v96)
      {
        free(v95);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v94;
        v20 = __p;
        if (v94 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v94 = v18;
        operator delete(v20);
      }

      v21 = v91;
      if (!v91)
      {
        goto LABEL_77;
      }

      v22 = v92;
      v23 = v91;
      if (v92 == v91)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v81, "dilation_rates", 0xEuLL);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v85, a4);
    if (v85)
    {
      LODWORD(v82) = 3;
      v84 = 59;
      v42 = &v82;
      v43 = v87;
      if (v88 >= v89)
      {
        if (v87 <= &v82 && v87 + 24 * v88 > &v82)
        {
          v77 = &v82 - v87;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v43 = v87;
          v42 = (v87 + v77);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v42 = &v82;
          v43 = v87;
        }
      }

      v44 = &v43[24 * v88];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v88;
      if (v85)
      {
        v46 = &v82;
        mlir::DiagnosticArgument::DiagnosticArgument(&v82, v37);
        v47 = v87;
        if (v88 >= v89)
        {
          if (v87 <= &v82 && v87 + 24 * v88 > &v82)
          {
            v79 = &v82 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v47 = v87;
            v46 = (v87 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v46 = &v82;
            v47 = v87;
          }
        }

        v48 = &v47[24 * v88];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v88;
        if (v85)
        {
          mlir::InFlightDiagnostic::report(&v85);
        }
      }
    }

    if ((v96 & 1) == 0)
    {
      return 0;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v94;
      v52 = __p;
      if (v94 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v94 = v50;
      operator delete(v52);
    }

    v21 = v91;
    if (!v91)
    {
      goto LABEL_77;
    }

    v53 = v92;
    v23 = v91;
    if (v92 == v91)
    {
      goto LABEL_76;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
      }
    }

    while (v53 != v21);
LABEL_75:
    v23 = v91;
    goto LABEL_76;
  }

LABEL_49:
  v38 = mlir::DictionaryAttr::get(&v81, "explicit_padding", 0x10uLL);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v85, a4);
      if (v85)
      {
        LODWORD(v82) = 3;
        v84 = 61;
        v56 = &v82;
        v57 = v87;
        if (v88 >= v89)
        {
          if (v87 <= &v82 && v87 + 24 * v88 > &v82)
          {
            v78 = &v82 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v57 = v87;
            v56 = (v87 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v56 = &v82;
            v57 = v87;
          }
        }

        v58 = &v57[24 * v88];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v88;
        if (v85)
        {
          v60 = &v82;
          mlir::DiagnosticArgument::DiagnosticArgument(&v82, v39);
          v61 = v87;
          if (v88 >= v89)
          {
            if (v87 <= &v82 && v87 + 24 * v88 > &v82)
            {
              v80 = &v82 - v87;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v61 = v87;
              v60 = (v87 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v60 = &v82;
              v61 = v87;
            }
          }

          v62 = &v61[24 * v88];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v88;
          if (v85)
          {
            mlir::InFlightDiagnostic::report(&v85);
          }
        }
      }

      if (v96 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v86);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v40 = mlir::DictionaryAttr::get(&v81, "include_zero_pad", 0x10uLL);
  v82 = v40;
  if (v40)
  {
    if (*(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v85, a4);
LABEL_112:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v82);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v85);
      return 0;
    }

    a1[3] = v40;
  }

  v64 = mlir::DictionaryAttr::get(&v81, "indices_mode", 0xCuLL);
  v82 = v64;
  if (v64)
  {
    if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
    {
      a3(&v85, a4);
LABEL_91:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v85, v65);
      goto LABEL_112;
    }

    a1[4] = v64;
  }

  v66 = mlir::DictionaryAttr::get(&v81, "indices_result_type", 0x13uLL);
  v82 = v66;
  if (v66)
  {
    if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      a3(&v85, a4);
      goto LABEL_112;
    }

    a1[5] = v66;
  }

  v67 = mlir::DictionaryAttr::get(&v81, "padding_style", 0xDuLL);
  v82 = v67;
  if (v67)
  {
    if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
    {
      a3(&v85, a4);
      goto LABEL_112;
    }

    a1[6] = v67;
  }

  v68 = mlir::DictionaryAttr::get(&v81, "strides", 7uLL);
  v82 = v68;
  if (v68)
  {
    v69 = v68;
    if (!mlir::DenseIntElementsAttr::classof(v68))
    {
      a3(&v85, a4);
      goto LABEL_112;
    }

    a1[7] = v69;
  }

  v70 = mlir::DictionaryAttr::get(&v81, "window_sizes", 0xCuLL);
  v82 = v70;
  if (v70)
  {
    v71 = v70;
    if (!mlir::DenseIntElementsAttr::classof(v70))
    {
      a3(&v85, a4);
      goto LABEL_91;
    }

    a1[8] = v71;
  }

  v72 = mlir::DictionaryAttr::get(&v81, "operandSegmentSizes", 0x13uLL);
  if (!v72)
  {
    v72 = mlir::DictionaryAttr::get(&v81, "operand_segment_sizes", 0x15uLL);
    if (!v72)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 9, 4, v72, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::PoolMaxGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v81[6] = *MEMORY[0x1E69E9840];
  v78 = a1;
  v79 = v81;
  v80 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v78, "ceil_mode", 9uLL, *a2);
    v6 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v60 = NamedAttr;
      v61 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v5 = v61;
      NamedAttr = v60;
      v6 = v80;
    }

    v7 = (v79 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v80) = v80 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v78, "dilation_rates", 0xEuLL, v8);
    v11 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v62 = v9;
      v63 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v10 = v63;
      v9 = v62;
      v11 = v80;
    }

    v12 = (v79 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v80) = v80 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v78, "explicit_padding", 0x10uLL, v13);
    v16 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v64 = v14;
      v65 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v15 = v65;
      v14 = v64;
      v16 = v80;
    }

    v17 = (v79 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v80) = v80 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v78, "include_zero_pad", 0x10uLL, v18);
    v21 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v66 = v19;
      v67 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v20 = v67;
      v19 = v66;
      v21 = v80;
    }

    v22 = (v79 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v80) = v80 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v78, "indices_mode", 0xCuLL, v23);
    v26 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v68 = v24;
      v69 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v25 = v69;
      v24 = v68;
      v26 = v80;
    }

    v27 = (v79 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    LODWORD(v80) = v80 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v78, "indices_result_type", 0x13uLL, v28);
    v31 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v70 = v29;
      v71 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v30 = v71;
      v29 = v70;
      v31 = v80;
    }

    v32 = (v79 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    LODWORD(v80) = v80 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v78, "padding_style", 0xDuLL, v33);
    v36 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v72 = v34;
      v73 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v35 = v73;
      v34 = v72;
      v36 = v80;
    }

    v37 = (v79 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    LODWORD(v80) = v80 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v78, "strides", 7uLL, v38);
    v41 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v74 = v39;
      v75 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v40 = v75;
      v39 = v74;
      v41 = v80;
    }

    v42 = (v79 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    LODWORD(v80) = v80 + 1;
  }

  v43 = a2[8];
  if (v43)
  {
    v44 = mlir::Builder::getNamedAttr(&v78, "window_sizes", 0xCuLL, v43);
    v46 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v76 = v44;
      v77 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v45 = v77;
      v44 = v76;
      v46 = v80;
    }

    v47 = (v79 + 16 * v46);
    *v47 = v44;
    v47[1] = v45;
    LODWORD(v80) = v80 + 1;
  }

  v48 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 9), 4);
  v49 = mlir::Builder::getNamedAttr(&v78, "operandSegmentSizes", 0x13uLL, v48);
  v51 = v80;
  if (v80 >= HIDWORD(v80))
  {
    v58 = v49;
    v59 = v50;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
    v50 = v59;
    v49 = v58;
    v51 = v80;
  }

  v52 = (v79 + 16 * v51);
  *v52 = v49;
  v52[1] = v50;
  v53 = __CFADD__(v80, 1);
  v54 = (v80 + 1);
  LODWORD(v80) = v80 + 1;
  if (v53)
  {
    DictionaryAttr = 0;
    v56 = v79;
    if (v79 == v81)
    {
      return DictionaryAttr;
    }

    goto LABEL_44;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v78, v79, v54);
  v56 = v79;
  if (v79 != v81)
  {
LABEL_44:
    free(v56);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PoolMaxGradientOp::computePropertiesHash(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = v10 ^ (v11 >> 47) ^ v11;
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v38 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = HIDWORD(a1[6]);
  v20 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v19);
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 47));
  v21 = HIDWORD(v18);
  v22 = 0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18));
  v36 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  v23 = a1[9];
  v24 = HIDWORD(a1[8]);
  v25 = 0x9DDFEA08EB382D69 * ((8 * a1[8] - 0xAE502812AA7333) ^ v24);
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
  v27 = 0x9DDFEA08EB382D69 * v12;
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 47));
  v28 = a1[10];
  v29 = __ROR8__(v28 + 16, 16);
  v34 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)))) >> 47))) ^ v28;
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  v45 = 0;
  v46 = 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
  v42[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v42[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v40 = 0;
  v31 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v42, &v40, v43, v44, v26);
  v41 = v40;
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v42, &v41, v31, v44, v30);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v42, v41, v32, v44, &v39, &v38, &v37, &v36, &v35, &v34);
}

uint64_t mlir::mps::PoolMaxGradientOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    if (__n <= 18)
    {
      if (__n == 14)
      {
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        return 0;
      }

      if (__n == 16)
      {
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }
      }

      return 0;
    }

    if (__n == 19)
    {
      if (!memcmp(__s1, "indices_result_type", 0x13uLL))
      {
        return a2[5];
      }

      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 9), 4);
  }

  if (__n <= 11)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[7];
      }
    }

    else if (__n == 9 && *__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (memcmp(__s1, "indices_mode", 0xCuLL))
  {
    if (!memcmp(__s1, "window_sizes", 0xCuLL))
    {
      return a2[8];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::PoolMaxGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 > 18)
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "indices_result_type", 0x13uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v19 = a4;
            }

            else
            {
              v19 = 0;
            }

            v5[5] = v19;
          }

          else
          {
            v5[5] = 0;
          }

          return result;
        }

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
        v16 = result ? a4 : 0;
        v22 = v16;
        if (v16)
        {
          result = mlir::AffineBinaryOpExpr::getLHS(&v22);
          if (result == 4)
          {
            result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v22);
            if (v17)
            {
              return memmove(v5 + 9, result, 4 * v17);
            }
          }
        }
      }
    }

    else if (a3 == 14)
    {
      result = memcmp(__s1, "dilation_rates", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[3] = v9;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v21 = a4;
        }

        else
        {
          v21 = 0;
        }

        v5[2] = v21;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 > 11)
  {
    if (a3 == 12)
    {
      result = memcmp(__s1, "indices_mode", 0xCuLL);
      if (result)
      {
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[8] = v14;
          }

          else
          {
            v5[8] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }

        v5[4] = v18;
      }

      else
      {
        v5[4] = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "padding_style", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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
  }

  else if (a3 == 7)
  {
    result = memcmp(__s1, "strides", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        v5[7] = v11;
      }

      else
      {
        v5[7] = 0;
      }
    }
  }

  else if (a3 == 9 && *__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v20 = a4;
      }

      else
      {
        v20 = 0;
      }

      *result = v20;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::PoolMaxGradientOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v8);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "indices_mode", 0xCuLL, v9);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "indices_result_type", 0x13uLL, v10);
  }

  v11 = a2[6];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v11);
  }

  v12 = a2[7];
  if (v12)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v12);
  }

  v13 = a2[8];
  if (v13)
  {
    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v13);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 9), 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v14);
}

BOOL mlir::mps::PoolMaxGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "ceil_mode", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 0xE, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 0x10, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "include_zero_pad", 0x10, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v12, "indices_mode", 0xC, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v13, "indices_result_type", 0x13, a3, a4))
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v14, "padding_style", 0xD, a3, a4))
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4))
                {
                  v16 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 64));
                  if (!v16 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v16, "window_sizes", 0xC, a3, a4))
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: max pool return indices mode";
        v29 = 60;
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

uint64_t mlir::mps::PoolMaxGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(a1, v3 + 4) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 5))
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 5)
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
      memmove(v3 + 9, v4, 4 * v5);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 8))
  {
    v7[0] = a1;
    v7[1] = (v3 + 9);
    return mlir::mps::PoolMaxGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v7) & 1;
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PoolIndicesModeAttr]";
  v38 = 80;
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

uint64_t mlir::mps::PoolMaxGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 4);
}

uint64_t mlir::mps::PoolMaxGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 24))(a2, *(v5 + 2));
  (*(*a2 + 24))(a2, *(v5 + 3));
  (*(*a2 + 24))(a2, *(v5 + 4));
  (*(*a2 + 24))(a2, *(v5 + 5));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 18), 4);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 6));
  (*(*a2 + 24))(a2, *(v5 + 7));
  (*(*a2 + 16))(a2, *(v5 + 8));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 18, 4);
  }

  return result;
}

mlir::MLIRContext *mlir::mps::PoolMaxGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v19 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v19);
  v14 = result;
  if (a2[7])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v14, 64, 0);
    v15 = mlir::RankedTensorType::get(&v21, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(&v15);
    v19 = xmmword_1A75F4140;
    v20 = unk_1A75F4150;
    result = mlir::DenseElementsAttr::getFromRawBuffer(v5, v6, &v19, 32);
    a2[7] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v21 = 4;
  v7 = mlir::Builder::getIntegerType(&v14, 64, 0);
  v15 = mlir::RankedTensorType::get(&v21, 1, v7, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(&v15);
  v19 = xmmword_1A75F4140;
  v20 = unk_1A75F4150;
  result = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, &v19, 32);
  a2[1] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[4])
    {
      return result;
    }

LABEL_9:
    v12 = v14;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v14);
    v21 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
    v22 = v12;
    *&v19 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v19 + 1) = &v21;
    v18 = 0;
    v15 = &v18;
    v16 = &v19;
    v17 = &v18;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v15);
    a2[4] = result;
    return result;
  }

LABEL_8:
  v10 = v14;
  v11 = mlir::MLIRContext::getAttributeUniquer(v14);
  v21 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v22 = v10;
  *&v19 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v19 + 1) = &v21;
  v18 = 2;
  v15 = &v18;
  v16 = &v19;
  v17 = &v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v11, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v15);
  a2[6] = result;
  if (!a2[4])
  {
    goto LABEL_9;
  }

  return result;
}

BOOL mlir::mps::PoolMaxGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[16];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[14];
    v12 = v3[15];
    v59[0] = v2;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v10, "indices_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v59[0] = *this;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "indices_result_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59))
    {
      return 0;
    }

    v56 = 0;
    v13 = *(*this + 11);
    v14 = LODWORD((*this)[2 * ((v13 >> 23) & 1) + 17]);
    if ((v13 & 0x800000) != 0)
    {
      v15 = (*this)[9];
      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      if (v14)
      {
LABEL_13:
        v16 = 0;
        v17 = v15 + 24;
        while (1)
        {
          v18 = *this;
          v19 = *(*v17 + 8);
          v56 = v16 + 1;
          if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v18, (v19 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v16))
          {
            return 0;
          }

          ++v16;
          v17 += 32;
          if (v14 == v16)
          {
            goto LABEL_39;
          }
        }
      }
    }

    LODWORD(v16) = 0;
LABEL_39:
    ODSOperands = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 1u);
    v31 = v30;
    if (v30 >= 2)
    {
      v57[0] = "operand group starting at #";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v59, &v56);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " requires 0 or 1 element, but found ");
      v55 = v31;
LABEL_41:
      mlir::InFlightDiagnostic::operator<<<unsigned long>(v33, &v55);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
      return v20;
    }

    if (v30)
    {
      v35 = *(ODSOperands + 24);
      v36 = *this;
      v37 = *(v35 + 8);
      v56 = v16 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v36, (v37 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v16))
      {
        return 0;
      }
    }

    v39 = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 2u);
    v41 = v40;
    if (v40 >= 2)
    {
      goto LABEL_47;
    }

    if (v40)
    {
      v43 = *(v39 + 24);
      v44 = *this;
      v45 = *(v43 + 8);
      v46 = v56++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v44, (v45 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v46))
      {
        return 0;
      }
    }

    v47 = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 3u);
    v41 = v48;
    if (v48 >= 2)
    {
LABEL_47:
      v57[0] = "operand group starting at #";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v59, &v56);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, " requires 0 or 1 element, but found ");
      v55 = v41;
      goto LABEL_41;
    }

    if (v48)
    {
      v49 = *(v47 + 24);
      v50 = *this;
      v51 = *(v49 + 8);
      v52 = v56++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v50, (v51 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v52))
      {
        return 0;
      }
    }

    if (*(*this + 9))
    {
      v53 = *this - 2;
    }

    else
    {
      v53 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    v57[0] = "requires attribute 'window_sizes'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v59);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v65;
        v23 = __p;
        if (v65 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v65 = v21;
        operator delete(v23);
      }

      v24 = v62;
      if (v62)
      {
        v25 = v63;
        v26 = v62;
        if (v63 != v62)
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
          v26 = v62;
        }

        v63 = v24;
        operator delete(v26);
      }

      if (v60 != &v61)
      {
        free(v60);
      }
    }
  }

  return v20;
}

uint64_t mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  *(a1 + 24) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 88) = *(v3 + 64);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 96), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 96), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::PoolMaxOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v80 = v6;
  if (!v6)
  {
    a3(&v84, a4);
    if (v84)
    {
      LODWORD(v81) = 3;
      v82 = "expected DictionaryAttr to set properties";
      v83 = 41;
      v26 = &v81;
      v27 = v86;
      if (v87 >= v88)
      {
        if (v86 <= &v81 && v86 + 24 * v87 > &v81)
        {
          v73 = &v81 - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v27 = v86;
          v26 = (v86 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v26 = &v81;
          v27 = v86;
        }
      }

      v28 = &v27[24 * v87];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v87;
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }
    }

    if (v95 != 1)
    {
      return 0;
    }

    if (v94 != &v95)
    {
      free(v94);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v93;
      v32 = __p;
      if (v93 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v93 = v30;
      operator delete(v32);
    }

    v21 = v90;
    if (!v90)
    {
      goto LABEL_77;
    }

    v33 = v91;
    v23 = v90;
    if (v91 == v90)
    {
LABEL_76:
      v91 = v21;
      operator delete(v23);
LABEL_77:
      if (v86 != v89)
      {
        free(v86);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v80, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v84, a4);
      if (v84)
      {
        LODWORD(v81) = 3;
        v83 = 54;
        v10 = &v81;
        v11 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v81 && v86 + 24 * v87 > &v81)
          {
            v74 = &v81 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v11 = v86;
            v10 = (v86 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v10 = &v81;
            v11 = v86;
          }
        }

        v12 = &v11[24 * v87];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v87;
        if (v84)
        {
          v14 = &v81;
          mlir::DiagnosticArgument::DiagnosticArgument(&v81, v9);
          v15 = v86;
          if (v87 >= v88)
          {
            if (v86 <= &v81 && v86 + 24 * v87 > &v81)
            {
              v75 = &v81 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v15 = v86;
              v14 = (v86 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v14 = &v81;
              v15 = v86;
            }
          }

          v16 = &v15[24 * v87];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v87;
          if (v84)
          {
            mlir::InFlightDiagnostic::report(&v84);
          }
        }
      }

      if ((v95 & 1) == 0)
      {
        return 0;
      }

      if (v94 != &v95)
      {
        free(v94);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v93;
        v20 = __p;
        if (v93 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v93 = v18;
        operator delete(v20);
      }

      v21 = v90;
      if (!v90)
      {
        goto LABEL_77;
      }

      v22 = v91;
      v23 = v90;
      if (v91 == v90)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v80, "dilation_rates", 0xEuLL);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v84, a4);
    if (v84)
    {
      LODWORD(v81) = 3;
      v83 = 59;
      v42 = &v81;
      v43 = v86;
      if (v87 >= v88)
      {
        if (v86 <= &v81 && v86 + 24 * v87 > &v81)
        {
          v76 = &v81 - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v43 = v86;
          v42 = (v86 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v42 = &v81;
          v43 = v86;
        }
      }

      v44 = &v43[24 * v87];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v87;
      if (v84)
      {
        v46 = &v81;
        mlir::DiagnosticArgument::DiagnosticArgument(&v81, v37);
        v47 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v81 && v86 + 24 * v87 > &v81)
          {
            v78 = &v81 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v47 = v86;
            v46 = (v86 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v46 = &v81;
            v47 = v86;
          }
        }

        v48 = &v47[24 * v87];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v87;
        if (v84)
        {
          mlir::InFlightDiagnostic::report(&v84);
        }
      }
    }

    if ((v95 & 1) == 0)
    {
      return 0;
    }

    if (v94 != &v95)
    {
      free(v94);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v93;
      v52 = __p;
      if (v93 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v93 = v50;
      operator delete(v52);
    }

    v21 = v90;
    if (!v90)
    {
      goto LABEL_77;
    }

    v53 = v91;
    v23 = v90;
    if (v91 == v90)
    {
      goto LABEL_76;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
      }
    }

    while (v53 != v21);
LABEL_75:
    v23 = v90;
    goto LABEL_76;
  }

LABEL_49:
  v38 = mlir::DictionaryAttr::get(&v80, "explicit_padding", 0x10uLL);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v84, a4);
      if (v84)
      {
        LODWORD(v81) = 3;
        v83 = 61;
        v56 = &v81;
        v57 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v81 && v86 + 24 * v87 > &v81)
          {
            v77 = &v81 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v57 = v86;
            v56 = (v86 + v77);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v56 = &v81;
            v57 = v86;
          }
        }

        v58 = &v57[24 * v87];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v87;
        if (v84)
        {
          v60 = &v81;
          mlir::DiagnosticArgument::DiagnosticArgument(&v81, v39);
          v61 = v86;
          if (v87 >= v88)
          {
            if (v86 <= &v81 && v86 + 24 * v87 > &v81)
            {
              v79 = &v81 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v61 = v86;
              v60 = (v86 + v79);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v60 = &v81;
              v61 = v86;
            }
          }

          v62 = &v61[24 * v87];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v87;
          if (v84)
          {
            mlir::InFlightDiagnostic::report(&v84);
          }
        }
      }

      if (v95 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v85);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v40 = mlir::DictionaryAttr::get(&v80, "include_zero_pad", 0x10uLL);
  v81 = v40;
  if (!v40)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v80, "indices_mode", 0xCuLL);
    v81 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
      {
        a3(&v84, a4);
LABEL_91:
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v84, v65);
        goto LABEL_109;
      }

      a1[4] = v64;
    }

    v66 = mlir::DictionaryAttr::get(&v80, "indices_result_type", 0x13uLL);
    v81 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(&v84, a4);
        goto LABEL_109;
      }

      a1[5] = v66;
    }

    v67 = mlir::DictionaryAttr::get(&v80, "padding_style", 0xDuLL);
    v81 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v84, a4);
        goto LABEL_109;
      }

      a1[6] = v67;
    }

    v68 = mlir::DictionaryAttr::get(&v80, "strides", 7uLL);
    v81 = v68;
    if (v68)
    {
      v69 = v68;
      if (!mlir::DenseIntElementsAttr::classof(v68))
      {
        a3(&v84, a4);
        goto LABEL_109;
      }

      a1[7] = v69;
    }

    v70 = mlir::DictionaryAttr::get(&v80, "window_sizes", 0xCuLL);
    v81 = v70;
    if (v70)
    {
      v71 = v70;
      if (!mlir::DenseIntElementsAttr::classof(v70))
      {
        a3(&v84, a4);
        goto LABEL_91;
      }

      a1[8] = v71;
    }

    return 1;
  }

  if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v40;
    goto LABEL_88;
  }

  a3(&v84, a4);
LABEL_109:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v81);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v84);
  return 0;
}

uint64_t mlir::mps::PoolMaxOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v72[6] = *MEMORY[0x1E69E9840];
  v69 = a1;
  v70 = v72;
  v71 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v69, "ceil_mode", 9uLL, *a2);
  v5 = v71;
  if (v71 >= HIDWORD(v71))
  {
    v51 = NamedAttr;
    v52 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
    v4 = v52;
    NamedAttr = v51;
    v5 = v71;
  }

  v6 = (v70 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v71 + 1;
  LODWORD(v71) = v71 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v69, "dilation_rates", 0xEuLL, v8);
    v11 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v53 = v9;
      v54 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v10 = v54;
      v9 = v53;
      v11 = v71;
    }

    v12 = (v70 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v69, "explicit_padding", 0x10uLL, v13);
    v16 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v55 = v14;
      v56 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v15 = v56;
      v14 = v55;
      v16 = v71;
    }

    v17 = (v70 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v69, "include_zero_pad", 0x10uLL, v18);
    v21 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v57 = v19;
      v58 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v20 = v58;
      v19 = v57;
      v21 = v71;
    }

    v22 = (v70 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v69, "indices_mode", 0xCuLL, v23);
    v26 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v59 = v24;
      v60 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v25 = v60;
      v24 = v59;
      v26 = v71;
    }

    v27 = (v70 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v69, "indices_result_type", 0x13uLL, v28);
    v31 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v61 = v29;
      v62 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v30 = v62;
      v29 = v61;
      v31 = v71;
    }

    v32 = (v70 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v69, "padding_style", 0xDuLL, v33);
    v36 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v63 = v34;
      v64 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v35 = v64;
      v34 = v63;
      v36 = v71;
    }

    v37 = (v70 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v69, "strides", 7uLL, v38);
    v41 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v65 = v39;
      v66 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v40 = v66;
      v39 = v65;
      v41 = v71;
    }

    v42 = (v70 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v43 = a2[8];
  if (v43)
  {
    v44 = mlir::Builder::getNamedAttr(&v69, "window_sizes", 0xCuLL, v43);
    v46 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v67 = v44;
      v68 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v45 = v68;
      v44 = v67;
      v46 = v71;
    }

    v47 = (v70 + 16 * v46);
    *v47 = v44;
    v47[1] = v45;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v48 = v70;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v70 == v72)
    {
      return DictionaryAttr;
    }

    goto LABEL_40;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v69, v70, v7);
  v48 = v70;
  if (v70 != v72)
  {
LABEL_40:
    free(v48);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PoolMaxOp::computePropertiesHash(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v30 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v28 = v19;
  v22 = HIDWORD(a1[8]);
  v23 = 0x9DDFEA08EB382D69 * ((8 * a1[8] - 0xAE502812AA7333) ^ v22);
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 47));
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  v36 = 0;
  v37 = 0xFF51AFD7ED558CCDLL;
  v33[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v33[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v32 = 0;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v32, v34, v35, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v33, v32, v24, v35, &v31, &v30, &v29, &v28, &v27, &v26);
}

uint64_t mlir::mps::PoolMaxOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    switch(__n)
    {
      case 7:
        if (!memcmp(__s1, "strides", 7uLL))
        {
          return a2[7];
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          return *a2;
        }

        break;
      case 12:
        if (!memcmp(__s1, "indices_mode", 0xCuLL))
        {
          return a2[4];
        }

        if (!memcmp(__s1, "window_sizes", 0xCuLL))
        {
          return a2[8];
        }

        break;
    }

    return 0;
  }

  if (__n > 15)
  {
    if (__n == 16)
    {
      if (!memcmp(__s1, "explicit_padding", 0x10uLL))
      {
        return a2[2];
      }

      if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
      {
        return a2[3];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "indices_result_type", 0x13uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n != 14 || memcmp(__s1, "dilation_rates", 0xEuLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::mps::PoolMaxOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[7] = v9;
          }

          else
          {
            v5[7] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            *result = v15;
          }

          else
          {
            *result = 0;
          }
        }

        break;
      case 12:
        result = memcmp(__s1, "indices_mode", 0xCuLL);
        if (result)
        {
          result = memcmp(__s1, "window_sizes", 0xCuLL);
          if (!result)
          {
            if (a4)
            {
              result = mlir::DenseIntElementsAttr::classof(a4);
              if (result)
              {
                v7 = a4;
              }

              else
              {
                v7 = 0;
              }

              v5[8] = v7;
            }

            else
            {
              v5[8] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }

          v5[4] = v18;
        }

        else
        {
          v5[4] = 0;
        }

        break;
    }
  }

  else if (a3 > 15)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[3] = v13;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        v5[2] = v16;
      }

      else
      {
        v5[2] = 0;
      }
    }

    else if (a3 == 19)
    {
      result = memcmp(__s1, "indices_result_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[5] = v8;
        }

        else
        {
          v5[5] = 0;
        }
      }
    }
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "padding_style", 0xDuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  else if (a3 == 14)
  {
    result = memcmp(__s1, "dilation_rates", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }

        v5[1] = v17;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::PoolMaxOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "indices_mode", 0xCuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "indices_result_type", 0x13uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v11);
  }

  v12 = a2[8];
  if (v12)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v12);
  }
}

BOOL mlir::mps::PoolMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 8);
}

BOOL mlir::mps::PoolMaxOp::verifyInvariantsImpl(uint64_t **this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[16];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[14];
    v12 = v3[15];
    v30[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) && (v30[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v10, "indices_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "indices_result_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v13 = *this - 2) : (v13 = 0), v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0), mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
    {
      if (*(*this + 9))
      {
        v15 = *this - 2;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 1);
      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v28 = "requires attribute 'window_sizes'";
    v29 = 259;
    mlir::OpState::emitOpError(this, &v28, v30);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v36;
        v21 = __p;
        if (v36 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v36 = v19;
        operator delete(v21);
      }

      v22 = v33;
      if (v33)
      {
        v23 = v34;
        v24 = v33;
        if (v34 != v33)
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
          v24 = v33;
        }

        v34 = v22;
        operator delete(v24);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }
  }

  return v18;
}

uint64_t mlir::mps::PruningGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  if (!v6)
  {
    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v72 = "expected DictionaryAttr to set properties";
      v73 = 41;
      v26 = &v71;
      v27 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v27 = v76;
          v26 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v26 = &v71;
          v27 = v76;
        }
      }

      v28 = &v27[24 * v77];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }

    if (v85 != 1)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v83;
      v32 = __p;
      if (v83 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v83 = v30;
      operator delete(v32);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_70;
    }

    v33 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_69:
      v81 = v21;
      operator delete(v23);
LABEL_70:
      if (v76 != v79)
      {
        free(v76);
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
    v23 = v80;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v70, "pruning_metric", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 59;
        v10 = &v71;
        v11 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v11 = v76;
            v10 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v10 = &v71;
            v11 = v76;
          }
        }

        v12 = &v11[24 * v77];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v77;
        if (v74)
        {
          v14 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v15 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v65 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v15 = v76;
              v14 = (v76 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v14 = &v71;
              v15 = v76;
            }
          }

          v16 = &v15[24 * v77];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v83;
        v20 = __p;
        if (v83 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v83 = v18;
        operator delete(v20);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
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

  v36 = mlir::DictionaryAttr::get(&v70, "pruning_structure", 0x11uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
    {
      v37 = v36;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 62;
        v38 = &v71;
        v39 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v66 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v39 = v76;
            v38 = (v76 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v38 = &v71;
            v39 = v76;
          }
        }

        v40 = &v39[24 * v77];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v77;
        if (v74)
        {
          v42 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v37);
          v43 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v67 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v43 = v76;
              v42 = (v76 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v42 = &v71;
              v43 = v76;
            }
          }

          v44 = &v43[24 * v77];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v83;
        v48 = __p;
        if (v83 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v83 = v46;
        operator delete(v48);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v49 = v81;
      v23 = v80;
      if (v81 == v80)
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

  v53 = mlir::DictionaryAttr::get(&v70, "sparsity", 8uLL);
  if (!v53)
  {
    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[2] = v53;
    return 1;
  }

  v54 = v53;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 53;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v68 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v55 = &v71;
        v56 = v76;
      }
    }

    v57 = &v56[24 * v77];
    v58 = *v55;
    *(v57 + 2) = *(v55 + 2);
    *v57 = v58;
    ++v77;
    if (v74)
    {
      v59 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v54);
      v60 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v60 = v76;
          v59 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v59 = &v71;
          v60 = v76;
        }
      }

      v61 = &v60[24 * v77];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }
  }

  if (v85 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v75);
  }

  return 0;
}

uint64_t mlir::mps::PruningGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "pruning_metric", 0xEuLL, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "pruning_structure", 0x11uLL, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "sparsity", 8uLL, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::PruningGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 8)
  {
    result = memcmp(__s1, "sparsity", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *(v5 + 16) = v8;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 17)
  {
    result = memcmp(__s1, "pruning_structure", 0x11uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 14 && *__s1 == 0x5F676E696E757270 && *(__s1 + 6) == 0x63697274656D5F67)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::PruningGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v8, "pruning_metric", 0xE, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v9, "pruning_structure", 0x11, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "sparsity", 8, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: pruning metrics";
        v29 = 47;
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: pruning structure";
        v29 = 49;
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

BOOL mlir::mps::PruningGradientOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, (v3 + 16));
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PruningMetricAttr]";
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PruningStructureAttr]";
  v38 = 81;
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

mlir::Float32Type *mlir::mps::PruningGradientOp::populateDefaultProperties(uint64_t a1, mlir::Float32Type **a2)
{
  v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v5 = result;
  v10 = result;
  if (*a2)
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
    v12 = v5;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 0;
    v14 = &v17;
    v15 = &v16;
    v13 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    *a2 = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      F32Type = mlir::Builder::getF32Type(&v10, v4);
      v9.n128_u64[0] = 0.5;
      result = mlir::Builder::getFloatAttr(v9, &v10, F32Type);
      a2[2] = result;
      return result;
    }
  }

  v7 = mlir::MLIRContext::getAttributeUniquer(v5);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v12 = v5;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 1;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, 0x17790227u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[1] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PruningGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v10 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v4, "pruning_metric", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10))
  {
    return 0;
  }

  v10 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v5, "pruning_structure", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10))
  {
    return 0;
  }

  v10 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "sparsity", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v7 = *this - 2;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::PruningOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, (v3 + 16));
}

BOOL mlir::mps::PruningOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v10 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v4, "pruning_metric", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10))
  {
    return 0;
  }

  v10 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v5, "pruning_structure", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10))
  {
    return 0;
  }

  v10 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "sparsity", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v7 = *this - 2;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::QuantizeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, (v3 + 8));
}

void mlir::mps::QuantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v27 = a3;
  v25 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 8) = a6;
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

  __src = v32;
  v31 = 0x200000000;
  v13 = *a1;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::QuantizeOp::inferReturnTypes(v13, v17, v18, v29[0], v29[1], Dictionary, v16, v19, v28[0], v28[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v20);
  }

  v21 = __src;
  v22 = v31;
  v23 = *(a2 + 72);
  v24 = v23 + v31;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v32)
  {
    free(__src);
  }
}

BOOL mlir::mps::QuantizeOp::verifyInvariantsImpl(uint64_t **this)
{
  v197 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    v185 = v2;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v4, "dtype", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v185))
    {
      return 0;
    }

    v185 = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v5, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v185) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_88;
    }

    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v11)
      {
LABEL_8:
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
LABEL_36:
        if (v12 != &v10[2 * v11] && *v12 == v9)
        {
          v27 = v12[1];
          v185 = v7;
          v186 = v27;
          if (!mlir::ElementsAttr::getShapedType(&v185))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v185 = v7;
          v186 = 0;
          if (!mlir::ElementsAttr::getShapedType(&v185))
          {
            goto LABEL_88;
          }
        }

        v28 = *v7;
        {
          v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v30 = *(v28 + 8);
          v31 = *(v28 + 16);
          if (v31)
          {
            goto LABEL_43;
          }
        }

        else
        {
          mlir::Builder::getI32VectorAttr();
          v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v30 = *(v28 + 8);
          v31 = *(v28 + 16);
          if (v31)
          {
LABEL_43:
            v32 = v30;
            v33 = v31;
            do
            {
              v34 = v33 >> 1;
              v35 = &v32[2 * (v33 >> 1)];
              v37 = *v35;
              v36 = v35 + 2;
              v33 += ~(v33 >> 1);
              if (v37 < v29)
              {
                v32 = v36;
              }

              else
              {
                v33 = v34;
              }
            }

            while (v33);
LABEL_51:
            if (v32 != &v30[2 * v31] && *v32 == v29)
            {
              v38 = v32[1];
            }

            else
            {
              v38 = 0;
            }

            v176 = v7;
            v177 = v38;
            mlir::ShapedType::getShape(&v176);
            if (!v39)
            {
LABEL_71:
              v52 = *v7;
              {
                v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v54 = *(v52 + 8);
                v55 = *(v52 + 16);
                if (v55)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                mlir::Builder::getI32VectorAttr();
                v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v54 = *(v52 + 8);
                v55 = *(v52 + 16);
                if (v55)
                {
LABEL_73:
                  v56 = v54;
                  v57 = v55;
                  do
                  {
                    v58 = v57 >> 1;
                    v59 = &v56[2 * (v57 >> 1)];
                    v61 = *v59;
                    v60 = v59 + 2;
                    v57 += ~(v57 >> 1);
                    if (v61 < v53)
                    {
                      v56 = v60;
                    }

                    else
                    {
                      v57 = v58;
                    }
                  }

                  while (v57);
LABEL_81:
                  if (v56 != &v54[2 * v55] && *v56 == v53)
                  {
                    v62 = v56[1];
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v179 = v7;
                  v180 = v62;
                  isSplat = mlir::ElementsAttr::isSplat(&v179);
                  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_88;
                }
              }

              v55 = 0;
              v56 = v54;
              goto LABEL_81;
            }

            v40 = *v7;
            {
              v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v42 = *(v40 + 8);
              v43 = *(v40 + 16);
              if (v43)
              {
                goto LABEL_58;
              }
            }

            else
            {
              mlir::Builder::getI32VectorAttr();
              v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v42 = *(v40 + 8);
              v43 = *(v40 + 16);
              if (v43)
              {
LABEL_58:
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
LABEL_66:
                if (v44 != &v42[2 * v43] && *v44 == v41)
                {
                  v50 = v44[1];
                }

                else
                {
                  v50 = 0;
                }

                v182 = v7;
                v183 = v50;
                mlir::ShapedType::getShape(&v182);
                if (v51 == 1)
                {
                  goto LABEL_71;
                }

LABEL_88:
                v178 = 261;
                v176 = "operand";
                v177 = 7;
                mlir::Operation::emitOpError(v6, &v176, &v185);
                if (v185)
                {
                  LODWORD(v182) = 3;
                  v183 = " #";
                  v184 = 2;
                  v63 = &v182;
                  v64 = v187;
                  if (v188 >= v189)
                  {
                    if (v187 <= &v182 && v187 + 24 * v188 > &v182)
                    {
                      v113 = &v182 - v187;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                      v64 = v187;
                      v63 = (v187 + v113);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                      v63 = &v182;
                      v64 = v187;
                    }
                  }

                  v65 = &v64[24 * v188];
                  v66 = *v63;
                  *(v65 + 2) = v63[2];
                  *v65 = v66;
                  v67 = ++v188;
                  if (v185)
                  {
                    LODWORD(v182) = 5;
                    v183 = 1;
                    v68 = &v182;
                    v69 = v187;
                    if (v67 >= v189)
                    {
                      if (v187 <= &v182 && v187 + 24 * v67 > &v182)
                      {
                        v126 = &v182 - v187;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v67 + 1, 24);
                        v69 = v187;
                        v68 = (v187 + v126);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v67 + 1, 24);
                        v68 = &v182;
                        v69 = v187;
                      }
                    }

                    v70 = &v69[24 * v188];
                    v71 = *v68;
                    *(v70 + 2) = v68[2];
                    *v70 = v71;
                    v72 = ++v188;
                    if (v185)
                    {
                      LODWORD(v182) = 3;
                      v183 = " must be 0D/1D tensor of floating point values, but got ";
                      v184 = 56;
                      v73 = &v182;
                      v74 = v187;
                      if (v72 >= v189)
                      {
                        if (v187 <= &v182 && v187 + 24 * v72 > &v182)
                        {
                          v171 = &v182 - v187;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v72 + 1, 24);
                          v74 = v187;
                          v73 = (v187 + v171);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v72 + 1, 24);
                          v73 = &v182;
                          v74 = v187;
                        }
                      }

                      v75 = &v74[24 * v188];
                      v76 = *v73;
                      *(v75 + 2) = v73[2];
                      *v75 = v76;
                      ++v188;
                      if (v185)
                      {
                        v77 = &v182;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v182, v7);
                        v78 = v187;
                        if (v188 >= v189)
                        {
                          if (v187 <= &v182 && v187 + 24 * v188 > &v182)
                          {
                            v173 = &v182 - v187;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                            v78 = v187;
                            v77 = (v187 + v173);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                            v77 = &v182;
                            v78 = v187;
                          }
                        }

                        v79 = &v78[24 * v188];
                        v80 = *v77;
                        *(v79 + 2) = v77[2];
                        *v79 = v80;
                        ++v188;
                      }
                    }
                  }
                }

                v81 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v185);
                if (v185)
                {
                  mlir::InFlightDiagnostic::report(&v185);
                }

                if (v196 == 1)
                {
                  if (v195 != &v196)
                  {
                    free(v195);
                  }

                  v82 = __p;
                  if (__p)
                  {
                    v83 = v194;
                    v84 = __p;
                    if (v194 != __p)
                    {
                      do
                      {
                        v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
                      }

                      while (v83 != v82);
                      v84 = __p;
                    }

                    v194 = v82;
                    operator delete(v84);
                  }

                  v85 = v191;
                  if (v191)
                  {
                    v86 = v192;
                    v87 = v191;
                    if (v192 != v191)
                    {
                      do
                      {
                        v89 = *--v86;
                        v88 = v89;
                        *v86 = 0;
                        if (v89)
                        {
                          MEMORY[0x1AC55A040](v88, 0x1000C8077774924);
                        }
                      }

                      while (v86 != v85);
                      v87 = v191;
                    }

                    v192 = v85;
                    operator delete(v87);
                  }

                  if (v187 != v190)
                  {
                    free(v187);
                  }
                }

                if (!v81)
                {
                  return 0;
                }

LABEL_118:
                v90 = *this;
                v91 = (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
                v92 = *v91;
                if (*(*v91 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                {
                  goto LABEL_204;
                }

                {
                  v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v94 = *(v92 + 8);
                  v95 = *(v92 + 16);
                  if (v95)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  mlir::Builder::getI32VectorAttr();
                  v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v94 = *(v92 + 8);
                  v95 = *(v92 + 16);
                  if (v95)
                  {
LABEL_121:
                    v96 = v94;
                    v97 = v95;
                    do
                    {
                      v98 = v97 >> 1;
                      v99 = &v96[2 * (v97 >> 1)];
                      v101 = *v99;
                      v100 = v99 + 2;
                      v97 += ~(v97 >> 1);
                      if (v101 < v93)
                      {
                        v96 = v100;
                      }

                      else
                      {
                        v97 = v98;
                      }
                    }

                    while (v97);
LABEL_141:
                    if (v96 != &v94[2 * v95] && *v96 == v93)
                    {
                      v102 = v96[1];
                    }

                    else
                    {
                      v102 = 0;
                    }

                    v185 = v91;
                    v186 = v102;
                    if (!mlir::ElementsAttr::getShapedType(&v185))
                    {
                      goto LABEL_204;
                    }

                    v103 = *v91;
                    {
                      v104 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                      v105 = *(v103 + 8);
                      v106 = *(v103 + 16);
                      if (v106)
                      {
                        goto LABEL_148;
                      }
                    }

                    else
                    {
                      mlir::Builder::getI32VectorAttr();
                      v104 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                      v105 = *(v103 + 8);
                      v106 = *(v103 + 16);
                      if (v106)
                      {
LABEL_148:
                        v107 = v105;
                        v108 = v106;
                        do
                        {
                          v109 = v108 >> 1;
                          v110 = &v107[2 * (v108 >> 1)];
                          v112 = *v110;
                          v111 = v110 + 2;
                          v108 += ~(v108 >> 1);
                          if (v112 < v104)
                          {
                            v107 = v111;
                          }

                          else
                          {
                            v108 = v109;
                          }
                        }

                        while (v108);
LABEL_157:
                        if (v107 != &v105[2 * v106] && *v107 == v104)
                        {
                          v114 = v107[1];
                        }

                        else
                        {
                          v114 = 0;
                        }

                        v176 = v91;
                        v177 = v114;
                        mlir::ShapedType::getShape(&v176);
                        if (!v115)
                        {
LABEL_178:
                          v129 = *v91;
                          {
                            v130 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                            v131 = *(v129 + 8);
                            v132 = *(v129 + 16);
                            if (v132)
                            {
                              goto LABEL_180;
                            }
                          }

                          else
                          {
                            mlir::Builder::getI32VectorAttr();
                            v130 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                            v131 = *(v129 + 8);
                            v132 = *(v129 + 16);
                            if (v132)
                            {
LABEL_180:
                              v133 = v131;
                              v134 = v132;
                              do
                              {
                                v135 = v134 >> 1;
                                v136 = &v133[2 * (v134 >> 1)];
                                v138 = *v136;
                                v137 = v136 + 2;
                                v134 += ~(v134 >> 1);
                                if (v138 < v130)
                                {
                                  v133 = v137;
                                }

                                else
                                {
                                  v134 = v135;
                                }
                              }

                              while (v134);
LABEL_188:
                              if (v133 != &v131[2 * v132] && *v133 == v130)
                              {
                                v139 = v133[1];
                              }

                              else
                              {
                                v139 = 0;
                              }

                              v179 = v91;
                              v180 = v139;
                              isSplat = mlir::ElementsAttr::isSplat(&v179);
                              if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
                              {
LABEL_234:
                                if (*(*this + 9))
                                {
                                  v167 = *this - 2;
                                }

                                else
                                {
                                  v167 = 0;
                                }

                                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v167, 0);
                                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
                              }

                              goto LABEL_204;
                            }
                          }

                          v132 = 0;
                          v133 = v131;
                          goto LABEL_188;
                        }

                        v116 = *v91;
                        {
                          v117 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                          v118 = *(v116 + 8);
                          v119 = *(v116 + 16);
                          if (v119)
                          {
                            goto LABEL_164;
                          }
                        }

                        else
                        {
                          mlir::Builder::getI32VectorAttr();
                          v117 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                          v118 = *(v116 + 8);
                          v119 = *(v116 + 16);
                          if (v119)
                          {
LABEL_164:
                            v120 = v118;
                            v121 = v119;
                            do
                            {
                              v122 = v121 >> 1;
                              v123 = &v120[2 * (v121 >> 1)];
                              v125 = *v123;
                              v124 = v123 + 2;
                              v121 += ~(v121 >> 1);
                              if (v125 < v117)
                              {
                                v120 = v124;
                              }

                              else
                              {
                                v121 = v122;
                              }
                            }

                            while (v121);
LABEL_173:
                            if (v120 != &v118[2 * v119] && *v120 == v117)
                            {
                              v127 = v120[1];
                            }

                            else
                            {
                              v127 = 0;
                            }

                            v182 = v91;
                            v183 = v127;
                            mlir::ShapedType::getShape(&v182);
                            if (v128 == 1)
                            {
                              goto LABEL_178;
                            }

LABEL_204:
                            v178 = 261;
                            v176 = "operand";
                            v177 = 7;
                            mlir::Operation::emitOpError(v90, &v176, &v185);
                            if (v185)
                            {
                              LODWORD(v182) = 3;
                              v183 = " #";
                              v184 = 2;
                              v140 = &v182;
                              v141 = v187;
                              if (v188 >= v189)
                              {
                                if (v187 <= &v182 && v187 + 24 * v188 > &v182)
                                {
                                  v170 = &v182 - v187;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                                  v141 = v187;
                                  v140 = (v187 + v170);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                                  v140 = &v182;
                                  v141 = v187;
                                }
                              }

                              v142 = &v141[24 * v188];
                              v143 = *v140;
                              *(v142 + 2) = v140[2];
                              *v142 = v143;
                              v144 = ++v188;
                              if (v185)
                              {
                                LODWORD(v182) = 5;
                                v183 = 2;
                                v145 = &v182;
                                v146 = v187;
                                if (v144 >= v189)
                                {
                                  if (v187 <= &v182 && v187 + 24 * v144 > &v182)
                                  {
                                    v172 = &v182 - v187;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v144 + 1, 24);
                                    v146 = v187;
                                    v145 = (v187 + v172);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v144 + 1, 24);
                                    v145 = &v182;
                                    v146 = v187;
                                  }
                                }

                                v147 = &v146[24 * v188];
                                v148 = *v145;
                                *(v147 + 2) = v145[2];
                                *v147 = v148;
                                v149 = ++v188;
                                if (v185)
                                {
                                  LODWORD(v182) = 3;
                                  v183 = " must be 0D/1D tensor of quantized values, but got ";
                                  v184 = 51;
                                  v150 = &v182;
                                  v151 = v187;
                                  if (v149 >= v189)
                                  {
                                    if (v187 <= &v182 && v187 + 24 * v149 > &v182)
                                    {
                                      v174 = &v182 - v187;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v149 + 1, 24);
                                      v151 = v187;
                                      v150 = (v187 + v174);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v149 + 1, 24);
                                      v150 = &v182;
                                      v151 = v187;
                                    }
                                  }

                                  v152 = &v151[24 * v188];
                                  v153 = *v150;
                                  *(v152 + 2) = v150[2];
                                  *v152 = v153;
                                  ++v188;
                                  if (v185)
                                  {
                                    v154 = &v182;
                                    mlir::DiagnosticArgument::DiagnosticArgument(&v182, v91);
                                    v155 = v187;
                                    if (v188 >= v189)
                                    {
                                      if (v187 <= &v182 && v187 + 24 * v188 > &v182)
                                      {
                                        v175 = &v182 - v187;
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                                        v155 = v187;
                                        v154 = (v187 + v175);
                                      }

                                      else
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
                                        v154 = &v182;
                                        v155 = v187;
                                      }
                                    }

                                    v156 = &v155[24 * v188];
                                    v157 = *v154;
                                    *(v156 + 2) = v154[2];
                                    *v156 = v157;
                                    ++v188;
                                  }
                                }
                              }
                            }

                            v158 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v185);
                            if (v185)
                            {
                              mlir::InFlightDiagnostic::report(&v185);
                            }

                            if (v196 == 1)
                            {
                              if (v195 != &v196)
                              {
                                free(v195);
                              }

                              v159 = __p;
                              if (__p)
                              {
                                v160 = v194;
                                v161 = __p;
                                if (v194 != __p)
                                {
                                  do
                                  {
                                    v160 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v160 - 1);
                                  }

                                  while (v160 != v159);
                                  v161 = __p;
                                }

                                v194 = v159;
                                operator delete(v161);
                              }

                              v162 = v191;
                              if (v191)
                              {
                                v163 = v192;
                                v164 = v191;
                                if (v192 != v191)
                                {
                                  do
                                  {
                                    v166 = *--v163;
                                    v165 = v166;
                                    *v163 = 0;
                                    if (v166)
                                    {
                                      MEMORY[0x1AC55A040](v165, 0x1000C8077774924);
                                    }
                                  }

                                  while (v163 != v162);
                                  v164 = v191;
                                }

                                v192 = v162;
                                operator delete(v164);
                              }

                              if (v187 != v190)
                              {
                                free(v187);
                              }
                            }

                            if (v158)
                            {
                              goto LABEL_234;
                            }

                            return 0;
                          }
                        }

                        v119 = 0;
                        v120 = v118;
                        goto LABEL_173;
                      }
                    }

                    v106 = 0;
                    v107 = v105;
                    goto LABEL_157;
                  }
                }

                v95 = 0;
                v96 = v94;
                goto LABEL_141;
              }
            }

            v43 = 0;
            v44 = v42;
            goto LABEL_66;
          }
        }

        v31 = 0;
        v32 = v30;
        goto LABEL_51;
      }
    }

    v11 = 0;
    v12 = v10;
    goto LABEL_36;
  }

  v176 = "requires attribute 'dtype'";
  v178 = 259;
  mlir::OpState::emitOpError(this, &v176, &v185);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v185);
  if (v185)
  {
    mlir::InFlightDiagnostic::report(&v185);
  }

  if (v196 == 1)
  {
    if (v195 != &v196)
    {
      free(v195);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v194;
      v21 = __p;
      if (v194 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v194 = v19;
      operator delete(v21);
    }

    v22 = v191;
    if (v191)
    {
      v23 = v192;
      v24 = v191;
      if (v192 != v191)
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
        v24 = v191;
      }

      v192 = v22;
      operator delete(v24);
    }

    if (v187 != v190)
    {
      free(v187);
    }
  }

  return v18;
}

uint64_t mlir::mps::RandomNormalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
LABEL_69:
      v83 = v21;
      operator delete(v23);
LABEL_70:
      if (v78 != v81)
      {
        free(v78);
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
    v23 = v82;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v72, "mean", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 49;
        v10 = &v73;
        v11 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v66 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v11 = v78;
            v10 = (v78 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v10 = &v73;
            v11 = v78;
          }
        }

        v12 = &v11[24 * v79];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v79;
        if (v76)
        {
          v14 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
          v15 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v67 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v15 = v78;
              v14 = (v78 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v14 = &v73;
              v15 = v78;
            }
          }

          v16 = &v15[24 * v79];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v85;
        v20 = __p;
        if (v85 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v85 = v18;
        operator delete(v20);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v22 = v83;
      v23 = v82;
      if (v83 == v82)
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

  v36 = mlir::DictionaryAttr::get(&v72, "result_element_type", 0x13uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 64;
        v38 = &v73;
        v39 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v68 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v39 = v78;
            v38 = (v78 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v38 = &v73;
            v39 = v78;
          }
        }

        v40 = &v39[24 * v79];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v79;
        if (v76)
        {
          v42 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
          v43 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v69 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v43 = v78;
              v42 = (v78 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v42 = &v73;
              v43 = v78;
            }
          }

          v44 = &v43[24 * v79];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v85;
        v48 = __p;
        if (v85 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v85 = v46;
        operator delete(v48);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v49 = v83;
      v23 = v82;
      if (v83 == v82)
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

  v53 = mlir::DictionaryAttr::get(&v72, "sampling_method", 0xFuLL);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 60;
        v55 = &v73;
        v56 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v56 = v78;
            v55 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v55 = &v73;
            v56 = v78;
          }
        }

        v57 = &v56[24 * v79];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v79;
        if (v76)
        {
          v59 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
          v60 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v60 = v78;
              v59 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v59 = &v73;
              v60 = v78;
            }
          }

          v61 = &v60[24 * v79];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v63 = mlir::DictionaryAttr::get(&v72, "std_dev", 7uLL);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::mps::RandomNormalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "mean", 4uLL, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "result_element_type", 0x13uLL, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "sampling_method", 0xFuLL, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "std_dev", 7uLL, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::RandomNormalOp::getInherentAttr(int a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "sampling_method", 0xFuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "result_element_type", 0x13uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 4)
  {
    if (*__s1 == 1851876717)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 7 || memcmp(__s1, "std_dev", 7uLL))
  {
    return 0;
  }

  return a2[3];
}

uint64_t mlir::mps::RandomNormalOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      result = memcmp(__s1, "sampling_method", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[2] = v8;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 19)
    {
      result = memcmp(__s1, "result_element_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          v5[1] = v6;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }
  }

  else if (a3 == 4)
  {
    if (*__s1 == 1851876717)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else if (a3 == 7)
  {
    result = memcmp(__s1, "std_dev", 7uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[3] = v9;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  return result;
}

BOOL mlir::mps::RandomNormalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "mean", 4, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "result_element_type", 0x13, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v10, "sampling_method", 0xF, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "std_dev", 7, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid NormalSamplingMethod";
        v29 = 58;
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

BOOL mlir::mps::RandomNormalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 3);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::NormalSamplingMethodAttr]";
  v38 = 85;
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

mlir::MLIRContext *mlir::mps::RandomNormalOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v16[0] = *(a1 + 8);
  result = mlir::Attribute::getContext(v16);
  v11 = result;
  if (*a2)
  {
    if (a2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    F32Type = mlir::Builder::getF32Type(&v11, v4);
    v6.n128_u64[0] = 0;
    result = mlir::Builder::getFloatAttr(v6, &v11, F32Type);
    *a2 = result;
    if (a2[3])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      v9 = v11;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v11);
      v12[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
      v12[1] = v9;
      v16[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v16[1] = v12;
      v15 = 0;
      v13[0] = &v15;
      v13[1] = v16;
      v14 = &v15;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
      a2[2] = result;
      return result;
    }
  }

  v7 = mlir::Builder::getF32Type(&v11, v4);
  v8.n128_u64[0] = 1.0;
  result = mlir::Builder::getFloatAttr(v8, &v11, v7);
  a2[3] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::RandomNormalOp::verifyInvariantsImpl(uint64_t **this)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v4 = v3[9];
  v5 = v3 + 8;
  if (v4)
  {
    v7 = v5[2];
    v8 = v5[3];
    v23[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v4, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23) && (v23[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "mean", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (v23[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "std_dev", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (v23[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v7, "sampling_method", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
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

    else
    {
      return 0;
    }
  }

  else
  {
    v21 = "requires attribute 'result_element_type'";
    v22 = 259;
    mlir::OpState::emitOpError(this, &v21, v23);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v29;
        v14 = __p;
        if (v29 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v29 = v12;
        operator delete(v14);
      }

      v15 = v26;
      if (v26)
      {
        v16 = v27;
        v17 = v26;
        if (v27 != v26)
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
          v17 = v26;
        }

        v27 = v15;
        operator delete(v17);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v11;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v90 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v74 = v6;
  if (!v6)
  {
    a3(&v78, a4);
    if (v78)
    {
      LODWORD(v75) = 3;
      v76 = "expected DictionaryAttr to set properties";
      v77 = 41;
      v26 = &v75;
      v27 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v67 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v27 = v80;
          v26 = (v80 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v26 = &v75;
          v27 = v80;
        }
      }

      v28 = &v27[24 * v81];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v81;
      if (v78)
      {
        mlir::InFlightDiagnostic::report(&v78);
      }
    }

    if (v89 != 1)
    {
      return 0;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v87;
      v32 = __p;
      if (v87 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v87 = v30;
      operator delete(v32);
    }

    v21 = v84;
    if (!v84)
    {
      goto LABEL_70;
    }

    v33 = v85;
    v23 = v84;
    if (v85 == v84)
    {
LABEL_69:
      v85 = v21;
      operator delete(v23);
LABEL_70:
      if (v80 != v83)
      {
        free(v80);
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
    v23 = v84;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v74, "maximum", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v9 = v8;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 52;
        v10 = &v75;
        v11 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v68 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v11 = v80;
            v10 = (v80 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v10 = &v75;
            v11 = v80;
          }
        }

        v12 = &v11[24 * v81];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v81;
        if (v78)
        {
          v14 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v9);
          v15 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v69 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v15 = v80;
              v14 = (v80 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v14 = &v75;
              v15 = v80;
            }
          }

          v16 = &v15[24 * v81];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v87;
        v20 = __p;
        if (v87 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v87 = v18;
        operator delete(v20);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      v22 = v85;
      v23 = v84;
      if (v85 == v84)
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

  v36 = mlir::DictionaryAttr::get(&v74, "mean", 4uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v37 = v36;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 49;
        v38 = &v75;
        v39 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v70 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v39 = v80;
            v38 = (v80 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v38 = &v75;
            v39 = v80;
          }
        }

        v40 = &v39[24 * v81];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v81;
        if (v78)
        {
          v42 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v37);
          v43 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v71 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v43 = v80;
              v42 = (v80 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v42 = &v75;
              v43 = v80;
            }
          }

          v44 = &v43[24 * v81];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v87;
        v48 = __p;
        if (v87 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v87 = v46;
        operator delete(v48);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      v49 = v85;
      v23 = v84;
      if (v85 == v84)
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

  v52 = mlir::DictionaryAttr::get(&v74, "minimum", 7uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v53 = v52;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 52;
        v54 = &v75;
        v55 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v72 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v55 = v80;
            v54 = (v80 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v54 = &v75;
            v55 = v80;
          }
        }

        v56 = &v55[24 * v81];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v81;
        if (v78)
        {
          v58 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v53);
          v59 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v73 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v59 = v80;
              v58 = (v80 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v58 = &v75;
              v59 = v80;
            }
          }

          v60 = &v59[24 * v81];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if (v89 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v79);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v62 = mlir::DictionaryAttr::get(&v74, "result_element_type", 0x13uLL);
  v75 = v62;
  if (!v62)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v74, "sampling_method", 0xFuLL);
    v75 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_95;
      }

      a1[4] = v64;
    }

    v65 = mlir::DictionaryAttr::get(&v74, "std_dev", 7uLL);
    v75 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_95;
      }

      a1[5] = v65;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v78, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v75);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
  return 0;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v51[6] = *MEMORY[0x1E69E9840];
  v48 = a1;
  v49 = v51;
  v50 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v48, "maximum", 7uLL, *a2);
  v5 = v50;
  if (v50 >= HIDWORD(v50))
  {
    v36 = NamedAttr;
    v37 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
    v4 = v37;
    NamedAttr = v36;
    v5 = v50;
  }

  v6 = (v49 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v50 + 1;
  LODWORD(v50) = v50 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v48, "mean", 4uLL, v8);
    v11 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v38 = v9;
      v39 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v10 = v39;
      v9 = v38;
      v11 = v50;
    }

    v12 = (v49 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v48, "minimum", 7uLL, v13);
    v16 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v40 = v14;
      v41 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v15 = v41;
      v14 = v40;
      v16 = v50;
    }

    v17 = (v49 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v48, "result_element_type", 0x13uLL, v18);
    v21 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v42 = v19;
      v43 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v20 = v43;
      v19 = v42;
      v21 = v50;
    }

    v22 = (v49 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v48, "sampling_method", 0xFuLL, v23);
    v26 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v44 = v24;
      v45 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v25 = v45;
      v24 = v44;
      v26 = v50;
    }

    v27 = (v49 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v48, "std_dev", 7uLL, v28);
    v31 = v50;
    if (v50 >= HIDWORD(v50))
    {
      v46 = v29;
      v47 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v50 + 1, 16);
      v30 = v47;
      v29 = v46;
      v31 = v50;
    }

    v32 = (v49 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v50 + 1;
    LODWORD(v50) = v50 + 1;
  }

  v33 = v49;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v49 == v51)
    {
      return DictionaryAttr;
    }

    goto LABEL_28;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v48, v49, v7);
  v33 = v49;
  if (v49 != v51)
  {
LABEL_28:
    free(v33);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "sampling_method", 0xFuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "result_element_type", 0x13uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "mean", 4uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 7)
  {
    return 0;
  }

  if (*__s1 == 1769496941 && *(__s1 + 3) == 1836412265)
  {
    return *a2;
  }

  if (!memcmp(__s1, "minimum", 7uLL))
  {
    return a2[2];
  }

  if (memcmp(__s1, "std_dev", 7uLL))
  {
    return 0;
  }

  return a2[5];
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      result = memcmp(__s1, "sampling_method", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[4] = v10;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 19)
    {
      result = memcmp(__s1, "result_element_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[3] = v12;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "mean", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[1] = v9;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 7)
  {
    if (*__s1 == 1769496941 && *(__s1 + 3) == 1836412265)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        *result = v11;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "minimum", 7uLL);
      if (result)
      {
        result = memcmp(__s1, "std_dev", 7uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[5] = v8;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }

        v5[2] = v13;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::RandomTruncatedNormalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "maximum", 7uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "mean", 4uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "minimum", 7uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "result_element_type", 0x13uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "sampling_method", 0xFuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "std_dev", 7uLL, v9);
  }
}

BOOL mlir::mps::RandomTruncatedNormalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "maximum", 7, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v9, "mean", 4, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "minimum", 7, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v11, "result_element_type", 0x13, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v12, "sampling_method", 0xF, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v13, "std_dev", 7, a3, a4))
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

BOOL mlir::mps::RandomTruncatedNormalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 5);
}

mlir::MLIRContext *mlir::mps::RandomTruncatedNormalOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v20[0] = *(a1 + 8);
  result = mlir::Attribute::getContext(v20);
  v15 = result;
  if (a2[1])
  {
    if (a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    F32Type = mlir::Builder::getF32Type(&v15, v4);
    v6.n128_u64[0] = 0;
    result = mlir::Builder::getFloatAttr(v6, &v15, F32Type);
    a2[1] = result;
    if (a2[5])
    {
LABEL_3:
      if (a2[2])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v7 = mlir::Builder::getF32Type(&v15, v4);
  v8.n128_u64[0] = 1.0;
  result = mlir::Builder::getFloatAttr(v8, &v15, v7);
  a2[5] = result;
  if (a2[2])
  {
LABEL_4:
    if (*a2)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v9 = mlir::Builder::getF32Type(&v15, v4);
  v10.n128_u64[0] = -2.0;
  result = mlir::Builder::getFloatAttr(v10, &v15, v9);
  a2[2] = result;
  if (*a2)
  {
LABEL_5:
    if (a2[4])
    {
      return result;
    }

LABEL_11:
    v13 = v15;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v15);
    v16[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
    v16[1] = v13;
    v20[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v20[1] = v16;
    v19 = 0;
    v17[0] = &v19;
    v17[1] = v20;
    v18 = &v19;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
    a2[4] = result;
    return result;
  }

LABEL_10:
  v11 = mlir::Builder::getF32Type(&v15, v4);
  v12.n128_u64[0] = 2.0;
  result = mlir::Builder::getFloatAttr(v12, &v15, v11);
  *a2 = result;
  if (!a2[4])
  {
    goto LABEL_11;
  }

  return result;
}

BOOL mlir::mps::RandomTruncatedNormalOp::verifyInvariantsImpl(uint64_t **this)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v4 = v3 + 8;
  v5 = v6;
  v7 = v4[3];
  if (v7)
  {
    v9 = v4[1];
    v8 = v4[2];
    v10 = v4[4];
    v11 = v4[5];
    v26[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v7, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) && (v26[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v9, "mean", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "std_dev", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "minimum", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v5, "maximum", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v10, "sampling_method", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v12 = *this - 2;
      }

      else
      {
        v12 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = "requires attribute 'result_element_type'";
    v25 = 259;
    mlir::OpState::emitOpError(this, &v24, v26);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

      v15 = __p;
      if (__p)
      {
        v16 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v32 = v15;
        operator delete(v17);
      }

      v18 = v29;
      if (v29)
      {
        v19 = v30;
        v20 = v29;
        if (v30 != v29)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v29;
        }

        v30 = v18;
        operator delete(v20);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  return v14;
}

uint64_t mlir::mps::RandomUniformOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "result_element_type", 0x13uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 64;
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