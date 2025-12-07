BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v12 = a1;
  {
    v22 = v9;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v22 + 8);
    v15 = *(v22 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v23 = 0;
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

  v23 = v16[1];
LABEL_20:
  v66[0] = a2;
  v66[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v66);
  if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v52 = isSplat;
    v63 = isSplat;
    v59[0] = mlir::AffineMapAttr::getValue(&v63);
    if (mlir::Type::isF16(v59))
    {
      return 1;
    }

    v61 = v52;
    Value = mlir::AffineMapAttr::getValue(&v61);
    isF32 = mlir::Type::isF32(&Value);
    a1 = v12;
    if (isF32)
    {
      return 1;
    }
  }

  else
  {
    a1 = v12;
  }

LABEL_22:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(a1, v59, v66);
  if (v66[0])
  {
    LODWORD(v63) = 3;
    v64 = " #";
    v65 = 2;
    v25 = &v63;
    v26 = v67;
    if (v68 >= v69)
    {
      if (v67 <= &v63 && v67 + 24 * v68 > &v63)
      {
        v55 = &v63 - v67;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
        v26 = v67;
        v25 = (v67 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
        v25 = &v63;
        v26 = v67;
      }
    }

    v27 = &v26[24 * v68];
    v28 = *v25;
    *(v27 + 2) = v25[2];
    *v27 = v28;
    v29 = ++v68;
    if (v66[0])
    {
      LODWORD(v63) = 5;
      v64 = a5;
      v30 = &v63;
      v31 = v67;
      if (v29 >= v69)
      {
        if (v67 <= &v63 && v67 + 24 * v29 > &v63)
        {
          v56 = &v63 - v67;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v29 + 1, 24);
          v31 = v67;
          v30 = (v67 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v29 + 1, 24);
          v30 = &v63;
          v31 = v67;
        }
      }

      v32 = &v31[24 * v68];
      v33 = *v30;
      *(v32 + 2) = v30[2];
      *v32 = v33;
      v34 = ++v68;
      if (v66[0])
      {
        LODWORD(v63) = 3;
        v64 = " must be tensor of complex values, but got ";
        v65 = 43;
        v35 = &v63;
        v36 = v67;
        if (v34 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v34 > &v63)
          {
            v57 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v34 + 1, 24);
            v36 = v67;
            v35 = (v67 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v34 + 1, 24);
            v35 = &v63;
            v36 = v67;
          }
        }

        v37 = &v36[24 * v68];
        v38 = *v35;
        *(v37 + 2) = v35[2];
        *v37 = v38;
        ++v68;
        if (v66[0])
        {
          v39 = &v63;
          mlir::DiagnosticArgument::DiagnosticArgument(&v63, a2);
          v40 = v67;
          if (v68 >= v69)
          {
            if (v67 <= &v63 && v67 + 24 * v68 > &v63)
            {
              v58 = &v63 - v67;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
              v40 = v67;
              v39 = (v67 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
              v39 = &v63;
              v40 = v67;
            }
          }

          v41 = &v40[24 * v68];
          v42 = *v39;
          *(v41 + 2) = v39[2];
          *v41 = v42;
          ++v68;
        }
      }
    }
  }

  v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
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

    v44 = __p;
    if (__p)
    {
      v45 = v74;
      v46 = __p;
      if (v74 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v74 = v44;
      operator delete(v46);
    }

    v47 = v71;
    if (v71)
    {
      v48 = v72;
      v49 = v71;
      if (v72 != v71)
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
        v49 = v71;
      }

      v72 = v47;
      operator delete(v49);
    }

    if (v67 != v70)
    {
      free(v67);
    }
  }

  return v43;
}

uint64_t mlir::mps::CreateTextureTensorOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v58, "compressed", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 55;
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

  v36 = mlir::DictionaryAttr::get(&v58, "pixel_format", 0xCuLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
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

uint64_t mlir::mps::CreateTextureTensorOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "compressed", 0xAuLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "pixel_format", 0xCuLL, v8);
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps19(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid MetalPixelFormat";
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

BOOL mlir::mps::CreateTextureTensorOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::MetalPixelFormatAttr>(a1, (v3 + 8));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::MetalPixelFormatAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MetalPixelFormatAttr]";
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

BOOL mlir::mps::CreateTextureTensorOp::verifyInvariantsImpl(uint64_t **this)
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    v108[0] = v2;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps19(v4, "pixel_format", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v108))
    {
      return 0;
    }

    v108[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "compressed", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v108))
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    v9 = *(*v7 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_112;
      }

      goto LABEL_6;
    }

    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v8 + 8);
      v30 = *(v8 + 16);
      if (!v30)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v37 = v8;
      mlir::Builder::getI32VectorAttr();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v37 + 8);
      v30 = *(v37 + 16);
      if (!v30)
      {
        goto LABEL_46;
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
LABEL_48:
      v108[0] = v7;
      v108[1] = v38;
      isSplat = mlir::ElementsAttr::isSplat(v108);
      if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_142;
      }

      v8 = *v7;
      if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_112;
      }

LABEL_6:
      {
        v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v11 = *(v8 + 8);
        v12 = *(v8 + 16);
        if (v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v39 = v8;
        mlir::Builder::getI32VectorAttr();
        v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v11 = *(v39 + 8);
        v12 = *(v39 + 16);
        if (v12)
        {
LABEL_8:
          v13 = v11;
          v14 = v12;
          do
          {
            v15 = v14 >> 1;
            v16 = &v13[2 * (v14 >> 1)];
            v18 = *v16;
            v17 = v16 + 2;
            v14 += ~(v14 >> 1);
            if (v18 < v10)
            {
              v13 = v17;
            }

            else
            {
              v14 = v15;
            }
          }

          while (v14);
LABEL_65:
          if (v13 != &v11[2 * v12] && *v13 == v10)
          {
            v40 = v13[1];
            v100 = v7;
            v101 = v40;
            if (!mlir::ElementsAttr::getShapedType(&v100))
            {
              goto LABEL_112;
            }
          }

          else
          {
            v100 = v7;
            v101 = 0;
            if (!mlir::ElementsAttr::getShapedType(&v100))
            {
              goto LABEL_112;
            }
          }

          v41 = *v7;
          {
            v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v43 = *(v41 + 8);
            v44 = *(v41 + 16);
            if (v44)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v99 = v41;
            mlir::Builder::getI32VectorAttr();
            v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v43 = *(v99 + 8);
            v44 = *(v99 + 16);
            if (v44)
            {
LABEL_72:
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
LABEL_80:
              if (v45 != &v43[2 * v44] && *v45 == v42)
              {
                v51 = v45[1];
              }

              else
              {
                v51 = 0;
              }

              v105 = v7;
              v106 = v51;
              mlir::ShapedType::getShape(&v105);
              if (v52 != 4)
              {
LABEL_112:
                v102 = 261;
                v100 = "operand";
                v101 = 7;
                mlir::Operation::emitOpError(v6, &v100, v108);
                if (v108[0])
                {
                  LODWORD(v105) = 3;
                  v106 = " #";
                  v107 = 2;
                  v65 = &v105;
                  v66 = v109;
                  if (v110 >= v111)
                  {
                    if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                    {
                      v95 = &v105 - v109;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                      v66 = v109;
                      v65 = (v109 + v95);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                      v65 = &v105;
                      v66 = v109;
                    }
                  }

                  v67 = &v66[24 * v110];
                  v68 = *v65;
                  *(v67 + 2) = v65[2];
                  *v67 = v68;
                  v69 = ++v110;
                  if (v108[0])
                  {
                    LODWORD(v105) = 5;
                    v106 = 0;
                    v70 = &v105;
                    v71 = v109;
                    if (v69 >= v111)
                    {
                      if (v109 <= &v105 && v109 + 24 * v69 > &v105)
                      {
                        v96 = &v105 - v109;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v69 + 1, 24);
                        v71 = v109;
                        v70 = (v109 + v96);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v69 + 1, 24);
                        v70 = &v105;
                        v71 = v109;
                      }
                    }

                    v72 = &v71[24 * v110];
                    v73 = *v70;
                    *(v72 + 2) = v70[2];
                    *v72 = v73;
                    v74 = ++v110;
                    if (v108[0])
                    {
                      LODWORD(v105) = 3;
                      v106 = " must be unranked tensor of mps native type values or 4D tensor of mps native type values, but got ";
                      v107 = 99;
                      v75 = &v105;
                      v76 = v109;
                      if (v74 >= v111)
                      {
                        if (v109 <= &v105 && v109 + 24 * v74 > &v105)
                        {
                          v97 = &v105 - v109;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v74 + 1, 24);
                          v76 = v109;
                          v75 = (v109 + v97);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v74 + 1, 24);
                          v75 = &v105;
                          v76 = v109;
                        }
                      }

                      v77 = &v76[24 * v110];
                      v78 = *v75;
                      *(v77 + 2) = v75[2];
                      *v77 = v78;
                      ++v110;
                      if (v108[0])
                      {
                        v79 = &v105;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v105, v7);
                        v80 = v109;
                        if (v110 >= v111)
                        {
                          if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                          {
                            v98 = &v105 - v109;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                            v80 = v109;
                            v79 = (v109 + v98);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                            v79 = &v105;
                            v80 = v109;
                          }
                        }

                        v81 = &v80[24 * v110];
                        v82 = *v79;
                        *(v81 + 2) = v79[2];
                        *v81 = v82;
                        ++v110;
                      }
                    }
                  }
                }

                v83 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v108);
                if (v108[0])
                {
                  mlir::InFlightDiagnostic::report(v108);
                }

                if (v118 == 1)
                {
                  if (v117 != &v118)
                  {
                    free(v117);
                  }

                  v84 = __p;
                  if (__p)
                  {
                    v85 = v116;
                    v86 = __p;
                    if (v116 != __p)
                    {
                      do
                      {
                        v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
                      }

                      while (v85 != v84);
                      v86 = __p;
                    }

                    v116 = v84;
                    operator delete(v86);
                  }

                  v87 = v113;
                  if (v113)
                  {
                    v88 = v114;
                    v89 = v113;
                    if (v114 != v113)
                    {
                      do
                      {
                        v91 = *--v88;
                        v90 = v91;
                        *v88 = 0;
                        if (v91)
                        {
                          MEMORY[0x1AC55A040](v90, 0x1000C8077774924);
                        }
                      }

                      while (v88 != v87);
                      v89 = v113;
                    }

                    v114 = v87;
                    operator delete(v89);
                  }

                  if (v109 != v112)
                  {
                    free(v109);
                  }
                }

                if (v83)
                {
                  goto LABEL_142;
                }

                return 0;
              }

              v53 = *v7;
              {
                v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v55 = *(v53 + 8);
                v56 = *(v53 + 16);
                if (v56)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                v63 = v53;
                mlir::Builder::getI32VectorAttr();
                v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v55 = *(v63 + 8);
                v56 = *(v63 + 16);
                if (v56)
                {
LABEL_87:
                  v57 = v55;
                  v58 = v56;
                  do
                  {
                    v59 = v58 >> 1;
                    v60 = &v57[2 * (v58 >> 1)];
                    v62 = *v60;
                    v61 = v60 + 2;
                    v58 += ~(v58 >> 1);
                    if (v62 < v54)
                    {
                      v57 = v61;
                    }

                    else
                    {
                      v58 = v59;
                    }
                  }

                  while (v58);
LABEL_95:
                  if (v57 != &v55[2 * v56] && *v57 == v54)
                  {
                    v64 = v57[1];
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v103[0] = v7;
                  v103[1] = v64;
                  isSplat = mlir::ElementsAttr::isSplat(v103);
                  if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
                  {
                    goto LABEL_112;
                  }

LABEL_142:
                  if (*(*this + 9))
                  {
                    v92 = *this - 2;
                  }

                  else
                  {
                    v92 = 0;
                  }

                  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v92, 0);
                  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
                }
              }

              v56 = 0;
              v57 = v55;
              goto LABEL_95;
            }
          }

          v44 = 0;
          v45 = v43;
          goto LABEL_80;
        }
      }

      v12 = 0;
      v13 = v11;
      goto LABEL_65;
    }

LABEL_46:
    v38 = 0;
    goto LABEL_48;
  }

  v100 = "requires attribute 'pixel_format'";
  v102 = 259;
  mlir::OpState::emitOpError(this, &v100, v108);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v108);
  if (v108[0])
  {
    mlir::InFlightDiagnostic::report(v108);
  }

  if (v118 == 1)
  {
    if (v117 != &v118)
    {
      free(v117);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v116;
      v22 = __p;
      if (v116 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v116 = v20;
      operator delete(v22);
    }

    v23 = v113;
    if (v113)
    {
      v24 = v114;
      v25 = v113;
      if (v114 != v113)
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
        v25 = v113;
      }

      v114 = v23;
      operator delete(v25);
    }

    if (v109 != v112)
    {
      free(v109);
    }
  }

  return v19;
}

BOOL mlir::mps::CropOp::verifyInvariantsImpl(uint64_t **this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 2 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*((*this)[9] + 24));
  if (*(*this + 9))
  {
    v5 = *this - 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v6))
  {
    v7 = *(*this + 9) ? *this - 2 : 0;
    v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    v9 = mlir::getElementTypeOrSelf(v8);
    if (v9 == mlir::getElementTypeOrSelf(*((*this)[9] + 24)))
    {
      return 1;
    }
  }

  v20 = "failed to verify that all of {input, result} have same element type";
  v21 = 259;
  mlir::OpState::emitOpError(this, &v20, v22);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v11 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v11;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v11;
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
      result = v11;
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
      result = v11;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v11;
    }
  }

  return result;
}

uint64_t mlir::mps::CropResizeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v76, "alignment_mode", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
    {
      v9 = v8;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 59;
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

  v36 = mlir::DictionaryAttr::get(&v76, "coordinate_mode", 0xFuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
    {
      v37 = v36;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 60;
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

  v52 = mlir::DictionaryAttr::get(&v76, "interpolation_mode", 0x12uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
    {
      v53 = v52;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 63;
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

  v62 = mlir::DictionaryAttr::get(&v76, "normalize_coordinates", 0x15uLL);
  v77 = v62;
  if (!v62)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v76, "resize_height", 0xDuLL);
    v77 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v80, a4);
LABEL_99:
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v80, v65);
        goto LABEL_100;
      }

      a1[4] = v64;
    }

    v66 = mlir::DictionaryAttr::get(&v76, "resize_width", 0xCuLL);
    v77 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a3(&v80, a4);
        goto LABEL_100;
      }

      a1[5] = v66;
    }

    v67 = mlir::DictionaryAttr::get(&v76, "spatial_scale", 0xDuLL);
    v77 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        a3(&v80, a4);
        goto LABEL_99;
      }

      a1[6] = v67;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v80, a4);
LABEL_100:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v77);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
  return 0;
}

uint64_t mlir::mps::CropResizeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v55 = a1;
  v56 = v58;
  v57 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v55, "alignment_mode", 0xEuLL, *a2);
  v5 = v57;
  if (v57 >= HIDWORD(v57))
  {
    v41 = NamedAttr;
    v42 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
    v4 = v42;
    NamedAttr = v41;
    v5 = v57;
  }

  v6 = (v56 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v57 + 1;
  LODWORD(v57) = v57 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v55, "coordinate_mode", 0xFuLL, v8);
    v11 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v43 = v9;
      v44 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v10 = v44;
      v9 = v43;
      v11 = v57;
    }

    v12 = (v56 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v55, "interpolation_mode", 0x12uLL, v13);
    v16 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v45 = v14;
      v46 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v15 = v46;
      v14 = v45;
      v16 = v57;
    }

    v17 = (v56 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v55, "normalize_coordinates", 0x15uLL, v18);
    v21 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v47 = v19;
      v48 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v20 = v48;
      v19 = v47;
      v21 = v57;
    }

    v22 = (v56 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v55, "resize_height", 0xDuLL, v23);
    v26 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v49 = v24;
      v50 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v25 = v50;
      v24 = v49;
      v26 = v57;
    }

    v27 = (v56 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v55, "resize_width", 0xCuLL, v28);
    v31 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v51 = v29;
      v52 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v30 = v52;
      v29 = v51;
      v31 = v57;
    }

    v32 = (v56 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v55, "spatial_scale", 0xDuLL, v33);
    v36 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v53 = v34;
      v54 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v35 = v54;
      v34 = v53;
      v36 = v57;
    }

    v37 = (v56 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v38 = v56;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v56 == v58)
    {
      return DictionaryAttr;
    }

    goto LABEL_32;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v55, v56, v7);
  v38 = v56;
  if (v56 != v58)
  {
LABEL_32:
    free(v38);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::CropResizeOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "coordinate_mode", 0xFuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 18)
    {
      if (!memcmp(__s1, "interpolation_mode", 0x12uLL))
      {
        return a2[2];
      }
    }

    else if (__n == 21 && !memcmp(__s1, "normalize_coordinates", 0x15uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "resize_width", 0xCuLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "resize_height", 0xDuLL))
    {
      return a2[4];
    }

    if (!memcmp(__s1, "spatial_scale", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6E656D6E67696C61 || *(__s1 + 6) != 0x65646F6D5F746E65)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::CropResizeOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    switch(a3)
    {
      case 15:
        result = memcmp(__s1, "coordinate_mode", 0xFuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
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

        break;
      case 18:
        result = memcmp(__s1, "interpolation_mode", 0x12uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            v5[2] = v12;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 21:
        result = memcmp(__s1, "normalize_coordinates", 0x15uLL);
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

        break;
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "resize_width", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else if (a3 == 13)
  {
    result = memcmp(__s1, "resize_height", 0xDuLL);
    if (result)
    {
      result = memcmp(__s1, "spatial_scale", 0xDuLL);
      if (!result)
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

          v5[6] = v11;
        }

        else
        {
          v5[6] = 0;
        }
      }
    }

    else if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = a4;
      }

      else
      {
        v14 = 0;
      }

      v5[4] = v14;
    }

    else
    {
      v5[4] = 0;
    }
  }

  else if (a3 == 14 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 6) == 0x65646F6D5F746E65)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      *result = v13;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::CropResizeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment_mode", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "coordinate_mode", 0xFuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "interpolation_mode", 0x12uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "normalize_coordinates", 0x15uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "resize_height", 0xDuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "resize_width", 0xCuLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "spatial_scale", 0xDuLL, v10);
  }
}

BOOL mlir::mps::CropResizeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps23(v8, "alignment_mode", 0xE, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(v9, "coordinate_mode", 0xF, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v10, "interpolation_mode", 0x12, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "normalize_coordinates", 0x15, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v12, "resize_height", 0xD, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v13, "resize_width", 0xC, a3, a4))
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v14, "spatial_scale", 0xD, a3, a4))
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps23(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid CropResizeAlignmentMode";
        v29 = 61;
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid CropResizeCoordinateMode";
        v29 = 62;
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid sampling modes";
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v30 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v30);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&Value, 32);
    a5 = v8;
    a4 = v7;
    if (isUnsignedInteger)
    {
      return 1;
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v11 = &v30;
    v12 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v12 = v36;
        v11 = (v36 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = &v30;
        v12 = v36;
      }
    }

    v13 = &v12[24 * v37];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v37;
    if (Value)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (Value)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: 32-bit unsigned integer attribute";
        v32 = 65;
        v15 = &v30;
        v16 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v16 = v36;
            v15 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = &v30;
            v16 = v36;
          }
        }

        v17 = &v16[24 * v37];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v37;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v43;
      v21 = __p;
      if (v43 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v43 = v19;
      operator delete(v21);
    }

    v22 = v40;
    if (v40)
    {
      v23 = v41;
      v24 = v40;
      if (v41 != v40)
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
        v24 = v40;
      }

      v41 = v22;
      operator delete(v24);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v10;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v30 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v30);
    isF32 = mlir::Type::isF32(&Value);
    a5 = v8;
    a4 = v7;
    if (isF32)
    {
      return 1;
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v11 = &v30;
    v12 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v12 = v36;
        v11 = (v36 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = &v30;
        v12 = v36;
      }
    }

    v13 = &v12[24 * v37];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v37;
    if (Value)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (Value)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: 32-bit float attribute";
        v32 = 54;
        v15 = &v30;
        v16 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v16 = v36;
            v15 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = &v30;
            v16 = v36;
          }
        }

        v17 = &v16[24 * v37];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v37;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v43;
      v21 = __p;
      if (v43 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v43 = v19;
      operator delete(v21);
    }

    v22 = v40;
    if (v40)
    {
      v23 = v41;
      v24 = v40;
      if (v41 != v40)
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
        v24 = v40;
      }

      v41 = v22;
      operator delete(v24);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v10;
}

BOOL mlir::mps::CropResizeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::CropResizeAlignmentModeAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::CropResizeCoordinateModeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 6);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::CropResizeAlignmentModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::CropResizeAlignmentModeAttr]";
  v38 = 88;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::CropResizeCoordinateModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::CropResizeCoordinateModeAttr]";
  v38 = 89;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::SamplingModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::SamplingModeAttr]";
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FloatAttr]";
  v38 = 65;
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

uint64_t *mlir::mps::CropResizeOp::getResizeHeight(mlir::mps::CropResizeOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

uint64_t *mlir::mps::CropResizeOp::getResizeWidth(mlir::mps::CropResizeOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

mlir::MLIRContext *mlir::mps::CropResizeOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v22 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v22);
  v15 = result;
  if (a2[4])
  {
    if (a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    IntegerType = mlir::Builder::getIntegerType(&v15, 32, 0);
    result = mlir::Builder::getIntegerAttr(&v15, IntegerType, 1);
    a2[4] = result;
    if (a2[5])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v6 = mlir::Builder::getIntegerType(&v15, 32, 0);
  result = mlir::Builder::getIntegerAttr(&v15, v6, 1);
  a2[5] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[2])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  F32Type = mlir::Builder::getF32Type(&v15, v4);
  v8.n128_u64[0] = 1.0;
  result = mlir::Builder::getFloatAttr(v8, &v15, F32Type);
  a2[6] = result;
  if (a2[2])
  {
LABEL_5:
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = v15;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v15);
  v16 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v17 = v9;
  v22 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v23 = &v16;
  v21 = 1;
  v18 = &v21;
  v19 = &v22;
  v20 = &v21;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, 0x17790227u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
  a2[2] = result;
  if (*a2)
  {
LABEL_6:
    if (a2[1])
    {
      return result;
    }

LABEL_13:
    v13 = v15;
    v14 = mlir::MLIRContext::getAttributeUniquer(v15);
    v16 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
    v17 = v13;
    v22 = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v23 = &v16;
    v21 = 0;
    v18 = &v21;
    v19 = &v22;
    v20 = &v21;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v14, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
    a2[1] = result;
    return result;
  }

LABEL_12:
  v11 = v15;
  v12 = mlir::MLIRContext::getAttributeUniquer(v15);
  v16 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v17 = v11;
  v22 = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v23 = &v16;
  v21 = 0;
  v18 = &v21;
  v19 = &v22;
  v20 = &v21;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v12, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
  *a2 = result;
  if (!a2[1])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::CropResizeOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = v3[8];
  v4 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[14];
  v14 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "resize_height", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14))
  {
    return 0;
  }

  v14 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v9, "resize_width", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14))
  {
    return 0;
  }

  v14 = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "normalize_coordinates", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14))
  {
    return 0;
  }

  v14 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "spatial_scale", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14))
  {
    return 0;
  }

  v14 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v6, "interpolation_mode", 0x12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14))
  {
    return 0;
  }

  v14 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps23(v5, "alignment_mode", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps23(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14))
  {
    return 0;
  }

  v14 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(v4, "coordinate_mode", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v14) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

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

uint64_t mlir::mps::CumulativeMaximumOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v58, "exclusive", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 54;
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

  v36 = mlir::DictionaryAttr::get(&v58, "reverse", 7uLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 52;
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

uint64_t mlir::mps::CumulativeMaximumOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "exclusive", 9uLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "reverse", 7uLL, v8);
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

BOOL mlir::mps::CumulativeMaximumOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::CumulativeMaximumOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[8];
  v5 = v3[9];
  v9 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v4, "exclusive", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9))
  {
    return 0;
  }

  v9 = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "reverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v6 = *this - 2;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::CumulativeMinimumOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::CumulativeProductOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::CumulativeSumOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::DepthToSpace2DOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v58, "block_size", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 55;
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

  v36 = mlir::DictionaryAttr::get(&v58, "pixel_shuffle", 0xDuLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 58;
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

uint64_t mlir::mps::DepthToSpace2DOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "block_size", 0xAuLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "pixel_shuffle", 0xDuLL, v8);
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

BOOL mlir::mps::DepthToSpace2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::DepthToSpace2DOp::verifyInvariantsImpl(uint64_t **this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v22[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v4, "block_size", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) && (v22[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "pixel_shuffle", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 2;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'block_size'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
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
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v75 = v6;
  if (!v6)
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v77 = "expected DictionaryAttr to set properties";
      v78 = 41;
      v26 = &v76;
      v27 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v68 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v27 = v81;
          v26 = (v81 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v26 = &v76;
          v27 = v81;
        }
      }

      v28 = &v27[24 * v82];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v82;
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }
    }

    if (v90 != 1)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v88;
      v32 = __p;
      if (v88 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v88 = v30;
      operator delete(v32);
    }

    v21 = v85;
    if (!v85)
    {
      goto LABEL_77;
    }

    v33 = v86;
    v23 = v85;
    if (v86 == v85)
    {
LABEL_76:
      v86 = v21;
      operator delete(v23);
LABEL_77:
      if (v81 != v84)
      {
        free(v81);
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

  v8 = mlir::DictionaryAttr::get(&v75, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 56;
        v10 = &v76;
        v11 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v69 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v11 = v81;
            v10 = (v81 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v10 = &v76;
            v11 = v81;
          }
        }

        v12 = &v11[24 * v82];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v82;
        if (v79)
        {
          v14 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v9);
          v15 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v70 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v15 = v81;
              v14 = (v81 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v14 = &v76;
              v15 = v81;
            }
          }

          v16 = &v15[24 * v82];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if ((v90 & 1) == 0)
      {
        return 0;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v88;
        v20 = __p;
        if (v88 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v88 = v18;
        operator delete(v20);
      }

      v21 = v85;
      if (!v85)
      {
        goto LABEL_77;
      }

      v22 = v86;
      v23 = v85;
      if (v86 == v85)
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

  v36 = mlir::DictionaryAttr::get(&v75, "dilation_rates", 0xEuLL);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v78 = 59;
      v42 = &v76;
      v43 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v71 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v43 = v81;
          v42 = (v81 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v42 = &v76;
          v43 = v81;
        }
      }

      v44 = &v43[24 * v82];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v82;
      if (v79)
      {
        v46 = &v76;
        mlir::DiagnosticArgument::DiagnosticArgument(&v76, v37);
        v47 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v73 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v47 = v81;
            v46 = (v81 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v46 = &v76;
            v47 = v81;
          }
        }

        v48 = &v47[24 * v82];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v82;
        if (v79)
        {
          mlir::InFlightDiagnostic::report(&v79);
        }
      }
    }

    if ((v90 & 1) == 0)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v88;
      v52 = __p;
      if (v88 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v88 = v50;
      operator delete(v52);
    }

    v21 = v85;
    if (!v85)
    {
      goto LABEL_77;
    }

    v53 = v86;
    v23 = v85;
    if (v86 == v85)
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
    v23 = v85;
    goto LABEL_76;
  }

LABEL_49:
  v38 = mlir::DictionaryAttr::get(&v75, "explicit_padding", 0x10uLL);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 61;
        v56 = &v76;
        v57 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v72 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v57 = v81;
            v56 = (v81 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v56 = &v76;
            v57 = v81;
          }
        }

        v58 = &v57[24 * v82];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v82;
        if (v79)
        {
          v60 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v39);
          v61 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v74 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v61 = v81;
              v60 = (v81 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v60 = &v76;
              v61 = v81;
            }
          }

          v62 = &v61[24 * v82];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if (v90 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v80);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v40 = mlir::DictionaryAttr::get(&v75, "padding_style", 0xDuLL);
  v76 = v40;
  if (!v40)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v75, "strides", 7uLL);
    v76 = v64;
    if (v64)
    {
      v65 = v64;
      if (!mlir::DenseIntElementsAttr::classof(v64))
      {
        a3(&v79, a4);
        goto LABEL_95;
      }

      a1[4] = v65;
    }

    v66 = mlir::DictionaryAttr::get(&v75, "weights_layout", 0xEuLL);
    v76 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_95;
      }

      a1[5] = v66;
    }

    return 1;
  }

  if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    a1[3] = v40;
    goto LABEL_88;
  }

  a3(&v79, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v48, "data_layout", 0xBuLL, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v48, "dilation_rates", 0xEuLL, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v48, "explicit_padding", 0x10uLL, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v48, "padding_style", 0xDuLL, v18);
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
    v24 = mlir::Builder::getNamedAttr(&v48, "strides", 7uLL, v23);
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
    v29 = mlir::Builder::getNamedAttr(&v48, "weights_layout", 0xEuLL, v28);
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

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "weights_layout", 0xEuLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 7)
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

          v5[4] = v11;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (result)
        {
          result = memcmp(__s1, "weights_layout", 0xEuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
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

        break;
    }
  }

  return result;
}

void mlir::mps::DepthwiseConv2DDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 0xBuLL, *a2);
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
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "weights_layout", 0xEuLL, v9);
  }
}

BOOL mlir::mps::DepthwiseConv2DDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 0xB, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 0xE, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 0x10, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v13, "weights_layout", 0xE, a3, a4))
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

BOOL mlir::mps::DepthwiseConv2DDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 5);
}

BOOL mlir::mps::DepthwiseConv2DDataGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v2 = v1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v9 = v2[5];
            if (v9)
            {
              v43 = *this;
              if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v7, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v9, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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
              v41[0] = "requires attribute 'weights_layout'";
              v42 = 259;
              mlir::OpState::emitOpError(this, v41, &v43);
              v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
            }
          }

          else
          {
            v41[0] = "requires attribute 'strides'";
            v42 = 259;
            mlir::OpState::emitOpError(this, v41, &v43);
            v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
            if (v43)
            {
              mlir::InFlightDiagnostic::report(&v43);
            }

            if (v52 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v44);
            }
          }

          return v13;
        }

        v41[0] = "requires attribute 'padding_style'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
        if (v43)
        {
          mlir::InFlightDiagnostic::report(&v43);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v34 = __p;
          if (__p)
          {
            v35 = v50;
            v36 = __p;
            if (v50 != __p)
            {
              do
              {
                v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
              }

              while (v35 != v34);
              v36 = __p;
            }

            v50 = v34;
            operator delete(v36);
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_86;
          }

          v37 = v48;
          v19 = v47;
          if (v48 == v47)
          {
LABEL_85:
            v48 = v17;
            operator delete(v19);
LABEL_86:
            if (v45 != &v46)
            {
              free(v45);
            }

            return v13;
          }

          do
          {
            v39 = *--v37;
            v38 = v39;
            *v37 = 0;
            if (v39)
            {
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
            }
          }

          while (v37 != v17);
LABEL_84:
          v19 = v47;
          goto LABEL_85;
        }
      }

      else
      {
        v41[0] = "requires attribute 'explicit_padding'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
        if (v43)
        {
          mlir::InFlightDiagnostic::report(&v43);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
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
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_86;
          }

          v31 = v48;
          v19 = v47;
          if (v48 == v47)
          {
            goto LABEL_85;
          }

          do
          {
            v33 = *--v31;
            v32 = v33;
            *v31 = 0;
            if (v33)
            {
              MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
            }
          }

          while (v31 != v17);
          goto LABEL_84;
        }
      }
    }

    else
    {
      v41[0] = "requires attribute 'dilation_rates'";
      v42 = 259;
      mlir::OpState::emitOpError(this, v41, &v43);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
      if (v43)
      {
        mlir::InFlightDiagnostic::report(&v43);
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v50;
          v24 = __p;
          if (v50 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v50 = v22;
          operator delete(v24);
        }

        v17 = v47;
        if (!v47)
        {
          goto LABEL_86;
        }

        v25 = v48;
        v19 = v47;
        if (v48 == v47)
        {
          goto LABEL_85;
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

        while (v25 != v17);
        goto LABEL_84;
      }
    }
  }

  else
  {
    v41[0] = "requires attribute 'data_layout'";
    v42 = 259;
    mlir::OpState::emitOpError(this, v41, &v43);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v50;
        v16 = __p;
        if (v50 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v50 = v14;
        operator delete(v16);
      }

      v17 = v47;
      if (!v47)
      {
        goto LABEL_86;
      }

      v18 = v48;
      v19 = v47;
      if (v48 == v47)
      {
        goto LABEL_85;
      }

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
      goto LABEL_84;
    }
  }

  return v13;
}

BOOL mlir::mps::DepthwiseConv2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 5);
}

BOOL mlir::mps::DepthwiseConv2DOp::verifyInvariantsImpl(uint64_t **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v2 = v1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v9 = v2[5];
            if (v9)
            {
              v43 = *this;
              if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v7, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v9, "weights_layout", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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
              v41[0] = "requires attribute 'weights_layout'";
              v42 = 259;
              mlir::OpState::emitOpError(this, v41, &v43);
              v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
            }
          }

          else
          {
            v41[0] = "requires attribute 'strides'";
            v42 = 259;
            mlir::OpState::emitOpError(this, v41, &v43);
            v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
            if (v43)
            {
              mlir::InFlightDiagnostic::report(&v43);
            }

            if (v52 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v44);
            }
          }

          return v13;
        }

        v41[0] = "requires attribute 'padding_style'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
        if (v43)
        {
          mlir::InFlightDiagnostic::report(&v43);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v34 = __p;
          if (__p)
          {
            v35 = v50;
            v36 = __p;
            if (v50 != __p)
            {
              do
              {
                v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
              }

              while (v35 != v34);
              v36 = __p;
            }

            v50 = v34;
            operator delete(v36);
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_85;
          }

          v37 = v48;
          v19 = v47;
          if (v48 == v47)
          {
LABEL_84:
            v48 = v17;
            operator delete(v19);
LABEL_85:
            if (v45 != &v46)
            {
              free(v45);
            }

            return v13;
          }

          do
          {
            v39 = *--v37;
            v38 = v39;
            *v37 = 0;
            if (v39)
            {
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
            }
          }

          while (v37 != v17);
LABEL_83:
          v19 = v47;
          goto LABEL_84;
        }
      }

      else
      {
        v41[0] = "requires attribute 'explicit_padding'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
        if (v43)
        {
          mlir::InFlightDiagnostic::report(&v43);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
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
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_85;
          }

          v31 = v48;
          v19 = v47;
          if (v48 == v47)
          {
            goto LABEL_84;
          }

          do
          {
            v33 = *--v31;
            v32 = v33;
            *v31 = 0;
            if (v33)
            {
              MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
            }
          }

          while (v31 != v17);
          goto LABEL_83;
        }
      }
    }

    else
    {
      v41[0] = "requires attribute 'dilation_rates'";
      v42 = 259;
      mlir::OpState::emitOpError(this, v41, &v43);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
      if (v43)
      {
        mlir::InFlightDiagnostic::report(&v43);
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v50;
          v24 = __p;
          if (v50 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v50 = v22;
          operator delete(v24);
        }

        v17 = v47;
        if (!v47)
        {
          goto LABEL_85;
        }

        v25 = v48;
        v19 = v47;
        if (v48 == v47)
        {
          goto LABEL_84;
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

        while (v25 != v17);
        goto LABEL_83;
      }
    }
  }

  else
  {
    v41[0] = "requires attribute 'data_layout'";
    v42 = 259;
    mlir::OpState::emitOpError(this, v41, &v43);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v50;
        v16 = __p;
        if (v50 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v50 = v14;
        operator delete(v16);
      }

      v17 = v47;
      if (!v47)
      {
        goto LABEL_85;
      }

      v18 = v48;
      v19 = v47;
      if (v48 == v47)
      {
        goto LABEL_84;
      }

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
      goto LABEL_83;
    }
  }

  return v13;
}

BOOL mlir::mps::DepthwiseConv2DWeightsGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 5);
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_77;
    }

    v33 = v85;
    v23 = v84;
    if (v85 == v84)
    {
LABEL_76:
      v85 = v21;
      operator delete(v23);
LABEL_77:
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v74, "channelAxis", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 56;
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
        goto LABEL_77;
      }

      v22 = v85;
      v23 = v84;
      if (v85 == v84)
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

  v36 = mlir::DictionaryAttr::get(&v74, "dilation_rates", 0xEuLL);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v78, a4);
    if (v78)
    {
      LODWORD(v75) = 3;
      v77 = 59;
      v42 = &v75;
      v43 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v70 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v43 = v80;
          v42 = (v80 + v70);
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
        v46 = &v75;
        mlir::DiagnosticArgument::DiagnosticArgument(&v75, v37);
        v47 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v72 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v47 = v80;
            v46 = (v80 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v46 = &v75;
            v47 = v80;
          }
        }

        v48 = &v47[24 * v81];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
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

    v50 = __p;
    if (__p)
    {
      v51 = v87;
      v52 = __p;
      if (v87 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v87 = v50;
      operator delete(v52);
    }

    v21 = v84;
    if (!v84)
    {
      goto LABEL_77;
    }

    v53 = v85;
    v23 = v84;
    if (v85 == v84)
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
    v23 = v84;
    goto LABEL_76;
  }

LABEL_49:
  v38 = mlir::DictionaryAttr::get(&v74, "explicit_padding", 0x10uLL);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 61;
        v56 = &v75;
        v57 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v71 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v57 = v80;
            v56 = (v80 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v56 = &v75;
            v57 = v80;
          }
        }

        v58 = &v57[24 * v81];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v81;
        if (v78)
        {
          v60 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v39);
          v61 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v73 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v61 = v80;
              v60 = (v80 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v60 = &v75;
              v61 = v80;
            }
          }

          v62 = &v61[24 * v81];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
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

    a1[2] = v39;
  }

  v40 = mlir::DictionaryAttr::get(&v74, "padding_style", 0xDuLL);
  v75 = v40;
  if (!v40)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v74, "strides", 7uLL);
    v75 = v64;
    if (v64)
    {
      v65 = v64;
      if (!mlir::DenseIntElementsAttr::classof(v64))
      {
        a3(&v78, a4);
        goto LABEL_93;
      }

      a1[4] = v65;
    }

    return 1;
  }

  if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    a1[3] = v40;
    goto LABEL_88;
  }

  a3(&v78, a4);
LABEL_93:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v75);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v41 = a1;
  v42 = v44;
  v43 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v41, "channelAxis", 0xBuLL, *a2);
  v5 = v43;
  if (v43 >= HIDWORD(v43))
  {
    v31 = NamedAttr;
    v32 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
    v4 = v32;
    NamedAttr = v31;
    v5 = v43;
  }

  v6 = (v42 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v43 + 1;
  LODWORD(v43) = v43 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v41, "dilation_rates", 0xEuLL, v8);
    v11 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v33 = v9;
      v34 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v10 = v34;
      v9 = v33;
      v11 = v43;
    }

    v12 = (v42 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v41, "explicit_padding", 0x10uLL, v13);
    v16 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v35 = v14;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v15 = v36;
      v14 = v35;
      v16 = v43;
    }

    v17 = (v42 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v41, "padding_style", 0xDuLL, v18);
    v21 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v37 = v19;
      v38 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v20 = v38;
      v19 = v37;
      v21 = v43;
    }

    v22 = (v42 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v41, "strides", 7uLL, v23);
    v26 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v39 = v24;
      v40 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v25 = v40;
      v24 = v39;
      v26 = v43;
    }

    v27 = (v42 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v28 = v42;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v42 == v44)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v41, v42, v7);
  v28 = v42;
  if (v42 != v44)
  {
LABEL_24:
    free(v28);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x416C656E6E616863 && *(__s1 + 3) == 0x736978416C656E6ELL)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
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

    else if (a3 == 11 && *__s1 == 0x416C656E6E616863 && *(__s1 + 3) == 0x736978416C656E6ELL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
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

            v5[1] = v9;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
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

            v5[2] = v11;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::DepthwiseConv3DDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "channelAxis", 0xBuLL, *a2);
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
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }
}

BOOL mlir::mps::DepthwiseConv3DDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v8, "channelAxis", 0xB, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v9, "dilation_rates", 0xE, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v10, "explicit_padding", 0x10, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v12, "strides", 7, a3, a4))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v30 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v30);
    isSignedInteger = mlir::Type::isSignedInteger(&Value, 32);
    a5 = v8;
    a4 = v7;
    if (isSignedInteger)
    {
      return 1;
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v11 = &v30;
    v12 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v12 = v36;
        v11 = (v36 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = &v30;
        v12 = v36;
      }
    }

    v13 = &v12[24 * v37];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v37;
    if (Value)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (Value)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: 32-bit signed integer attribute";
        v32 = 63;
        v15 = &v30;
        v16 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v16 = v36;
            v15 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = &v30;
            v16 = v36;
          }
        }

        v17 = &v16[24 * v37];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v37;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v43;
      v21 = __p;
      if (v43 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v43 = v19;
      operator delete(v21);
    }

    v22 = v40;
    if (v40)
    {
      v23 = v41;
      v24 = v40;
      if (v41 != v40)
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
        v24 = v40;
      }

      v41 = v22;
      operator delete(v24);
    }

    if (v36 != v39)
    {
      free(v36);
    }
  }

  return v10;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(const char *a1, const char *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
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
    v78 = 3;
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
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {3}";
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(const char *a1, const char *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
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
    v78 = 6;
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
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {6}";
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

BOOL mlir::mps::DepthwiseConv3DDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
}

BOOL mlir::mps::DepthwiseConv3DDataGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v3 = v1[8];
  v4 = v1[9];
  v2 = v1 + 8;
  if (!v4)
  {
    v68[0] = "requires attribute 'dilation_rates'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v76;
      v14 = __p;
      if (v76 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v76 = v12;
      operator delete(v14);
    }

    v15 = v73;
    if (v73)
    {
      v16 = v74;
      v17 = v73;
      if (v74 != v73)
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v5 = v2[2];
  if (!v5)
  {
    v68[0] = "requires attribute 'explicit_padding'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v76;
      v22 = __p;
      if (v76 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v76 = v20;
      operator delete(v22);
    }

    v15 = v73;
    if (v73)
    {
      v23 = v74;
      v17 = v73;
      if (v74 != v73)
      {
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v6 = v2[3];
  if (!v6)
  {
    v68[0] = "requires attribute 'padding_style'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v76;
      v28 = __p;
      if (v76 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v76 = v26;
      operator delete(v28);
    }

    v15 = v73;
    if (v73)
    {
      v29 = v74;
      v17 = v73;
      if (v74 != v73)
      {
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
        goto LABEL_75;
      }

LABEL_76:
      v74 = v15;
      operator delete(v17);
    }

LABEL_77:
    if (v71 != &v72)
    {
      free(v71);
    }

    return v11;
  }

  v7 = v2[4];
  if (!v7)
  {
    v68[0] = "requires attribute 'strides'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v78 != 1)
    {
      return v11;
    }

    if (v77 != &v78)
    {
      free(v77);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v76;
      v34 = __p;
      if (v76 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v76 = v32;
      operator delete(v34);
    }

    v15 = v73;
    if (v73)
    {
      v35 = v74;
      v17 = v73;
      if (v74 != v73)
      {
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
LABEL_75:
        v17 = v73;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v7, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(v4, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(v5, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v6, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v70[0] = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v3, "channelAxis", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v70))
  {
    return 0;
  }

  v67 = 0;
  ODSOperands = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 0, v9, v10);
  if (v40)
  {
    v43 = v40;
    v44 = 0;
    v45 = ODSOperands + 24;
    while (1)
    {
      v46 = *this;
      v47 = *(*v45 + 8);
      v67 = v44 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v46, (v47 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v44))
      {
        return 0;
      }

      ++v44;
      v45 += 32;
      if (v43 == v44)
      {
        goto LABEL_86;
      }
    }
  }

  LODWORD(v44) = 0;
LABEL_86:
  v48 = mlir::mps::Conv2DDataGradientOp::getODSOperands(this, 1u, v41, v42);
  if (v49)
  {
    v52 = v49;
    v53 = v48 + 24;
    v54 = this;
    while (1)
    {
      v55 = *v54;
      v56 = *(*v53 + 8);
      v57 = v44 + 1;
      v67 = v44 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v55, (v56 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v44))
      {
        return 0;
      }

      v53 += 32;
      LODWORD(v44) = v44 + 1;
      --v52;
      v54 = this;
      if (!v52)
      {
        goto LABEL_92;
      }
    }
  }

  v57 = v44;
  v54 = this;
LABEL_92:
  v58 = mlir::mps::Conv2DDataGradientOp::getODSOperands(v54, 2u, v50, v51);
  v60 = v59;
  if (v59 >= 2)
  {
    v68[0] = "operand group starting at #";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, v70);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v70, &v67);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v61, " requires 0 or 1 element, but found ");
    v66 = v60;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v62, &v66);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v70);
    return v11;
  }

  if (v59 && !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*(v58 + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v57))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v64 = *this - 2;
  }

  else
  {
    v64 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v64, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}