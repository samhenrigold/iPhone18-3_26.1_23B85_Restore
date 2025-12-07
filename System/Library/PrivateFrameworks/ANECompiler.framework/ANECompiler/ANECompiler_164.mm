uint64_t mlir::pdl::ApplyNativeConstraintOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v28 = &v59;
      v29 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v29 = v63;
          v28 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v28 = &v59;
          v29 = v63;
        }
      }

      v30 = &v29[24 * v64];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
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

    v32 = __p;
    if (__p)
    {
      v33 = v70;
      v34 = __p;
      if (v70 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v70 = v32;
      operator delete(v34);
    }

    v23 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v35 = v68;
    v25 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
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

    while (v35 != v23);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "isNegated", 9uLL);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 54;
        v38 = &v59;
        v39 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v39 = v63;
            v38 = (v63 + v54);
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
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v43 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v43 = v63;
              v42 = (v63 + v56);
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

      if ((v72 & 1) == 0)
      {
        return 0;
      }

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

      v23 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v49 = v68;
      v25 = v67;
      if (v68 == v67)
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

      while (v49 != v23);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v10 = mlir::DictionaryAttr::get(&v58, "name", 4uLL);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 49;
    v12 = &v59;
    v13 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v55 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v13 = v63;
        v12 = (v63 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v12 = &v59;
        v13 = v63;
      }
    }

    v14 = &v13[24 * v64];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v64;
    if (v62[0])
    {
      v16 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v11);
      v17 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v17 = v63;
          v16 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v16 = &v59;
          v17 = v63;
        }
      }

      v18 = &v17[24 * v64];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
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

  v20 = __p;
  if (__p)
  {
    v21 = v70;
    v22 = __p;
    if (v70 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v70 = v20;
    operator delete(v22);
  }

  v23 = v67;
  if (v67)
  {
    v24 = v68;
    v25 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v23;
      operator delete(v25);
      goto LABEL_70;
    }

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
LABEL_68:
    v25 = v67;
    goto LABEL_69;
  }

LABEL_70:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "isNegated", 9uLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "name", 4uLL, v8);
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

BOOL mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v8, "isNegated", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "name", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl::ApplyNativeConstraintOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl(uint64_t **this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    *v22 = v2;
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v4, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
    {
      return 0;
    }

    *v22 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "isNegated", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22))
    {
      return 0;
    }

    v6 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v7 = *(v6 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = v6[9] + 24;
        while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v22[0];
  }

  else
  {
    v20 = "requires attribute 'name'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (*v22)
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

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (mlir::pdl::PDLType::classof(a2))
  {
    return 1;
  }

  v43 = 261;
  v42[0] = a3;
  v42[1] = a4;
  mlir::Operation::emitOpError(a1, v42, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = " #";
    v46 = 2;
    v11 = &v44;
    v12 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v38 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v12 = v48;
        v11 = (v48 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v11 = &v44;
        v12 = v48;
      }
    }

    v13 = &v12[24 * v49];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    v15 = ++v49;
    if (v47[0])
    {
      v44 = 5;
      v45 = a5;
      v16 = &v44;
      v17 = v48;
      if (v15 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v15 > &v44)
        {
          v39 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v17 = v48;
          v16 = (v48 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v16 = &v44;
          v17 = v48;
        }
      }

      v18 = &v17[24 * v49];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v49;
      if (v47[0])
      {
        v44 = 3;
        v45 = " must be variadic of pdl type, but got ";
        v46 = 39;
        v21 = &v44;
        v22 = v48;
        if (v20 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v20 > &v44)
          {
            v40 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v22 = v48;
            v21 = (v48 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v21 = &v44;
            v22 = v48;
          }
        }

        v23 = &v22[24 * v49];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v49;
        if (v47[0])
        {
          v25 = &v44;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
          v26 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v49 > &v44)
            {
              v41 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v26 = v48;
              v25 = (v48 + v41);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v25 = &v44;
              v26 = v48;
            }
          }

          v27 = &v26[24 * v49];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          ++v49;
        }
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v55;
      v31 = __p;
      if (v55 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v55 = v29;
      operator delete(v31);
    }

    v32 = v52;
    if (v52)
    {
      v33 = v53;
      v34 = v52;
      if (v53 != v52)
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
        v34 = v52;
      }

      v53 = v32;
      operator delete(v34);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v10;
}

BOOL mlir::pdl::ApplyNativeConstraintOp::parse(uint64_t a1, uint64_t a2)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v20[0] = v21;
  v20[1] = 0x400000000;
  v18[0] = &v19;
  v18[1] = 0x100000000;
  v14 = 0;
  v15 = &v17;
  v16 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v14, v6))
  {
    goto LABEL_16;
  }

  if (v14)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 8) = v14;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v20, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v18) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && (((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v15)) && (v13 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v9 = *(a2 + 8), v12[0] = a1, v12[1] = &v13, v12[2] = a2, mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12)))
  {
    mlir::OperationState::addTypes(a2, v15, v16);
    v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v20, v18, v8, a2 + 16);
  }

  else
  {
LABEL_16:
    v10 = 0;
  }

  if (v15 != &v17)
  {
    free(v15);
  }

  if (v18[0] != &v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return v10;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "name", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

BOOL mlir::pdl::ApplyNativeRewriteOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2);
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::verifyInvariantsImpl(uint64_t **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    *v20 = v2;
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 17);
      if (v5)
      {
        v6 = 0;
        v7 = v4[9] + 24;
        while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }
    }

LABEL_8:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v20[0];
  }

  else
  {
    v18 = "requires attribute 'name'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (*v20)
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

BOOL mlir::pdl::ApplyNativeRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v26[0] = v27;
  v26[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x100000000;
  v20 = 0;
  __src = &v23;
  v22 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v20, v6))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v20;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v24) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = 0;
  }

  if (((*(*a1 + 112))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v19 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v9 = *(a2 + 8), v18[0] = a1, v18[1] = &v19, v18[2] = a2, (v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96))) != 0) && !mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v10, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
  {
LABEL_24:
    v15 = 0;
    v16 = __src;
    if (__src == &v23)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v11 = __src;
  v12 = v22;
  v13 = *(a2 + 72);
  v14 = v13 + v22;
  if (v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v14, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v12);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  v15 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v26, v24, v8, a2 + 16);
  v16 = __src;
  if (__src != &v23)
  {
LABEL_25:
    free(v16);
  }

LABEL_26:
  if (v24[0] != &v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v15;
}

uint64_t mlir::pdl::AttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  if (v4)
  {
    v6 = mlir::DictionaryAttr::get(&v21, "value", 5uLL);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v25, a4);
    if (v25[0])
    {
      v22 = 3;
      v23 = "expected DictionaryAttr to set properties";
      v24 = 41;
      v8 = &v22;
      v9 = v26;
      if (v27 >= v28)
      {
        if (v26 <= &v22 && v26 + 24 * v27 > &v22)
        {
          v20 = &v22 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v9 = v26;
          v8 = (v26 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v8 = &v22;
          v9 = v26;
        }
      }

      v10 = &v9[24 * v27];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v27;
      if (v25[0])
      {
        mlir::InFlightDiagnostic::report(v25);
      }
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

      v15 = v30;
      if (v30)
      {
        v16 = v31;
        v17 = v30;
        if (v31 != v30)
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
          v17 = v30;
        }

        v31 = v15;
        operator delete(v17);
      }

      if (v26 != v29)
      {
        free(v26);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl::AttributeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return (*(*a1 + 56))(a1, v2) & 1;
}

BOOL mlir::pdl::AttributeOp::verifyInvariantsImpl(uint64_t **this)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    v27 = this;
    goto LABEL_29;
  }

  v3 = *(v2 + 17);
  if (v3 < 2)
  {
    v27 = this;
    if (v3)
    {
      if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(v2, *(*(v2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        return 0;
      }

      v2 = *v27;
    }

LABEL_29:
    if (*(v2 + 9))
    {
      v28 = (v2 - 2);
    }

    else
    {
      v28 = 0;
    }

    v29 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
    {
      return 1;
    }

    v30 = *v27;
    v67 = 261;
    v66[0] = "result";
    v66[1] = 6;
    mlir::Operation::emitOpError(v30, v66, v71);
    if (v71[0])
    {
      v68 = 3;
      v69 = " #";
      v70 = 2;
      v31 = &v68;
      v32 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v73 > &v68)
        {
          v61 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v32 = v72;
          v31 = (v72 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v31 = &v68;
          v32 = v72;
        }
      }

      v33 = &v32[24 * v73];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = 0;
        v36 = &v68;
        v37 = v72;
        if (v35 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v35 > &v68)
          {
            v63 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v37 = v72;
            v36 = (v72 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v36 = &v68;
            v37 = v72;
          }
        }

        v38 = &v37[24 * v73];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        v40 = ++v73;
        if (v71[0])
        {
          v68 = 3;
          v70 = 53;
          v41 = &v68;
          v42 = v72;
          if (v40 >= v74)
          {
            if (v72 <= &v68 && v72 + 24 * v40 > &v68)
            {
              v64 = &v68 - v72;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v42 = v72;
              v41 = (v72 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v41 = &v68;
              v42 = v72;
            }
          }

          v43 = &v42[24 * v73];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          ++v73;
          if (v71[0])
          {
            v45 = &v68;
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v29);
            v46 = v72;
            if (v73 >= v74)
            {
              if (v72 <= &v68 && v72 + 24 * v73 > &v68)
              {
                v65 = &v68 - v72;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v46 = v72;
                v45 = (v72 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v45 = &v68;
                v46 = v72;
              }
            }

            v47 = &v46[24 * v73];
            v48 = *v45;
            *(v47 + 2) = *(v45 + 2);
            *v47 = v48;
            ++v73;
          }
        }
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
    if (v71[0])
    {
      mlir::InFlightDiagnostic::report(v71);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v79;
        v52 = __p;
        if (v79 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v79 = v50;
        operator delete(v52);
      }

      v53 = v76;
      if (v76)
      {
        v54 = v77;
        v55 = v76;
        if (v77 != v76)
        {
          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
            }
          }

          while (v54 != v53);
          v55 = v76;
        }

        v77 = v53;
        operator delete(v55);
      }

      if (v72 != v75)
      {
        free(v72);
      }
    }

    return v49;
  }

  v66[0] = "operand group starting at #";
  v67 = 259;
  mlir::OpState::emitOpError(this, v66, v71);
  if (v71[0])
  {
    v68 = 5;
    v69 = 0;
    v4 = &v68;
    v5 = v72;
    if (v73 >= v74)
    {
      if (v72 <= &v68 && v72 + 24 * v73 > &v68)
      {
        v59 = &v68 - v72;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v5 = v72;
        v4 = (v72 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v4 = &v68;
        v5 = v72;
      }
    }

    v6 = &v5[24 * v73];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v73;
    if (v71[0])
    {
      v68 = 3;
      v69 = " requires 0 or 1 element, but found ";
      v70 = 36;
      v9 = &v68;
      v10 = v72;
      if (v8 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v8 > &v68)
        {
          v60 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v10 = v72;
          v9 = (v72 + v60);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v9 = &v68;
          v10 = v72;
        }
      }

      v11 = &v10[24 * v73];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = v3;
        v14 = &v68;
        v15 = v72;
        if (v13 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v13 > &v68)
          {
            v62 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v15 = v72;
            v14 = (v72 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v14 = &v68;
            v15 = v72;
          }
        }

        v16 = &v15[24 * v73];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v73;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v79;
      v21 = __p;
      if (v79 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v79 = v19;
      operator delete(v21);
    }

    v22 = v76;
    if (v76)
    {
      v23 = v77;
      v24 = v76;
      if (v77 != v76)
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
        v24 = v76;
      }

      v77 = v22;
      operator delete(v24);
    }

    if (v72 != v75)
    {
      free(v72);
    }
  }

  return v18;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 48;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl::AttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = v27;
  v26 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v23, 0, 24);
    v4 = (*(*a1 + 712))(a1, v23, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_21;
      }

      v5 = v23;
      v6 = v25;
      if (v26 >= HIDWORD(v26))
      {
        if (v25 <= v23 && v25 + 32 * v26 > v23)
        {
          v22 = v23 - v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
          v6 = v25;
          v5 = v25 + v22;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
          v5 = v23;
          v6 = v25;
        }
      }

      v7 = &v6[32 * v26];
      v8 = v5[1];
      *v7 = *v5;
      *(v7 + 1) = v8;
      LODWORD(v26) = v26 + 1;
    }
  }

  if ((*(*a1 + 144))(a1))
  {
    if (((*(*a1 + 440))(a1, &v24, 0) & 1) == 0)
    {
      goto LABEL_21;
    }

    if (v24)
    {
      v9 = *(a2 + 256);
      if (!v9)
      {
        operator new();
      }

      *v9 = v24;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 496))(a1, a2 + 112))
  {
    mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 8) + 96));
    v10 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v10);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
    v13 = (*(*a1 + 32))(a1);
    v14 = mlir::MLIRContext::getTypeUniquer(*v13);
    v15 = mlir::StorageUniquer::getSingletonImpl(v14, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v16 = *(a2 + 72);
    if (v16 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v16 + 1, 8);
      LODWORD(v16) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v16) = SingletonImpl;
    ++*(a2 + 72);
    if (!v26)
    {
LABEL_19:
      v19 = 1;
      v20 = v25;
      if (v25 == v27)
      {
        return v19;
      }

      goto LABEL_22;
    }

    v17 = v25;
    v18 = 32 * v26;
    while (((*(*a1 + 728))(a1, v17, v15, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v19 = 0;
  v20 = v25;
  if (v25 != v27)
  {
LABEL_22:
    free(v20);
  }

  return v19;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 55;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v8, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v4);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  return (*(*a1 + 728))(a1, v8, SingletonImpl, a2 + 16) & 1;
}

void mlir::pdl::EraseOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v9 = v11;
  v10 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl::OperandOp::verifyInvariantsImpl(uint64_t **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(v2 + 17);
  if (v3 < 2)
  {
    if (v3)
    {
      v18 = 0;
      if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(v2, *(*(v2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        return v18;
      }

      v2 = *this;
    }

LABEL_29:
    mlir::pdl::OperandOp::verifyInvariantsImpl(v2, this, v36);
    return v36[0];
  }

  v31 = "operand group starting at #";
  v32 = 259;
  mlir::OpState::emitOpError(this, &v31, v36);
  if (*v36)
  {
    v33 = 5;
    v34 = 0;
    v4 = &v33;
    v5 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v28 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = v37;
        v4 = (v37 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v4 = &v33;
        v5 = v37;
      }
    }

    v6 = &v5[24 * v38];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v38;
    if (*v36)
    {
      v33 = 3;
      v34 = " requires 0 or 1 element, but found ";
      v35 = 36;
      v9 = &v33;
      v10 = v37;
      if (v8 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v8 > &v33)
        {
          v29 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v8 + 1, 24);
          v10 = v37;
          v9 = (v37 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v8 + 1, 24);
          v9 = &v33;
          v10 = v37;
        }
      }

      v11 = &v10[24 * v38];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v38;
      if (*v36)
      {
        v33 = 5;
        v34 = v3;
        v14 = &v33;
        v15 = v37;
        if (v13 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v13 > &v33)
          {
            v30 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v13 + 1, 24);
            v15 = v37;
            v14 = (v37 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v13 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (*v36)
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v44;
      v21 = __p;
      if (v44 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v44 = v19;
      operator delete(v21);
    }

    v22 = v41;
    if (v41)
    {
      v23 = v42;
      v24 = v41;
      if (v42 != v41)
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
        v24 = v41;
      }

      v42 = v22;
      operator delete(v24);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v18;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 50;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

uint64_t mlir::pdl::OperandOp::parse(uint64_t a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v22, 0, 24);
    v4 = (*(*a1 + 712))(a1, v22, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_15;
      }

      v5 = v22;
      v6 = v23;
      if (v24 >= HIDWORD(v24))
      {
        if (v23 <= v22 && v23 + 32 * v24 > v22)
        {
          v21 = v22 - v23;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 32);
          v6 = v23;
          v5 = (v23 + v21);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 32);
          v5 = v22;
          v6 = v23;
        }
      }

      v7 = &v6[32 * v24];
      v8 = *(v5 + 1);
      *v7 = *v5;
      *(v7 + 1) = v8;
      LODWORD(v24) = v24 + 1;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v9 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v12 = (*(*a1 + 32))(a1);
    v13 = mlir::MLIRContext::getTypeUniquer(*v12);
    v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v15 = *(a2 + 72);
    if (v15 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
      LODWORD(v15) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v15) = SingletonImpl;
    ++*(a2 + 72);
    if (!v24)
    {
LABEL_13:
      v18 = 1;
      v19 = v23;
      if (v23 == v25)
      {
        return v18;
      }

      goto LABEL_16;
    }

    v16 = v23;
    v17 = 32 * v24;
    while (((*(*a1 + 728))(a1, v16, v14, a2 + 16) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v18 = 0;
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return v18;
}

BOOL mlir::pdl::OperandsOp::verifyInvariantsImpl(uint64_t **this)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(v2 + 17);
  if (v3 < 2)
  {
    if (v3)
    {
      if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(v2, *(*(v2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        return 0;
      }

      v2 = *this;
    }

LABEL_29:
    if (*(v2 + 9))
    {
      v27 = (v2 - 2);
    }

    else
    {
      v27 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
    v29 = *this;
    v30 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v71[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::AffineMapAttr::getValue(v71) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return 1;
      }
    }

    v67 = 261;
    v66[0] = "result";
    v66[1] = 6;
    mlir::Operation::emitOpError(v29, v66, v71);
    if (v71[0])
    {
      v68 = 3;
      v69 = " #";
      v70 = 2;
      v31 = &v68;
      v32 = v72;
      if (v73 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v73 > &v68)
        {
          v61 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v32 = v72;
          v31 = (v72 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
          v31 = &v68;
          v32 = v72;
        }
      }

      v33 = &v32[24 * v73];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = 0;
        v36 = &v68;
        v37 = v72;
        if (v35 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v35 > &v68)
          {
            v63 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v37 = v72;
            v36 = (v72 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v35 + 1, 24);
            v36 = &v68;
            v37 = v72;
          }
        }

        v38 = &v37[24 * v73];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        v40 = ++v73;
        if (v71[0])
        {
          v68 = 3;
          v70 = 66;
          v41 = &v68;
          v42 = v72;
          if (v40 >= v74)
          {
            if (v72 <= &v68 && v72 + 24 * v40 > &v68)
            {
              v64 = &v68 - v72;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v42 = v72;
              v41 = (v72 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v40 + 1, 24);
              v41 = &v68;
              v42 = v72;
            }
          }

          v43 = &v42[24 * v73];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          ++v73;
          if (v71[0])
          {
            v45 = &v68;
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v30);
            v46 = v72;
            if (v73 >= v74)
            {
              if (v72 <= &v68 && v72 + 24 * v73 > &v68)
              {
                v65 = &v68 - v72;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v46 = v72;
                v45 = (v72 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
                v45 = &v68;
                v46 = v72;
              }
            }

            v47 = &v46[24 * v73];
            v48 = *v45;
            *(v47 + 2) = *(v45 + 2);
            *v47 = v48;
            ++v73;
          }
        }
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
    if (v71[0])
    {
      mlir::InFlightDiagnostic::report(v71);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v79;
        v52 = __p;
        if (v79 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v79 = v50;
        operator delete(v52);
      }

      v53 = v76;
      if (v76)
      {
        v54 = v77;
        v55 = v76;
        if (v77 != v76)
        {
          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
            }
          }

          while (v54 != v53);
          v55 = v76;
        }

        v77 = v53;
        operator delete(v55);
      }

      if (v72 != v75)
      {
        free(v72);
      }
    }

    return v49;
  }

  v66[0] = "operand group starting at #";
  v67 = 259;
  mlir::OpState::emitOpError(this, v66, v71);
  if (v71[0])
  {
    v68 = 5;
    v69 = 0;
    v4 = &v68;
    v5 = v72;
    if (v73 >= v74)
    {
      if (v72 <= &v68 && v72 + 24 * v73 > &v68)
      {
        v59 = &v68 - v72;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v5 = v72;
        v4 = (v72 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v4 = &v68;
        v5 = v72;
      }
    }

    v6 = &v5[24 * v73];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    v8 = ++v73;
    if (v71[0])
    {
      v68 = 3;
      v69 = " requires 0 or 1 element, but found ";
      v70 = 36;
      v9 = &v68;
      v10 = v72;
      if (v8 >= v74)
      {
        if (v72 <= &v68 && v72 + 24 * v8 > &v68)
        {
          v60 = &v68 - v72;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v10 = v72;
          v9 = (v72 + v60);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v8 + 1, 24);
          v9 = &v68;
          v10 = v72;
        }
      }

      v11 = &v10[24 * v73];
      v12 = *v9;
      *(v11 + 2) = *(v9 + 2);
      *v11 = v12;
      v13 = ++v73;
      if (v71[0])
      {
        v68 = 5;
        v69 = v3;
        v14 = &v68;
        v15 = v72;
        if (v13 >= v74)
        {
          if (v72 <= &v68 && v72 + 24 * v13 > &v68)
          {
            v62 = &v68 - v72;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v15 = v72;
            v14 = (v72 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v13 + 1, 24);
            v14 = &v68;
            v15 = v72;
          }
        }

        v16 = &v15[24 * v73];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v73;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
  if (v71[0])
  {
    mlir::InFlightDiagnostic::report(v71);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v79;
      v21 = __p;
      if (v79 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v79 = v19;
      operator delete(v21);
    }

    v22 = v76;
    if (v76)
    {
      v23 = v77;
      v24 = v76;
      if (v77 != v76)
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
        v24 = v76;
      }

      v77 = v22;
      operator delete(v24);
    }

    if (v72 != v75)
    {
      free(v72);
    }
  }

  return v18;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v49[0] = a2;
    v7 = a1;
    v8 = a4;
    v9 = a3;
    Value = mlir::AffineMapAttr::getValue(v49);
    a3 = v9;
    a4 = v8;
    v11 = Value;
    a1 = v7;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      return 1;
    }
  }

  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(a1, v44, v49);
  if (v49[0])
  {
    v46 = 3;
    v47 = " #";
    v48 = 2;
    v12 = &v46;
    v13 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v46 && v50 + 24 * v51 > &v46)
      {
        v40 = &v46 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v13 = v50;
        v12 = (v50 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v12 = &v46;
        v13 = v50;
      }
    }

    v14 = &v13[24 * v51];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    v16 = ++v51;
    if (v49[0])
    {
      v46 = 5;
      v47 = a5;
      v17 = &v46;
      v18 = v50;
      if (v16 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v16 > &v46)
        {
          v41 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v16 + 1, 24);
          v18 = v50;
          v17 = (v50 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v16 + 1, 24);
          v17 = &v46;
          v18 = v50;
        }
      }

      v19 = &v18[24 * v51];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v51;
      if (v49[0])
      {
        v46 = 3;
        v48 = 64;
        v22 = &v46;
        v23 = v50;
        if (v21 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v21 > &v46)
          {
            v42 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v21 + 1, 24);
            v23 = v50;
            v22 = (v50 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v21 + 1, 24);
            v22 = &v46;
            v23 = v50;
          }
        }

        v24 = &v23[24 * v51];
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        ++v51;
        if (v49[0])
        {
          v26 = &v46;
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          v27 = v50;
          if (v51 >= v52)
          {
            if (v50 <= &v46 && v50 + 24 * v51 > &v46)
            {
              v43 = &v46 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v27 = v50;
              v26 = (v50 + v43);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v26 = &v46;
              v27 = v50;
            }
          }

          v28 = &v27[24 * v51];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v51;
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v57;
      v33 = __p;
      if (v57 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v57 = v31;
      operator delete(v33);
    }

    v34 = v54;
    if (v54)
    {
      v35 = v55;
      v36 = v54;
      if (v55 != v54)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v54;
      }

      v55 = v34;
      operator delete(v36);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v30;
}

uint64_t mlir::pdl::OperandsOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v24, 0, 24);
    v4 = (*(*a1 + 712))(a1, v24, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_15;
      }

      v5 = v24;
      v6 = v25;
      if (v26 >= HIDWORD(v26))
      {
        if (v25 <= v24 && v25 + 32 * v26 > v24)
        {
          v23 = v24 - v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
          v6 = v25;
          v5 = (v25 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
          v5 = v24;
          v6 = v25;
        }
      }

      v7 = &v6[32 * v26];
      v8 = *(v5 + 1);
      *v7 = *v5;
      *(v7 + 1) = v8;
      LODWORD(v26) = v26 + 1;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v9 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v12 = mlir::pdl::RangeType::get(SingletonImpl);
    v13 = (*(*a1 + 32))(a1);
    v14 = mlir::MLIRContext::getTypeUniquer(*v13);
    v15 = mlir::StorageUniquer::getSingletonImpl(v14, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v16 = mlir::pdl::RangeType::get(v15);
    v17 = *(a2 + 72);
    if (v17 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17 + 1, 8);
      LODWORD(v17) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v17) = v12;
    ++*(a2 + 72);
    if (!v26)
    {
LABEL_13:
      v20 = 1;
      v21 = v25;
      if (v25 == v27)
      {
        return v20;
      }

      goto LABEL_16;
    }

    v18 = v25;
    v19 = 32 * v26;
    while (((*(*a1 + 728))(a1, v18, v16, a2 + 16) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v20 = 0;
  v21 = v25;
  if (v25 != v27)
  {
LABEL_16:
    free(v21);
  }

  return v20;
}

unint64_t mlir::pdl::OperationOp::getODSOperandIndexAndLength(mlir::pdl::OperationOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 80);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 96);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 80);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

BOOL mlir::pdl::OperationOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v61 = "expected DictionaryAttr to set properties";
      v62 = 41;
      v26 = &v60;
      v27 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v54 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v27 = v64;
          v26 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v26 = &v60;
          v27 = v64;
        }
      }

      v28 = &v27[24 * v65];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v65;
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v71;
      v32 = __p;
      if (v71 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v71 = v30;
      operator delete(v32);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_70;
    }

    v33 = v69;
    v23 = v68;
    if (v69 == v68)
    {
LABEL_69:
      v69 = v21;
      operator delete(v23);
LABEL_70:
      if (v64 != v67)
      {
        free(v64);
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
    v23 = v68;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v59, "attributeValueNames", 0x13uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 64;
        v10 = &v60;
        v11 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v55 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v11 = v64;
            v10 = (v64 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v10 = &v60;
            v11 = v64;
          }
        }

        v12 = &v11[24 * v65];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v65;
        if (v63[0])
        {
          v14 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          v15 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v56 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v15 = v64;
              v14 = (v64 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v14 = &v60;
              v15 = v64;
            }
          }

          v16 = &v15[24 * v65];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
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

  v36 = mlir::DictionaryAttr::get(&v59, "opName", 6uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v37 = v36;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 51;
        v38 = &v60;
        v39 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v57 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v39 = v64;
            v38 = (v64 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v38 = &v60;
            v39 = v64;
          }
        }

        v40 = &v39[24 * v65];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v65;
        if (v63[0])
        {
          v42 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v37);
          v43 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v58 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v43 = v64;
              v42 = (v64 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v42 = &v60;
              v43 = v64;
            }
          }

          v44 = &v43[24 * v65];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v71;
        v48 = __p;
        if (v71 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v71 = v46;
        operator delete(v48);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v49 = v69;
      v23 = v68;
      if (v69 == v68)
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

  v52 = mlir::DictionaryAttr::get(&v59, "operandSegmentSizes", 0x13uLL);
  if (!v52)
  {
    v52 = mlir::DictionaryAttr::get(&v59, "operand_segment_sizes", 0x15uLL);
    if (!v52)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 2, 3, v52, a3, a4) & 1) != 0;
}

uint64_t mlir::pdl::OperationOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = v32;
  v31 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v29, "attributeValueNames", 0x13uLL, *a2);
    v6 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v25 = NamedAttr;
      v26 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v5 = v26;
      NamedAttr = v25;
      v6 = v31;
    }

    v7 = (v30 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v31) = v31 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v29, "opName", 6uLL, v8);
    v11 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v27 = v9;
      v28 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v10 = v28;
      v9 = v27;
      v11 = v31;
    }

    v12 = (v30 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v31) = v31 + 1;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 3);
  v14 = mlir::Builder::getNamedAttr(&v29, "operandSegmentSizes", 0x13uLL, v13);
  v16 = v31;
  if (v31 >= HIDWORD(v31))
  {
    v23 = v14;
    v24 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
    v15 = v24;
    v14 = v23;
    v16 = v31;
  }

  v17 = (v30 + 16 * v16);
  *v17 = v14;
  v17[1] = v15;
  v18 = __CFADD__(v31, 1);
  v19 = (v31 + 1);
  LODWORD(v31) = v31 + 1;
  if (v18)
  {
    DictionaryAttr = 0;
    v21 = v30;
    if (v30 == v32)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v29, v30, v19);
  v21 = v30;
  if (v30 != v32)
  {
LABEL_16:
    free(v21);
  }

  return DictionaryAttr;
}

uint64_t mlir::pdl::OperationOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 6)
  {
    if (!memcmp(__s1, "opName", 6uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 21)
  {
    v7 = a1;
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v7, (a2 + 2), 3);
    }

    return 0;
  }

  if (__n != 19)
  {
    return 0;
  }

  if (*__s1 != 0x7475626972747461 || *(__s1 + 1) != 0x614E65756C615665 || *(__s1 + 11) != 0x73656D614E65756CLL)
  {
    v7 = a1;
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v7, (a2 + 2), 3);
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::pdl::OperationOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 6)
  {
    result = memcmp(__s1, "opName", 6uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *(v5 + 8) = v10;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else
  {
    if (a3 == 21)
    {
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 19)
      {
        return result;
      }

      if (*__s1 == 0x7475626972747461 && *(__s1 + 1) == 0x614E65756C615665 && *(__s1 + 11) == 0x73656D614E65756CLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        return result;
      }

      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
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
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove((v5 + 16), result, 4 * v9);
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v37 = a1;
    v24 = a4;
    v25 = a5;
    Value = mlir::ArrayAttr::getValue(&v37);
    v27 = mlir::ArrayAttr::getValue(&v37);
    v29 = v27 + 8 * v28;
    if (v29 != Value)
    {
      a5 = v25;
      a4 = v24;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        Value += 8;
        if (Value == v29)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v37, a5);
  if (v37)
  {
    LODWORD(v33) = 3;
    v34 = "attribute '";
    v35 = 11;
    v7 = &v33;
    v8 = v39;
    if (v40 >= v41)
    {
      if (v39 <= &v33 && v39 + 24 * v40 > &v33)
      {
        v31 = &v33 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v8 = v39;
        v7 = (v39 + v31);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v7 = &v33;
        v8 = v39;
      }
    }

    v9 = &v8[24 * v40];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v40;
    if (v37)
    {
      v36 = 261;
      v33 = a2;
      v34 = a3;
      mlir::Diagnostic::operator<<(&v38, &v33);
      if (v37)
      {
        LODWORD(v33) = 3;
        v34 = "' failed to satisfy constraint: string array attribute";
        v35 = 54;
        v11 = &v33;
        v12 = v39;
        if (v40 >= v41)
        {
          if (v39 <= &v33 && v39 + 24 * v40 > &v33)
          {
            v32 = &v33 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v12 = v39;
            v11 = (v39 + v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v11 = &v33;
            v12 = v39;
          }
        }

        v13 = &v12[24 * v40];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v40;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v46;
      v18 = __p;
      if (v46 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v46 = v16;
      operator delete(v18);
    }

    v19 = v43;
    if (v43)
    {
      v20 = v44;
      v21 = v43;
      if (v44 != v43)
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
        v21 = v43;
      }

      v44 = v19;
      operator delete(v21);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v15;
}

BOOL mlir::pdl::OperationOp::readProperties(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, a2[32]) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8)))
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(&v10, a1, &v7);
      if (v10)
      {
        mlir::InFlightDiagnostic::report(&v10);
      }

      if (v11[192] == 1)
      {
        mlir::Diagnostic::~Diagnostic(v11);
      }

      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove((v3 + 16), v4, 4 * v5);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 16), 3) & 1) != 0;
}

uint64_t mlir::pdl::OperationOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 16), 3);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 3);
  }

  return result;
}

BOOL mlir::pdl::OperationOp::verifyInvariantsImpl(uint64_t **this)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v4 = v3 + 8;
  v5 = v6;
  if (!v6)
  {
    v112 = "requires attribute 'attributeValueNames'";
    v114 = 259;
    mlir::OpState::emitOpError(this, &v112, v118);
    v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
    if (v118[0])
    {
      mlir::InFlightDiagnostic::report(v118);
    }

    if (v128 == 1)
    {
      if (v127 != &v128)
      {
        free(v127);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v126;
        v59 = __p;
        if (v126 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v126 = v57;
        operator delete(v59);
      }

      v60 = v123;
      if (v123)
      {
        v61 = v124;
        v62 = v123;
        if (v124 != v123)
        {
          do
          {
            v64 = *--v61;
            v63 = v64;
            *v61 = 0;
            if (v64)
            {
              MEMORY[0x1AC55A040](v63, 0x1000C8077774924);
            }
          }

          while (v61 != v60);
          v62 = v123;
        }

        v124 = v60;
        operator delete(v62);
      }

      if (v119 != v122)
      {
        free(v119);
      }
    }

    return v56;
  }

  v7 = v4[1];
  v118[0] = v2;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v7, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v118))
  {
    return 0;
  }

  v118[0] = *this;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v5, "attributeValueNames", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v118))
  {
    return 0;
  }

  v8 = *this;
  v9 = *(*this + 11);
  v10 = (v9 >> 23) & 1;
  v11 = LODWORD((*this)[2 * v10 + 10]);
  if ((v9 & 0x800000) != 0)
  {
    v12 = v8[9];
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_6:
      v13 = 0;
      v14 = v12 + 24;
      while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(*this, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13))
      {
        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          v8 = *this;
          v9 = *(*this + 11);
          v10 = (v9 >> 23) & 1;
          goto LABEL_10;
        }
      }

      return 0;
    }
  }

LABEL_10:
  v15 = v9 & 0x800000;
  v16 = &v8[2 * v10];
  v17 = *(v16 + 21);
  if (v15)
  {
    v18 = v8[9];
    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    if (v17)
    {
LABEL_12:
      v19 = 0;
      v20 = *(v16 + 20);
      v21 = v18 + 32 * v20;
      v22 = (v17 + v20) - v20;
      do
      {
        v23 = *(*(v21 + 32 * v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
        {
          v24 = *this;
          v114 = 261;
          v112 = "operand";
          v113 = 7;
          mlir::Operation::emitOpError(v24, &v112, v118);
          if (v118[0])
          {
            v115 = 3;
            v116 = " #";
            v117 = 2;
            v25 = v119;
            if (v120 >= v121)
            {
              if (v119 <= &v115 && v119 + 24 * v120 > &v115)
              {
                v52 = &v115 - v119;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v25 = v119;
                v26 = (v119 + v52);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                v26 = &v115;
                v25 = v119;
              }
            }

            else
            {
              v26 = &v115;
            }

            v27 = &v25[24 * v120];
            v28 = *v26;
            *(v27 + 2) = *(v26 + 2);
            *v27 = v28;
            v29 = ++v120;
            if (v118[0])
            {
              v115 = 5;
              v116 = v11;
              v30 = v119;
              if (v29 >= v121)
              {
                if (v119 <= &v115 && v119 + 24 * v29 > &v115)
                {
                  v53 = &v115 - v119;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v29 + 1, 24);
                  v30 = v119;
                  v31 = (v119 + v53);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v29 + 1, 24);
                  v31 = &v115;
                  v30 = v119;
                }
              }

              else
              {
                v31 = &v115;
              }

              v32 = &v30[24 * v120];
              v33 = *v31;
              *(v32 + 2) = *(v31 + 2);
              *v32 = v33;
              v34 = ++v120;
              if (v118[0])
              {
                v115 = 3;
                v117 = 65;
                v35 = v119;
                if (v34 >= v121)
                {
                  if (v119 <= &v115 && v119 + 24 * v34 > &v115)
                  {
                    v54 = &v115 - v119;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v34 + 1, 24);
                    v35 = v119;
                    v36 = (v119 + v54);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v34 + 1, 24);
                    v36 = &v115;
                    v35 = v119;
                  }
                }

                else
                {
                  v36 = &v115;
                }

                v37 = &v35[24 * v120];
                v38 = *v36;
                *(v37 + 2) = *(v36 + 2);
                *v37 = v38;
                ++v120;
                if (v118[0])
                {
                  v39 = &v115;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v115, v23);
                  v40 = v119;
                  if (v120 >= v121)
                  {
                    if (v119 <= &v115 && v119 + 24 * v120 > &v115)
                    {
                      v55 = &v115 - v119;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                      v40 = v119;
                      v39 = (v119 + v55);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                      v39 = &v115;
                      v40 = v119;
                    }
                  }

                  v41 = &v40[24 * v120];
                  v42 = *v39;
                  *(v41 + 2) = *(v39 + 2);
                  *v41 = v42;
                  ++v120;
                }
              }
            }
          }

          v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
          if (v118[0])
          {
            mlir::InFlightDiagnostic::report(v118);
          }

          if (v128 == 1)
          {
            if (v127 != &v128)
            {
              free(v127);
            }

            v44 = __p;
            if (__p)
            {
              v45 = v126;
              v46 = __p;
              if (v126 != __p)
              {
                do
                {
                  v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
                }

                while (v45 != v44);
                v46 = __p;
              }

              v126 = v44;
              operator delete(v46);
            }

            v47 = v123;
            if (v123)
            {
              v48 = v124;
              v49 = v123;
              if (v124 != v123)
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
                v49 = v123;
              }

              v124 = v47;
              operator delete(v49);
            }

            if (v119 != v122)
            {
              free(v119);
            }

            if (!v43)
            {
              return 0;
            }
          }

          else if (!v43)
          {
            return 0;
          }
        }

        LODWORD(v11) = v11 + 1;
        ++v19;
      }

      while (v19 != v22);
      v8 = *this;
      v65 = *(*this + 11);
      v10 = (v65 >> 23) & 1;
      v15 = v65 & 0x800000;
    }
  }

  v66 = &v8[2 * v10];
  v67 = *(v66 + 22);
  if (v15)
  {
    v68 = v8[9];
    if (v67)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v68 = 0;
    if (v67)
    {
LABEL_89:
      v69 = 0;
      v70 = (*(v66 + 21) + *(v66 + 20));
      v71 = v68 + 32 * v70;
      v72 = (v67 + v70) - v70;
      while (1)
      {
        v73 = *(*(v71 + 32 * v69 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v74 = *(*v73 + 136);
        if (v74 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v75 = *this;
          if (v74 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v118[0] = *(*(v71 + 32 * v69 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::AffineMapAttr::getValue(v118) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
          {
            v114 = 261;
            v112 = "operand";
            v113 = 7;
            mlir::Operation::emitOpError(v75, &v112, v118);
            if (v118[0])
            {
              v115 = 3;
              v116 = " #";
              v117 = 2;
              v76 = v119;
              if (v120 >= v121)
              {
                if (v119 <= &v115 && v119 + 24 * v120 > &v115)
                {
                  v103 = &v115 - v119;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                  v76 = v119;
                  v77 = (v119 + v103);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                  v77 = &v115;
                  v76 = v119;
                }
              }

              else
              {
                v77 = &v115;
              }

              v78 = &v76[24 * v120];
              v79 = *v77;
              *(v78 + 2) = *(v77 + 2);
              *v78 = v79;
              v80 = ++v120;
              if (v118[0])
              {
                v115 = 5;
                v116 = v11;
                v81 = v119;
                if (v80 >= v121)
                {
                  if (v119 <= &v115 && v119 + 24 * v80 > &v115)
                  {
                    v104 = &v115 - v119;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v80 + 1, 24);
                    v81 = v119;
                    v82 = (v119 + v104);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v80 + 1, 24);
                    v82 = &v115;
                    v81 = v119;
                  }
                }

                else
                {
                  v82 = &v115;
                }

                v83 = &v81[24 * v120];
                v84 = *v82;
                *(v83 + 2) = *(v82 + 2);
                *v83 = v84;
                v85 = ++v120;
                if (v118[0])
                {
                  v115 = 3;
                  v117 = 87;
                  v86 = v119;
                  if (v85 >= v121)
                  {
                    if (v119 <= &v115 && v119 + 24 * v85 > &v115)
                    {
                      v105 = &v115 - v119;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v85 + 1, 24);
                      v86 = v119;
                      v87 = (v119 + v105);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v85 + 1, 24);
                      v87 = &v115;
                      v86 = v119;
                    }
                  }

                  else
                  {
                    v87 = &v115;
                  }

                  v88 = &v86[24 * v120];
                  v89 = *v87;
                  *(v88 + 2) = *(v87 + 2);
                  *v88 = v89;
                  ++v120;
                  if (v118[0])
                  {
                    v90 = &v115;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v115, v73);
                    v91 = v119;
                    if (v120 >= v121)
                    {
                      if (v119 <= &v115 && v119 + 24 * v120 > &v115)
                      {
                        v106 = &v115 - v119;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                        v91 = v119;
                        v90 = (v119 + v106);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v122, v120 + 1, 24);
                        v90 = &v115;
                        v91 = v119;
                      }
                    }

                    v92 = &v91[24 * v120];
                    v93 = *v90;
                    *(v92 + 2) = *(v90 + 2);
                    *v92 = v93;
                    ++v120;
                  }
                }
              }
            }

            v94 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
            if (v118[0])
            {
              mlir::InFlightDiagnostic::report(v118);
            }

            if (v128 == 1)
            {
              if (v127 != &v128)
              {
                free(v127);
              }

              v95 = __p;
              if (__p)
              {
                v96 = v126;
                v97 = __p;
                if (v126 != __p)
                {
                  do
                  {
                    v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
                  }

                  while (v96 != v95);
                  v97 = __p;
                }

                v126 = v95;
                operator delete(v97);
              }

              v98 = v123;
              if (v123)
              {
                v99 = v124;
                v100 = v123;
                if (v124 != v123)
                {
                  do
                  {
                    v102 = *--v99;
                    v101 = v102;
                    *v99 = 0;
                    if (v102)
                    {
                      MEMORY[0x1AC55A040](v101, 0x1000C8077774924);
                    }
                  }

                  while (v99 != v98);
                  v100 = v123;
                }

                v124 = v98;
                operator delete(v100);
              }

              if (v119 != v122)
              {
                free(v119);
              }
            }

            if (!v94)
            {
              return 0;
            }
          }
        }

        LODWORD(v11) = v11 + 1;
        if (++v69 == v72)
        {
          v8 = *this;
          break;
        }
      }
    }
  }

  v108 = *(v8 + 9);
  v109 = v8 - 2;
  if (v108)
  {
    v110 = v109;
  }

  else
  {
    v110 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v110, 0);
  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v50[0] = a2;
    v8 = a1;
    v9 = a4;
    v10 = a3;
    Value = mlir::AffineMapAttr::getValue(v50);
    a3 = v10;
    a4 = v9;
    v12 = Value;
    a1 = v8;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return 1;
    }
  }

  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(a1, v45, v50);
  if (v50[0])
  {
    v47 = 3;
    v48 = " #";
    v49 = 2;
    v13 = &v47;
    v14 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v47 && v51 + 24 * v52 > &v47)
      {
        v41 = &v47 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v14 = v51;
        v13 = (v51 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v13 = &v47;
        v14 = v51;
      }
    }

    v15 = &v14[24 * v52];
    v16 = *v13;
    *(v15 + 2) = *(v13 + 2);
    *v15 = v16;
    v17 = ++v52;
    if (v50[0])
    {
      v47 = 5;
      v48 = a5;
      v18 = &v47;
      v19 = v51;
      if (v17 >= v53)
      {
        if (v51 <= &v47 && v51 + 24 * v17 > &v47)
        {
          v42 = &v47 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v17 + 1, 24);
          v19 = v51;
          v18 = (v51 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v17 + 1, 24);
          v18 = &v47;
          v19 = v51;
        }
      }

      v20 = &v19[24 * v52];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v52;
      if (v50[0])
      {
        v47 = 3;
        v49 = 89;
        v23 = &v47;
        v24 = v51;
        if (v22 >= v53)
        {
          if (v51 <= &v47 && v51 + 24 * v22 > &v47)
          {
            v43 = &v47 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v22 + 1, 24);
            v24 = v51;
            v23 = (v51 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v22 + 1, 24);
            v23 = &v47;
            v24 = v51;
          }
        }

        v25 = &v24[24 * v52];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        ++v52;
        if (v50[0])
        {
          v27 = &v47;
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          v28 = v51;
          if (v52 >= v53)
          {
            if (v51 <= &v47 && v51 + 24 * v52 > &v47)
            {
              v44 = &v47 - v51;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v28 = v51;
              v27 = (v51 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v27 = &v47;
              v28 = v51;
            }
          }

          v29 = &v28[24 * v52];
          v30 = *v27;
          *(v29 + 2) = *(v27 + 2);
          *v29 = v30;
          ++v52;
        }
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
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
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }

  return v31;
}

BOOL mlir::pdl::OperationOp::parse(_DWORD *a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v47 = v49;
  v48 = 0x400000000;
  v45[0] = &v46;
  v45[1] = 0x100000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  v7 = (*(*a1 + 472))(a1, &v35, v6);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (v35)
    {
      v8 = *(a2 + 256);
      if (!v8)
      {
        operator new();
      }

      *(v8 + 8) = v35;
    }
  }

  if ((*(*a1 + 288))(a1))
  {
    v9 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v47, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v45) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v9 = 0;
  }

  v34 = v9;
  (*(*a1 + 40))(a1);
  v10 = (*(*a1 + 32))(a1);
  v50 = v52;
  v51 = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (v36[0] = a1, v36[1] = &v50, v36[2] = &v42, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, v36, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    ArrayAttr = mlir::Builder::getArrayAttr(v10, v50, v51);
    v12 = 0;
    v13 = v50;
    if (v50 == v52)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ArrayAttr = 0;
  v12 = 1;
  v13 = v50;
  if (v50 != v52)
  {
LABEL_18:
    free(v13);
  }

LABEL_19:
  if ((v12 & 1) == 0)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = ArrayAttr;
    if ((*(*a1 + 64))(a1))
    {
      if (((*(*a1 + 280))(a1) & 1) == 0)
      {
        goto LABEL_47;
      }

      v15 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v39, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v37) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v15 = 0;
    }

    v36[0] = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v16 = *(a2 + 8);
      v50 = a1;
      v51 = v36;
      v52[0] = a2;
      v17 = mlir::NamedAttrList::get(a2 + 112, **(v16 + 96));
      if (!v17 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v17, "attributeValueNames", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v50))
      {
        v18 = mlir::NamedAttrList::get(a2 + 112, *(*(v16 + 96) + 8));
        if (!v18 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v18, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v50))
        {
          v19 = v43;
          v20 = v40;
          v21 = *(a2 + 256);
          if (!v21)
          {
            operator new();
          }

          v33 = v15;
          v21[4] = v48;
          v21[5] = v19;
          v21[6] = v20;
          v22 = (*(*a1 + 32))(a1);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v22);
          SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
          v25 = (*(*a1 + 32))(a1);
          v26 = mlir::MLIRContext::getTypeUniquer(*v25);
          v27 = mlir::StorageUniquer::getSingletonImpl(v26, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
          v28 = *(a2 + 72);
          if (v28 >= *(a2 + 76))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v28 + 1, 8);
            LODWORD(v28) = *(a2 + 72);
          }

          *(*(a2 + 64) + 8 * v28) = SingletonImpl;
          ++*(a2 + 72);
          if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v47, v45, v34, a2 + 16))
          {
            if (!v43)
            {
LABEL_46:
              v31 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v39, v37, v33, a2 + 16);
              goto LABEL_48;
            }

            v29 = v42;
            v30 = 32 * v43;
            while (((*(*a1 + 728))(a1, v29, v27, a2 + 16) & 1) != 0)
            {
              v29 += 32;
              v30 -= 32;
              if (!v30)
              {
                goto LABEL_46;
              }
            }
          }
        }
      }
    }
  }

LABEL_47:
  v31 = 0;
LABEL_48:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45[0] != &v46)
  {
    free(v45[0]);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  return v31;
}

uint64_t mlir::pdl::PatternOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v58, "benefit", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  v36 = mlir::DictionaryAttr::get(&v58, "sym_name", 8uLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 53;
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

uint64_t mlir::pdl::PatternOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "benefit", 7uLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_name", 8uLL, v8);
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

BOOL mlir::pdl::PatternOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(v8, "benefit", 7, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(uint64_t a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v35 = a1;
  v8 = a4;
  v9 = a5;
  Value = mlir::AffineMapAttr::getValue(&v35);
  isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 16);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v34 = a1;
  mlir::IntegerAttr::getValue(&v34, &v40);
  v11 = v41[0] - 1;
  if (v41[0] >= 0x41)
  {
    v12 = (v40 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = &v40;
  }

  v13 = (1 << v11) & *v12;
  if (v41[0] >= 0x41 && v40)
  {
    MEMORY[0x1AC55A040]();
  }

  a4 = v8;
  a5 = v9;
  if (!v13)
  {
    return 1;
  }

LABEL_11:
  a4(&v40, a5);
  if (v40)
  {
    LODWORD(Value) = 3;
    v37 = "attribute '";
    v38 = 11;
    p_Value = &Value;
    v15 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &Value && v42 + 24 * v43 > &Value)
      {
        v32 = &Value - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v15 = v42;
        p_Value = (v42 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        p_Value = &Value;
        v15 = v42;
      }
    }

    v16 = &v15[24 * v43];
    v17 = *p_Value;
    *(v16 + 2) = p_Value[2];
    *v16 = v17;
    ++v43;
    if (v40)
    {
      v39 = 261;
      Value = a2;
      v37 = a3;
      mlir::Diagnostic::operator<<(v41, &Value);
      if (v40)
      {
        LODWORD(Value) = 3;
        v37 = "' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative";
        v38 = 93;
        v18 = &Value;
        v19 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &Value && v42 + 24 * v43 > &Value)
          {
            v33 = &Value - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v19 = v42;
            v18 = (v42 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v18 = &Value;
            v19 = v42;
          }
        }

        v20 = &v19[24 * v43];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v43;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
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
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v22;
}

BOOL mlir::pdl::PatternOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

BOOL mlir::pdl::PatternOp::verifyInvariantsImpl(uint64_t **this)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v50 = v2;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(v4, "benefit", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v50))
    {
      return 0;
    }

    v50 = *this;
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v50))
    {
      return 0;
    }

    v8 = *this;
    v9 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    v10 = *(v9 + 8);
    if (v10 != v9 && *(v10 + 8) == v9)
    {
      return 1;
    }

    v45[0] = "region #";
    v46 = 259;
    mlir::Operation::emitOpError(v8, v45, &v50);
    if (v50)
    {
      LODWORD(v43[0]) = 5;
      v43[1] = 0;
      v11 = v43;
      v12 = v52;
      if (v53 >= v54)
      {
        if (v52 <= v43 && v52 + 24 * v53 > v43)
        {
          v39 = v43 - v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v12 = v52;
          v11 = (v52 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v11 = v43;
          v12 = v52;
        }
      }

      v13 = &v12[24 * v53];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v53;
      v15 = v50 == 0;
    }

    else
    {
      v15 = 1;
    }

    v42 = 1283;
    v41[0] = " ('";
    v41[2] = "bodyRegion";
    v41[3] = 10;
    v43[0] = v41;
    v43[2] = "') ";
    v44 = 770;
    if (!v15)
    {
      mlir::Diagnostic::operator<<(&v51, v43);
      if (v50)
      {
        v47 = 3;
        v48 = "failed to verify constraint: region with 1 blocks";
        v49 = 49;
        v25 = &v47;
        v26 = v52;
        if (v53 >= v54)
        {
          if (v52 <= &v47 && v52 + 24 * v53 > &v47)
          {
            v40 = &v47 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v26 = v52;
            v25 = (v52 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v25 = &v47;
            v26 = v52;
          }
        }

        v27 = &v26[24 * v53];
        v28 = *v25;
        *(v27 + 2) = *(v25 + 2);
        *v27 = v28;
        ++v53;
      }
    }

    v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v59;
        v32 = __p;
        if (v59 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v59 = v30;
        operator delete(v32);
      }

      v33 = v56;
      if (v56)
      {
        v34 = v57;
        v35 = v56;
        if (v57 != v56)
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
          v35 = v56;
        }

        v57 = v33;
        operator delete(v35);
      }

      if (v52 != v55)
      {
        free(v52);
      }
    }

    return v29;
  }

  else
  {
    v45[0] = "requires attribute 'benefit'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, &v50);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v59;
        v19 = __p;
        if (v59 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v59 = v17;
        operator delete(v19);
      }

      v20 = v56;
      if (v56)
      {
        v21 = v57;
        v22 = v56;
        if (v57 != v56)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v56;
        }

        v57 = v20;
        operator delete(v22);
      }

      if (v52 != v55)
      {
        free(v52);
      }
    }
  }

  return v16;
}

void mlir::pdl::PatternOp::parse(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void mlir::pdl::PatternOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    v4 = (*(*a2 + 16))(a2);
    v5 = *(v4 + 4);
    if (v5 >= *(v4 + 3))
    {
      llvm::raw_ostream::write(v4, 32);
    }

    else
    {
      *(v4 + 4) = v5 + 1;
      *v5 = 32;
    }

    v25 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
    AttrData = mlir::OpaqueAttr::getAttrData(&v25);
    (*(*a2 + 88))(a2, AttrData, v7);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 6uLL)
  {
    *(v15 + 3) = 1953064549;
    *v15 = 1701733730;
    v14[4] += 7;
  }

  else
  {
    llvm::raw_ostream::write(v14, "benefit", 7uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ")", 1uLL);
  }

  else
  {
    *v19 = 41;
    ++v18[4];
  }

  v25 = v27;
  v27[0] = "sym_name";
  v27[1] = 8;
  v27[2] = "benefit";
  v27[3] = 7;
  v26 = 0x200000002;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, Value, v21, v25, v26);
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, 1, 0);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::pdl::RangeOp::verifyInvariantsImpl(uint64_t **this)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = v2[9] + 24;
    while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v6 = *(v2 + 9);
    v7 = v2 - 2;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    v10 = *this;
    v11 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v49[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::AffineMapAttr::getValue(v49) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        return 1;
      }

      v44[0] = v11;
      if (*(*mlir::AffineMapAttr::getValue(v44) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return 1;
      }
    }

    v45 = 261;
    v44[0] = "result";
    v44[1] = 6;
    mlir::Operation::emitOpError(v10, v44, v49);
    if (v49[0])
    {
      v46 = 3;
      v47 = " #";
      v48 = 2;
      v12 = &v46;
      v13 = v50;
      if (v51 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v51 > &v46)
        {
          v40 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
          v13 = v50;
          v12 = (v50 + v40);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
          v12 = &v46;
          v13 = v50;
        }
      }

      v14 = &v13[24 * v51];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v51;
      if (v49[0])
      {
        v46 = 5;
        v47 = 0;
        v17 = &v46;
        v18 = v50;
        if (v16 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v16 > &v46)
          {
            v41 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v16 + 1, 24);
            v18 = v50;
            v17 = (v50 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v16 + 1, 24);
            v17 = &v46;
            v18 = v50;
          }
        }

        v19 = &v18[24 * v51];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        v21 = ++v51;
        if (v49[0])
        {
          v46 = 3;
          v48 = 99;
          v22 = &v46;
          v23 = v50;
          if (v21 >= v52)
          {
            if (v50 <= &v46 && v50 + 24 * v21 > &v46)
            {
              v42 = &v46 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v21 + 1, 24);
              v23 = v50;
              v22 = (v50 + v42);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v21 + 1, 24);
              v22 = &v46;
              v23 = v50;
            }
          }

          v24 = &v23[24 * v51];
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          ++v51;
          if (v49[0])
          {
            v26 = &v46;
            mlir::DiagnosticArgument::DiagnosticArgument(&v46, v11);
            v27 = v50;
            if (v51 >= v52)
            {
              if (v50 <= &v46 && v50 + 24 * v51 > &v46)
              {
                v43 = &v46 - v50;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                v27 = v50;
                v26 = (v50 + v43);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                v26 = &v46;
                v27 = v50;
              }
            }

            v28 = &v27[24 * v51];
            v29 = *v26;
            *(v28 + 2) = *(v26 + 2);
            *v28 = v29;
            ++v51;
          }
        }
      }
    }

    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v57;
        v33 = __p;
        if (v57 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v57 = v31;
        operator delete(v33);
      }

      v34 = v54;
      if (v54)
      {
        v35 = v55;
        v36 = v54;
        if (v55 != v54)
        {
          do
          {
            v38 = *--v35;
            v37 = v38;
            *v35 = 0;
            if (v38)
            {
              MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
            }
          }

          while (v35 != v34);
          v36 = v54;
        }

        v55 = v34;
        operator delete(v36);
      }

      if (v50 != v53)
      {
        free(v50);
      }
    }

    if (v30)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::pdl::RangeOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x400000000;
  v13 = &v15;
  v14 = 0x100000000;
  v11 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v16, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v17 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v13) & 1) == 0))
  {
    goto LABEL_13;
  }

  mlir::ValueRange::ValueRange(v12, v13, v14);
  if (v12[1])
  {
    v5 = mlir::TypeRange::dereference_iterator(v12[0], 0);
    RangeElementTypeOrSelf = mlir::pdl::getRangeElementTypeOrSelf(v5);
    v11 = mlir::pdl::RangeType::get(RangeElementTypeOrSelf);
  }

  else if (((*(*a1 + 576))(a1, &v11) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    v9 = v13;
    if (v13 == &v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = v11;
  ++*(a2 + 72);
  v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v16, &v13, v4, a2 + 16);
  v9 = v13;
  if (v13 != &v15)
  {
LABEL_14:
    free(v9);
  }

LABEL_15:
  if (v16 != v18)
  {
    free(v16);
  }

  return v8;
}

unint64_t mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(mlir::pdl::ReplaceOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 64);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 80);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 64);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::pdl::ReplaceOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v23 = v6;
  if (v6)
  {
    v8 = mlir::DictionaryAttr::get(&v23, "operandSegmentSizes", 0x13uLL);
    if (!v8)
    {
      v8 = mlir::DictionaryAttr::get(&v23, "operand_segment_sizes", 0x15uLL);
      if (!v8)
      {
        return 1;
      }
    }

    if (mlir::convertFromAttribute(a1, 3, v8, a3, a4))
    {
      return 1;
    }
  }

  else
  {
    a3(v27, a4);
    if (v27[0])
    {
      v24 = 3;
      v25 = "expected DictionaryAttr to set properties";
      v26 = 41;
      v10 = &v24;
      v11 = v28;
      if (v29 >= v30)
      {
        if (v28 <= &v24 && v28 + 24 * v29 > &v24)
        {
          v22 = &v24 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
          v11 = v28;
          v10 = (v28 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
          v10 = &v24;
          v11 = v28;
        }
      }

      v12 = &v11[24 * v29];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v29;
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v17 = v32;
      if (v32)
      {
        v18 = v33;
        v19 = v32;
        if (v33 != v32)
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
          v19 = v32;
        }

        v33 = v17;
        operator delete(v19);
      }

      if (v28 != v31)
      {
        free(v28);
      }
    }
  }

  return 0;
}

uint64_t mlir::pdl::ReplaceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, llvm::hashing::detail *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  v2 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 3);
  NamedAttr = mlir::Builder::getNamedAttr(&v14, "operandSegmentSizes", 0x13uLL, v2);
  v5 = v16;
  if (v16 >= HIDWORD(v16))
  {
    v12 = NamedAttr;
    v13 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 16);
    v4 = v13;
    NamedAttr = v12;
    v5 = v16;
  }

  v6 = (v15 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = __CFADD__(v16, 1);
  v8 = (v16 + 1);
  LODWORD(v16) = v16 + 1;
  if (v7)
  {
    DictionaryAttr = 0;
    v10 = v15;
    if (v15 == v17)
    {
      return DictionaryAttr;
    }

    goto LABEL_8;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v15, v8);
  v10 = v15;
  if (v15 != v17)
  {
LABEL_8:
    free(v10);
  }

  return DictionaryAttr;
}

uint64_t mlir::pdl::ReplaceOp::setInherentAttr(uint64_t result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 19)
  {
    if (*a2 != 0x53646E617265706FLL || a2[1] != 0x6953746E656D6765 || *(a2 + 11) != 0x73657A6953746E65)
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

    v6 = *a2 == 0x5F646E617265706FLL && a2[1] == 0x5F746E656D676573;
    if (!v6 || *(a2 + 13) != 0x73657A69735F746ELL)
    {
      return result;
    }
  }

  v14[3] = v4;
  v14[4] = v5;
  if (a4)
  {
    v10 = result;
    result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
    if (result)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v14[0] = v12;
    if (v12)
    {
      result = mlir::AffineBinaryOpExpr::getLHS(v14);
      if (result == 3)
      {
        result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v14);
        if (v13)
        {
          return memmove(v10, result, 4 * v13);
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl::ReplaceOp::readProperties(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v17 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v17))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 4)
    {
      v15 = "size mismatch for operand/result_segment_size";
      v16 = 259;
      (*(*a1 + 16))(v18, a1, &v15);
      if (v18[0])
      {
        mlir::InFlightDiagnostic::report(v18);
      }

      if (v26 == 1)
      {
        if (v25 != &v26)
        {
          free(v25);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v24;
          v6 = __p;
          if (v24 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v24 = v4;
          operator delete(v6);
        }

        v7 = v21;
        if (v21)
        {
          v8 = v22;
          v9 = v21;
          if (v22 != v21)
          {
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
            v9 = v21;
          }

          v22 = v7;
          operator delete(v9);
        }

        if (v19 != &v20)
        {
          free(v19);
        }
      }

      return 0;
    }

    v12 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
    if (v13)
    {
      memmove(v3, v12, 4 * v13);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3) & 1) != 0;
}

BOOL mlir::pdl::ReplaceOp::parse(uint64_t a1, void *a2)
{
  v32[16] = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v30 = v32;
  v31 = 0x400000000;
  v28[0] = &v29;
  v28[1] = 0x100000000;
  v25 = v27;
  v26 = 0x400000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "with", 4, v23) & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v30, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v28) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*a1 + 40))(a1);
  memset(v23, 0, 24);
  v5 = (*(*a1 + 712))(a1, v23, 1);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    v7 = v25;
    if (v26 >= HIDWORD(v26))
    {
      if (v25 <= v23 && v25 + 32 * v26 > v23)
      {
        v20 = v23 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
        v7 = v25;
        v6 = v25 + v20;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 32);
        v6 = v23;
        v7 = v25;
      }
    }

    v8 = &v7[32 * v26];
    v9 = v6[1];
    *v8 = *v6;
    *(v8 + 1) = v9;
    LODWORD(v26) = v26 + 1;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v10 = v26;
    v11 = v31;
    v12 = a2[32];
    if (!v12)
    {
      operator new();
    }

    *v12 = 1;
    v12[1] = v10;
    v12[2] = v11;
    v13 = (*(*a1 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v13);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
    if ((*(*a1 + 728))(a1, v21, SingletonImpl, a2 + 2))
    {
      if (!v26)
      {
LABEL_22:
        v18 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v30, v28, v4, (a2 + 2));
        goto LABEL_24;
      }

      v16 = v25;
      v17 = 32 * v26;
      while (((*(*a1 + 728))(a1, v16, SingletonImpl, a2 + 2) & 1) != 0)
      {
        v16 += 32;
        v17 -= 32;
        if (!v17)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
  v18 = 0;
LABEL_24:
  if (v25 != v27)
  {
    free(v25);
  }

  if (v28[0] != &v29)
  {
    free(v28[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v18;
}

uint64_t mlir::pdl::ResultOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "index", 5uLL);
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
    v43 = 50;
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

uint64_t mlir::pdl::ResultOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "index", 5uLL, *a2);
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

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
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
    isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 32);
    a5 = v8;
    a4 = v7;
    if (isSignlessInteger)
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
        v31 = "' failed to satisfy constraint: 32-bit signless integer attribute";
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

BOOL mlir::pdl::ResultOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

uint64_t *mlir::pdl::ResultOp::getIndex(mlir::pdl::ResultOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

BOOL mlir::pdl::ResultOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'index'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::pdl::ResultOp::parse(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v20, IntegerType))
  {
    return 0;
  }

  if (v20)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      operator new();
    }

    *v6 = v20;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v21) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v21[0] = a1;
  v21[1] = &v17;
  v21[2] = a2;
  v8 = mlir::NamedAttrList::get(a2 + 112, **(v7 + 96));
  if (v8)
  {
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v8, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21))
    {
      return 0;
    }
  }

  v9 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v12 = (*(*a1 + 32))(a1);
  v13 = mlir::MLIRContext::getTypeUniquer(*v12);
  v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = SingletonImpl;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v18, v14, a2 + 16) & 1;
}

void mlir::pdl::ResultOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v15 = v17;
  v17[0] = "index";
  v17[1] = 5;
  v16 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }
}

BOOL mlir::pdl::ResultsOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

BOOL mlir::pdl::ResultsOp::verifyInvariantsImpl(uint64_t **this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v46[0] = v2;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46) || !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 2 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  v6 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  v8 = *this;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v46[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*mlir::AffineMapAttr::getValue(v46) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return 1;
    }
  }

  v42 = 261;
  v41[0] = "result";
  v41[1] = 6;
  mlir::Operation::emitOpError(v8, v41, v46);
  if (v46[0])
  {
    v43 = 3;
    v44 = " #";
    v45 = 2;
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
      v43 = 5;
      v44 = 0;
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
        v45 = 77;
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
        ++v48;
        if (v46[0])
        {
          v23 = &v43;
          mlir::DiagnosticArgument::DiagnosticArgument(&v43, v6);
          v24 = v47;
          if (v48 >= v49)
          {
            if (v47 <= &v43 && v47 + 24 * v48 > &v43)
            {
              v40 = &v43 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v24 = v47;
              v23 = (v47 + v40);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v23 = &v43;
              v24 = v47;
            }
          }

          v25 = &v24[24 * v48];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          ++v48;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
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

  return v27;
}

uint64_t mlir::pdl::ResultsOp::parse(uint64_t *a1, uint64_t a2)
{
  v23 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  v6 = (*(*a1 + 456))(a1, &v23, IntegerType);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v23)
    {
      v7 = *(a2 + 256);
      if (!v7)
      {
        operator new();
      }

      *v7 = v23;
    }
  }

  v25 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v24) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = *a1;
  if (v23)
  {
    if (((*(v8 + 56))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v20) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = (*(v8 + 32))(a1);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v20 = mlir::pdl::RangeType::get(SingletonImpl);
  }

  v19 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a2 + 8);
  v24[0] = a1;
  v24[1] = &v19;
  v24[2] = a2;
  v13 = mlir::NamedAttrList::get(a2 + 112, **(v12 + 96));
  if (v13)
  {
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v13, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v24))
    {
      return 0;
    }
  }

  v14 = (*(*a1 + 32))(a1);
  v15 = mlir::MLIRContext::getTypeUniquer(*v14);
  v16 = mlir::StorageUniquer::getSingletonImpl(v15, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17 + 1, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v17) = v20;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v21, v16, a2 + 16) & 1;
}

void mlir::pdl::ResultsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    v4 = (*(*a2 + 16))(a2);
    v5 = *(v4 + 4);
    if (v5 >= *(v4 + 3))
    {
      llvm::raw_ostream::write(v4, 32);
    }

    else
    {
      *(v4 + 4) = v5 + 1;
      *v5 = 32;
    }

    (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (*(*this + 9))
  {
    v15 = *this - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  if (v14)
  {
    v17 = *(NextResultAtOffset + 8);
    v18 = (*(*a2 + 16))(a2);
    v19 = v18[4];
    if (v18[3] - v19 > 3uLL)
    {
      *v19 = 540945696;
      v18[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v18, " -> ", 4uLL);
    }

    (*(*a2 + 32))(a2, v17 & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = v25;
  v25[0] = "index";
  v25[1] = 5;
  v24 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

BOOL mlir::pdl::RewriteOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v41 = v6;
  if (!v6)
  {
    a3(v45, a4);
    if (v45[0])
    {
      v42 = 3;
      v43 = "expected DictionaryAttr to set properties";
      v44 = 41;
      v26 = &v42;
      v27 = v46;
      if (v47 >= v48)
      {
        if (v46 <= &v42 && v46 + 24 * v47 > &v42)
        {
          v38 = &v42 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v27 = v46;
          v26 = (v46 + v38);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v26 = &v42;
          v27 = v46;
        }
      }

      v28 = &v27[24 * v47];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v47;
      if (v45[0])
      {
        mlir::InFlightDiagnostic::report(v45);
      }
    }

    if (v55 != 1)
    {
      return 0;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v53;
      v32 = __p;
      if (v53 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v53 = v30;
      operator delete(v32);
    }

    v21 = v50;
    if (!v50)
    {
      goto LABEL_52;
    }

    v33 = v51;
    v23 = v50;
    if (v51 == v50)
    {
LABEL_51:
      v51 = v21;
      operator delete(v23);
LABEL_52:
      if (v46 != v49)
      {
        free(v46);
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
LABEL_50:
    v23 = v50;
    goto LABEL_51;
  }

  v8 = mlir::DictionaryAttr::get(&v41, "name", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(v45, a4);
      if (v45[0])
      {
        v42 = 3;
        v44 = 49;
        v10 = &v42;
        v11 = v46;
        if (v47 >= v48)
        {
          if (v46 <= &v42 && v46 + 24 * v47 > &v42)
          {
            v39 = &v42 - v46;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
            v11 = v46;
            v10 = (v46 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
            v10 = &v42;
            v11 = v46;
          }
        }

        v12 = &v11[24 * v47];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v47;
        if (v45[0])
        {
          v14 = &v42;
          mlir::DiagnosticArgument::DiagnosticArgument(&v42, v9);
          v15 = v46;
          if (v47 >= v48)
          {
            if (v46 <= &v42 && v46 + 24 * v47 > &v42)
            {
              v40 = &v42 - v46;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v15 = v46;
              v14 = (v46 + v40);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v14 = &v42;
              v15 = v46;
            }
          }

          v16 = &v15[24 * v47];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v47;
          if (v45[0])
          {
            mlir::InFlightDiagnostic::report(v45);
          }
        }
      }

      if ((v55 & 1) == 0)
      {
        return 0;
      }

      if (v54 != &v55)
      {
        free(v54);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v53;
        v20 = __p;
        if (v53 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v53 = v18;
        operator delete(v20);
      }

      v21 = v50;
      if (!v50)
      {
        goto LABEL_52;
      }

      v22 = v51;
      v23 = v50;
      if (v51 == v50)
      {
        goto LABEL_51;
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
      goto LABEL_50;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v41, "operandSegmentSizes", 0x13uLL);
  if (!v36)
  {
    v36 = mlir::DictionaryAttr::get(&v41, "operand_segment_sizes", 0x15uLL);
    if (!v36)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 1, 2, v36, a3, a4) & 1) != 0;
}

uint64_t mlir::pdl::RewriteOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
  if (*a2)
  {
    v3 = a1;
    NamedAttr = mlir::Builder::getNamedAttr(&v22, "name", 4uLL, *a2);
    v6 = v24;
    if (v24 >= HIDWORD(v24))
    {
      v20 = NamedAttr;
      v21 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 16);
      v5 = v21;
      NamedAttr = v20;
      v6 = v24;
    }

    v7 = (v23 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v24) = v24 + 1;
    a1 = v3;
  }

  v8 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 1), 2);
  v9 = mlir::Builder::getNamedAttr(&v22, "operandSegmentSizes", 0x13uLL, v8);
  v11 = v24;
  if (v24 >= HIDWORD(v24))
  {
    v18 = v9;
    v19 = v10;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 16);
    v10 = v19;
    v9 = v18;
    v11 = v24;
  }

  v12 = (v23 + 16 * v11);
  *v12 = v9;
  v12[1] = v10;
  v13 = __CFADD__(v24, 1);
  v14 = (v24 + 1);
  LODWORD(v24) = v24 + 1;
  if (v13)
  {
    DictionaryAttr = 0;
    v16 = v23;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_12;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v14);
  v16 = v23;
  if (v23 != v25)
  {
LABEL_12:
    free(v16);
  }

  return DictionaryAttr;
}

uint64_t mlir::pdl::RewriteOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 21)
  {
    result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (a3 != 19)
    {
      if (a3 == 4 && *__s1 == 1701667182)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

      return result;
    }

    result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
    if (result)
    {
      return result;
    }
  }

  if (a4)
  {
    result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
    v6 = result ? a4 : 0;
    v9 = v6;
    if (v6)
    {
      result = mlir::AffineBinaryOpExpr::getLHS(&v9);
      if (result == 2)
      {
        result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
        if (v7)
        {
          return memmove((v5 + 8), result, 4 * v7);
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl::RewriteOp::readProperties(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, a2[32]))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v17 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v17))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 3)
    {
      v15 = "size mismatch for operand/result_segment_size";
      v16 = 259;
      (*(*a1 + 16))(v18, a1, &v15);
      if (v18[0])
      {
        mlir::InFlightDiagnostic::report(v18);
      }

      if (v26 == 1)
      {
        if (v25 != &v26)
        {
          free(v25);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v24;
          v6 = __p;
          if (v24 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v24 = v4;
          operator delete(v6);
        }

        v7 = v21;
        if (v21)
        {
          v8 = v22;
          v9 = v21;
          if (v22 != v21)
          {
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
            v9 = v21;
          }

          v22 = v7;
          operator delete(v9);
        }

        if (v19 != &v20)
        {
          free(v19);
        }
      }

      return 0;
    }

    v12 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
    if (v13)
    {
      memmove((v3 + 8), v12, 4 * v13);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 8), 2) & 1) != 0;
}

uint64_t mlir::pdl::RewriteOp::verifyInvariantsImpl(uint64_t **this)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v50[0] = v2;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v50))
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*this + 11);
  v6 = (v5 >> 23) & 1;
  v7 = LODWORD((*this)[2 * v6 + 9]);
  if ((v5 & 0x800000) == 0)
  {
    v8 = 0;
    if (v7 > 1)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v8 = v4[9];
  if (v7 <= 1)
  {
LABEL_32:
    if (!v7)
    {
      v34 = 0;
      v33 = v5 & 0x800000;
LABEL_36:
      v35 = &v4[2 * v6];
      v36 = *(v35 + 19);
      if (v33)
      {
        v37 = v4[9];
        if (v36)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v37 = 0;
        if (v36)
        {
LABEL_38:
          v38 = *(v35 + 18);
          v39 = (v36 + v38) - v38;
          for (i = v37 + 32 * v38 + 24; mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v34); i += 32)
          {
            ++v34;
            if (!--v39)
            {
              return 1;
            }
          }

          return 0;
        }
      }

      return 1;
    }

    if (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(v4, *(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      v4 = *this;
      v32 = *(*this + 11);
      v6 = (v32 >> 23) & 1;
      v33 = v32 & 0x800000;
      v34 = 1;
      goto LABEL_36;
    }

    return 0;
  }

LABEL_4:
  v45 = "operand group starting at #";
  v46 = 259;
  mlir::OpState::emitOpError(this, &v45, v50);
  if (v50[0])
  {
    v47 = 5;
    v48 = 0;
    v9 = &v47;
    v10 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v47 && v51 + 24 * v52 > &v47)
      {
        v42 = &v47 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v10 = v51;
        v9 = (v51 + v42);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v9 = &v47;
        v10 = v51;
      }
    }

    v11 = &v10[24 * v52];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    v13 = ++v52;
    if (v50[0])
    {
      v47 = 3;
      v48 = " requires 0 or 1 element, but found ";
      v49 = 36;
      v14 = &v47;
      v15 = v51;
      if (v13 >= v53)
      {
        if (v51 <= &v47 && v51 + 24 * v13 > &v47)
        {
          v43 = &v47 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v13 + 1, 24);
          v15 = v51;
          v14 = (v51 + v43);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v13 + 1, 24);
          v14 = &v47;
          v15 = v51;
        }
      }

      v16 = &v15[24 * v52];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      v18 = ++v52;
      if (v50[0])
      {
        v47 = 5;
        v48 = v7;
        v19 = &v47;
        v20 = v51;
        if (v18 >= v53)
        {
          if (v51 <= &v47 && v51 + 24 * v18 > &v47)
          {
            v44 = &v47 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v18 + 1, 24);
            v20 = v51;
            v19 = (v51 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v18 + 1, 24);
            v19 = &v47;
            v20 = v51;
          }
        }

        v21 = &v20[24 * v52];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v52;
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v58;
      v26 = __p;
      if (v58 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v58 = v24;
      operator delete(v26);
    }

    v27 = v55;
    if (v55)
    {
      v28 = v56;
      v29 = v55;
      if (v56 != v55)
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
        v29 = v55;
      }

      v56 = v27;
      operator delete(v29);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }

  return v23;
}

void mlir::pdl::RewriteOp::parse(uint64_t a1, void *a2)
{
  v11[16] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x400000000;
  v6 = &v8;
  v7 = 0x400000000;
  v2 = 0;
  v3 = &v5;
  v4 = 0x100000000;
  operator new();
}

uint64_t mlir::pdl::TypeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "constantType", 0xCuLL);
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
    v43 = 57;
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