void mlir::ub::UBDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 28271;
      *v4 = 1936289648;
      v3[4] += 6;
    }

    else
    {

      llvm::raw_ostream::write(v3, "poison", 6uLL);
    }
  }
}

uint64_t mlir::ub::PoisonOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v42 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      v43 = 3;
      v44 = "expected DictionaryAttr to set properties";
      v45 = 41;
      v13 = &v43;
      v14 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v14 = v47;
          v13 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = &v43;
          v14 = v47;
        }
      }

      v15 = &v14[24 * v48];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v54;
      v19 = __p;
      if (v54 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v54 = v17;
      operator delete(v19);
    }

    v20 = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v21 = v52;
    v22 = v51;
    if (v52 == v51)
    {
      goto LABEL_48;
    }

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
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v42, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v46, a4);
  if (v46[0])
  {
    v43 = 3;
    v45 = 50;
    v25 = &v43;
    v26 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v40 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v26 = v47;
        v25 = (v47 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v25 = &v43;
        v26 = v47;
      }
    }

    v27 = &v26[24 * v48];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    ++v48;
    if (v46[0])
    {
      v29 = &v43;
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v9);
      v30 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v41 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v30 = v47;
          v29 = (v47 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v29 = &v43;
          v30 = v47;
        }
      }

      v31 = &v30[24 * v48];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v54;
      v35 = __p;
      if (v54 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v54 = v33;
      operator delete(v35);
    }

    v20 = v51;
    if (!v51)
    {
      goto LABEL_49;
    }

    v36 = v52;
    v22 = v51;
    if (v52 == v51)
    {
LABEL_48:
      v52 = v20;
      operator delete(v22);
LABEL_49:
      if (v47 != v50)
      {
        free(v47);
      }

      return 0;
    }

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

    while (v36 != v20);
LABEL_47:
    v22 = v51;
    goto LABEL_48;
  }

  return 0;
}

BOOL mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(uint64_t *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v7 = *a1;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v38 = a4;
    v17 = a5;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    a5 = v17;
    a4 = v38;
    v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    return 1;
  }

LABEL_14:
  a4(&v43, a5);
  if (v43)
  {
    LODWORD(v39) = 3;
    v40 = "attribute '";
    v41 = 11;
    v18 = &v39;
    v19 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v39 && v45 + 24 * v46 > &v39)
      {
        v36 = &v39 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v19 = v45;
        v18 = (v45 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v18 = &v39;
        v19 = v45;
      }
    }

    v20 = &v19[24 * v46];
    v21 = *v18;
    *(v20 + 2) = v18[2];
    *v20 = v21;
    ++v46;
    if (v43)
    {
      v42 = 261;
      v39 = a2;
      v40 = a3;
      mlir::Diagnostic::operator<<(&v44, &v39);
      if (v43)
      {
        LODWORD(v39) = 3;
        v40 = "' failed to satisfy constraint: PoisonAttrInterface instance";
        v41 = 60;
        v22 = &v39;
        v23 = v45;
        if (v46 >= v47)
        {
          if (v45 <= &v39 && v45 + 24 * v46 > &v39)
          {
            v37 = &v39 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v23 = v45;
            v22 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v22 = &v39;
            v23 = v45;
          }
        }

        v24 = &v23[24 * v46];
        v25 = *v22;
        *(v24 + 2) = v22[2];
        *v24 = v25;
        ++v46;
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    mlir::InFlightDiagnostic::report(&v43);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v52;
      v29 = __p;
      if (v52 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v52 = v27;
      operator delete(v29);
    }

    v30 = v49;
    if (v49)
    {
      v31 = v50;
      v32 = v49;
      if (v50 != v49)
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
        v32 = v49;
      }

      v50 = v30;
      operator delete(v32);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v26;
}

BOOL mlir::ub::PoisonOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  if (!v36)
  {
    return 1;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v36);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface]";
  v38 = 79;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
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

void mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a4;
    v7[1] = a5;
  }

  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

mlir::MLIRContext *mlir::ub::PoisonOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v18 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v18);
  if (*a2)
  {
    return result;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
  result = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = *result;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    *a2 = result;
    a2[1] = 0;
    return result;
  }

  v16 = v5;
  v17 = result;
  mlir::ub::PoisonOp::populateDefaultProperties();
  result = v17;
  v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v7 = *(v16 + 8);
  v8 = *(v16 + 16);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    goto LABEL_15;
  }

  v15 = v9[1];
  *a2 = result;
  a2[1] = v15;
  return result;
}

uint64_t mlir::ub::PoisonOp::parse(uint64_t a1, uint64_t a2)
{
  v12 = 0uLL;
  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a2;
  v5 = mlir::NamedAttrList::get(a2 + 112, **(v4 + 96));
  if (v5)
  {
    if (!mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v5, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
    {
      return 0;
    }
  }

  if ((*(*a1 + 160))(a1))
  {
    if (!mlir::AsmParser::parseAttribute<mlir::ub::PoisonAttrInterface>(a1, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v6 = *(a2 + 256);
      if (!v6)
      {
        operator new();
      }

      *v6 = v12;
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10[0] = 0;
  if (((*(*a1 + 536))(a1, v10) & 1) == 0)
  {
    return 0;
  }

  v7 = v10[0];
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = v7;
  ++*(a2 + 72);
  return 1;
}

void mlir::ub::PoisonOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v34[0] = "value";
  v34[1] = 5;
  v33 = 0x200000001;
  Context = mlir::Attribute::getContext((*this + 24));
  v5 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v5)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(v5);
    if (v6)
    {
      v7 = v6;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      if (mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id) == v7)
      {
        v9 = v32 + 16 * v33;
        *v9 = "value";
        v9[1] = 5;
        LODWORD(v33) = v33 + 1;
      }
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v32, v33);
  v12 = *this;
  v13 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v13)
  {
    v14 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(v13);
    v12 = *this;
  }

  else
  {
    v14 = 0;
  }

  v15 = mlir::Attribute::getContext((v12 + 24));
  v16 = mlir::MLIRContext::getAttributeUniquer(v15);
  if (v14 != mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id))
  {
    v17 = (*(*a2 + 16))(a2);
    v18 = v17[4];
    if (v17[3] == v18)
    {
      llvm::raw_ostream::write(v17, "<", 1uLL);
      v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v18 = 60;
      ++v17[4];
      v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (v19)
      {
LABEL_11:
        v20 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(v19);
        goto LABEL_14;
      }
    }

    v20 = 0;
LABEL_14:
    (*(*a2 + 40))(a2, v20);
    v21 = (*(*a2 + 16))(a2);
    v22 = v21[4];
    if (v21[3] == v22)
    {
      llvm::raw_ostream::write(v21, ">", 1uLL);
    }

    else
    {
      *v22 = 62;
      ++v21[4];
    }
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}

void *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

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
  return result;
}

void *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v11 = v1;
      v12 = result;
      mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
      v3 = *(v11 + 8);
      v4 = *(v11 + 16);
      if (!v4)
      {
        return result;
      }
    }

    v5 = v3;
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 < v2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hasTrait()
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v7);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v1, v2, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::printAssembly()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      if ((v4 & 2) != 0)
      {
        v2 = v3;
      }

      else
      {
        v2 = v3[0];
      }

      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))(v2);
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1970037110 ? (v7 = *(a3 + 4) == 101) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 5 && *result == 1970037110 && *(result + 4) == 101)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(a4);
      *(v10 + 64) = result;
      *(v10 + 72) = v11;
    }

    else
    {
      result = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "value", 5uLL, v5);
  }
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return mlir::ub::PoisonOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::ConstantOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::ub::PoisonOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v8 = a1 + 64;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 64 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v16, v11, v10);
  v16[2] = a2;
  v16[3] = a3;
  result = *(v8 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (result)
  {
    v13 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface,void>>::doCastIfPossible(result);
    if (v13 < 8)
    {
      return 0;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFFFBLL;
      v15 = *(a4 + 8);
      if (v15 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v15 + 1, 8);
        LODWORD(v15) = *(a4 + 8);
      }

      *(*a4 + 8 * v15) = v14;
      ++*(a4 + 8);
      return 1;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ub::PoisonOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v9 = a1;
  if (!mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return 1;
}

uint64_t *mlir::Dialect::addAttribute<mlir::ub::PoisonAttr>(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(a1, &v13);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(1uLL, 0x400A2AC0F1uLL);
  v5 = v4;
  {
    v10 = v4;
    mlir::ub::PoisonOp::populateDefaultProperties();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJNSD_19PoisonAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJNSC_19PoisonAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  *(a2 + 144) = "ub.poison";
  *(a2 + 152) = 9;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface::Trait<Empty>]";
  v6 = 93;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

void anonymous namespace::UBInlinerInterface::~UBInlinerInterface(_anonymous_namespace_::UBInlinerInterface *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

BOOL mlir::AsmParser::parseAttribute<mlir::ub::PoisonAttrInterface>(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v21);
  *a2 = v7;
  a2[1] = v8;
  if (v7)
  {
    return 1;
  }

  v19 = "invalid kind of attribute specified";
  v20 = 259;
  (*(*a1 + 24))(v22, a1, v6, &v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
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
      result = v10;
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
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::AffineExpr::walk<void>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v4[0] = a2;
  v4[1] = a3;
  return mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(v4, a1);
}

uint64_t mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(uint64_t (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  if (*(a2 + 8) <= 4u)
  {
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(a1, *(a2 + 16));
    mlir::AffineExprVisitor<void mlir::AffineExpr::walk<void>(mlir::AffineExpr,llvm::function_ref<void ()(mlir::AffineExpr)>)::AffineExprWalker,void>::walkPostOrder(a1, *(a2 + 24));
  }

  v5 = *a1;
  v4 = a1[1];

  return v5(v4, a2);
}

mlir::MLIRContext **mlir::getAffineBinaryOpExpr(int a1, mlir::MLIRContext **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return mlir::AffineExpr::ceilDiv(&v4, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3);
    }

    return mlir::AffineExpr::floorDiv(&v4, a3);
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return mlir::AffineExpr::operator*(&v4, a3);
      }

      return mlir::AffineExpr::operator%(&v4, a3);
    }

    return mlir::AffineExpr::operator+(&v4, a3);
  }
}

uint64_t mlir::AffineExpr::operator+(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v45 = a2;
  result = *a1;
  v46 = result;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6 == 5)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v11 = *(v5 + 16);
    v12 = *(v7 + 16);
    v13 = __OFADD__(v11, v12);
    v14 = (v11 + v12);
    if (v13)
    {
      goto LABEL_20;
    }

    v47 = *result;
    v48 = v14;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v47);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v47, &v48);
LABEL_17:
    if (result)
    {
      return result;
    }

    result = *a1;
LABEL_20:
    v16 = mlir::MLIRContext::getAffineUniquer(*result);
    LODWORD(v48) = 0;
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v48, a1, &v44);
  }

  v9 = result;
  if (v4 == 5 || mlir::AffineExpr::isSymbolicOrConstant(&v46) && (mlir::AffineExpr::isSymbolicOrConstant(&v45) & 1) == 0)
  {
    v10 = &v45;
LABEL_14:
    result = mlir::AffineExpr::operator+(v10, v9);
    goto LABEL_17;
  }

  if (!v7)
  {
    result = v9;
    v25 = v4 > 4 || v9 == 0;
    v23 = a2;
    if (v25)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_54;
    }

    v27 = *(v9 + 8);
LABEL_45:
    if (v27 == 1)
    {
      v28 = *(result + 24);
      v22 = 1;
      v21 = 1;
      if (v28)
      {
        v20 = result;
        v9 = result;
        if (*(v28 + 8) == 5)
        {
          v22 = *(v28 + 16);
          v9 = *(result + 16);
          v21 = 1;
          v20 = result;
          if (v6 >= 5)
          {
            v24 = 0;
          }

          else
          {
            v24 = v23;
          }

          if (!v24)
          {
            goto LABEL_64;
          }

          goto LABEL_59;
        }

        goto LABEL_55;
      }

      goto LABEL_97;
    }

    v21 = 1;
    v20 = result;
LABEL_54:
    v22 = 1;
    v9 = result;
    goto LABEL_55;
  }

  v18 = *(v7 + 16);
  result = v9;
  if (v18)
  {
    if (v4 > 4 || v9 == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v23 = a2;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = a2;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v27 = *(v9 + 8);
    v23 = a2;
    if (!v27)
    {
      v26 = *(v9 + 24);
      v22 = 1;
      v21 = 1;
      if (v26)
      {
        v20 = v9;
        if (*(v26 + 8) == 5)
        {
          v48 = *(v9 + 16);
          result = mlir::AffineExpr::operator+(&v48, v18 + *(v26 + 16));
          goto LABEL_17;
        }

LABEL_55:
        if (v6 >= 5)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        if (!v24)
        {
          goto LABEL_64;
        }

LABEL_59:
        if (*(v24 + 8) == 1)
        {
          v29 = *(v24 + 24);
          if (v29 && *(v29 + 8) == 5)
          {
            v31 = *(v29 + 16);
            if (v9 != *(v24 + 16))
            {
              goto LABEL_65;
            }

            goto LABEL_93;
          }
        }

LABEL_64:
        v31 = 1;
        if (v9 != v23)
        {
LABEL_65:
          if (v21)
          {
            if (!*(v20 + 8))
            {
              v9 = *(v20 + 24);
              if (v9)
              {
                if (*(v9 + 8) == 5)
                {
                  v47 = *(v20 + 16);
                  v48 = mlir::AffineExpr::operator+(&v47, v23);
                  v10 = &v48;
                  goto LABEL_14;
                }
              }
            }
          }

          if (!v24)
          {
            goto LABEL_20;
          }

          v32 = *(v24 + 16);
          v33 = *(v24 + 24);
          v48 = v33;
          if (*(v32 + 8) >= 5)
          {
            v32 = 0;
          }

          if (v33 && *(v33 + 8) == 5 && *(v33 + 16) == -1)
          {
            if (!v32)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
            if (v35 == 1)
            {
              v42 = *(v32 + 16);
              if (v42)
              {
                v43 = *(v42 + 8) == 3;
              }

              else
              {
                v43 = 0;
              }

              if (!v43)
              {
                goto LABEL_112;
              }

              v36 = *(v32 + 24);
              if (*(v42 + 24) == v36 && result == *(v42 + 16))
              {
LABEL_91:
                result = mlir::AffineExpr::operator%(&v46, v36);
                goto LABEL_17;
              }
            }

            if (v6 != 1)
            {
LABEL_112:
              result = 0;
              goto LABEL_17;
            }
          }

          else
          {
            if (v32)
            {
              v34 = v6 == 1;
            }

            else
            {
              v34 = 0;
            }

            if (!v34)
            {
              goto LABEL_112;
            }

            v35 = *(v32 + 8);
          }

          if (v35 == 3)
          {
            v36 = *(v32 + 24);
            if (v36 && *(v36 + 8) == 5)
            {
              v38 = *(v32 + 16);
              v39 = *(v36 + 16) >= 1 && result == v38;
              if (v39 && v36 == mlir::AffineExpr::operator-(&v48))
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_112;
        }

LABEL_93:
        v47 = *result;
        v48 = (v31 + v22);
        v40 = mlir::MLIRContext::getAffineUniquer(v47);
        v41 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v40, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v47, &v48);
        v48 = v9;
        result = mlir::AffineExpr::operator*(&v48, v41);
        goto LABEL_17;
      }

LABEL_97:
      v20 = result;
      v9 = result;
      if (v6 >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator*(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v20 = a2;
  v3 = *a1;
  v21 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 8) == 5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if ((mlir::AffineExpr::isSymbolicOrConstant(&v21) & 1) == 0 && !mlir::AffineExpr::isSymbolicOrConstant(&v20))
    {
      goto LABEL_31;
    }

    isSymbolicOrConstant = mlir::AffineExpr::isSymbolicOrConstant(&v20);
    if (v4 != 5 && (isSymbolicOrConstant & 1) != 0)
    {
      if (v6)
      {
        v10 = *(v6 + 16);
        if (!v10)
        {
          return a2;
        }

        if (v10 == 1)
        {
          return v3;
        }

        if (v4 > 4 || !v3 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }

        v11 = *(v3 + 24);
        if (v11 && *(v11 + 8) == 5)
        {
          v23 = *(v3 + 16);
          v3 = mlir::AffineExpr::operator*(&v23, v10 * *(v11 + 16));
          if (!v3)
          {
            goto LABEL_30;
          }

          return v3;
        }
      }

      else
      {
        v17 = v4 > 4 || v3 == 0;
        if (v17 || *(v3 + 8) != 1)
        {
          goto LABEL_31;
        }
      }

      v18 = *(v3 + 24);
      if (!v18 || *(v18 + 8) != 5)
      {
        goto LABEL_31;
      }

      v22 = *(v3 + 16);
      v23 = mlir::AffineExpr::operator*(&v22, a2);
      v3 = mlir::AffineExpr::operator*(&v23, v18);
      if (v3)
      {
        return v3;
      }

      goto LABEL_30;
    }

    v3 = mlir::AffineExpr::operator*(&v20, v3);
    if (!v3)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v6 + 16);
    if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
    {
LABEL_31:
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v23) = 1;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(AffineUniquer, 0, 0, &v23, a1, &v19);
    }

    v22 = *v3;
    v23 = v12 * v13;
    v14 = mlir::MLIRContext::getAffineUniquer(v22);
    v3 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v14, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v22, &v23);
    if (!v3)
    {
LABEL_30:
      v3 = *a1;
      goto LABEL_31;
    }
  }

  return v3;
}

mlir::MLIRContext **mlir::AffineExpr::floorDiv(mlir::MLIRContext ***a1, uint64_t a2)
{
  v22 = a2;
  if (*(*a1 + 2) == 5)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    v7 = *a1;
    v24 = *a2;
    v25 = 1;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v24);
    if (mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25) == a2)
    {
      return v7;
    }

    v10 = *(v7 + 2);
    if (v10 <= 4)
    {
      if (!v10)
      {
        v17 = v7[2];
        v25 = v17;
        LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v25 = v7[3];
        v19 = mlir::AffineExpr::getLargestKnownDivisor(&v25);
        v20 = *(a2 + 16);
        if (LargestKnownDivisor % v20 && v19 % v20)
        {
          goto LABEL_27;
        }

        v24 = v17;
        v25 = mlir::AffineExpr::floorDiv(&v24, v20);
        v23 = v7[3];
        v21 = mlir::AffineExpr::floorDiv(&v23, *(a2 + 16));
        result = mlir::AffineExpr::operator+(&v25, v21);
        if (!result)
        {
          goto LABEL_27;
        }

        return result;
      }

      if (v10 == 1)
      {
        v11 = v7[3];
        if (v11)
        {
          if (*(v11 + 2) == 5)
          {
            v12 = *(v11 + 2);
            v13 = *(a2 + 16);
            if (!(v12 % v13))
            {
              v25 = v7[2];
              result = mlir::AffineExpr::operator*(&v25, v12 / v13);
              if (result)
              {
                return result;
              }
            }
          }
        }
      }
    }

LABEL_27:
    v16 = mlir::MLIRContext::getAffineUniquer(**a1);
    LODWORD(v25) = 3;
    return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v25, a1, &v22);
  }

  v5 = v3[2];
  if (v4 == -1 && v5 == 0x8000000000000000)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v6 = ((v5 ^ v4) < 0 ? (v5 + ((v4 >> 63) | 1)) / v4 - 1 : v5 / v4);
  }

  else
  {
    v6 = 0;
  }

  v24 = **a1;
  v25 = v6;
  v15 = mlir::MLIRContext::getAffineUniquer(v24);
  result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v15, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25);
  if (!result)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t mlir::AffineExpr::ceilDiv(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  result = *a1;
  v4 = *(result + 8);
  if (v4 == 5)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_31;
  }

  if (v5)
  {
    v7 = *(v5 + 16);
    if (v6 == -1 && v7 == 0x8000000000000000)
    {
      goto LABEL_31;
    }

    if (v7)
    {
      if ((v7 ^ v6) < 0)
      {
        v9 = v7 / v6;
      }

      else
      {
        if (v6 < 0)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = v7 - 1;
        }

        v9 = v8 / v6 + 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = *result;
    v17 = v9;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v16);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v16, &v17);
  }

  else
  {
    if (v6 == 1)
    {
      return result;
    }

    if (v4 != 1 || ((v10 = *(result + 24)) != 0 ? (v11 = *(v10 + 8) == 5) : (v11 = 0), !v11 || (v12 = *(v10 + 16), v12 % v6)))
    {
LABEL_31:
      v14 = mlir::MLIRContext::getAffineUniquer(*result);
      LODWORD(v17) = 4;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v14, 0, 0, &v17, a1, &v15);
    }

    v17 = *(result + 16);
    result = mlir::AffineExpr::operator*(&v17, v12 / v6);
  }

  if (!result)
  {
    result = *a1;
    goto LABEL_31;
  }

  return result;
}

uint64_t mlir::AffineExpr::operator%(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = a2;
  v18 = v3;
  v4 = *(v3 + 8);
  if (v4 == 5)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) != 5)
  {
    goto LABEL_27;
  }

  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    goto LABEL_27;
  }

  if (v5)
  {
    v7 = *v3;
    v20 = ((v6 & ((*(v5 + 16) % v6) >> 63)) + *(v5 + 16) % v6);
    goto LABEL_9;
  }

  if (!(mlir::AffineExpr::getLargestKnownDivisor(&v18) % v6))
  {
    v7 = *v3;
    v20 = 0;
LABEL_9:
    v19 = v7;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v7);
    result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v19, &v20);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v4 > 4)
  {
    goto LABEL_27;
  }

  if (v4 == 2)
  {
    v14 = *(v3 + 24);
    if (!v14)
    {
      goto LABEL_27;
    }

    if (*(v14 + 8) != 5)
    {
      goto LABEL_27;
    }

    v15 = *(v14 + 16);
    if (v15 < 1 || v15 % v6)
    {
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
  }

  else
  {
    if (v4)
    {
      goto LABEL_27;
    }

    v10 = *(v3 + 16);
    v20 = v10;
    LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    v12 = *(v3 + 24);
    v20 = v12;
    v13 = mlir::AffineExpr::getLargestKnownDivisor(&v20);
    if (LargestKnownDivisor % v6)
    {
      if (!(v13 % v6))
      {
        v20 = v10;
        goto LABEL_25;
      }

LABEL_27:
      v16 = mlir::MLIRContext::getAffineUniquer(*v3);
      LODWORD(v20) = 2;
      return mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(v16, 0, 0, &v20, a1, &v17);
    }

    v20 = v12;
  }

LABEL_25:
  result = mlir::AffineExpr::operator%(&v20, v6);
  if (!result)
  {
LABEL_26:
    v3 = *a1;
    goto LABEL_27;
  }

  return result;
}

mlir::MLIRContext **mlir::AffineExpr::replaceDimsAndSymbols(mlir::MLIRContext ***a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = *a1;
  v7 = *(result + 2);
  if (v7 > 4)
  {
    if (v7 != 5)
    {
      if (v7 == 7)
      {
        v18 = *(result + 4);
        v19 = (a4 + 8 * v18);
        v20 = a5 > v18;
      }

      else
      {
        v21 = *(result + 4);
        v19 = (a2 + 8 * v21);
        v20 = a3 > v21;
      }

      if (v20)
      {
        v22 = v19;
      }

      else
      {
        v22 = a1;
      }

      return *v22;
    }
  }

  else
  {
    v8 = result[2];
    v9 = result[3];
    v23 = v9;
    v24 = v8;
    v14 = mlir::AffineExpr::replaceDimsAndSymbols(&v24, a2, a3, a4, a5);
    v15 = mlir::AffineExpr::replaceDimsAndSymbols(&v23, a2, a3, a4, a5);
    result = *a1;
    if (v8 != v14 || v9 != v15)
    {
      v17 = *(result + 2);
      v25 = v14;
      if (v17 > 2)
      {
        if (v17 != 3)
        {
          if (v17 == 4)
          {
            return mlir::AffineExpr::ceilDiv(&v25, v15);
          }

          return mlir::AffineExpr::operator%(&v25, v15);
        }

        return mlir::AffineExpr::floorDiv(&v25, v15);
      }

      else
      {
        if (v17)
        {
          if (v17 == 1)
          {
            return mlir::AffineExpr::operator*(&v25, v15);
          }

          return mlir::AffineExpr::operator%(&v25, v15);
        }

        return mlir::AffineExpr::operator+(&v25, v15);
      }
    }
  }

  return result;
}

mlir::MLIRContext **mlir::AffineExpr::shiftDims(mlir::MLIRContext ***this, unsigned int a2, int a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x400000000;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = **this;
      v26 = i;
      v25 = v9;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
      v24 = 6;
      v11 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v12 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v14 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v11 = v14;
        v12 = v28;
      }

      *(v27 + v12) = v11;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = a2 - a4;
  if (a2 > a4)
  {
    v16 = a4 + a3;
    do
    {
      v17 = **this;
      v26 = v16;
      v25 = v17;
      v18 = mlir::MLIRContext::getAffineUniquer(v17);
      v24 = 6;
      v19 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v20 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v21 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v19 = v21;
        v20 = v28;
      }

      *(v27 + v20) = v19;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
      ++v16;
      --v15;
    }

    while (v15);
  }

  result = mlir::AffineExpr::replaceDimsAndSymbols(this, v27, v13, 0, 0);
  if (v27 != v29)
  {
    v23 = result;
    free(v27);
    return v23;
  }

  return result;
}

uint64_t mlir::getAffineDimExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 6;
  return mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v6, &v5, &v7);
}

mlir::MLIRContext **mlir::AffineExpr::shiftSymbols(mlir::MLIRContext ***this, unsigned int a2, int a3, unsigned int a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x400000000;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = **this;
      v26 = i;
      v25 = v9;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v9);
      v24 = 7;
      v11 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v12 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v14 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v11 = v14;
        v12 = v28;
      }

      *(v27 + v12) = v11;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = a2 - a4;
  if (a2 > a4)
  {
    v16 = a4 + a3;
    do
    {
      v17 = **this;
      v26 = v16;
      v25 = v17;
      v18 = mlir::MLIRContext::getAffineUniquer(v17);
      v24 = 7;
      v19 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v25, &v24, &v26);
      v20 = v28;
      if (v28 >= HIDWORD(v28))
      {
        v21 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
        v19 = v21;
        v20 = v28;
      }

      *(v27 + v20) = v19;
      v13 = v28 + 1;
      LODWORD(v28) = v28 + 1;
      ++v16;
      --v15;
    }

    while (v15);
  }

  result = mlir::AffineExpr::replaceDimsAndSymbols(this, 0, 0, v27, v13);
  if (v27 != v29)
  {
    v23 = result;
    free(v27);
    return v23;
  }

  return result;
}

uint64_t mlir::getAffineSymbolExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v7 = this;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  v5 = 7;
  return mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v6, &v5, &v7);
}

mlir::MLIRContext **mlir::AffineExpr::replace(unint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v3 = *a2;
    v4 = HIDWORD(*a1);
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v4);
    v6 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)))) & (v2 - 1);
    v7 = *(*a2 + 16 * v6);
    if (*a1 == v7)
    {
LABEL_3:
      if (v6 != v2)
      {
        return *(v3 + 16 * v6 + 8);
      }
    }

    else
    {
      v19 = 1;
      while (v7 != -4096)
      {
        v20 = v6 + v19++;
        v6 = v20 & (v2 - 1);
        v7 = *(v3 + 16 * v6);
        if (*a1 == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *a1;
  if (*(*a1 + 8) <= 4u)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v21 = v10;
    v22 = v9;
    v13 = mlir::AffineExpr::replace(&v22, a2);
    v14 = mlir::AffineExpr::replace(&v21, a2);
    v8 = *a1;
    if (v9 != v13 || v10 != v14)
    {
      v16 = *(v8 + 8);
      v23 = v13;
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          return mlir::AffineExpr::floorDiv(&v23, v14);
        }

        if (v16 == 4)
        {
          return mlir::AffineExpr::ceilDiv(&v23, v14);
        }
      }

      else
      {
        if (!v16)
        {
          return mlir::AffineExpr::operator+(&v23, v14);
        }

        if (v16 == 1)
        {
          return mlir::AffineExpr::operator*(&v23, v14);
        }
      }

      return mlir::AffineExpr::operator%(&v23, v14);
    }
  }

  return v8;
}

void mlir::AffineExpr::replace(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v5 = a2;
  v6 = a3;
  llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v7, &v5, &v6, v4);
  mlir::AffineExpr::replace(a1, v7);
  llvm::deallocate_buffer(v7[0], (16 * v8));
}

uint64_t mlir::AffineExpr::isSymbolicOrConstant(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return v2 == 5 || v2 == 7;
  }

  v6 = *(v1 + 16);
  result = mlir::AffineExpr::isSymbolicOrConstant(&v6);
  if (result)
  {
    v5 = *(v1 + 24);
    return mlir::AffineExpr::isSymbolicOrConstant(&v5);
  }

  return result;
}

uint64_t mlir::AffineExpr::isPureAffine(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 4)
  {
    return 1;
  }

  if ((v2 - 2) < 3)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v4 = *(*(v1 + 24) + 8);
      return v4 == 5;
    }

    return result;
  }

  if (!v2)
  {
    v8 = *(v1 + 16);
    result = mlir::AffineExpr::isPureAffine(&v8);
    if (result)
    {
      v7 = *(v1 + 24);
      return mlir::AffineExpr::isPureAffine(&v7);
    }

    return result;
  }

  v5 = *(v1 + 16);
  v8 = v5;
  result = mlir::AffineExpr::isPureAffine(&v8);
  if (result)
  {
    v6 = *(v1 + 24);
    v7 = v6;
    result = mlir::AffineExpr::isPureAffine(&v7);
    if (result)
    {
      if (*(v5 + 8) != 5)
      {
        v4 = *(v6 + 8);
        return v4 == 5;
      }

      return 1;
    }
  }

  return result;
}

unint64_t mlir::AffineExpr::getLargestKnownDivisor(mlir::AffineExpr *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (v2 > 2)
  {
    if ((v2 - 3) < 2)
    {
      v13 = *(v1 + 24);
      if (v13)
      {
        v14 = *(v13 + 8) == 5;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        return 1;
      }

      v16 = *(v13 + 16);
      if (!v16)
      {
        return 1;
      }

      v19 = *(v1 + 16);
      LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v15 = LargestKnownDivisor / v16;
      if (LargestKnownDivisor % v16)
      {
        return 1;
      }
    }

    else
    {
      if ((v2 - 6) < 2)
      {
        return 1;
      }

      v15 = *(v1 + 16);
    }

    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    if (v2)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v19 = *(v1 + 16);
      v12 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      return mlir::AffineExpr::getLargestKnownDivisor(&v18) * v12;
    }

    else
    {
      v19 = *(v1 + 16);
      v4 = mlir::AffineExpr::getLargestKnownDivisor(&v19);
      v18 = *(v1 + 24);
      result = mlir::AffineExpr::getLargestKnownDivisor(&v18);
      v6 = result;
      v7 = v4 > result;
      if (v4 < result)
      {
        result = v4;
      }

      if (v7)
      {
        v6 = v4;
      }

      if (result)
      {
        v8 = v6 % result;
        if (v8)
        {
          v9 = v8 >> __clz(__rbit64(v8));
          v10 = result;
          do
          {
            v11 = v10 >> __clz(__rbit64(v10));
            v10 = v11 - v9;
            if (v9 > v11)
            {
              v10 = v9 - v11;
            }

            if (v9 >= v11)
            {
              v9 = v11;
            }
          }

          while (v10);
          return v9 << __clz(__rbit64(v8 | result));
        }
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

BOOL mlir::AffineExpr::operator==(mlir::MLIRContext ***a1, uint64_t a2)
{
  v5 = **a1;
  v6 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  return *a1 == mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
}

uint64_t mlir::getAffineConstantExpr(mlir *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v5 = a2;
  v6 = this;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(a2);
  return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4)
{
  {
    v7 = a3;
    v8 = a1;
    v5 = a2;
    v6 = a4;
    mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>();
    a2 = v5;
    a4 = v6;
    a3 = v7;
    a1 = v8;
  }

  v12[0] = a2;
  v12[1] = a3;
  v11 = *a4;
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineConstantExprStorage,void>::resolveTypeID(void)::id, 37 * v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::AffineExpr::operator+(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator+(a1, v4);
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, void *a6)
{
  v6 = a2;
  {
    v18 = a5;
    v19 = a1;
    v15 = a4;
    v16 = a6;
    v17 = a3;
    mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>();
    v6 = a2;
    a4 = v15;
    a3 = v17;
    a5 = v18;
    a6 = v16;
    a1 = v19;
  }

  v25[0] = v6;
  v25[1] = a3;
  v22 = *a4;
  v7 = *a6;
  v23 = *a5;
  v24 = v7;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v23 - 0xAE502812AA7333) ^ HIDWORD(v23));
  v9 = HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v11 = (1400339394 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) | (0xEB382D6900000000 * ((((0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (HIDWORD(v23) ^ (v8 >> 47) ^ v8))));
  v12 = 0xBF58476D1CE4E5B9 * (((0xBF58476D1CE4E5B9 * v11) >> 31) ^ (484763065 * v11) | ((37 * v22) << 32));
  v21 = &v22;
  v20[0] = &v22;
  v20[1] = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineBinaryOpExprStorage,void>::resolveTypeID(void)::id, (v12 >> 31) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
}

uint64_t mlir::AffineExpr::operator*(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator*(a1, v4);
}

uint64_t mlir::AffineExpr::operator-(mlir::MLIRContext ***a1)
{
  v5 = **a1;
  v6 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v5);
  v3 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v5, &v6);
  return mlir::AffineExpr::operator*(a1, v3);
}

uint64_t mlir::AffineExpr::operator-(uint64_t *a1, mlir::MLIRContext **a2)
{
  v7 = a2;
  v8 = *a2;
  v9 = -1;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v8);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v8, &v9);
  v5 = mlir::AffineExpr::operator*(&v7, v4);
  return mlir::AffineExpr::operator+(a1, v5);
}

uint64_t mlir::AffineExpr::floorDiv(mlir::MLIRContext ***this, uint64_t a2)
{
  v6 = **this;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::floorDiv(this, v4);
}

uint64_t mlir::AffineExpr::operator%(mlir::MLIRContext ***a1, uint64_t a2)
{
  v6 = **a1;
  v7 = a2;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v4 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v6, &v7);
  return mlir::AffineExpr::operator%(a1, v4);
}

mlir::MLIRContext **mlir::AffineExpr::compose(mlir::MLIRContext ***a1, uint64_t a2)
{
  v15[8] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Results = mlir::AffineMap::getResults(&v12);
  v5 = v4;
  v13 = v15;
  v14 = 0x800000000;
  v6 = (8 * v4) >> 3;
  if (v6 < 9)
  {
    v7 = 0;
    v8 = v15;
    v9 = 8 * v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v6, 8);
  v7 = v14;
  v8 = v13;
  v9 = 8 * v5;
  if (v5)
  {
LABEL_5:
    memcpy(&v8[v7], Results, v9);
    v7 = v14;
    v8 = v13;
  }

LABEL_6:
  LODWORD(v14) = v7 + (v9 >> 3);
  result = mlir::AffineExpr::replaceDimsAndSymbols(a1, v8, v14, 0, 0);
  if (v13 != v15)
  {
    v11 = result;
    free(v13);
    return v11;
  }

  return result;
}

mlir::MLIRContext **mlir::getAffineExprFromFlatForm(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t *a5, int a6, mlir::MLIRContext *this)
{
  v34 = this;
  v35 = 0;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(this);
  result = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
  v33 = result;
  v14 = a4 + a3;
  if (a4 + a3)
  {
    v15 = 0;
    v16 = a3;
    v17 = -a3;
    do
    {
      if (*(a1 + 8 * v15))
      {
        if (v15 >= v16)
        {
          LODWORD(v34) = v17 + v15;
          v35 = this;
          v18 = mlir::MLIRContext::getAffineUniquer(this);
          LODWORD(v32) = 7;
        }

        else
        {
          LODWORD(v34) = v15;
          v35 = this;
          v18 = mlir::MLIRContext::getAffineUniquer(this);
          LODWORD(v32) = 6;
        }

        v32 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v18, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v35, &v32, &v34);
        v19 = *(a1 + 8 * v15);
        v34 = *v32;
        v35 = v19;
        v20 = mlir::MLIRContext::getAffineUniquer(v34);
        v21 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v20, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
        v22 = mlir::AffineExpr::operator*(&v32, v21);
        result = mlir::AffineExpr::operator+(&v33, v22);
        v33 = result;
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v23 = (a2 - 1);
  if (v14 < v23)
  {
    do
    {
      v24 = *(a1 + 8 * v14);
      if (v24)
      {
        v34 = **a5;
        v35 = v24;
        v25 = mlir::MLIRContext::getAffineUniquer(v34);
        v26 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v25, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
        v27 = mlir::AffineExpr::operator*(a5, v26);
        result = mlir::AffineExpr::operator+(&v33, v27);
        v33 = result;
      }

      ++v14;
      ++a5;
    }

    while (v14 < v23);
  }

  v28 = *(a1 + 8 * a2 - 8);
  if (v28)
  {
    v34 = *result;
    v35 = v28;
    v29 = mlir::MLIRContext::getAffineUniquer(v34);
    v30 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v29, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v34, &v35);
    return mlir::AffineExpr::operator+(&v33, v30);
  }

  return result;
}

void std::vector<llvm::SmallVector<long long,8u>>::reserve(void ***a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }
}

mlir::SimpleAffineExprFlattener *mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this, int a2, int a3)
{
  *this = &unk_1F19FC1B8;
  *(this + 1) = 0u;
  *(this + 1) = 0;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0x400000000;
  std::vector<llvm::SmallVector<long long,8u>>::reserve(this + 1, 8uLL);
  return this;
}

uint64_t mlir::SimpleAffineExprFlattener::visitMulExpr(uint64_t a1, uint64_t a2)
{
  v52[8] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v50 = v52;
  *v51 = 0x800000000;
  v5 = *(v4 - 72);
  if (&v50 != (v4 - 80) && v5 != 0)
  {
    if (v5 < 9)
    {
      v8 = v52;
      v7 = *(v4 - 72);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, *(v4 - 72), 8);
      v7 = *(v4 - 72);
      if (!v7)
      {
LABEL_10:
        v51[0] = v5;
        v4 = *(a1 + 16);
        goto LABEL_11;
      }

      v8 = v50;
    }

    memcpy(v8, *(v4 - 80), 8 * v7);
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(v4 - 80);
  if (v9 != (v4 - 64))
  {
    free(v9);
  }

  *(a1 + 16) = v4 - 80;
  if (*(*(a2 + 24) + 8) != 5)
  {
    v47 = v49;
    v48 = 0x800000000;
    v21 = *(v4 - 152);
    if (&v47 == (v4 - 160) || !v21)
    {
LABEL_28:
      v24 = *a2;
      AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*(v4 - 160), v21, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v24);
      v25 = mlir::getAffineExprFromFlatForm(v50, v51[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v24);
      v26 = v47;
      v27 = v48;
      v28 = v50;
      v29 = v51[0];
      v30 = mlir::AffineExpr::operator*(&AffineExprFromFlatForm, v25);
      v31 = *(v4 - 152);
      v32 = *(a1 + 48);
      v33 = *(a1 + 56);
      if (v33)
      {
        v34 = 8 * v33;
        v35 = *(a1 + 48);
        while (*v35 != v30)
        {
          ++v35;
          v34 -= 8;
          if (!v34)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v35 = *(a1 + 48);
      }

      if (v35 == (v32 + 8 * v33) || (v36 = (v35 - v32) >> 3, v36 == -1))
      {
LABEL_40:
        if ((*(*a1 + 24))(a1, v26, v27, v28, v29, v30))
        {
          v41 = *(v4 - 160);
          v42 = *(v4 - 152);
          if (v42)
          {
            bzero(*(v4 - 160), 8 * v42);
          }

          v43 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
          v39 = 1;
          *(v41 + 8 * v43) = 1;
          v40 = v47;
          if (v47 == v49)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v39 = 0;
          v40 = v47;
          if (v47 == v49)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v37 = *(v4 - 160);
        if (v31)
        {
          bzero(*(v4 - 160), 8 * v31);
        }

        v38 = *(a1 + 32) + v36 + *(a1 + 36);
        v39 = 1;
        *(v37 + 8 * v38) = 1;
        v40 = v47;
        if (v47 == v49)
        {
LABEL_47:
          v10 = v50;
          if (v50 == v52)
          {
            return v39;
          }

          goto LABEL_53;
        }
      }

      free(v40);
      goto LABEL_47;
    }

    if (v21 < 9)
    {
      v23 = v49;
      v22 = *(v4 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, *(v4 - 152), 8);
      v22 = *(v4 - 152);
      if (!v22)
      {
LABEL_27:
        LODWORD(v48) = v21;
        v21 = v22;
        goto LABEL_28;
      }

      v23 = v47;
    }

    memcpy(v23, *(v4 - 160), 8 * v22);
    v22 = *(v4 - 152);
    goto LABEL_27;
  }

  v10 = v50;
  v11 = *(v4 - 152);
  if (!v11)
  {
    goto LABEL_52;
  }

  v12 = *(v50 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
  v13 = *(v4 - 160);
  v14 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v14)
  {
    v17 = *(v4 - 160);
LABEL_50:
    v44 = (v13 + 8 * v11);
    do
    {
      *v17++ *= v12;
    }

    while (v17 != v44);
    goto LABEL_52;
  }

  v15 = v14 + 1;
  v16 = (v14 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v17 = (v13 + 8 * v16);
  v18 = (v13 + 8);
  v19 = v16;
  do
  {
    v20 = *v18 * v12;
    *(v18 - 1) *= v12;
    *v18 = v20;
    v18 += 2;
    v19 -= 2;
  }

  while (v19);
  if (v15 != v16)
  {
    goto LABEL_50;
  }

LABEL_52:
  v39 = 1;
  if (v10 != v52)
  {
LABEL_53:
    free(v10);
  }

  return v39;
}

uint64_t mlir::SimpleAffineExprFlattener::visitModExpr(uint64_t a1, uint64_t a2)
{
  v75[8] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v73 = v75;
  *v74 = 0x800000000;
  v5 = *(v4 - 72);
  if (&v73 != (v4 - 80) && v5 != 0)
  {
    if (v5 < 9)
    {
      v8 = v75;
      v7 = *(v4 - 72);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, *(v4 - 72), 8);
      v7 = *(v4 - 72);
      if (!v7)
      {
LABEL_10:
        v74[0] = v5;
        v4 = *(a1 + 16);
        goto LABEL_11;
      }

      v8 = v73;
    }

    memcpy(v8, *(v4 - 80), 8 * v7);
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(v4 - 80);
  if (v9 != (v4 - 64))
  {
    free(v9);
  }

  *(a1 + 16) = v4 - 80;
  v10 = (v4 - 160);
  v11 = *a2;
  if (*(*(a2 + 24) + 8) == 5)
  {
    v12 = *(v73 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
    if (v12 < 1)
    {
      v20 = 0;
      v21 = v73;
      if (v73 == v75)
      {
        return v20;
      }

      goto LABEL_50;
    }

    v13 = *(v4 - 152);
    if (!v13)
    {
      goto LABEL_105;
    }

    v14 = *v10;
    v15 = *(v4 - 152);
    while (1)
    {
      v16 = *v14++;
      if (v16 % v12)
      {
        break;
      }

      if (!--v15)
      {
        goto LABEL_58;
      }
    }

    if (!v15)
    {
LABEL_58:
      bzero(*v10, 8 * v13);
      goto LABEL_105;
    }

    v37 = 0;
    v70 = v72;
    v71 = 0x800000000;
    v38 = *(v4 - 152);
    if (&v70 == v10 || !v38)
    {
LABEL_62:
      if (v38)
      {
        v41 = *v10;
        v42 = v12;
        do
        {
          if ((*v41 & 0x8000000000000000) == 0)
          {
            v43 = *v41;
          }

          else
          {
            v43 = -*v41;
          }

          if (v42 <= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v42;
          }

          if (v42 >= v43)
          {
            v42 = v43;
          }

          if (v42)
          {
            v45 = v44 % v42;
            if (v45)
            {
              v46 = v45 >> __clz(__rbit64(v45));
              v47 = v42;
              do
              {
                v48 = v47 >> __clz(__rbit64(v47));
                v47 = v48 - v46;
                if (v46 > v48)
                {
                  v47 = v46 - v48;
                }

                if (v46 >= v48)
                {
                  v46 = v48;
                }
              }

              while (v47);
              v42 = v46 << __clz(__rbit64(v45 | v42));
            }
          }

          else
          {
            v42 = v44;
          }

          ++v41;
        }

        while (v41 != (*v10 + 8 * v38));
      }

      else
      {
        v42 = v12;
      }

      v49 = v70;
      v50 = v37;
      if (v42 != 1 && v37 != 0)
      {
        v52 = v70;
        if (((v50 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_109;
        }

        v53 = ((v50 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v52 = (v70 + 8 * (v53 & 0x3FFFFFFFFFFFFFFELL));
        v54 = (v70 + 8);
        v55 = v53 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v56 = *v54 / v42;
          *(v54 - 1) /= v42;
          *v54 = v56;
          v54 += 2;
          v55 -= 2;
        }

        while (v55);
        if (v53 != (v53 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_109:
          do
          {
            *v52++ /= v42;
          }

          while (v52 != &v49[8 * v50]);
        }
      }

      v57 = v12 / v42;
      AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(v49, v50, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v11);
      v68 = v11;
      v69 = v57;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v11);
      v59 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v68, &v69);
      v60 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, v59);
      v61 = *(a1 + 48);
      v62 = *(a1 + 56);
      if (v62)
      {
        v63 = 8 * v62;
        v64 = *(a1 + 48);
        while (*v64 != v60)
        {
          ++v64;
          v63 -= 8;
          if (!v63)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v64 = *(a1 + 48);
      }

      if (v64 == (v61 + 8 * v62) || (v65 = (v64 - v61) >> 3, v65 == -1))
      {
LABEL_102:
        (*(*a1 + 16))(a1, v70, v71, v57, v60);
        v66 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
      }

      else
      {
        v66 = *(a1 + 32) + v65 + *(a1 + 36);
      }

      *(*v10 + v66) = -v12;
      if (v70 != v72)
      {
        free(v70);
      }

LABEL_105:
      v20 = 1;
      v21 = v73;
      if (v73 == v75)
      {
        return v20;
      }

      goto LABEL_50;
    }

    if (v38 < 9)
    {
      v40 = v72;
      v39 = *(v4 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, *(v4 - 152), 8);
      v39 = *(v4 - 152);
      if (!v39)
      {
LABEL_61:
        LODWORD(v71) = v38;
        v37 = v38;
        v38 = *(v4 - 152);
        goto LABEL_62;
      }

      v40 = v70;
    }

    memcpy(v40, *v10, 8 * v39);
    goto LABEL_61;
  }

  v70 = v72;
  v71 = 0x800000000;
  v17 = *(v4 - 152);
  if (&v70 != v10 && v17)
  {
    if (v17 < 9)
    {
      v19 = v72;
      v18 = *(v4 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, *(v4 - 152), 8);
      v18 = *(v4 - 152);
      if (!v18)
      {
LABEL_29:
        LODWORD(v71) = v17;
        v17 = v18;
        goto LABEL_30;
      }

      v19 = v70;
    }

    memcpy(v19, *(v4 - 160), 8 * v18);
    v18 = *(v4 - 152);
    goto LABEL_29;
  }

LABEL_30:
  v69 = mlir::getAffineExprFromFlatForm(*(v4 - 160), v17, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v11);
  v22 = mlir::getAffineExprFromFlatForm(v73, v74[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v11);
  v23 = mlir::AffineExpr::operator%(&v69, v22);
  v24 = *(v4 - 152);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  if (v26)
  {
    v27 = 8 * v26;
    v28 = *(a1 + 48);
    while (*v28 != v23)
    {
      ++v28;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    v28 = *(a1 + 48);
  }

  if (v28 == (v25 + 8 * v26) || (v29 = (v28 - v25) >> 3, v29 == -1))
  {
LABEL_42:
    if ((*(*a1 + 24))(a1, v70, v71, v73, v74[0], v23))
    {
      v33 = *(v4 - 160);
      v34 = *(v4 - 152);
      if (v34)
      {
        bzero(*(v4 - 160), 8 * v34);
      }

      v35 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
      v20 = 1;
      *(v33 + 8 * v35) = 1;
      v32 = v70;
      if (v70 == v72)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v20 = 0;
      v32 = v70;
      if (v70 == v72)
      {
        goto LABEL_49;
      }
    }

LABEL_48:
    free(v32);
    goto LABEL_49;
  }

  v30 = *v10;
  if (v24)
  {
    bzero(*v10, 8 * v24);
  }

  v31 = *(a1 + 32) + v29 + *(a1 + 36);
  v20 = 1;
  v30[v31] = 1;
  v32 = v70;
  if (v70 != v72)
  {
    goto LABEL_48;
  }

LABEL_49:
  v21 = v73;
  if (v73 != v75)
  {
LABEL_50:
    free(v21);
  }

  return v20;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDivExpr(_DWORD *a1, uint64_t a2, int a3)
{
  v83[8] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a1 + 2);
  v81 = v83;
  *v82 = 0x800000000;
  v8 = *(v7 - 72);
  if (&v81 != (v7 - 80) && v8 != 0)
  {
    if (v8 < 9)
    {
      v11 = v83;
      v10 = *(v7 - 72);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, *(v7 - 72), 8);
      v10 = *(v7 - 72);
      if (!v10)
      {
LABEL_10:
        v82[0] = v8;
        v7 = *(a1 + 2);
        goto LABEL_11;
      }

      v11 = v81;
    }

    memcpy(v11, *(v7 - 80), 8 * v10);
    goto LABEL_10;
  }

LABEL_11:
  v12 = *(v7 - 80);
  if (v12 != (v7 - 64))
  {
    free(v12);
  }

  *(a1 + 2) = v7 - 80;
  v13 = (v7 - 160);
  if (*(*(a2 + 24) + 8) != 5)
  {
    v78 = v80;
    v79 = 0x800000000;
    v28 = *(v7 - 152);
    if (&v78 == v13 || !v28)
    {
      goto LABEL_55;
    }

    if (v28 < 9)
    {
      v30 = v80;
      v29 = *(v7 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, *(v7 - 152), 8);
      v29 = *(v7 - 152);
      if (!v29)
      {
LABEL_54:
        LODWORD(v79) = v28;
        v28 = v29;
LABEL_55:
        AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*v13, v28, a1[8], a1[9], *(a1 + 6), a1[14], v6);
        v39 = mlir::getAffineExprFromFlatForm(v81, v82[0], a1[8], a1[9], *(a1 + 6), a1[14], v6);
        if (a3)
        {
          v40 = mlir::AffineExpr::ceilDiv(&AffineExprFromFlatForm, v39);
        }

        else
        {
          v40 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, v39);
        }

        v41 = *(v7 - 152);
        v42 = *(a1 + 6);
        v43 = a1[14];
        if (v43)
        {
          v44 = 8 * v43;
          v45 = *(a1 + 6);
          while (*v45 != v40)
          {
            ++v45;
            v44 -= 8;
            if (!v44)
            {
              goto LABEL_73;
            }
          }
        }

        else
        {
          v45 = *(a1 + 6);
        }

        if (v45 != (v42 + 8 * v43))
        {
          v46 = (v45 - v42) >> 3;
          if (v46 != -1)
          {
            v47 = *v13;
            if (v41)
            {
              bzero(*v13, 8 * v41);
            }

            v48 = a1[8] + v46 + a1[9];
            v37 = 1;
            v47[v48] = 1;
            v49 = v78;
            if (v78 != v80)
            {
              goto LABEL_69;
            }

LABEL_70:
            v38 = v81;
            if (v81 == v83)
            {
              return v37;
            }

            goto LABEL_71;
          }
        }

LABEL_73:
        if ((*(*a1 + 24))(a1, v78, v79, v81, v82[0], v40))
        {
          v51 = *(v7 - 160);
          v52 = *(v7 - 152);
          if (v52)
          {
            bzero(*(v7 - 160), 8 * v52);
          }

          v53 = a1[8] + a1[9] + a1[10] - 1;
          v37 = 1;
          *(v51 + 8 * v53) = 1;
          v49 = v78;
          if (v78 == v80)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v37 = 0;
          v49 = v78;
          if (v78 == v80)
          {
            goto LABEL_70;
          }
        }

LABEL_69:
        free(v49);
        goto LABEL_70;
      }

      v30 = v78;
    }

    memcpy(v30, *(v7 - 160), 8 * v29);
    v29 = *(v7 - 152);
    goto LABEL_54;
  }

  v14 = a1[8];
  v15 = a1[9];
  v16 = *(v81 + v15 + v14 + a1[10]);
  if (v16 < 1)
  {
    v37 = 0;
    v38 = v81;
    if (v81 == v83)
    {
      return v37;
    }

    goto LABEL_71;
  }

  v17 = *(v7 - 160);
  v18 = *(v7 - 152);
  if (v18)
  {
    v19 = (v17 + 8 * v18);
    v20 = *(v81 + v15 + v14 + a1[10]);
    v21 = *(v7 - 160);
    do
    {
      if ((*v21 & 0x8000000000000000) == 0)
      {
        v22 = *v21;
      }

      else
      {
        v22 = -*v21;
      }

      if (v20 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      if (v20 >= v22)
      {
        v20 = v22;
      }

      if (v20)
      {
        v24 = v23 % v20;
        if (v24)
        {
          v25 = v24 >> __clz(__rbit64(v24));
          v26 = v20;
          do
          {
            v27 = v26 >> __clz(__rbit64(v26));
            v26 = v27 - v25;
            if (v25 > v27)
            {
              v26 = v25 - v27;
            }

            if (v25 >= v27)
            {
              v25 = v27;
            }
          }

          while (v26);
          v20 = v25 << __clz(__rbit64(v24 | v20));
        }
      }

      else
      {
        v20 = v23;
      }

      ++v21;
    }

    while (v21 != v19);
    if (v20 != 1)
    {
      v31 = *(v7 - 160);
      if (((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_123;
      }

      v32 = ((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v31 = (v17 + 8 * (v32 & 0x3FFFFFFFFFFFFFFELL));
      v33 = (v17 + 8);
      v34 = v32 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v35 = *v33 / v20;
        *(v33 - 1) /= v20;
        *v33 = v35;
        v33 += 2;
        v34 -= 2;
      }

      while (v34);
      if (v32 != (v32 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_123:
        do
        {
          *v31++ /= v20;
        }

        while (v31 != v19);
      }
    }

    v36 = v16 / v20;
    if (v16 / v20 == 1)
    {
LABEL_48:
      v37 = 1;
      v38 = v81;
      if (v81 == v83)
      {
        return v37;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v36 = v16 / v16;
    if (v16 / v16 == 1)
    {
      goto LABEL_48;
    }
  }

  v76 = mlir::getAffineExprFromFlatForm(v17, v18, v14, v15, *(a1 + 6), a1[14], v6);
  AffineExprFromFlatForm = v6;
  v78 = v36;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v55 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &AffineExprFromFlatForm, &v78);
  if (a3)
  {
    v56 = mlir::AffineExpr::ceilDiv(&v76, v55);
    v57 = *(a1 + 6);
    v58 = a1[14];
    if (v58)
    {
      goto LABEL_83;
    }

LABEL_88:
    v60 = v57;
    goto LABEL_89;
  }

  v56 = mlir::AffineExpr::floorDiv(&v76, v55);
  v57 = *(a1 + 6);
  v58 = a1[14];
  if (!v58)
  {
    goto LABEL_88;
  }

LABEL_83:
  v59 = 8 * v58;
  v60 = v57;
  while (*v60 != v56)
  {
    v60 += 8;
    v59 -= 8;
    if (!v59)
    {
      goto LABEL_95;
    }
  }

LABEL_89:
  if (v60 == &v57[8 * v58] || (v61 = (v60 - v57) >> 3, v61 == -1))
  {
LABEL_95:
    v65 = 0;
    if (a3)
    {
      v78 = v80;
      v79 = 0x800000000;
      if (&v78 == v13 || (v66 = *(v7 - 152), !v66))
      {
        v72 = v80;
LABEL_111:
        *&v72[8 * v65 - 8] = v36 + *&v72[8 * v65 - 8] - 1;
        goto LABEL_115;
      }

      if (v66 < 9)
      {
        v68 = v80;
        v67 = *(v7 - 152);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, *(v7 - 152), 8);
        v67 = *(v7 - 152);
        if (!v67)
        {
LABEL_110:
          LODWORD(v79) = v66;
          v72 = v78;
          v65 = v66;
          goto LABEL_111;
        }

        v68 = v78;
      }

      memcpy(v68, *v13, 8 * v67);
      goto LABEL_110;
    }

    v78 = v80;
    v79 = 0x800000000;
    if (&v78 == v13 || (v69 = *(v7 - 152), !v69))
    {
      v72 = v80;
      goto LABEL_115;
    }

    if (v69 < 9)
    {
      v71 = v80;
      v70 = *(v7 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, *(v7 - 152), 8);
      v70 = *(v7 - 152);
      if (!v70)
      {
LABEL_114:
        LODWORD(v79) = v69;
        v72 = v78;
        v65 = v69;
LABEL_115:
        (*(*a1 + 16))(a1, v72, v65, v36, v56);
        if (v78 != v80)
        {
          free(v78);
        }

        v73 = *(v7 - 160);
        v74 = *(v7 - 152);
        if (v74)
        {
          bzero(*(v7 - 160), 8 * v74);
        }

        v75 = a1[8] + a1[9] + a1[10] - 1;
        v37 = 1;
        *(v73 + 8 * v75) = 1;
        v38 = v81;
        if (v81 == v83)
        {
          return v37;
        }

LABEL_71:
        free(v38);
        return v37;
      }

      v71 = v78;
    }

    memcpy(v71, *v13, 8 * v70);
    goto LABEL_114;
  }

  v62 = *(v7 - 160);
  v63 = *(v7 - 152);
  if (v63)
  {
    bzero(*(v7 - 160), 8 * v63);
  }

  v64 = a1[8] + v61 + a1[9];
  v37 = 1;
  *(v62 + 8 * v64) = 1;
  v38 = v81;
  if (v81 != v83)
  {
    goto LABEL_71;
  }

  return v37;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDimExpr(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v17;
  v16 = 32;
  if (v4 < 0x21)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = 8 * v4;
    v5 = v17;
  }

  else
  {
    v15 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v5 = __src;
    v6 = 8 * v4;
  }

  bzero(v5, v6);
LABEL_6:
  v15 = v4;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v10 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &__src);
    *(a1 + 16) = v10;
    v11 = __src;
    if (__src == v17)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (v7 != &__src)
  {
    v8 = v15;
    if (v15)
    {
      if (__src == v17)
      {
        v12 = v15;
        if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v15, 8), (v12 = v15) != 0))
        {
          memcpy(*v7, __src, 8 * v12);
        }

        *(v7 + 8) = v8;
      }

      else
      {
        *v7 = __src;
        v9 = v16;
        *(v7 + 8) = v8;
        *(v7 + 12) = v9;
        __src = v17;
        v16 = 0;
      }

      v15 = 0;
    }
  }

  v10 = (v7 + 80);
  *(a1 + 16) = v7 + 80;
  v11 = __src;
  if (__src != v17)
  {
LABEL_19:
    free(v11);
    v10 = *(a1 + 16);
  }

LABEL_20:
  *(*(v10 - 10) + *(a2 + 16)) = 1;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitSymbolExpr(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v17;
  v16 = 32;
  if (v4 < 0x21)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = 8 * v4;
    v5 = v17;
  }

  else
  {
    v15 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v5 = __src;
    v6 = 8 * v4;
  }

  bzero(v5, v6);
LABEL_6:
  v15 = v4;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v10 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &__src);
    *(a1 + 16) = v10;
    v11 = __src;
    if (__src == v17)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (v7 != &__src)
  {
    v8 = v15;
    if (v15)
    {
      if (__src == v17)
      {
        v12 = v15;
        if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v15, 8), (v12 = v15) != 0))
        {
          memcpy(*v7, __src, 8 * v12);
        }

        *(v7 + 8) = v8;
      }

      else
      {
        *v7 = __src;
        v9 = v16;
        *(v7 + 8) = v8;
        *(v7 + 12) = v9;
        __src = v17;
        v16 = 0;
      }

      v15 = 0;
    }
  }

  v10 = (v7 + 80);
  *(a1 + 16) = v7 + 80;
  v11 = __src;
  if (__src != v17)
  {
LABEL_19:
    free(v11);
    v10 = *(a1 + 16);
  }

LABEL_20:
  *(*(v10 - 10) + (*(a2 + 16) + *(a1 + 32))) = 1;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitConstantExpr(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v17;
  v16 = 32;
  if (v4 < 0x21)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = 8 * v4;
    v5 = v17;
  }

  else
  {
    v15 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v5 = __src;
    v6 = 8 * v4;
  }

  bzero(v5, v6);
LABEL_6:
  v15 = v4;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v10 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>((a1 + 8), &__src);
    *(a1 + 16) = v10;
    v11 = __src;
    if (__src == v17)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (v7 != &__src)
  {
    v8 = v15;
    if (v15)
    {
      if (__src == v17)
      {
        v12 = v15;
        if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v15, 8), (v12 = v15) != 0))
        {
          memcpy(*v7, __src, 8 * v12);
        }

        *(v7 + 8) = v8;
      }

      else
      {
        *v7 = __src;
        v9 = v16;
        *(v7 + 8) = v8;
        *(v7 + 12) = v9;
        __src = v17;
        v16 = 0;
      }

      v15 = 0;
    }
  }

  v10 = (v7 + 80);
  *(a1 + 16) = v7 + 80;
  v11 = __src;
  if (__src != v17)
  {
LABEL_19:
    free(v11);
    v10 = *(a1 + 16);
  }

LABEL_20:
  *(*(v10 - 10) + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40))) = *(a2 + 16);
  return 1;
}

void mlir::SimpleAffineExprFlattener::addLocalFloorDivId(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result[1];
  for (i = result[2]; v7 != i; v7 += 80)
  {
    while (1)
    {
      v10 = *v7;
      v11 = *v7 + 8 * (*(result + 9) + *(result + 8)) + 8 * *(result + 10);
      v12 = *(v7 + 8);
      if (*v7 + 8 * v12 == v11)
      {
        break;
      }

      if (v12 >= *(v7 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v12 + 1, 8);
        v13 = *v7;
        v12 = *(v7 + 8);
      }

      else
      {
        v13 = *v7;
      }

      v14 = (v13 + v11 - v10);
      v15 = (v13 + 8 * v12);
      *v15 = *(v15 - 1);
      if (v15 - 1 != v14)
      {
        memmove(v14 + 1, v14, (v15 - 1) - v14);
        LODWORD(v12) = *(v7 + 8);
      }

      *(v7 + 8) = v12 + 1;
      *v14 = 0;
      v7 += 80;
      if (v7 == i)
      {
        goto LABEL_2;
      }
    }

    if (v12 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v12 + 1, 8);
      v12 = *(v7 + 8);
      v10 = *v7;
    }

    *(v10 + 8 * v12) = 0;
    ++*(v7 + 8);
  }

LABEL_2:
  v9 = *(result + 14);
  if (v9 >= *(result + 15))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((result + 6), result + 8, v9 + 1, 8);
    LODWORD(v9) = *(result + 14);
  }

  *(result[6] + 8 * v9) = a5;
  ++*(result + 14);
  ++*(result + 10);
}

uint64_t mlir::SimpleAffineExprFlattener::addLocalIdSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  for (i = *(a1 + 16); v8 != i; v8 += 80)
  {
    while (1)
    {
      v12 = *v8;
      v13 = *v8 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40);
      v14 = *(v8 + 8);
      if (*v8 + 8 * v14 == v13)
      {
        break;
      }

      if (v14 >= *(v8 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v8 + 16), v14 + 1, 8);
        v15 = *v8;
        v14 = *(v8 + 8);
      }

      else
      {
        v15 = *v8;
      }

      v16 = (v15 + v13 - v12);
      v17 = (v15 + 8 * v14);
      *v17 = *(v17 - 1);
      if (v17 - 1 != v16)
      {
        memmove(v16 + 1, v16, (v17 - 1) - v16);
        LODWORD(v14) = *(v8 + 8);
      }

      *(v8 + 8) = v14 + 1;
      *v16 = 0;
      v8 += 80;
      if (v8 == i)
      {
        goto LABEL_2;
      }
    }

    if (v14 >= *(v8 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v8 + 16), v14 + 1, 8);
      v14 = *(v8 + 8);
      v12 = *v8;
    }

    *(v12 + 8 * v14) = 0;
    ++*(v8 + 8);
  }

LABEL_2:
  v10 = *(a1 + 56);
  if (v10 >= *(a1 + 60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, (a1 + 64), v10 + 1, 8);
    LODWORD(v10) = *(a1 + 56);
  }

  *(*(a1 + 48) + 8 * v10) = a6;
  ++*(a1 + 56);
  ++*(a1 + 40);
  return 1;
}

void mlir::simplifyAffineExpr(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  v13[14] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  if ((mlir::AffineExpr::isPureAffine(v6) & 1) == 0)
  {
    v6[0] = simplifySemiAffine(a1, a2, a3);
  }

  v6[18] = &unk_1F19FC1B8;
  v6[19] = 0;
  v7 = 0u;
  v8 = a2;
  v9 = a3;
  v10 = 0;
  v11 = v13;
  *v12 = 0x400000000;
  operator new();
}

mlir::MLIRContext **simplifySemiAffine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v6 = a1;
  if (((1 << v3) & 0x1C) != 0)
  {
    v10 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v11 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v40 = v42;
    v41 = 0x600000000;
    v35 = v10;
    getSummandExprs(v10, &v40);
    v12 = v41;
    if (v41)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = *(v40 + v13);
        if (v15)
        {
          v16 = *(v15 + 8) == 1;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          goto LABEL_7;
        }

        v17 = *(v15 + 16);
        v18 = *(v17 + 8);
        if (v17)
        {
          v19 = v18 == 5;
        }

        else
        {
          v19 = 0;
        }

        if (v19 && *(v17 + 16) == -1)
        {
          v17 = *(v15 + 24);
          if (*(v17 + 8) != 2)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v20 = *(v15 + 24);
          if (v20)
          {
            v21 = *(v20 + 8) == 5;
          }

          else
          {
            v21 = 0;
          }

          if (!v21 || *(v20 + 16) != -1 || v18 != 2)
          {
            goto LABEL_7;
          }
        }

        if (*(v17 + 24) == v11)
        {
          v38 = *v35;
          v39 = 0;
          AffineUniquer = mlir::MLIRContext::getAffineUniquer(v38);
          v23 = 0;
          v36 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v38, &v39);
          do
          {
            if (v13 != v23)
            {
              v36 = mlir::AffineExpr::operator+(&v36, *(v40 + v23));
            }

            ++v23;
          }

          while (v12 != v23);
          v37 = *(v17 + 16);
          v38 = *v37;
          v39 = -1;
          v24 = mlir::MLIRContext::getAffineUniquer(v38);
          v25 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v24, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v38, &v39);
          v26 = mlir::AffineExpr::operator*(&v37, v25);
          v36 = mlir::AffineExpr::operator+(&v36, v26);
          v27 = mlir::simplifyAffineExpr(v36, a2, a3);
          v28 = v27 && *(v27 + 2) == 5;
          if (v28 && !v27[2])
          {
            goto LABEL_41;
          }
        }

LABEL_7:
        v14 = ++v13 < v12;
      }

      while (v13 != v12);
    }

    v14 = 0;
LABEL_41:
    if (v40 != v42)
    {
      free(v40);
    }

    if (v14)
    {
LABEL_44:
      v39 = *v6;
      v40 = 0;
      v29 = mlir::MLIRContext::getAffineUniquer(v39);
      return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v29, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v39, &v40);
    }

    v30 = simplifySemiAffine(*(v6 + 24), a2, a3);
    if (v30 && *(v30 + 8) == 7)
    {
      v31 = *(v30 + 16);
      v32 = *(v6 + 8);
      if (isDivisibleBySymbol(*(v6 + 16), v31, v32))
      {
        if (v32 != 2)
        {
          return symbolicDivide(v35, v31, v32);
        }

        goto LABEL_44;
      }

      v40 = v35;
      if (v32 <= 2)
      {
        if (v32)
        {
          if (v32 == 1)
          {
            goto LABEL_61;
          }

          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::operator+(&v40, v11);
      }

      if (v32 != 3)
      {
        if (v32 != 4)
        {
          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::ceilDiv(&v40, v11);
      }
    }

    else
    {
      v33 = *(v6 + 8);
      v40 = v35;
      if (v33 <= 2)
      {
        if (v33)
        {
          if (v33 == 1)
          {
LABEL_61:
            v8 = v11;
            return mlir::AffineExpr::operator*(&v40, v8);
          }

          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::operator+(&v40, v11);
      }

      if (v33 != 3)
      {
        if (v33 != 4)
        {
          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::ceilDiv(&v40, v11);
      }
    }

    return mlir::AffineExpr::floorDiv(&v40, v11);
  }

  if (((1 << v3) & 0xE0) == 0)
  {
    v7 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v8 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v40 = v7;
    if (!v3)
    {
      return mlir::AffineExpr::operator+(&v40, v8);
    }

    return mlir::AffineExpr::operator*(&v40, v8);
  }

  return v6;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {

        return mlir::SimpleAffineExprFlattener::visitDimExpr(a1, a2);
      }

      else
      {

        return mlir::SimpleAffineExprFlattener::visitSymbolExpr(a1, a2);
      }
    }

    if (v2 != 4)
    {

      return mlir::SimpleAffineExprFlattener::visitConstantExpr(a1, a2);
    }

    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
    {
      return 0;
    }

    v18 = a1;
    v19 = a2;
    v20 = 1;

    return mlir::SimpleAffineExprFlattener::visitDivExpr(v18, v19, v20);
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
      {
        return 0;
      }

      return mlir::SimpleAffineExprFlattener::visitModExpr(a1, a2);
    }

    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
    {
      return 0;
    }

    v18 = a1;
    v19 = a2;
    v20 = 0;

    return mlir::SimpleAffineExprFlattener::visitDivExpr(v18, v19, v20);
  }

  if (!v2)
  {
    if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2))
    {
      v4 = a1;
      v5 = *(a1 + 16);
      v7 = v5 - 80;
      v6 = *(v5 - 80);
      v8 = *(v5 - 72);
      if (!v8)
      {
        goto LABEL_49;
      }

      v9 = *(v5 - 160);
      if (v8 > 5 && (v9 < v6 + 8 * v8 ? (v10 = v6 >= v9 + 8 * v8) : (v10 = 1), v10))
      {
        v11 = v8 & 0xFFFFFFFC;
        v12 = v6 + 1;
        v13 = (v9 + 16);
        v14 = v11;
        do
        {
          v15 = vaddq_s64(*v13, *v12);
          v13[-1] = vaddq_s64(v13[-1], v12[-1]);
          *v13 = v15;
          v12 += 2;
          v13 += 2;
          v14 -= 4;
        }

        while (v14);
        if (v11 == v8)
        {
LABEL_49:
          if (v6 != (v5 - 64))
          {
            free(v6);
            v4 = a1;
          }

          *(v4 + 16) = v7;
          return 1;
        }
      }

      else
      {
        v11 = 0;
      }

      v24 = v8 - v11;
      v25 = v11;
      v26 = (v9 + v25 * 8);
      v27 = &v6->i64[v25];
      do
      {
        v28 = *v27++;
        *v26++ += v28;
        --v24;
      }

      while (v24);
      goto LABEL_49;
    }

    return 0;
  }

  if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return mlir::SimpleAffineExprFlattener::visitMulExpr(a1, a2);
}

void mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this)
{
  *this = &unk_1F19FC1B8;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_1F19FC1B8;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }

  JUMPOUT(0x1AC55A070);
}

unint64_t mlir::getBoundForAffineExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  v9 = *(a1 + 8);
  if (v9 > 4)
  {
    goto LABEL_30;
  }

  if (v9 == 2)
  {
    v19 = *(a1 + 24);
    if (v19)
    {
      if (*(v19 + 8) == 5)
      {
        v20 = *(v19 + 16);
        if (v20 >= 1)
        {
          BoundForAffineExpr = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, 0);
          v29 = v28;
          v30 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
          if ((v31 & 1) != 0 && (v29 & 1) != 0 && (!BoundForAffineExpr ? (v32 = 0) : (BoundForAffineExpr ^ v20) < 0 ? (v32 = (BoundForAffineExpr + 1) / v20 - 1) : (v32 = BoundForAffineExpr / v20), !v30 ? (v34 = 0) : (v30 ^ v20) < 0 ? (v34 = (v30 + 1) / v20 - 1) : (v34 = v30 / v20), v32 == v34))
          {
            v35 = BoundForAffineExpr;
            if (a8)
            {
              v35 = v30;
            }

            v10 = (v20 & ((v35 % v20) >> 63)) + v35 % v20;
          }

          else if (a8)
          {
            v10 = v20 - 1;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_50;
        }
      }
    }

    goto LABEL_30;
  }

  if (v9 != 4)
  {
    if (v9 == 3)
    {
      LOBYTE(v10) = 0;
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = 0;
        if (*(v11 + 8) == 5)
        {
          if (*(v11 + 16) >= 1)
          {
            v13 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
            if (v14)
            {
              if (v13)
              {
                v15 = *(v11 + 16);
                if ((v15 ^ v13) < 0)
                {
                  v10 = (((v15 >> 63) | 1) + v13) / v15 - 1;
LABEL_50:
                  v12 = v10 & 0xFFFFFFFFFFFFFF00;
                  return v12 | v10;
                }

LABEL_35:
                v10 = v13 / v15;
                goto LABEL_50;
              }

              goto LABEL_34;
            }
          }

LABEL_32:
          LOBYTE(v10) = 0;
          v12 = 0;
          return v12 | v10;
        }

        return v12 | v10;
      }

LABEL_33:
      v12 = 0;
      return v12 | v10;
    }

LABEL_30:
    operator new();
  }

  LOBYTE(v10) = 0;
  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_33;
  }

  v12 = 0;
  if (*(v16 + 8) == 5)
  {
    if (*(v16 + 16) >= 1)
    {
      v13 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
      if (v17)
      {
        if (v13)
        {
          v15 = *(v16 + 16);
          if (((v15 ^ v13) & 0x8000000000000000) == 0)
          {
            v18 = v13 - 1;
            if (v15 < 0)
            {
              v18 = v13 + 1;
            }

            v10 = v18 / v15 + 1;
            goto LABEL_50;
          }

          goto LABEL_35;
        }

LABEL_34:
        v10 = 0;
        goto LABEL_50;
      }
    }

    goto LABEL_32;
  }

  return v12 | v10;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a4;
  v6 = *a5;
  v16 = v5 | (v6 << 32);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * v5) << 32));
  v15 = &v16;
  v14[0] = &v16;
  v14[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID(void)::id, (v7 >> 31) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    v11 = v2[1];
    *(Slow + 8) = *v2;
    *(Slow + 16) = v11;
    v7 = *(a1 + 8);
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  v6 = v2[1];
  *(Slow + 8) = *v2;
  *(Slow + 16) = v6;
  v7 = *(a1 + 8);
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineDimExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineDimExprStorage]";
  v6 = 84;
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

uint64_t isDivisibleBySymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7 <= 0)
      {
        result = isDivisibleBySymbol(*(a1 + 16), a2, a3);
        if (!result)
        {
          return result;
        }

        goto LABEL_3;
      }

      if (v7 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if (isDivisibleBySymbol(*(a1 + 16), a2, a3))
        {
          return 1;
        }

LABEL_3:
        a1 = *(a1 + 24);
      }

      else
      {
        a3 = 2;
        result = isDivisibleBySymbol(*(a1 + 16), a2, 2);
        if (!result)
        {
          return result;
        }

        a1 = *(a1 + 24);
      }
    }

    if (v7 > 5)
    {
      break;
    }

    if ((v7 - 3) >= 2)
    {
      return *(a1 + 16) == 0;
    }

    if (v7 != a3)
    {
      return 0;
    }

    a1 = *(a1 + 16);
  }

  return v7 != 6 && *(a1 + 16) == a2;
}

mlir::MLIRContext **symbolicDivide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 > 2)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        return 0;
      }

      v22 = *a1;
      v25 = 1;
    }

    else
    {
      if ((v3 - 3) < 2)
      {
        v5 = symbolicDivide(*(a1 + 16), a2, v3);
        v6 = *(a1 + 24);
        v25 = v5;
        if (v3 == 4)
        {
          return mlir::AffineExpr::ceilDiv(&v25, v6);
        }

        else
        {
          return mlir::AffineExpr::floorDiv(&v25, v6);
        }
      }

      if (*(a1 + 16))
      {
        return 0;
      }

      v22 = *a1;
      v25 = 0;
    }

    v24 = v22;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v22);
    return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v24, &v25);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v9 = *(a1 + 16);
      if (isDivisibleBySymbol(v9, a2, a3))
      {
        v25 = symbolicDivide(v9, a2, a3);
        v12 = *(a1 + 24);
      }

      else
      {
        v25 = v9;
        v12 = symbolicDivide(*(a1 + 24), a2, a3);
      }

      return mlir::AffineExpr::operator*(&v25, v12);
    }

    else
    {
      v20 = symbolicDivide(*(a1 + 16), a2, 2);
      v21 = symbolicDivide(*(a1 + 24), a2, *(a1 + 8));
      v25 = v20;
      return mlir::AffineExpr::operator%(&v25, v21);
    }
  }

  else
  {
    v16 = symbolicDivide(*(a1 + 16), a2, a3);
    v17 = symbolicDivide(*(a1 + 24), a2, a3);
    v25 = v16;
    return mlir::AffineExpr::operator+(&v25, v17);
  }
}

void getSummandExprs(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (result && !*(result + 8))
  {
    do
    {
      getSummandExprs(*(v3 + 16), a2);
      v3 = *(v3 + 24);
      if (v3)
      {
        v4 = *(v3 + 8) == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4);
  }

  v5 = *(a2 + 8);
  if (v5 >= *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v5 + 1, 8);
    LODWORD(v5) = *(a2 + 8);
  }

  *(*a2 + 8 * v5) = v3;
  ++*(a2 + 8);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>@<X0>(uint64_t *result@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = *result;
  v6 = a2[1];
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * *a2) << 32));
  v8 = v4 - 1;
  v9 = (v4 - 1) & ((v7 >> 31) ^ v7);
  v10 = *result + 16 * v9;
  v12 = *v10;
  v11 = *(v10 + 4);
  if (*a2 != *v10 || v6 != v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -1 || v11 != 0x7FFFFFFF)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 == 0x80000000;
      }

      if (v18 && v12 == -2)
      {
        v16 = v10;
      }

      v20 = v9 + v17++;
      v9 = v20 & v8;
      v10 = v5 + 16 * (v20 & v8);
      v12 = *v10;
      v11 = *(v10 + 4);
      if (*a2 == *v10 && v6 == v11)
      {
        goto LABEL_7;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

LABEL_9:
    v26 = v10;
    v15 = *(result + 2);
    if (4 * v15 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v15 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v15 + 1;
      if (*v10 != -1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(v22, v23, &v26);
    a2 = v23;
    a3 = v25;
    result = v22;
    a4 = v24;
    v10 = v26;
    ++*(v22 + 2);
    if (*v10 != -1)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*(v10 + 4) == 0x7FFFFFFF)
    {
LABEL_14:
      *v10 = *a2;
      *(v10 + 4) = a2[1];
      *(v10 + 8) = *a3;
      v5 = *result;
      v4 = *(result + 4);
      v14 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 3);
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
LABEL_15:
  *a4 = v10;
  *(a4 + 8) = v5 + 16 * v4;
  *(a4 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(uint64_t *a1, int *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * *a2) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -1 || v12 != 0x7FFFFFFF)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == 0x80000000;
        }

        if (v18 && v13 == -2)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v16 = 0x7FFFFFFFFFFFFFFFLL;
        v16 += 4;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[2 * v11];
    do
    {
      *v15 = 0x7FFFFFFFFFFFFFFFLL;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::moveFromOldBuckets(uint64_t result, int *a2, int *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v9 = 0x7FFFFFFFFFFFFFFFLL;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = 0x7FFFFFFFFFFFFFFFLL;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v22 = *a2;
    v23 = a2[1];
    if ((*a2 != -1 || v23 != 0x7FFFFFFF) && (v22 != -2 || v23 != 0x80000000))
    {
      v26 = 0xBF58476D1CE4E5B9 * ((37 * v23) | ((37 * v22) << 32));
      v27 = (v26 >> 31) ^ v26;
      v28 = *(result + 16) - 1;
      v17 = v28 & v27;
      v18 = *result + 16 * v17;
      v19 = *v18;
      v20 = *(v18 + 4);
      if (v22 != *v18 || v23 != v20)
      {
        v14 = 0;
        v16 = 1;
        while (v19 != -1 || v20 != 0x7FFFFFFF)
        {
          if (v14)
          {
            v12 = 0;
          }

          else
          {
            v12 = v20 == 0x80000000;
          }

          if (v12 && v19 == -2)
          {
            v14 = v18;
          }

          v15 = v17 + v16++;
          v17 = v15 & v28;
          v18 = *result + 16 * (v15 & v28);
          v19 = *v18;
          v20 = *(v18 + 4);
          if (v22 == *v18 && v23 == v20)
          {
            goto LABEL_29;
          }
        }

        if (v14)
        {
          v18 = v14;
        }
      }

LABEL_29:
      *v18 = v22;
      *(v18 + 4) = a2[1];
      *(v18 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 4;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < *(v10 + 1))
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = *(v10 + 1);
          *(v10 + 1) = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = *(v10 + 2);
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || *(v10 + 3) >= *(v10 + 1)))
      {
        v126 = *(a2 - 2);
        if (v126 >= v91 && (v91 < v126 || *(a2 - 1) >= *(v10 + 3)))
        {
          return result;
        }

        *(v10 + 2) = v126;
        *(a2 - 2) = v91;
        v9 = v10 + 12;
        v127 = *(v10 + 3);
        *(v10 + 3) = *(a2 - 1);
        *(a2 - 1) = v127;
        v128 = *(v10 + 2);
        v129 = *v10;
        if (v128 >= *v10 && (v129 < v128 || *(v10 + 3) >= *(v10 + 1)))
        {
          return result;
        }

        *v10 = v128;
        *(v10 + 2) = v129;
        v94 = (v10 + 4);
LABEL_234:
        v141 = *v94;
        *v94 = *v9;
        *v9 = v141;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = (v10 + 4);
        *(a2 - 2) = v92;
        goto LABEL_234;
      }

      if (v91 >= v93)
      {
        v138 = *(v10 + 3);
        if (*(a2 - 1) < v138)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v138 = *(v10 + 3);
      }

      v139 = *(v10 + 1);
      *(v10 + 3) = v139;
      *v10 = v91;
      *(v10 + 1) = v138;
      *(v10 + 2) = v92;
      v140 = *(a2 - 2);
      if (v140 >= v92 && (v92 < v140 || *(a2 - 1) >= v139))
      {
        return result;
      }

      *(v10 + 2) = v140;
      *(a2 - 2) = v92;
      v94 = (v10 + 12);
      goto LABEL_234;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      v106 = v10 + 8;
      v108 = v10 == a2 || v106 == a2;
      if ((a5 & 1) == 0)
      {
        if (!v108)
        {
          v130 = (v10 + 4);
          do
          {
            v131 = v8;
            v8 = v106;
            v132 = v131[2];
            v133 = *v131;
            if (v132 < *v131 || v133 >= v132 && v131[3] < v131[1])
            {
              v134 = *v8;
              v135 = *(v8 + 4);
              for (i = v130; ; i -= 2)
              {
                v137 = *i;
                i[1] = v133;
                i[2] = v137;
                v133 = *(i - 3);
                if (v133 <= v134 && (v133 < v134 || *(i - 2) <= v135))
                {
                  break;
                }
              }

              *(i - 1) = v134;
              *i = v135;
            }

            v106 = (v8 + 8);
            v130 += 2;
          }

          while ((v8 + 8) != a2);
        }

        return result;
      }

      if (v108)
      {
        return result;
      }

      v109 = 0;
      v110 = v10;
LABEL_177:
      v112 = v110;
      v110 = v106;
      v113 = *(v112 + 2);
      v114 = *v112;
      if (v113 >= *v112 && (v114 < v113 || *(v112 + 3) >= *(v112 + 1)))
      {
        goto LABEL_176;
      }

      v116 = *(v112 + 2);
      v115 = *(v112 + 3);
      v117 = *(v112 + 1);
      *(v112 + 2) = v114;
      *(v110 + 1) = v117;
      v111 = v10;
      if (v112 == v10)
      {
        goto LABEL_175;
      }

      v118 = v109;
      while (1)
      {
        v121 = *&v10[v118 - 8];
        if (v121 > v116)
        {
          v119 = *&v10[v118 - 4];
        }

        else
        {
          if (v121 < v116)
          {
            v111 = &v10[v118];
            goto LABEL_175;
          }

          v119 = *&v10[v118 - 4];
          if (v119 <= v115)
          {
            v111 = v112;
LABEL_175:
            *v111 = v116;
            *(v111 + 1) = v115;
LABEL_176:
            v106 = v110 + 8;
            v109 += 8;
            if (v110 + 8 != a2)
            {
              goto LABEL_177;
            }

            return result;
          }
        }

        v112 -= 8;
        v120 = &v10[v118];
        *v120 = v121;
        *(v120 + 1) = v119;
        v118 -= 8;
        if (!v118)
        {
          v111 = v10;
          goto LABEL_175;
        }
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v122 = (v13 - 2) >> 1;
        v123 = v122 + 1;
        v124 = (v8 + 8 * v122);
        do
        {
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v8, a3, v13, v124);
          v124 -= 2;
          --v123;
        }

        while (v123);
        do
        {
          result = std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned int,int> *>(v8, a2, a3, v13);
          a2 -= 8;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = &v10[8 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= *(v10 + 1)))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = (v14 + 1), v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= *(v10 + 1)))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = *(v10 + 2);
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= *(v10 + 3)))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = (v14 - 1), v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = *(v10 + 2), *v39 >= v48) && (v48 < v47 || *v45 >= *(v10 + 3)))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = *(v10 + 4);
              if (v57 >= v58 && (v58 < v56 || v55[1] >= *(v10 + 5)))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = (v55 + 1), v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = *(v10 + 4), *v55 >= v65) && (v65 < v64 || *v62 >= *(v10 + 5)))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 < v70)
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                      goto LABEL_92;
                    }

                    if (v70 < v75 || (v77 = v55[1], v76 = v15[1], v77 >= v76))
                    {
LABEL_104:
                      v82 = *v10;
                      *v10 = v70;
                      v23 = (v10 + 4);
                      *v15 = v82;
                      v30 = (v15 + 1);
                      goto LABEL_105;
                    }

LABEL_92:
                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
                    goto LABEL_104;
                  }

                  v72 = *v55;
                  if (*v55 >= v70)
                  {
                    if (v70 >= v72)
                    {
                      v79 = v15[1];
                      if (v55[1] < v79)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v79 = v15[1];
                    }

                    *v15 = v71;
                    v80 = v39[1];
                    v15[1] = v80;
                    *v39 = v70;
                    v39[1] = v79;
                    if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                    {
                      v70 = v71;
                      goto LABEL_104;
                    }

                    *v15 = v72;
                    *v55 = v71;
                    v74 = (v55 + 1);
                    v73 = (v15 + 1);
                  }

                  else
                  {
LABEL_87:
                    *v39 = v72;
                    v73 = (v39 + 1);
                    *v55 = v71;
                    v74 = (v55 + 1);
                  }

                  v78 = v74;
                  goto LABEL_103;
                }

                *(v10 + 4) = v64;
                *v55 = v65;
                v60 = (v10 + 20);
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 >= v56)
              {
                if (v56 >= v59)
                {
                  v66 = v55[1];
                  if (*(a2 - 5) < v66)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  v66 = v55[1];
                }

                v67 = *(v10 + 5);
                *(v10 + 4) = v56;
                *(v10 + 5) = v66;
                *v55 = v58;
                v55[1] = v67;
                v60 = (v55 + 1);
                v68 = *(a2 - 6);
                if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
                {
                  goto LABEL_85;
                }

                *v55 = v68;
                *(a2 - 6) = v58;
              }

              else
              {
LABEL_69:
                *(v10 + 4) = v59;
                *(a2 - 6) = v58;
                v60 = (v10 + 20);
              }

              v62 = a2 - 20;
              goto LABEL_84;
            }

            *(v10 + 2) = v47;
            *v39 = v48;
            v43 = (v10 + 12);
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 >= v40)
          {
            if (v40 >= v42)
            {
              v49 = *(v14 - 1);
              if (*(a2 - 3) < v49)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v49 = *(v14 - 1);
            }

            v52 = *(v10 + 3);
            *(v10 + 2) = v40;
            *(v10 + 3) = v49;
            *v39 = v41;
            *(v14 - 1) = v52;
            v43 = v14 - 1;
            v53 = *(a2 - 4);
            if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
            {
              goto LABEL_67;
            }

            *v39 = v53;
            *(a2 - 4) = v41;
          }

          else
          {
LABEL_47:
            *(v10 + 2) = v42;
            *(a2 - 4) = v41;
            v43 = (v10 + 12);
          }

          v45 = a2 - 12;
          goto LABEL_66;
        }

        *v10 = v27;
        v19 = (v10 + 4);
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 >= v16)
      {
        if (v16 >= v18)
        {
          v34 = v14[1];
          if (*(a2 - 1) < v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v34 = v14[1];
        }

        v36 = *(v10 + 1);
        *v10 = v16;
        *(v10 + 1) = v34;
        *v14 = v17;
        v14[1] = v36;
        v19 = (v14 + 1);
        v37 = *(a2 - 2);
        if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
        {
          goto LABEL_45;
        }

        *v14 = v37;
      }

      else
      {
LABEL_16:
        *v10 = v18;
        v19 = (v10 + 4);
      }

      *(a2 - 2) = v17;
      v25 = a2 - 4;
      goto LABEL_44;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && *(v10 + 1) < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = *(v10 + 1);
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = (v15 + 1);
      }

      else
      {
        v35 = *(v10 + 1);
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        *(v10 + 1) = v50;
        v23 = (v10 + 4);
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 4;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < *(v10 + 1))
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 4;
      v31 = *(v10 + 1);
      *(v10 + 1) = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = (v15 + 1);
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= *(v10 + 1)))
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
LABEL_146:
        a5 = 0;
        a4 = -v12;
        goto LABEL_3;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v10, v85);
    v10 = (v85 + 2);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = (v85 + 2);
      goto LABEL_146;
    }
  }

  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = *(v10 + 6);
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < *(v10 + 7))
  {
    *(v10 + 6) = v95;
    *(a2 - 2) = v96;
    v97 = *(v10 + 7);
    *(v10 + 7) = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = *(v10 + 6);
    v99 = *(v10 + 4);
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = *(v10 + 7);
      v100 = *(v10 + 5);
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = *(v10 + 5);
      v101 = *(v10 + 7);
    }

    *(v10 + 4) = v98;
    *(v10 + 5) = v101;
    *(v10 + 6) = v99;
    *(v10 + 7) = v100;
    v102 = *(v10 + 2);
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = *(v10 + 3);
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = *(v10 + 3);
    }

    *(v10 + 2) = v98;
    *(v10 + 3) = v101;
    *(v10 + 4) = v102;
    *(v10 + 5) = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = *(v10 + 1);
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = *(v10 + 1);
    }

    *v10 = v98;
    *(v10 + 1) = v101;
    *(v10 + 2) = v104;
    *(v10 + 3) = v105;
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(unsigned int *a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(a2 - 2);
        v4 = *a1;
        if (v3 < *a1 || v4 >= v3 && *(a2 - 1) < a1[1])
        {
          *a1 = v3;
          *(a2 - 2) = v4;
          v5 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v5;
          return 1;
        }

        return 1;
      }

      goto LABEL_20;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      v20 = a1[2];
      v21 = *a1;
      if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
      {
        v30 = *(a2 - 2);
        if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
        {
          return 1;
        }

        a1[2] = v30;
        *(a2 - 2) = v20;
        v24 = a1 + 3;
        v31 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v31;
        v32 = a1[2];
        v33 = *a1;
        if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
        {
          return 1;
        }

        *a1 = v32;
        a1[2] = v33;
        v23 = a1 + 1;
        goto LABEL_61;
      }

      v22 = *(a2 - 2);
      if (v22 < v20)
      {
LABEL_19:
        *a1 = v22;
        v23 = a1 + 1;
        *(a2 - 2) = v21;
        v24 = a2 - 1;
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v38 = a1[3];
        if (*(a2 - 1) < v38)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v38 = a1[3];
      }

      v40 = a1[1];
      a1[3] = v40;
      *a1 = v20;
      a1[1] = v38;
      a1[2] = v21;
      v41 = *(a2 - 2);
      if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
      {
        return 1;
      }

      a1[2] = v41;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      v23 = a1 + 3;
LABEL_61:
      v42 = *v23;
      *v23 = *v24;
      *v24 = v42;
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v9 = *(a2 - 2);
      v10 = a1[6];
      if (v9 >= v10 && (v10 < v9 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v9;
      *(a2 - 2) = v10;
      v11 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v11;
      v12 = a1[6];
      v13 = a1[4];
      if (v12 >= v13)
      {
        if (v13 < v12)
        {
          return 1;
        }

        v15 = a1[7];
        v14 = a1[5];
        if (v15 >= v14)
        {
          return 1;
        }
      }

      else
      {
        v14 = a1[5];
        v15 = a1[7];
      }

      a1[4] = v12;
      a1[5] = v15;
      a1[6] = v13;
      a1[7] = v14;
      v16 = a1[2];
      if (v12 >= v16)
      {
        if (v16 < v12)
        {
          return 1;
        }

        v17 = a1[3];
        if (v15 >= v17)
        {
          return 1;
        }
      }

      else
      {
        v17 = a1[3];
      }

      a1[2] = v12;
      a1[3] = v15;
      a1[4] = v16;
      a1[5] = v17;
      v18 = *a1;
      if (v12 >= *a1)
      {
        if (v18 < v12)
        {
          return 1;
        }

        v19 = a1[1];
        if (v15 >= v19)
        {
          return 1;
        }
      }

      else
      {
        v19 = a1[1];
      }

      *a1 = v12;
      a1[1] = v15;
      result = 1;
      a1[2] = v18;
      a1[3] = v19;
      return result;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_65:
      v37 = a1 + 5;
      goto LABEL_66;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_67;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_65;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_34:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_67;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_66:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_67;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_34;
    }
  }

LABEL_67:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *v25;
    if (*v45 < *v25 || v48 >= *v45 && v45[1] < v25[1])
    {
      break;
    }

LABEL_82:
    v25 = v45;
    v46 += 8;
    v45 += 2;
    if (v45 == a2)
    {
      return 1;
    }
  }

  v49 = *v45;
  v50 = v45[1];
  *v45 = v48;
  v45[1] = v25[1];
  v51 = v46;
  while (1)
  {
    v53 = a1 + v51;
    v54 = *(a1 + v51 + 8);
    if (v54 <= v49)
    {
      break;
    }

    v52 = *(v53 + 3);
LABEL_74:
    *(v53 + 4) = v54;
    *(a1 + v51 + 20) = v52;
    v51 -= 8;
    if (v51 == -16)
    {
      *a1 = v49;
      a1[1] = v50;
      if (++v47 != 8)
      {
        goto LABEL_82;
      }

      return v45 + 2 == a2;
    }
  }

  if (v54 >= v49)
  {
    v52 = *(a1 + v51 + 12);
    if (v52 > v50)
    {
      goto LABEL_74;
    }
  }

  v55 = a1 + v51;
  *(v55 + 4) = v49;
  *(v55 + 5) = v50;
  if (++v47 != 8)
  {
    goto LABEL_82;
  }

  return v45 + 2 == a2;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

unsigned int *std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned int,int> *>(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v7 = v6;
      v8 = &v6[2 * v4];
      v6 = v8 + 2;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = v8[4];
        v12 = v8[2];
        if (v12 < v11 || v11 >= v12 && v8[3] < v8[5])
        {
          v6 = v8 + 4;
          v4 = v10;
        }
      }

      *v7 = *v6;
      v7[1] = v6[1];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v6 == (a2 - 8))
    {
      *v6 = v5;
    }

    else
    {
      *v6 = *(a2 - 8);
      v6[1] = *(a2 - 4);
      *(a2 - 8) = v5;
      v13 = (v6 - result + 8) >> 3;
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        v15 = v14 >> 1;
        v16 = &result[2 * (v14 >> 1)];
        v17 = *v16;
        if (*v16 < *v6 || *v6 >= v17 && v16[1] < v6[1])
        {
          v18 = *v6;
          v19 = v6[1];
          *v6 = v17;
          v6[1] = v16[1];
          if (v14 >= 2)
          {
            while (1)
            {
              v22 = v15 - 1;
              v15 = (v15 - 1) >> 1;
              v20 = &result[2 * v15];
              v23 = *v20;
              if (*v20 < v18)
              {
                v21 = v20[1];
              }

              else
              {
                if (v23 > v18)
                {
                  break;
                }

                v21 = v20[1];
                if (v21 >= v19)
                {
                  break;
                }
              }

              *v16 = v23;
              v16[1] = v21;
              v16 = &result[2 * v15];
              if (v22 <= 1)
              {
                goto LABEL_15;
              }
            }
          }

          v20 = v16;
LABEL_15:
          *v20 = v18;
          v20[1] = v19;
        }
      }
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = (v6 + 16 * (v18 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 2);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        v11[1] = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 2);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

void *llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &result[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &result[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 5;
  *(Slow + 16) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineConstantExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineConstantExprStorage]";
  v6 = 89;
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = *v2;
  v6 = *(v2 + 8);
  *(Slow + 16) = v6;
  *(Slow + 24) = *(v2 + 16);
  *Slow = *v6;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineBinaryOpExprStorage]";
  v6 = 89;
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

void **std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(void ***a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  *v6 = v6 + 2;
  v6[1] = 0x800000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(80 * v2, a2);
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = (v6 - (v8 - *a1));
  v10 = (v6 + 10);
  if (v8 != *a1)
  {
    v11 = 0;
    v12 = -16 * ((v8 - *a1) >> 4) + 80 * v2;
    do
    {
      v13 = (v12 + v11);
      *v13 = v12 + v11 + 16;
      v13[1] = 0x800000000;
      if (*&v7[v11 + 8])
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v13, &v7[v11]);
      }

      v11 += 80;
    }

    while (&v7[v11] != v8);
    do
    {
      v16 = *v7;
      v15 = v7 + 16;
      v14 = v16;
      if (v16 != v15)
      {
        free(v14);
      }

      v7 = v15 + 64;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v10;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(uint64_t a1, uint64_t a2)
{
  if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, *(a2 + 16)))
  {
    return mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, *(a2 + 24)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::AffineMap::getConstantMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(this, a2, a3);

  return mlir::AffineMap::get(0, 0, AffineConstantExpr);
}

uint64_t mlir::AffineMap::getMultiDimIdentityMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v4 = this;
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x400000000;
  if (this < 5)
  {
    if (!this)
    {
      v8 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, this, 8);
  }

  v5 = 0;
  do
  {
    AffineDimExpr = mlir::getAffineDimExpr(v5, a2, a3);
    v7 = v13;
    if (v13 >= HIDWORD(v13))
    {
      v9 = AffineDimExpr;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, v13 + 1, 8);
      AffineDimExpr = v9;
      v7 = v13;
    }

    *(v12 + v7) = AffineDimExpr;
    v8 = v13 + 1;
    LODWORD(v13) = v13 + 1;
    v5 = (v5 + 1);
  }

  while (v4 != v5);
LABEL_10:
  result = mlir::AffineMap::get(v4, 0, v12, v8, a2);
  if (v12 != v14)
  {
    v11 = result;
    free(v12);
    return v11;
  }

  return result;
}

uint64_t *mlir::AffineMap::inferFromExprList@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = result;
    v16 = -1;
    v17 = -1;
    v7 = &result[2 * a2];
    v8 = result;
    do
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = *v8;
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          v18[0] = &v17;
          v18[1] = &v16;
          mlir::AffineExpr::walk<void>(v12, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>, v18);
          v11 -= 8;
        }

        while (v11);
      }

      v8 += 16;
    }

    while (v8 != v7);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), a2, 8);
    }

    do
    {
      result = mlir::AffineMap::get(v17 + 1, v16 + 1, *v6, v6[1], a3);
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        v13 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
        result = v13;
        v14 = *(a4 + 8);
      }

      *(*a4 + 8 * v14) = result;
      ++*(a4 + 8);
      v6 += 2;
    }

    while (v6 != v7);
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
  }

  return result;
}

unint64_t mlir::AffineMap::getLargestKnownDivisorOfMapExprs(mlir::AffineMap *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (!v2)
  {
    return -1;
  }

  result = 0;
  v4 = v1 + 8 * v2 + 24;
  v5 = (v1 + 24);
  do
  {
    v6 = result;
    v14 = *v5;
    result = mlir::AffineExpr::getLargestKnownDivisor(&v14);
    v7 = result;
    v8 = v6 >= result;
    v9 = v6 == result;
    if (v6 < result)
    {
      result = v6;
    }

    if (!v9 && v8)
    {
      v7 = v6;
    }

    if (result)
    {
      v10 = v7 % result;
      if (v10)
      {
        v11 = v10 >> __clz(__rbit64(v10));
        v12 = result;
        do
        {
          v13 = v12 >> __clz(__rbit64(v12));
          v12 = v13 - v11;
          if (v11 > v13)
          {
            v12 = v11 - v13;
          }

          if (v11 >= v13)
          {
            v11 = v13;
          }
        }

        while (v12);
        result = v11 << __clz(__rbit64(v10 | result));
      }
    }

    else
    {
      result = v7;
    }

    ++v5;
  }

  while (v5 != v4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t mlir::AffineMap::isIdentity(mlir::AffineMap *this)
{
  v1 = **this;
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v7) == 6)
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::AffineMap::isSymbolIdentity(mlir::AffineMap *this)
{
  v1 = *(*this + 4);
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v7) == 6)
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL mlir::AffineMap::isSingleConstant(mlir::AffineMap *this)
{
  v3 = *this;
  if (*(*this + 8) != 1)
  {
    return 0;
  }

  v5[1] = v1;
  v5[2] = v2;
  v5[0] = *(v3 + 24);
  return mlir::arith::FastMathFlagsAttr::getValue(v5) == 5;
}

uint64_t mlir::AffineMap::isConstant(mlir::AffineMap *this)
{
  v1 = *(*this + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = (*this + 24);
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    v7 = v4;
    v6 = mlir::arith::FastMathFlagsAttr::getValue(&v7) == 5;
    result = v6;
    v6 = !v6 || v3 == 0;
    v3 -= 8;
  }

  while (!v6);
  return result;
}

uint64_t mlir::AffineMap::getConstantResults@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = *(*this + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = (*this + 24);
    do
    {
      while (1)
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, *v5);
        v7 = v8;
        this = mlir::AffineBinaryOpExpr::getLHS(&v7);
        v8 = this;
        v6 = *(a2 + 8);
        if (v6 >= *(a2 + 12))
        {
          break;
        }

        *(*a2 + 8 * v6) = this;
        *(a2 + 8) = v6 + 1;
        ++v5;
        v4 -= 8;
        if (!v4)
        {
          return this;
        }
      }

      this = llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a2, &v8);
      ++v5;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t mlir::AffineMap::constantFold(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x200000000;
  mlir::AffineMap::partialConstantFold(a1, a2, a3, &v18, a5);
  v8 = v19;
  if (!v19)
  {
    v15 = 0;
    v16 = v18;
    if (v18 == v20)
    {
      return v15;
    }

    goto LABEL_7;
  }

  v9 = v18;
  v10 = *(a4 + 8);
  if (v10 + v19 > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v10 + v19, 8);
    v10 = *(a4 + 8);
  }

  v11 = (*a4 + 8 * v10);
  v12 = 8 * v8;
  do
  {
    v13 = *v9++;
    v14 = mlir::IndexType::get(*(*a1 + 2), v7);
    *v11++ = mlir::IntegerAttr::get(v14, v13);
    v12 -= 8;
  }

  while (v12);
  *(a4 + 8) += v8;
  v15 = 1;
  v16 = v18;
  if (v18 != v20)
  {
LABEL_7:
    free(v16);
  }

  return v15;
}

uint64_t mlir::AffineMap::partialConstantFold(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v32 = **a1;
  v33 = a2;
  v34 = a3;
  v35 = 0;
  v37 = v39;
  v38 = 0x400000000;
  v9 = v8[2];
  if (v9 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v9, 8);
    v8 = *a1;
    LODWORD(v9) = (*a1)[2];
  }

  if (v9)
  {
    v10 = 8 * v9;
    v11 = (v8 + 6);
    while (1)
    {
      v12 = *v11;
      v36 = v12;
      if (v14)
      {
        v15 = v13;
        Context = mlir::AffineExpr::getContext(&v36);
        v18 = mlir::IndexType::get(Context, v17);
        v19 = mlir::IntegerAttr::get(v18, v15);
        v31 = v19;
        if (a5 && (v35 & 1) != 0)
        {
          goto LABEL_24;
        }

        if (v19)
        {
          Int = mlir::IntegerAttr::getInt(&v31);
          v21 = mlir::Attribute::getContext(&v31);
          AffineConstantExpr = mlir::getAffineConstantExpr(Int, v21, v22);
          if (v38 >= HIDWORD(v38))
          {
            v27 = AffineConstantExpr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 8);
            *(v37 + v38) = v27;
            LODWORD(v38) = v38 + 1;
            if (a4)
            {
LABEL_13:
              v24 = mlir::IntegerAttr::getInt(&v31);
              v25 = *(a4 + 8);
              if (v25 >= *(a4 + 12))
              {
                v26 = v24;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v25 + 1, 8);
                v24 = v26;
                v25 = *(a4 + 8);
              }

              *(*a4 + 8 * v25) = v24;
              ++*(a4 + 8);
              goto LABEL_6;
            }
          }

          else
          {
            *(v37 + v38) = AffineConstantExpr;
            LODWORD(v38) = v38 + 1;
            if (a4)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_6;
        }
      }

      else
      {
        v31 = 0;
        if (a5 && (v35 & 1) != 0)
        {
LABEL_24:
          result = 0;
          *a5 = 1;
          v29 = v37;
          if (v37 != v39)
          {
            goto LABEL_28;
          }

          return result;
        }
      }

      if (v38 >= HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 8);
        *(v37 + v38) = v12;
        LODWORD(v38) = v38 + 1;
        if (!a4)
        {
          goto LABEL_6;
        }

LABEL_19:
        *(a4 + 8) = 0;
        a4 = 0;
        goto LABEL_6;
      }

      *(v37 + v38) = v12;
      LODWORD(v38) = v38 + 1;
      if (a4)
      {
        goto LABEL_19;
      }

LABEL_6:
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        v8 = *a1;
        break;
      }
    }
  }

  result = mlir::AffineMap::get(*v8, v8[1], v37, v38, *(v8 + 2));
  v29 = v37;
  if (v37 != v39)
  {
LABEL_28:
    v30 = result;
    free(v29);
    return v30;
  }

  return result;
}

uint64_t mlir::AffineMap::walkExprs(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(*result + 8);
  if (v3)
  {
    v6 = 8 * v3;
    v7 = (*result + 24);
    do
    {
      v8 = *v7++;
      result = mlir::AffineExpr::walk<void>(v8, a2, a3);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::AffineMap::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v27[8] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 8);
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v15, 8);
    v14 = *a1;
    LODWORD(v15) = *(*a1 + 8);
  }

  if (v15)
  {
    v16 = 8 * v15;
    v17 = (v14 + 24);
    do
    {
      v24 = *v17;
      v18 = mlir::AffineExpr::replaceDimsAndSymbols(&v24, a2, a3, a4, a5);
      v19 = v26;
      if (v26 >= HIDWORD(v26))
      {
        v23 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
        v18 = v23;
        v19 = v26;
      }

      *(v25 + v19) = v18;
      v20 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++v17;
      v16 -= 8;
    }

    while (v16);
    v14 = *a1;
  }

  else
  {
    v20 = v26;
  }

  result = mlir::AffineMap::get(v8, v7, v25, v20, *(v14 + 16));
  if (v25 != v27)
  {
    v22 = result;
    free(v25);
    return v22;
  }

  return result;
}

uint64_t mlir::AffineMap::replace(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x400000000;
  v10 = *a1;
  v11 = *(*a1 + 8);
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11, 8);
    v10 = *a1;
    LODWORD(v11) = *(*a1 + 8);
  }

  if (v11)
  {
    v14 = *(v10 + 24);
    mlir::AffineExpr::replace(&v14, a2, a3);
  }

  result = mlir::AffineMap::get(v6, v5, v15, v16, *(v10 + 16));
  if (v15 != v17)
  {
    v13 = result;
    free(v15);
    return v13;
  }

  return result;
}