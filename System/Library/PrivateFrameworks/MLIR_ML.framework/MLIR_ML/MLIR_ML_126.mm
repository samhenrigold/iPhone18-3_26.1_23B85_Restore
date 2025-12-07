uint64_t mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 56);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

BOOL mlir::mps::serialization::FuncOpAdaptor::verify(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  if (v3)
  {
    if (a1[6])
    {
      v4 = a1[3];
      v5 = a1[5];
      v30 = a1[4];
      if (*(*mlir::TypeAttr::getValue(&v30) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id && (v28[0] = v3, *(*mlir::TypeAttr::getValue(v28) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
      {
        if (v4 && (v30 = v4, (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(&v30) & 1) == 0))
        {
          v28[0] = "'mps.func' op attribute 'arg_attrs' failed to satisfy constraint: Array of dictionary attributes";
          v29 = 259;
          mlir::emitError(a2, v28, &v30);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
          if (v30)
          {
            mlir::InFlightDiagnostic::report(&v30);
          }

          if (v39 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v31);
          }
        }

        else if (v5 && (v30 = v5, (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(&v30) & 1) == 0))
        {
          v28[0] = "'mps.func' op attribute 'res_attrs' failed to satisfy constraint: Array of dictionary attributes";
          v29 = 259;
          mlir::emitError(a2, v28, &v30);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        }

        else
        {
          return 1;
        }
      }

      else
      {
        v28[0] = "'mps.func' op attribute 'function_type' failed to satisfy constraint: type attribute of function type";
        v29 = 259;
        mlir::emitError(a2, v28, &v30);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
        if (v30)
        {
          mlir::InFlightDiagnostic::report(&v30);
        }

        if (v39 == 1)
        {
          if (v38 != &v39)
          {
            free(v38);
          }

          v7 = __p;
          if (__p)
          {
            v8 = v37;
            v9 = __p;
            if (v37 != __p)
            {
              do
              {
                v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
              }

              while (v8 != v7);
              v9 = __p;
            }

            v37 = v7;
            operator delete(v9);
          }

          v10 = v34;
          if (!v34)
          {
            goto LABEL_55;
          }

          v11 = v35;
          v12 = v34;
          if (v35 == v34)
          {
LABEL_54:
            v35 = v10;
            operator delete(v12);
LABEL_55:
            if (v32 != &v33)
            {
              free(v32);
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
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
LABEL_53:
          v12 = v34;
          goto LABEL_54;
        }
      }
    }

    else
    {
      v28[0] = "'mps.func' op requires attribute 'sym_name'";
      v29 = 259;
      mlir::emitError(a2, v28, &v30);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
      if (v30)
      {
        mlir::InFlightDiagnostic::report(&v30);
      }

      if (v39 == 1)
      {
        if (v38 != &v39)
        {
          free(v38);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v37;
          v23 = __p;
          if (v37 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v37 = v21;
          operator delete(v23);
        }

        v10 = v34;
        if (!v34)
        {
          goto LABEL_55;
        }

        v24 = v35;
        v12 = v34;
        if (v35 == v34)
        {
          goto LABEL_54;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v10);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v28[0] = "'mps.func' op requires attribute 'function_type'";
    v29 = 259;
    mlir::emitError(a2, v28, &v30);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
    if (v30)
    {
      mlir::InFlightDiagnostic::report(&v30);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v37;
        v17 = __p;
        if (v37 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v37 = v15;
        operator delete(v17);
      }

      v10 = v34;
      if (!v34)
      {
        goto LABEL_55;
      }

      v18 = v35;
      v12 = v34;
      if (v35 == v34)
      {
        goto LABEL_54;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v10);
      goto LABEL_53;
    }
  }

  return v6;
}

uint64_t mlir::mps::serialization::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v53 = v6;
  if (!v6)
  {
    a3(&v56, a4);
    if (v56)
    {
      LODWORD(v54) = 3;
      *(&v54 + 1) = "expected DictionaryAttr to set properties";
      v55 = 41;
      if (v59 >= v60)
      {
        if (v58 > &v54 || v58 + 24 * v59 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v58 + 24 * v59;
      v23 = v54;
      *(v22 + 2) = v55;
      *v22 = v23;
      ++v59;
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }
    }

    if (v67 != 1)
    {
      return 0;
    }

    if (v66 != &v67)
    {
      free(v66);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v65;
      v26 = __p;
      if (v65 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v65 = v24;
      operator delete(v26);
    }

    v17 = v62;
    if (!v62)
    {
      goto LABEL_70;
    }

    v27 = v63;
    v19 = v62;
    if (v63 == v62)
    {
LABEL_69:
      v63 = v17;
      operator delete(v19);
LABEL_70:
      if (v58 != &v61)
      {
        free(v58);
      }

      return 0;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
LABEL_68:
    v19 = v62;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v53, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v56, a4);
      if (v56)
      {
        LODWORD(v54) = 3;
        v55 = 54;
        if (v59 >= v60)
        {
          if (v58 > &v54 || v58 + 24 * v59 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v58 + 24 * v59;
        v11 = v54;
        *(v10 + 2) = v55;
        *v10 = v11;
        ++v59;
        if (v56)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v9);
          if (v59 >= v60)
          {
            if (v58 > &v54 || v58 + 24 * v59 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v58 + 24 * v59;
          v13 = v54;
          *(v12 + 2) = v55;
          *v12 = v13;
          ++v59;
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }
        }
      }

      if ((v67 & 1) == 0)
      {
        return 0;
      }

      if (v66 != &v67)
      {
        free(v66);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v65;
        v16 = __p;
        if (v65 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v65 = v14;
        operator delete(v16);
      }

      v17 = v62;
      if (!v62)
      {
        goto LABEL_70;
      }

      v18 = v63;
      v19 = v62;
      if (v63 == v62)
      {
        goto LABEL_69;
      }

      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v53, "function_type", 0xDuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v31 = v30;
      a3(&v56, a4);
      if (v56)
      {
        LODWORD(v54) = 3;
        v55 = 58;
        if (v59 >= v60)
        {
          if (v58 > &v54 || v58 + 24 * v59 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v58 + 24 * v59;
        v33 = v54;
        *(v32 + 2) = v55;
        *v32 = v33;
        ++v59;
        if (v56)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v31);
          if (v59 >= v60)
          {
            if (v58 > &v54 || v58 + 24 * v59 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v58 + 24 * v59;
          v35 = v54;
          *(v34 + 2) = v55;
          *v34 = v35;
          ++v59;
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }
        }
      }

      if ((v67 & 1) == 0)
      {
        return 0;
      }

      if (v66 != &v67)
      {
        free(v66);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v65;
        v38 = __p;
        if (v65 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v65 = v36;
        operator delete(v38);
      }

      v17 = v62;
      if (!v62)
      {
        goto LABEL_70;
      }

      v39 = v63;
      v19 = v62;
      if (v63 == v62)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_68;
    }

    a1[1] = v30;
  }

  v42 = mlir::DictionaryAttr::get(&v53, "res_attrs", 9uLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v43 = v42;
      a3(&v56, a4);
      if (v56)
      {
        LODWORD(v54) = 3;
        v55 = 54;
        if (v59 >= v60)
        {
          if (v58 > &v54 || v58 + 24 * v59 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v58 + 24 * v59;
        v45 = v54;
        *(v44 + 2) = v55;
        *v44 = v45;
        ++v59;
        if (v56)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v43);
          if (v59 >= v60)
          {
            if (v58 > &v54 || v58 + 24 * v59 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v58 + 24 * v59;
          v47 = v54;
          *(v46 + 2) = v55;
          *v46 = v47;
          ++v59;
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }
        }
      }

      if (v67 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v57);
      }

      return 0;
    }

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v53, "sym_name", 8uLL);
  *&v54 = v48;
  if (!v48)
  {
LABEL_88:
    v51 = mlir::DictionaryAttr::get(&v53, "sym_visibility", 0xEuLL);
    *&v54 = v51;
    if (v51)
    {
      if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v56, a4);
        goto LABEL_91;
      }

      a1[4] = v51;
    }

    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v48;
    goto LABEL_88;
  }

  a3(&v56, a4);
LABEL_91:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v54, v50);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
  return 0;
}

uint64_t mlir::mps::serialization::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = v29;
  v28 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v26, "arg_attrs", 9, *a2);
  if (v28 >= HIDWORD(v28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v27 + 16 * v28);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v28 + 1;
  LODWORD(v28) = v28 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v26, "function_type", 0xD, v7);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v27 + 16 * v28);
    *v10 = v8;
    v10[1] = v9;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v26, "res_attrs", 9, v11);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v27 + 16 * v28);
    *v14 = v12;
    v14[1] = v13;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v26, "sym_name", 8, v15);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v27 + 16 * v28);
    *v18 = v16;
    v18[1] = v17;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v26, "sym_visibility", 0xE, v19);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v27 + 16 * v28);
    *v22 = v20;
    v22[1] = v21;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v23 = v27;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v27 == v29)
    {
      return DictionaryAttr;
    }

    goto LABEL_19;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v26, v27, v6);
  v23 = v27;
  if (v27 != v29)
  {
LABEL_19:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::serialization::FuncOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = HIDWORD(a1[4]);
  v14 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v13);
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v23[0] = v3;
  v23[1] = v6;
  v20 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v20, v24, v25, v9);
  v21 = v20;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v21, v16, v25, v12);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v22, v17, v25, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v23, v22, v18, v25);
}

uint64_t mlir::mps::serialization::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    if (__n == 13)
    {
      if (!memcmp(__s1, "function_type", 0xDuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 14 && !memcmp(__s1, "sym_visibility", 0xEuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::serialization::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    if (a3 == 13)
    {
      result = memcmp(__s1, "function_type", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

    else if (a3 == 14)
    {
      result = memcmp(__s1, "sym_visibility", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[4] = v7;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "sym_name", 8uLL);
    if (!result)
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

        v5[3] = v8;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  else if (a3 == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *result = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "res_attrs", 9uLL);
      if (!result)
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

          v5[2] = v11;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }
  }

  return result;
}

void mlir::mps::serialization::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "function_type", 0xDuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v8);
  }
}

BOOL mlir::mps::serialization::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v8, "arg_attrs", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v9, "function_type", 0xD, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v10, "res_attrs", 9, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v11, "sym_name", 8, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v12, "sym_visibility", 0xE, a3, a4))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::serialization::FuncOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 4);
}

uint64_t mlir::mps::serialization::FuncOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  v4 = v3[12];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t *mlir::mps::serialization::FuncOp::getSymVisibility@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a1 = this;
    a1[1] = v3;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  return this;
}

uint64_t mlir::mps::serialization::FuncOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::serialization::FuncOp::setFunctionType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::serialization::FuncOp::setSymVisibility(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 96) = result;
  }

  else
  {
    *(v2 + 96) = 0;
  }

  return result;
}

void mlir::mps::serialization::FuncOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 24) = a3;
  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 8) = a4;
  if (a5)
  {
    v9 = *(a2 + 32);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 32) = a5;
    if (!a6)
    {
LABEL_5:
      if (!a7)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if (!a6)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *v10 = a6;
  if (!a7)
  {
LABEL_18:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v11 = *(a2 + 32);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 16) = a7;
  goto LABEL_18;
}

void mlir::mps::serialization::FuncOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 24) = a5;
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 8) = a6;
  if (a7)
  {
    v12 = *(a2 + 32);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 32) = a7;
    v11 = a9;
    if (!a8)
    {
LABEL_5:
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = a9;
    if (!a8)
    {
      goto LABEL_5;
    }
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *v13 = a8;
  if (!v11)
  {
LABEL_6:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) = v11;
  mlir::OperationState::addRegion(a2);
}

void mlir::mps::serialization::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 261;
  v20[0] = a3;
  v20[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v20, a3);
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 24) = StringAttr;
  v15 = mlir::TypeAttr::get(a5);
  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  if (a6)
  {
    v17 = *(a2 + 32);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 32) = a6;
    if (!a7)
    {
LABEL_5:
      if (!a8)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if (!a7)
  {
    goto LABEL_5;
  }

  v18 = *(a2 + 32);
  if (!v18)
  {
    operator new();
  }

  *v18 = a7;
  if (!a8)
  {
LABEL_18:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a8;
  goto LABEL_18;
}

void mlir::mps::serialization::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = 261;
  v21[0] = a5;
  v21[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v21, a3);
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 24) = StringAttr;
  v15 = mlir::TypeAttr::get(a7);
  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  if (a8)
  {
    v18 = *(a2 + 32);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 32) = a8;
    v17 = a10;
    if (!a9)
    {
LABEL_5:
      if (!v17)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = a10;
    if (!a9)
    {
      goto LABEL_5;
    }
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *v19 = a9;
  if (!v17)
  {
LABEL_6:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v20 = *(a2 + 32);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = v17;
  mlir::OperationState::addRegion(a2);
}

void mlir::mps::serialization::FuncOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::mps::serialization::FuncOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = (v1 + 64);
  if (v4)
  {
    v5 = v2[3];
    if (v5)
    {
      v7 = v2[2];
      v8 = v2[4];
      v30[0] = *this;
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v4, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v8, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
      {
        return 0;
      }

      v30[0] = *this;
      return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30);
    }

    v28[0] = "requires attribute 'sym_name'";
    v29 = 259;
    mlir::OpState::emitOpError(v30, this, v28);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
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

      v18 = __p;
      if (__p)
      {
        v19 = v36;
        v20 = __p;
        if (v36 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v36 = v18;
        operator delete(v20);
      }

      v21 = v33;
      if (v33)
      {
        v22 = v34;
        v23 = v33;
        if (v34 != v33)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              MEMORY[0x259C63150](v24, 0x1000C8077774924);
            }
          }

          while (v22 != v21);
          v23 = v33;
        }

        v34 = v21;
        operator delete(v23);
      }

      v26 = v31;
      if (v31 != v32)
      {
LABEL_48:
        free(v26);
      }
    }
  }

  else
  {
    v28[0] = "requires attribute 'function_type'";
    v29 = 259;
    mlir::OpState::emitOpError(v30, this, v28);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
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

      v10 = __p;
      if (__p)
      {
        v11 = v36;
        v12 = __p;
        if (v36 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v36 = v10;
        operator delete(v12);
      }

      v13 = v33;
      if (v33)
      {
        v14 = v34;
        v15 = v33;
        if (v34 != v33)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x259C63150](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v33;
        }

        v34 = v13;
        operator delete(v15);
      }

      v26 = v31;
      if (v31 != v32)
      {
        goto LABEL_48;
      }
    }
  }

  return v9;
}

mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase *mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::ModuleOpGenericAdaptorBase(mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase *this, ModuleOp a2)
{
  *this = *(a2.var0 + 7);
  *(this + 1) = *(a2.var0 + 6);
  *(this + 16) = 1;
  *(this + 24) = *(a2.var0 + ((*(a2.var0 + 11) >> 23) & 1) + 4);
  v3 = *(a2.var0 + 11);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange(this + 5, ((a2.var0 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2.var0 + 10), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange(this + 5, 0, 0);
  }

  return this;
}

{
  *this = *(a2.var0 + 7);
  *(this + 1) = *(a2.var0 + 6);
  *(this + 16) = 1;
  *(this + 24) = *(a2.var0 + ((*(a2.var0 + 11) >> 23) & 1) + 4);
  v3 = *(a2.var0 + 11);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange(this + 5, ((a2.var0 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2.var0 + 10), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange(this + 5, 0, 0);
  }

  return this;
}

uint64_t mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::getSymName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 24);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 32);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::mps::serialization::ModuleOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = "expected DictionaryAttr to set properties";
      v45 = 41;
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v47 + 24 * v48;
      v23 = v44;
      *(v22 + 2) = v45;
      *v22 = v23;
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

    v24 = __p;
    if (__p)
    {
      v25 = v54;
      v26 = __p;
      if (v54 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v54 = v24;
      operator delete(v26);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "sym_name", 8uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 53;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v47 + 24 * v48;
        v11 = v44;
        *(v10 + 2) = v45;
        *v10 = v11;
        ++v48;
        if (v46[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v47 + 24 * v48;
          v13 = v44;
          *(v12 + 2) = v45;
          *v12 = v13;
          ++v48;
          if (v46[0])
          {
            mlir::InFlightDiagnostic::report(v46);
          }
        }
      }

      if ((v56 & 1) == 0)
      {
        return 0;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
        goto LABEL_69;
      }

      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v43, "sym_visibility", 0xEuLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 59;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
    ++v48;
    if (v46[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v31);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
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

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        MEMORY[0x259C63150](v40, 0x1000C8077774924);
      }
    }

    while (v39 != v17);
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::serialization::ModuleOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "sym_name", 8, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "sym_visibility", 0xE, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::serialization::ModuleOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::mps::serialization::ModuleOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 14)
  {
    if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::mps::serialization::ModuleOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 14)
  {
    if (*a2 == 0x697369765F6D7973 && *(a2 + 6) == 0x7974696C69626973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 8 && *a2 == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::serialization::ModuleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v5);
  }
}

BOOL mlir::mps::serialization::ModuleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v8, "sym_name", 8, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_visibility", 0xE, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::mps::serialization::ModuleOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::serialization::ModuleOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t *mlir::mps::serialization::ModuleOp::getSymName@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a1 = this;
    a1[1] = v3;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  return this;
}

uint64_t *mlir::mps::serialization::ModuleOp::getSymVisibility@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a1 = this;
    a1[1] = v3;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  return this;
}

uint64_t mlir::mps::serialization::ModuleOp::setSymName(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 64) = result;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t mlir::mps::serialization::ModuleOp::setSymVisibility(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 72) = result;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return result;
}

BOOL mlir::mps::serialization::ModuleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 9);
  v7 = v2;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) && (v7 = *this, mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7)))
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::mps::serialization::ModuleOp::verifyInvariants(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 8);
  v5 = *(v3 + 9);
  v7 = v2;
  result = 0;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7))
  {
    v7 = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) && mlir::mps::serialization::ModuleOp::verify(this))
    {
      return 1;
    }
  }

  return result;
}

void mlir::mps::serialization::ModuleOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (*&v4[4 * ((v4[11] >> 23) & 1) + 16])
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if (v6 >= *(v5 + 3))
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      *(v5 + 4) = v6 + 1;
      *v6 = 32;
    }

    v14 = *&(*this)[4 * (((*this)[11] >> 23) & 1) + 16];
    Value = mlir::StringAttr::getValue(&v14);
    (*(*a2 + 88))(a2, Value, v8);
    v4 = *this;
  }

  v14 = v16;
  v16[0] = "sym_name";
  v16[1] = 8;
  v15 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v9 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, v9, v10, v14, v15);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 224))(a2, ((&(*this)[4 * (((*this)[11] >> 23) & 1) + 17] + (((*this)[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * (*this)[10], 1, 1, 0);
  if (v14 != v16)
  {
    free(v14);
  }
}

uint64_t mlir::mps::serialization::ReturnOp::build(mlir::mps::serialization::ReturnOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v5, 0, 0);
  return mlir::OperationState::addOperands(a2, v5[0], v5[1]);
}

void *mlir::mps::serialization::ReturnOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

BOOL mlir::mps::serialization::ReturnOp::parse(mlir::mps::serialization::ReturnOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || (v5 = (*(*this + 40))(this), ((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0))
  {
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v11, v9, v5, a2 + 16);
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

void mlir::mps::serialization::WhileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::mps::serialization::WhileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = v2[9];
  if (v2[9])
  {
    v4 = (v2 - 4);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  v6 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10], "before", 6, 0);
  result = 0;
  if (v6)
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, "after", 5, 1u);
  }

  return result;
}

void *mlir::mps::serialization::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

BOOL mlir::mps::serialization::YieldOp::parse(mlir::mps::serialization::YieldOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || (v5 = (*(*this + 40))(this), ((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0))
  {
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v11, v9, v5, a2 + 16);
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

void *llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
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
    v12 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
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
    llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id;
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

const char *llvm::getTypeName<mlir::DataLayoutSpecInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutSpecInterface]";
  v6 = 79;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::__mlir_ods_local_attr_constraint_MPSSerializationOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t llvm::SmallVector<mlir::NamedAttribute,8u>::SmallVector<mlir::Operation::dialect_attr_iterator>(uint64_t a1, void *a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (*a2 == v6)
  {
    v9 = 0;
    LODWORD(v7) = 0;
    v10 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *a2;
    do
    {
      do
      {
        v8 += 2;
      }

      while (v8 != v4 && (v5(*v8, v8[1]) & 1) == 0);
      ++v7;
    }

    while (v8 != v6);
    v9 = *(a1 + 8);
    v10 = v9;
    if (v7 + v9 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v3 != v6)
  {
    v11 = (*a1 + 16 * v10);
    do
    {
      *v11 = *v3;
      do
      {
        v3 += 2;
      }

      while (v3 != v4 && (v5(*v3, v3[1]) & 1) == 0);
      ++v11;
    }

    while (v3 != v6);
    v9 = *(a1 + 8);
  }

  *(a1 + 8) = v9 + v7;
  return a1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mps::serialization::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  *&v12 = v4;
  mlir::ValueRange::ValueRange(&v12 + 1, v5, v6);
  v7 = *(a1 + 8);
  v8 = *a1;
  if (v7 >= *(a1 + 12))
  {
    if (v8 > &v12 || v8 + 24 * v7 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v8 + 24 * *(a1 + 8);
  v10 = v12;
  *(v9 + 16) = v13;
  *v9 = v10;
  LODWORD(v9) = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  return *a1 + 24 * v9 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = a2[1];
  *&v10 = 0;
  mlir::ValueRange::ValueRange(&v10 + 1, v4, v3);
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= *(a1 + 12))
  {
    if (v6 > &v10 || v6 + 24 * v5 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v6 + 24 * *(a1 + 8);
  v8 = v10;
  *(v7 + 16) = v11;
  *v7 = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mps::serialization::YieldOp>::Impl<mlir::mps::serialization::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "mps.yield", 9uLL);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *a1 + 12 * v3;
  HIDWORD(v6) = *a3;
  LODWORD(v6) = *a2;
  *v4 = v6;
  *(v4 + 8) = 1;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 12 * v4 - 12;
}

llvm::raw_ostream *mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
    v7 = a2[1];
    v10 = a2[3];
    if (v7 == v10 || v7 + 1 != v10)
    {
LABEL_20:
      v20 = *(v5 + 4);
      if (v20 >= *(v5 + 3))
      {
        result = llvm::raw_ostream::write(v5, 40);
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(v5 + 4) = v20 + 1;
        *v20 = 40;
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
LABEL_25:
          v26 = *(v5 + 4);
          if (v26 >= *(v5 + 3))
          {

            return llvm::raw_ostream::write(v5, 41);
          }

          else
          {
            *(v5 + 4) = v26 + 1;
            *v26 = 41;
          }

          return result;
        }
      }

      v23 = *a2;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v21);
      result = (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v21 + 1; v22 != i; ++i)
      {
        v28 = (*(*a1 + 16))(a1);
        v29 = v28[4];
        if (v28[3] - v29 > 1uLL)
        {
          *v29 = 8236;
          v28[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, i);
        result = (*(*a1 + 32))(a1, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      goto LABEL_25;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
    v7 = a2[1];
    v8 = a2[3];
    if (v7 == v8 || v7 + 1 != v8)
    {
      goto LABEL_20;
    }
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, v7);
  if (*(*(*(result + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_20;
  }

  v12 = a2[1];
  v13 = a2[3];
  if (v12 != v13)
  {
    v14 = *a2;
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
    result = (*(*a1 + 32))(a1, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
    for (j = v12 + 1; v13 != j; ++j)
    {
      v18 = (*(*a1 + 16))(a1);
      v19 = v18[4];
      if (v18[3] - v19 > 1uLL)
      {
        *v19 = 8236;
        v18[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, j);
      result = (*(*a1 + 32))(a1, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mps::serialization::YieldOp>::Impl<mlir::mps::serialization::ForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "mps.yield", 9uLL);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

uint64_t mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  {
    AncestorKey::AncestorKey();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::RankedTensorType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::serialization::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::serialization::detail::ModuleOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::serialization::ModuleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
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
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

__n128 OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  v26 = (v24 + 24 * a24);
  result = *v25;
  v26[1].n128_u64[0] = v25[1].n128_u64[0];
  *v26 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_6_4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

void OUTLINED_FUNCTION_12_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

__n128 OUTLINED_FUNCTION_14_4@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v18 = (a1 + 24 * a17);
  result = *v17;
  v18[1].n128_u64[0] = v17[1].n128_u64[0];
  *v18 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_29_3()
{
  v2 = v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1);
  v3 = *(v2 + 32);
  result = *(v2 + 16);
  *(v0 + 24) = *v2;
  *(v0 + 40) = result;
  *(v0 + 56) = v3;
  return result;
}

void OUTLINED_FUNCTION_34_4()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

__n128 OUTLINED_FUNCTION_45_6()
{
  result = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1));
  *(v0 + 24) = result;
  return result;
}

void OUTLINED_FUNCTION_51_6(uint64_t a1, uint64_t a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_52_6@<X0>(uint64_t result@<X0>, int *a2@<X8>)
{
  *a2 = v2 | 0x206F0000;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_59_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::mps::MPSDialect::parseType(mlir::MLIRContext **this, mlir::DialectAsmParser *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v4 = mlir::AsmParser::parseKeyword(a2, &v21);
  result = 0;
  if (v4)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = (*(*a2 + 48))(a2, v6);
    if (v22 == 3)
    {
      v8 = v21;
      if (*v21 == 26222 && *(v21 + 2) == 52)
      {
        TypeUniquer = mlir::MLIRContext::getTypeUniquer(this[4]);
        return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id);
      }
    }

    else
    {
      v8 = v21;
    }

    v20 = 1283;
    v19[0] = "unknown MPS type: ";
    v19[2] = v8;
    v19[3] = v22;
    mlir::emitError(v7, v19, v23);
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

      v11 = __p;
      if (__p)
      {
        v12 = v29;
        v13 = __p;
        if (v29 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v29 = v11;
        operator delete(v13);
      }

      v14 = v26;
      if (v26)
      {
        v15 = v27;
        v16 = v26;
        if (v27 != v26)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x259C63150](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v26;
        }

        v27 = v14;
        operator delete(v16);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    return 0;
  }

  return result;
}

llvm::raw_ostream *mlir::mps::MPSDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a3 + 16))(a3, a2);
  v4 = *(result + 4);
  if ((*(result + 3) - v4) > 2)
  {
    *(v4 + 2) = 52;
    *v4 = 26222;
    *(result + 4) += 3;
  }

  else
  {

    return llvm::raw_ostream::write(result, "nf4", 3uLL);
  }

  return result;
}

void mlir::scf::SCFDialect::SCFDialect(mlir::scf::SCFDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "scf", 3, a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id);
  *v3 = &unk_286887E70;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::scf::SCFDialect::initialize(this);
}

{
  v3 = mlir::Dialect::Dialect(this, "scf", 3, a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id);
  *v3 = &unk_286887E70;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v5 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v5);
  }

  mlir::scf::SCFDialect::initialize(this);
}

void sub_256C0EAFC()
{

  JUMPOUT(0x259C63180);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ReduceReturnOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::IndexSwitchOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

char *mlir::OpBuilder::create<mlir::scf::YieldOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(v13, v12, v11);
  }

  mlir::OperationState::OperationState(v13, a2, v5);
  v7 = mlir::OpBuilder::create(a1, v13);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v8;
}

uint64_t mlir::scf::ExecuteRegionOp::parse(mlir::scf::ExecuteRegionOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  if ((*(*this + 568))(this, a2 + 64, a3))
  {
    mlir::OperationState::addRegion(a2);
  }

  return 0;
}

uint64_t mlir::scf::ExecuteRegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *(*this + 9);
  v5 = *this - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v12[0] = v5;
  v12[1] = v4;
  mlir::ResultRange::getTypes(v11, v12);
  if (v11[1] != v11[3])
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a2, v11);
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 1, 0);
  v11[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v11);
  return (*(*a2 + 192))(a2, Value, v9, 0, 0);
}

BOOL mlir::scf::ExecuteRegionOp::verify(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    v20[0] = "region needs to have at least one block";
    v21 = 259;
    mlir::OpState::emitOpError(v22, this, v20);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_41;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_40;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x259C63150](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
      goto LABEL_39;
    }
  }

  else
  {
    v2 = v1[1];
    if (v2)
    {
      v3 = v2 - 8;
    }

    else
    {
      v3 = 0;
    }

    if (((*(v3 + 56) - *(v3 + 48)) & 0x7FFFFFFF8) == 0)
    {
      return 1;
    }

    v20[0] = "region cannot have any arguments";
    v21 = 259;
    mlir::OpState::emitOpError(v22, this, v20);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_41;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_40:
        v26 = v8;
        operator delete(v10);
LABEL_41:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x259C63150](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_39:
      v10 = v25;
      goto LABEL_40;
    }
  }

  return v4;
}

__n128 mlir::scf::ExecuteRegionOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(*a1 + 36);
    if (v4)
    {
      v5 = *a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    v10.n128_u64[0] = 0;
    mlir::ValueRange::ValueRange(&v10.n128_u64[1], v5, v4);
    v6 = *(a3 + 8);
    v7 = *a3;
    if (v6 >= *(a3 + 12))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    mlir::ValueRange::ValueRange(&v10.n128_u64[1], 0, 0);
    v6 = *(a3 + 8);
    v7 = *a3;
    if (v6 >= *(a3 + 12))
    {
LABEL_9:
      if (v7 <= &v10 && v7 + 24 * v6 > &v10)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v8 = (v7 + 24 * *(a3 + 8));
  result = v10;
  v8[1].n128_u64[0] = v11;
  *v8 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::ConditionOp::getSuccessorRegions(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v33[1] = *(*a1 + 56);
  v33[2] = v9;
  v34 = 1;
  v10 = *(v8 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((v8 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(&v35, v12, v11);
  v36 = a2;
  v37 = a3;
  v13 = *(*a1 + 16);
  if (v13)
  {
    ParentOp = mlir::Block::getParentOp(v13);
    v15 = *v36;
    if (*v36)
    {
      goto LABEL_6;
    }

LABEL_13:
    v33[0] = 0;
    goto LABEL_14;
  }

  ParentOp = 0;
  v15 = *a2;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (mlir::BoolAttr::classof(v15))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v33[0] = v16;
  if (v16 && !mlir::BoolAttr::getValue(v33))
  {
LABEL_20:
    if (v33[0])
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_14:
  v17 = ((&ParentOp[4 * ((ParentOp[11] >> 23) & 1) + 17] + ((ParentOp[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * ParentOp[10];
  v18 = v17 + 24;
  v32 = v17 + 24;
  if (*(v17 + 24) == v17 + 24)
  {
    v21 = 0;
    v22 = 0;
    v30 = 0;
    v31 = 0;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
LABEL_19:
      v24 = (*a4 + 24 * v23);
      *v24 = v18;
      mlir::ValueRange::ValueRange(v24 + 1, v21, v22);
      ++*(a4 + 8);
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v17 + 32);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v22 = (*(v20 + 56) - v21) >> 3;
    v30 = v21;
    v31 = v22;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
      goto LABEL_19;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a4, &v32, &v30);
  if (v33[0])
  {
LABEL_21:
    result = mlir::BoolAttr::getValue(v33);
    if (result)
    {
      return result;
    }
  }

LABEL_22:
  v26 = ParentOp[9];
  if (v26)
  {
    v27 = (ParentOp - 4);
  }

  else
  {
    v27 = 0;
  }

  v30 = v27;
  v31 = v26;
  v28 = *(a4 + 8);
  if (v28 >= *(a4 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, &v30);
  }

  v29 = (*a4 + 24 * v28);
  *v29 = 0;
  result = mlir::ValueRange::ValueRange(v29 + 1, v27, v26);
  ++*(a4 + 8);
  return result;
}

void mlir::scf::ForOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  mlir::ValueRange::ValueRange(v19, &v16, 3uLL);
  mlir::OperationState::addOperands(a2, v19[0], v19[1]);
  mlir::OperationState::addOperands(a2, a6, a7);
  v16 = a6;
  v17 = 0;
  if (a7)
  {
    v13 = 0;
    do
    {
      v14 = *(mlir::ValueRange::dereference_iterator(&v16, v13) + 8);
      v15 = *(a2 + 18);
      if (v15 >= *(a2 + 19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(a2[8] + 8 * v15) = v14 & 0xFFFFFFFFFFFFFFF8;
      ++*(a2 + 18);
      v13 = v17 + 1;
      v17 = v13;
    }

    while (v13 != a7);
  }

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::scf::ForOp::verify(mlir::Operation **this)
{
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) - 3 == *(*this + 9))
  {
    return 1;
  }

  v5 = v1;
  v6 = v2;
  mlir::scf::ForOp::verify(this, &v4);
  return v4;
}

BOOL mlir::scf::ForOp::verifyRegions(mlir::Operation **this)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  v4 = v3 - 8;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = *(v4 + 48);
  v6 = *(v2 + 9);
  if ((*(*(v6 + 24) + 8) ^ *(*v5 + 8)) >= 8)
  {
    v64[0] = "expected induction variable to be same type as bounds and step";
    v65 = 259;
    mlir::OpState::emitOpError(v68, this, v64);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
    if (v68[0])
    {
      mlir::InFlightDiagnostic::report(v68);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v76;
        v23 = __p;
        if (v76 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v76 = v21;
        operator delete(v23);
      }

      v24 = v73;
      if (!v73)
      {
        goto LABEL_99;
      }

      v25 = v74;
      v26 = v73;
      if (v74 == v73)
      {
        goto LABEL_98;
      }

      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x259C63150](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
      goto LABEL_97;
    }
  }

  else
  {
    v7 = *(v4 + 56);
    v8 = ((v7 - v5) >> 3) - 1;
    if (v8 == *(v2 + 9))
    {
      v9 = *(v2 + 17);
      v10 = v2 - 16;
      if (((v7 - v5) >> 3) == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v12 = 1;
      if (v9 != 3 && v5 + 8 != v7)
      {
        v13 = 0;
        v14 = v5 + 16;
        v15 = (v6 + 120);
        v16 = v9 - 4;
        while (1)
        {
          if (v8 == v13)
          {
            return 1;
          }

          v17 = *v15;
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v13);
          v19 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (v19 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          if ((*(*(v5 + 8 * v13 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != v19)
          {
            v65 = 257;
            mlir::OpState::emitOpError(v68, this, v64);
            if (v68[0])
            {
              LODWORD(v66) = 3;
              *(&v66 + 1) = "types mismatch between ";
              v67 = 23;
              if (v70 >= v71)
              {
                if (v69 > &v66 || v69 + 24 * v70 <= &v66)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v49 = v69 + 24 * v70;
              v50 = v66;
              *(v49 + 2) = v67;
              *v49 = v50;
              v51 = ++v70;
              if (v68[0])
              {
                LODWORD(v66) = 5;
                *(&v66 + 1) = v13;
                if (v51 >= v71)
                {
                  if (v69 > &v66 || v69 + 24 * v51 <= &v66)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v52 = v69 + 24 * v70;
                v53 = v66;
                *(v52 + 2) = v67;
                *v52 = v53;
                v54 = ++v70;
                if (v68[0])
                {
                  LODWORD(v66) = 3;
                  *(&v66 + 1) = "th iter region arg and defined value";
                  v67 = 36;
                  if (v54 >= v71)
                  {
                    if (v69 > &v66 || v69 + 24 * v54 <= &v66)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v55 = v69 + 24 * v70;
                  v56 = v66;
                  *(v55 + 2) = v67;
                  *v55 = v56;
                  ++v70;
                }
              }
            }

            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
            if (v68[0])
            {
              mlir::InFlightDiagnostic::report(v68);
            }

            if (v78 != 1)
            {
              return v12;
            }

            if (v77 != &v78)
            {
              free(v77);
            }

            v57 = __p;
            if (__p)
            {
              v58 = v76;
              v59 = __p;
              if (v76 != __p)
              {
                do
                {
                  v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
                }

                while (v58 != v57);
                v59 = __p;
              }

              v76 = v57;
              operator delete(v59);
            }

            v24 = v73;
            if (!v73)
            {
              goto LABEL_99;
            }

            v60 = v74;
            v26 = v73;
            if (v74 == v73)
            {
              goto LABEL_98;
            }

            do
            {
              v62 = *--v60;
              v61 = v62;
              *v60 = 0;
              if (v62)
              {
                MEMORY[0x259C63150](v61, 0x1000C8077774924);
              }
            }

            while (v60 != v24);
            goto LABEL_97;
          }

          v12 = 1;
          if (v16 != v13)
          {
            ++v13;
            v15 += 4;
            v20 = v14 == v7;
            v14 += 8;
            if (!v20)
            {
              continue;
            }
          }

          return v12;
        }

        v65 = 257;
        mlir::OpState::emitOpError(v68, this, v64);
        if (v68[0])
        {
          LODWORD(v66) = 3;
          *(&v66 + 1) = "types mismatch between ";
          v67 = 23;
          if (v70 >= v71)
          {
            if (v69 > &v66 || v69 + 24 * v70 <= &v66)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v35 = v69 + 24 * v70;
          v36 = v66;
          *(v35 + 2) = v67;
          *v35 = v36;
          v37 = ++v70;
          if (v68[0])
          {
            LODWORD(v66) = 5;
            *(&v66 + 1) = v13;
            if (v37 >= v71)
            {
              if (v69 > &v66 || v69 + 24 * v37 <= &v66)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v38 = v69 + 24 * v70;
            v39 = v66;
            *(v38 + 2) = v67;
            *v38 = v39;
            v40 = ++v70;
            if (v68[0])
            {
              LODWORD(v66) = 3;
              *(&v66 + 1) = "th iter operand and defined value";
              v67 = 33;
              if (v40 >= v71)
              {
                if (v69 > &v66 || v69 + 24 * v40 <= &v66)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v41 = v69 + 24 * v70;
              v42 = v66;
              *(v41 + 2) = v67;
              *v41 = v42;
              ++v70;
            }
          }
        }

        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
        if (v68[0])
        {
          mlir::InFlightDiagnostic::report(v68);
        }

        if (v78 != 1)
        {
          return v12;
        }

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

        v24 = v73;
        if (!v73)
        {
          goto LABEL_99;
        }

        v46 = v74;
        v26 = v73;
        if (v74 == v73)
        {
          goto LABEL_98;
        }

        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x259C63150](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v24);
        goto LABEL_97;
      }
    }

    else
    {
      v64[0] = "mismatch in number of basic block args and defined values";
      v65 = 259;
      mlir::OpState::emitOpError(v68, this, v64);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
      if (v68[0])
      {
        mlir::InFlightDiagnostic::report(v68);
      }

      if (v78 == 1)
      {
        if (v77 != &v78)
        {
          free(v77);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v76;
          v31 = __p;
          if (v76 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v76 = v29;
          operator delete(v31);
        }

        v24 = v73;
        if (!v73)
        {
          goto LABEL_99;
        }

        v32 = v74;
        v26 = v73;
        if (v74 == v73)
        {
LABEL_98:
          v74 = v24;
          operator delete(v26);
LABEL_99:
          if (v69 != &v72)
          {
            free(v69);
          }

          return v12;
        }

        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
LABEL_97:
        v26 = v73;
        goto LABEL_98;
      }
    }
  }

  return v12;
}

uint64_t mlir::scf::ForOp::getRegionIterArgs(mlir::scf::ForOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48) + 8;
}

double mlir::scf::ForOp::getLoopInductionVars@<D0>(mlir::scf::ForOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16) = **(v3 + 48);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

double mlir::scf::ForOp::getLoopLowerBounds@<D0>(mlir::scf::ForOp *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = *(*(*this + 72) + 24) | 4;
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

double mlir::scf::ForOp::getLoopSteps@<D0>(mlir::scf::ForOp *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = *(*(*this + 72) + 88) | 4;
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

double mlir::scf::ForOp::getLoopUpperBounds@<D0>(mlir::scf::ForOp *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = *(*(*this + 72) + 56) | 4;
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::scf::ForOp::getLoopResults@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*this + 36);
  v3 = *this - 16;
  if (!v2)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  return this;
}

uint64_t mlir::scf::ForOp::promoteIfSingleIteration(mlir::scf::ForOp *this, mlir::RewriterBase *a2)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v4 = mlir::constantTripCount(*(*(*this + 72) + 24) | 4, *(*(*this + 72) + 56) | 4, *(*(*this + 72) + 88) | 4);
  result = 0;
  if ((v6 & 1) != 0 && v4 == 1)
  {
    v7 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v7)
    {
      v8 = (v7 - 8);
    }

    else
    {
      v8 = 0;
    }

    mlir::Block::getTerminator(v8);
    v10 = v9;
    v11 = *(*this + 36);
    if (v11)
    {
      v12 = *this - 16;
    }

    else
    {
      v12 = 0;
    }

    mlir::ValueRange::ValueRange(&v22, v12, v11);
    YieldedValues = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(this);
    mlir::RewriterBase::replaceAllUsesWith(a2, v22, v23, YieldedValues, v14);
    v22 = &v24;
    v15 = *this;
    v16 = *(*this + 72);
    v24 = *(v16 + 24);
    v23 = 0x600000001;
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v25, v16 + 96, 0, v16 + 96, *(v15 + 68) - 3);
    v17 = *this;
    v18 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v17 + 16);
    mlir::ValueRange::ValueRange(v21, v22, v23);
    (*(*a2 + 32))(a2, v19, v20, v17, v21[0], v21[1]);
    (*(*a2 + 16))(a2, v10);
    (*(*a2 + 16))(a2, *this);
    if (v22 != &v24)
    {
      free(v22);
    }

    return 1;
  }

  return result;
}

uint64_t mlir::scf::ForOp::parse(mlir::scf::ForOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  v32 = 0;
  memset(v29, 0, 24);
  v31 = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = 0;
  memset(v28, 0, 24);
  memset(v27, 0, 24);
  memset(v26, 0, 24);
  if (((*(*this + 704))(this, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 136))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 704))(this, v28, 1) & 1) == 0)
  {
    return 0;
  }

  v40 = 257;
  if (((*(*this + 400))(this, "to", 2, &v37) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 704))(this, v27, 1) & 1) == 0)
  {
    return 0;
  }

  v40 = 257;
  if (((*(*this + 400))(this, "step", 4, &v37) & 1) == 0 || ((*(*this + 704))(this, v26, 1) & 1) == 0)
  {
    return 0;
  }

  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v6 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&v37, v29);
  v7 = (*(*this + 408))(this, "iter_args", 9, v6);
  if ((v7 & 1) != 0 && ((mlir::OpAsmParser::parseAssignmentList(this) & 1) == 0 || ((*(*this + 560))(this, a2 + 64) & 1) == 0))
  {
    goto LABEL_33;
  }

  if (*(a2 + 18) + 1 == v38)
  {
    if ((*(*this + 112))(this))
    {
      if (((*(*this + 536))(this, &v32) & 1) == 0)
      {
LABEL_33:
        result = 0;
        goto LABEL_34;
      }

      IndexType = v32;
    }

    else
    {
      IndexType = mlir::Builder::getIndexType(v5, v8);
      v32 = IndexType;
    }

    *(v37 + 4) = IndexType;
    if ((*(*this + 728))(this, v28) & 1) != 0 && ((*(*this + 728))(this, v27, v32, a2 + 16) & 1) != 0 && ((*(*this + 728))(this, v26, v32, a2 + 16))
    {
      if ((v7 & 1) == 0 || v38 == 1 || !v35 || (v13 = *(a2 + 18), !v13))
      {
LABEL_32:
        mlir::OperationState::addRegion(a2);
      }

      v14 = 0;
      v15 = v34;
      v16 = *(a2 + 8);
      v22 = (v38 << 6) - 128;
      v23 = v37 + 96;
      v17 = (v13 << 6) - 64;
      v18 = (v35 << 6) - 64;
      while (1)
      {
        *&v23[v14] = *v16;
        if (((*(*this + 728))(this, v15) & 1) == 0)
        {
          break;
        }

        if (v22 != v14 && v18 != v14)
        {
          v15 += 32;
          ++v16;
          v19 = v17 == v14;
          v14 += 64;
          if (!v19)
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  v11 = (*(*this + 16))(this);
  v24 = "mismatch in number of loop-carried values and defined values";
  v25 = 259;
  (*(*this + 24))(v33, this, v11, &v24);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
  result = v12;
LABEL_34:
  if (v34 != v36)
  {
    v20 = result;
    free(v34);
    result = v20;
  }

  if (v37 != v39)
  {
    v21 = result;
    free(v37);
    return v21;
  }

  return result;
}

double mlir::scf::ForOp::getLoopRegions@<D0>(mlir::scf::ForOp *this@<X0>, void *a2@<X8>)
{
  a2[2] = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

void mlir::scf::ForOp::replaceWithAdditionalYields(mlir::Operation **a1, void *a2, void *a3, unint64_t a4)
{
  v51[7] = *MEMORY[0x277D85DE8];
  v10 = a2 + 3;
  v11 = *(*a1 + 2);
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
  *v10 = v11;
  v10[1] = v12;
  v13 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    v44 = v46;
    v45 = 0x600000000;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = *(v13 + 17);
  v15 = v14 - 3;
  v16 = v13[9] + 96;
  v44 = v46;
  v45 = 0x600000000;
  if ((v14 - 3) >= 7)
  {
    goto LABEL_3;
  }

  if (v14 == 3)
  {
    v30 = 0;
    LODWORD(v45) = 0;
    v31 = 0;
    if (a4 > 6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = v46;
    if (v15 >= 0xD && (v46 < v16 + 32 * v15 ? (v18 = v16 + 24 >= &v46[v15]) : (v18 = 1), v18))
    {
      v19 = v15 & 3;
      if ((v15 & 3) == 0)
      {
        v19 = 4;
      }

      v20 = v15 - v19;
      v21 = (v16 + 88);
      v22 = &v47;
      v23 = v20;
      do
      {
        v24 = v21 - 8;
        v25 = vld4q_f64(v24);
        v26 = vld4q_f64(v21);
        *(v22 - 1) = v25;
        *v22 = v26;
        v21 += 16;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      v17 = &v46[v20];
    }

    else
    {
      v20 = 0;
    }

    v27 = v15 - v20;
    v28 = (v16 + 32 * v20 + 24);
    do
    {
      v29 = *v28;
      v28 += 4;
      *v17++ = v29;
      --v27;
    }

    while (v27);
    v30 = v45 + v15;
    LODWORD(v45) = v30;
    v31 = v30;
    if (a4 + v30 > HIDWORD(v45))
    {
LABEL_20:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v48 = a3;
  v49 = 0;
  if (a4)
  {
    v32 = 0;
    v33 = (v44 + 8 * v31);
    do
    {
      *v33++ = mlir::ValueRange::dereference_iterator(&v48, v32);
      v32 = v49 + 1;
      v49 = v32;
    }

    while (v32 != a4);
    v30 = v45;
  }

  LODWORD(v45) = v30 + a4;
  v34 = *(*a1 + 3);
  v35 = *(*a1 + 9);
  v36 = v35[3];
  v37 = v35[7];
  v38 = v35[11];
  v43 = v34;
  Context = mlir::Attribute::getContext(&v43);
  v40 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if (v41)
  {
    mlir::OperationState::OperationState(&v48, v34, v40);
    mlir::ValueRange::ValueRange(v51, v44, v45);
    mlir::scf::ForOp::build((v10 - 2), &v48, v36, v37, v38, v51[0], v51[1], v42, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<mlir::scf::ForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_0>, &v50);
  }

  mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(&v48, v51, &v50);
}

uint64_t mlir::scf::getForInductionVarOwner(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = mlir::Block::getParentOp(*(a1 + 16));
      if (result)
      {
        if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 mlir::scf::ForOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = ((*(v6 + 56) - v7) >> 3) - 1;
  v19.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  mlir::ValueRange::ValueRange(&v19.n128_u64[1], v7 + 8, v8);
  v9 = *(a3 + 8);
  v10 = *a3;
  if (v9 >= *(a3 + 12))
  {
    if (v10 > &v19 || v10 + 24 * v9 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v10 + 24 * *(a3 + 8));
  v12 = v19;
  v11[1].n128_u64[0] = v20;
  *v11 = v12;
  ++*(a3 + 8);
  v13 = *(*a1 + 36);
  if (v13)
  {
    v14 = *a1 - 16;
  }

  else
  {
    v14 = 0;
  }

  v19.n128_u64[0] = 0;
  mlir::ValueRange::ValueRange(&v19.n128_u64[1], v14, v13);
  v15 = *(a3 + 8);
  v16 = *a3;
  if (v15 >= *(a3 + 12))
  {
    if (v16 > &v19 || v16 + 24 * v15 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = (v16 + 24 * *(a3 + 8));
  result = v19;
  v17[1].n128_u64[0] = v20;
  *v17 = result;
  ++*(a3 + 8);
  return result;
}

double mlir::scf::ForallOp::getLoopRegions@<D0>(mlir::scf::ForallOp *this@<X0>, void *a2@<X8>)
{
  a2[2] = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

void mlir::scf::ForallOp::getInitsMutable(mlir::scf::ForallOp *this)
{
  v1 = *MEMORY[0x277D85DE8];
  mlir::Attribute::getContext((*this + 24));
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

void mlir::scf::ForallOp::getTerminator(mlir::scf::ForallOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    mlir::Block::getTerminator((v1 - 8));
  }

  else
  {
    mlir::Block::getTerminator(0);
  }
}

uint64_t mlir::scf::InParallelOp::getYieldingOps(mlir::scf::InParallelOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 40);
}

void mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if (v21)
  {
    mlir::OperationState::OperationState(v28, a2, v20);
    v22 = *a3;
    v23 = *a4;
    v24 = *a5;
    mlir::ValueRange::ValueRange(v30, *a6, a6[1]);
    mlir::ValueRange::ValueRange(v29, *a7, a7[1]);
    mlir::ValueRange::ValueRange(v27, *a8, a8[1]);
    mlir::tensor::InsertSliceOp::build(a1, v28, v22, v23, v24, v30[0], v30[1], v25, v29[0], v29[1], v27[0], v27[1], *a9, a9[1], *a10, a10[1], *a11, a11[1]);
  }

  mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v28, v30, v29);
}

void mlir::scf::buildLoopNest(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(void **__return_ptr, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t), uint64_t a13)
{
  v44[5] = *MEMORY[0x277D85DE8];
  v40[0] = a3;
  v40[1] = a4;
  v39[0] = a5;
  v39[1] = a6;
  v38[0] = a7;
  v38[1] = a8;
  if (a4)
  {
    __src = &v37;
    v36 = 0x400000000;
    v33[0] = &v34;
    v33[1] = 0x400000000;
    if (a4 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = a10;
    v32 = a11;
    v28 = a2;
    v17 = mlir::ValueRange::dereference_iterator(v40, 0);
    v18 = mlir::ValueRange::dereference_iterator(v39, 0);
    v19 = mlir::ValueRange::dereference_iterator(v38, 0);
    v27[0] = v33;
    v27[1] = &v31;
    v27[2] = &v28;
    v29 = v28;
    Context = mlir::Attribute::getContext(&v29);
    v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
    if (v22)
    {
      mlir::OperationState::OperationState(&v41, a2, v21);
      mlir::scf::ForOp::build(a1, &v41, v17, v18, v19, v31, v32, v23, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<mlir::scf::buildLoopNest(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,llvm::function_ref<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>)::$_0>, v27);
    }

    mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(&v41, v30, v44);
  }

  if (a12)
  {
    mlir::ValueRange::ValueRange(v30, 0, 0);
    a12(&v41, a13, a1, a2, v30[0], v30[1], a10, a11);
    v24 = v42;
    v25 = v41;
  }

  else
  {
    v24 = 0;
    v25 = v43;
    v41 = v43;
    v42 = 0x600000000;
  }

  *a9 = a9 + 16;
  *(a9 + 8) = 0x600000000;
  *(a9 + 64) = a9 + 80;
  *(a9 + 72) = 0x600000000;
  if ((a9 + 64) != &v41 && v24)
  {
    if (v25 == v43)
    {
      if (v24 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v42)
      {
        memcpy(*(a9 + 64), v25, 8 * v42);
        v25 = v41;
      }

      *(a9 + 72) = v24;
    }

    else
    {
      *(a9 + 64) = v25;
      v26 = HIDWORD(v42);
      *(a9 + 72) = v24;
      *(a9 + 76) = v26;
      v41 = v43;
      HIDWORD(v42) = 0;
      v25 = v43;
    }

    LODWORD(v42) = 0;
  }

  if (v25 != v43)
  {
    free(v25);
  }
}

char *mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ResultRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, a3[1]);
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
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

void mlir::scf::buildLoopNest(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = a10;
  v21[1] = a11;
  mlir::ValueRange::ValueRange(v22, 0, 0);
  v20 = v21;
  mlir::scf::buildLoopNest(a1, a2, a3, a4, a5, a6, a7, a8, a9, v22[0], v22[1], llvm::function_ref<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::scf::buildLoopNest(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>)::$_0>, &v20);
}

void mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v22, a2, v13);
    v15 = *a3;
    v16 = *a4;
    v17 = *a5;
    mlir::ValueRange::ValueRange(v23, *a6, *(a6 + 8));
    mlir::scf::ForOp::build(a1, v22, v15, v16, v17, v23[0], v23[1], v18, 0, v19);
  }

  mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(v22, v23, v21);
}

uint64_t mlir::scf::ForOp::getConstantStep@<X0>(mlir::scf::ForOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(*this + 72) + 88);
  v7 = &v8;
  v8 = 0;
  v5 = v3;
  result = mlir::Value::getDefiningOp(&v5);
  if (result && (result = mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v7, result), result))
  {
    result = mlir::IntegerAttr::getValue(&v8, &v5);
    *(a2 + 8) = v6;
    *a2 = v5;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t mlir::scf::ForOp::getSpeculatability(mlir::scf::ForOp *this)
{
  v1 = *(*(*this + 72) + 88);
  v11 = &v12;
  v12 = 0;
  v9 = v1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v11, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v12, &v9);
  v3 = v10;
  v7 = v10;
  v6 = v9;
  v8 = 1;
  if (v10 < 0x41)
  {
    if (v6 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    v4 = 0;
    if (v3 < 0x41)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3 - llvm::APInt::countLeadingZerosSlowCase(&v6) <= 0x40 && *v6 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  v4 = 1;
  if (v3 < 0x41)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v6)
  {
    MEMORY[0x259C63150](v6, 0x1000C8000313F17);
  }

LABEL_13:
  if (v4)
  {
    return 0;
  }

  return 2;
}

void mlir::scf::ForallOp::verify(mlir::scf::ForallOp *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

BOOL mlir::scf::ForallOp::parse(mlir::scf::ForallOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v45[32] = *MEMORY[0x277D85DE8];
  v22[0] = mlir::AsmParser::getContext(this);
  memset(&v22[1], 0, 24);
  IndexType = mlir::Builder::getIndexType(v22, v5);
  v43 = v45;
  v44 = 0x400000000;
  v7 = 0;
  if (((*(*this + 768))(this, &v43, 1, 0, 0) & 1) == 0)
  {
    goto LABEL_36;
  }

  v20 = 0;
  v21 = 0;
  v19 = 0;
  v40 = v42;
  v41 = 0x100000000;
  v37 = v39;
  v38 = 0x100000000;
  v34 = v36;
  v35 = 0x100000000;
  if ((*(*this + 408))(this, "in", 2))
  {
    __b = 0;
    if (mlir::parseDynamicIndexList(this, &v37, &v20, &__b, 0))
    {
      if (!v38)
      {
LABEL_8:
        v10 = v44;
        __b = v32;
        HIDWORD(v31) = 6;
        if (v44 >= 7)
        {
          LODWORD(v31) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v44)
        {
          bzero(v32, 8 * v44);
        }

        LODWORD(v31) = v10;
        mlir::Builder::getDenseI64ArrayAttr(v22, v32, v10);
      }

      v8 = v37;
      v9 = 32 * v38;
      while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
      {
        v8 += 32;
        v9 -= 32;
        if (!v9)
        {
          goto LABEL_8;
        }
      }
    }

    goto LABEL_29;
  }

  if ((*(*this + 136))(this))
  {
    __b = 0;
    if (mlir::parseDynamicIndexList(this, &v40, &v21, &__b, 0))
    {
      if (v41)
      {
        v11 = v40;
        v12 = 32 * v41;
        while (((*(*this + 728))(this, v11, IndexType, a2 + 16) & 1) != 0)
        {
          v11 += 32;
          v12 -= 32;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_29;
      }

LABEL_16:
      v33 = 257;
      if ((*(*this + 400))(this, "to", 2, &__b))
      {
        __b = 0;
        if (mlir::parseDynamicIndexList(this, &v37, &v20, &__b, 0))
        {
          if (v38)
          {
            v13 = v37;
            v14 = 32 * v38;
            while (((*(*this + 728))(this, v13, IndexType, a2 + 16) & 1) != 0)
            {
              v13 += 32;
              v14 -= 32;
              if (!v14)
              {
                goto LABEL_22;
              }
            }

            goto LABEL_29;
          }

LABEL_22:
          v33 = 257;
          if ((*(*this + 400))(this, "step", 4, &__b))
          {
            __b = 0;
            if (mlir::parseDynamicIndexList(this, &v34, &v19, &__b, 0))
            {
              if (v35)
              {
                v15 = v34;
                v16 = 32 * v35;
                while (((*(*this + 728))(this, v15, IndexType, a2 + 16) & 1) != 0)
                {
                  v15 += 32;
                  v16 -= 32;
                  if (!v16)
                  {
                    goto LABEL_42;
                  }
                }

                goto LABEL_29;
              }

LABEL_42:
              __b = v32;
              v31 = 0x400000000;
              v27 = v29;
              v28 = 0x400000000;
              v18 = (*(*this + 40))(this);
              if ((*(*this + 408))(this, "shared_outs", 11))
              {
                if (v28 == *(a2 + 18))
                {
                  if ((mlir::OpAsmParser::parseAssignmentList(this) & 1) != 0 && ((*(*this + 568))(this, a2 + 64) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v27, a2 + 64, v18, a2 + 16))
                  {
                    goto LABEL_47;
                  }

                  v7 = 0;
                }

                else
                {
                  v25 = "mismatch between out operands and types";
                  v26 = 259;
                  (*(*this + 24))(v23, this, v18, &v25);
                  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
                }

                if (v27 != v29)
                {
                  free(v27);
                }

                if (__b != v32)
                {
                  free(__b);
                }

                goto LABEL_30;
              }

LABEL_47:
              v23[0] = &v24;
              v23[1] = 0x400000000;
              operator new();
            }
          }
        }
      }
    }
  }

LABEL_29:
  v7 = 0;
LABEL_30:
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

LABEL_36:
  if (v43 != v45)
  {
    free(v43);
  }

  return v7;
}

void mlir::scf::ForallOp::ensureTerminator(uint64_t *a1, void *a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  mlir::impl::ensureRegionTerminator(a1, a2, a3, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator);
  v5 = a1[1];
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  mlir::Block::getTerminator(v6);
  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = (((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40));
  if (*v9 == v9)
  {
    mlir::TypeRange::TypeRange(v10, 0, 0);
    mlir::OpBuilder::createBlock(a2, v9, 0, v10[0], v10[1], 0, 0);
  }
}

uint64_t mlir::OperationState::addAttribute(mlir::Attribute *a1, size_t a2, size_t a3, uint64_t a4)
{
  Context = mlir::Attribute::getContext(a1);
  v13 = 261;
  v12[0] = a2;
  v12[1] = a3;
  v10 = mlir::StringAttr::get(Context, v12, v9);
  mlir::NamedAttribute::NamedAttribute(v14, v10, a4);
  return mlir::NamedAttrList::push_back(a1 + 112, v14[0], v14[1]);
}

void mlir::scf::ForallOp::build(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12, void (*a13)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a14)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v40 = v42;
  v41 = 0x600000000;
  v38[0] = &v39;
  v38[1] = 0x600000000;
  v36[0] = &v37;
  v36[1] = 0x600000000;
  v33 = &v35;
  v34 = 0x600000000;
  v30 = &v32;
  v31 = 0x600000000;
  v27 = &v29;
  v28 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v33, &v40);
  mlir::dispatchIndexOpFoldResults(a5, a6, &v30, v38);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v27, v36);
  mlir::ValueRange::ValueRange(&v25, v33, v34);
  mlir::OperationState::addOperands(a2, v25, v26);
  mlir::ValueRange::ValueRange(&v25, v30, v31);
  mlir::OperationState::addOperands(a2, v25, v26);
  mlir::ValueRange::ValueRange(&v25, v27, v28);
  mlir::OperationState::addOperands(a2, v25, v26);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::TypeRange::TypeRange(&v25, a9, a10);
  v21 = v25;
  v20 = v26;
  v22 = *(a2 + 72);
  if (v26 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v22;
    do
    {
      *(v24 + 8 * v23) = mlir::TypeRange::dereference_iterator(v21, v23);
      ++v23;
    }

    while (v20 != v23);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  mlir::Builder::getDenseI64ArrayAttr(a1, v40, v41);
}

void mlir::scf::ForallOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8, void (*a9)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a10)
{
  v34[5] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = mlir::Builder::getIndexAttr(a1, 0) & 0xFFFFFFFFFFFFFFFBLL;
  v31 = &v33;
  v32 = 0x600000000;
  if (v14 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    v16 = 0;
    v17 = vdupq_n_s64(v14 - 1);
    v18 = v34;
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v16), xmmword_2573686A0)));
      if (v19.i8[0])
      {
        *(v18 - 1) = v15;
        if (v19.i8[4])
        {
LABEL_10:
          *v18 = v15;
        }
      }

      else if (v19.i8[4])
      {
        goto LABEL_10;
      }

      v16 += 2;
      v18 += 2;
    }

    while (((a4 + 1) & 0xE) != v16);
  }

  LODWORD(v32) = a4;
  v20 = mlir::Builder::getIndexAttr(a1, 1) & 0xFFFFFFFFFFFFFFFBLL;
  if (!v14)
  {
LABEL_19:
    mlir::scf::ForallOp::build(a1, a2, v31, v32, a3, a4, &v29, v14, a5, a6, a7, a8, a9, a10);
  }

  v21 = 0;
  v22 = vdupq_n_s64(v14 - 1);
  v23 = &v30;
  while (1)
  {
    v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v21), xmmword_2573686A0)));
    if (v24.i8[0])
    {
      *(v23 - 1) = v20;
      if (v24.i8[4])
      {
LABEL_18:
        *v23 = v20;
      }
    }

    else if (v24.i8[4])
    {
      goto LABEL_18;
    }

    v21 += 2;
    v23 += 2;
    if (((a4 + 1) & 0xE) == v21)
    {
      goto LABEL_19;
    }
  }
}

void mlir::scf::ForallOp::getCombiningOps(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v5 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  mlir::Block::getTerminator(v6);
  v8 = *(((v7 + 16 * ((*(v7 + 44) >> 23) & 1) + ((*(v7 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + 32;
  v11 = *(v9 + 40);
  if (v11 != v9 + 32)
  {
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v13 = *(*(v12 + 48) + 16);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id;
      if (v13 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v18 = v15;
      if (v14)
      {
        ODSOperandIndexAndLength = mlir::tensor::ParallelInsertSliceOp::getODSOperandIndexAndLength(&v18, 1u);
        if (*(*(v18 + 72) + 32 * ODSOperandIndexAndLength + 24) == a2)
        {
          v17 = *(a3 + 8);
          if (v17 >= *(a3 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a3 + 8 * v17) = v18;
          ++*(a3 + 8);
        }
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }
}

uint64_t mlir::scf::getForallOpThreadIndexOwner(uint64_t a1)
{
  result = 0;
  if (a1 && (*(a1 + 8) & 7) == 7)
  {
    result = mlir::Block::getParentOp(*(a1 + 16));
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

__n128 mlir::scf::ForallOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  mlir::ValueRange::ValueRange(&v12.n128_u64[1], 0, 0);
  v4 = *(a3 + 8);
  v5 = *a3;
  if (v4 >= *(a3 + 12))
  {
    if (v5 > &v12 || v5 + 24 * v4 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 24 * *(a3 + 8));
  v7 = v12;
  v6[1].n128_u64[0] = v13;
  *v6 = v7;
  ++*(a3 + 8);
  v12.n128_u64[0] = 0;
  mlir::ValueRange::ValueRange(&v12.n128_u64[1], 0, 0);
  v8 = *(a3 + 8);
  v9 = *a3;
  if (v8 >= *(a3 + 12))
  {
    if (v9 > &v12 || v9 + 24 * v8 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = (v9 + 24 * *(a3 + 8));
  result = v12;
  v10[1].n128_u64[0] = v13;
  *v10 = result;
  ++*(a3 + 8);
  return result;
}

BOOL mlir::scf::InParallelOp::verify(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  ParentOp = mlir::Block::getParentOp(*(*this + 2));
  if (ParentOp)
  {
    v3 = *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v13 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
    if (v13)
    {
      v14 = v13 - 8;
    }

    else
    {
      v14 = 0;
    }

    if (*(v14 + 40) == v14 + 32)
    {
      return 1;
    }

    v15 = ParentOp;
    v16 = ParentOp + 64;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
    {
      v32 = v17;
      mlir::tensor::ParallelInsertSliceOp::getODSOperandIndexAndLength(&v32, 1u);
      v32 = *(v16 + 16 * ((*(v15 + 44) >> 23) & 1) + 8);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }

    v27 = "expected only ";
    v28 = 259;
    mlir::OpState::emitOpError(&v32, this, &v27);
    if (v32)
    {
      v31 = 262;
      *&v29 = "tensor.parallel_insert_slice";
      *(&v29 + 1) = 28;
      mlir::Diagnostic::operator<<(&v33, &v29);
      if (v32)
      {
        LODWORD(v29) = 3;
        *(&v29 + 1) = " ops";
        v30 = 4;
        if (v35 >= v36)
        {
          if (v34 > &v29 || v34 + 24 * v35 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v34 + 24 * v35;
        v19 = v29;
        *(v18 + 2) = v30;
        *v18 = v19;
        ++v35;
      }
    }

    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
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

      v20 = __p;
      if (__p)
      {
        v21 = v41;
        v22 = __p;
        if (v41 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v41 = v20;
        operator delete(v22);
      }

      v8 = v38;
      if (!v38)
      {
        goto LABEL_50;
      }

      v23 = v39;
      v10 = v38;
      if (v39 == v38)
      {
        goto LABEL_49;
      }

      do
      {
        v25 = *--v23;
        v24 = v25;
        *v23 = 0;
        if (v25)
        {
          MEMORY[0x259C63150](v24, 0x1000C8077774924);
        }
      }

      while (v23 != v8);
      goto LABEL_48;
    }
  }

  else
  {
    *&v29 = "expected forall op parent";
    v31 = 259;
    mlir::OpState::emitOpError(&v32, this, &v29);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
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

      v5 = __p;
      if (__p)
      {
        v6 = v41;
        v7 = __p;
        if (v41 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v41 = v5;
        operator delete(v7);
      }

      v8 = v38;
      if (!v38)
      {
        goto LABEL_50;
      }

      v9 = v39;
      v10 = v38;
      if (v39 == v38)
      {
LABEL_49:
        v39 = v8;
        operator delete(v10);
LABEL_50:
        if (v34 != &v37)
        {
          free(v34);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x259C63150](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_48:
      v10 = v38;
      goto LABEL_49;
    }
  }

  return v4;
}

uint64_t mlir::scf::InParallelOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v7, 0, 0);
}

void mlir::scf::InParallelOp::parse(mlir::scf::InParallelOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v5[64] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this);
  v3 = v5;
  v4 = 0x800000000;
  operator new();
}

uint64_t mlir::scf::InParallelOp::getParentResult(mlir::scf::InParallelOp *this, unsigned int a2)
{
  ParentOp = *(*this + 16);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (a2 <= 5)
  {
    return ParentOp - 16 * ((a2 + 1) & 0xF);
  }

  else
  {
    return ParentOp - 24 * a2 + 24;
  }
}

void mlir::scf::InParallelOp::getDests(mlir::scf::InParallelOp *this@<X0>, uint64_t a2@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + 32;
  v6 = *(v4 + 40);
  __src = v19;
  v18 = 0x400000000;
  if (v6 == v4 + 32)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
  }

  else
  {
    v7 = 0;
    v8 = v6;
    do
    {
      v8 = *(v8 + 8);
      --v7;
    }

    while (v8 != v5);
    if (v7 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v19;
    do
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      v16 = v10;
      ODSOperandIndexAndLength = mlir::tensor::ParallelInsertSliceOp::getODSOperandIndexAndLength(&v16, 1u);
      *v9++ = *(*(v16 + 72) + 32 * ODSOperandIndexAndLength + 24);
      v6 = *(v6 + 8);
    }

    while (v6 != v5);
    v12 = v18;
    v13 = v18 - v7;
    LODWORD(v18) = v18 - v7;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    v14 = __src;
    if (v12 != v7 && &__src != a2)
    {
      if (__src == v19)
      {
        if (v13 > 6)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, __src, 8 * v13);
        v14 = __src;
        *(a2 + 8) = v13;
      }

      else
      {
        *a2 = __src;
        v15 = HIDWORD(v18);
        *(a2 + 8) = v13;
        *(a2 + 12) = v15;
        __src = v19;
        HIDWORD(v18) = 0;
        v14 = v19;
      }

      LODWORD(v18) = 0;
    }

    if (v14 != v19)
    {
      free(v14);
    }
  }
}

uint64_t mlir::scf::insideMutuallyExclusiveBranches(uint64_t this, mlir::Operation *a2, mlir::Operation *a3)
{
  v4 = this;
  while (1)
  {
    this = *(this + 16);
    if (!this)
    {
      return this;
    }

    this = mlir::Block::getParentOp(this);
    if (!this)
    {
      return this;
    }

    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
    {
      v5 = this;
      if (mlir::Operation::isProperAncestor(this, a2))
      {
        this = v5;
LABEL_7:
        v6 = this + 64;
        v7 = *(((this + 64 + 16 * ((*(this + 44) >> 23) & 1) + ((*(this + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 40));
        if (v7)
        {
          v8 = (v7 - 8);
        }

        else
        {
          v8 = 0;
        }

        v9 = this;
        v10 = mlir::Block::findAncestorOpInBlock(v8, v4) != 0;
        v11 = *(((v6 + 16 * ((*(v9 + 44) >> 23) & 1) + ((*(v9 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40));
        if (v11)
        {
          v12 = (v11 - 8);
        }

        else
        {
          v12 = 0;
        }

        return v10 ^ (mlir::Block::findAncestorOpInBlock(v12, a2) != 0);
      }

      else
      {
        this = v5;
        while (1)
        {
          this = *(this + 16);
          if (!this)
          {
            break;
          }

          this = mlir::Block::getParentOp(this);
          if (!this)
          {
            break;
          }

          if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
          {
            v13 = this;
            v14 = mlir::Operation::isProperAncestor(this, a2);
            this = v13;
            if (v14)
            {
              goto LABEL_7;
            }
          }
        }
      }

      return this;
    }
  }
}

uint64_t mlir::scf::IfOp::thenBlock(mlir::scf::IfOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  if (v1)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::scf::IfOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a4 + 32))
  {
    return 0;
  }

  v6 = mlir::RegionRange::dereference_iterator((a4 + 24), 0);
  if (*v6 == v6)
  {
    return 0;
  }

  v7 = v6[1];
  v8 = v7 ? v7 - 8 : 0;
  if (*(v8 + 32) == v8 + 32)
  {
    return 0;
  }

  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    return 0;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v11 = *(v9 + 72);
    v12 = *(v9 + 68);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v17 = v11;
  v18 = v12;
  mlir::OperandRange::getTypes(&v13, &v17);
  mlir::ValueRange::ValueRange(&v17, v13 + 32 * v14, v15 - v14);
  mlir::TypeRange::TypeRange(v16, v17, v18);
  llvm::SmallVectorImpl<mlir::Type>::insert<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a5, *a5 + 8 * *(a5 + 8), v16[0], 0, v16[0], v16[1]);
  return 1;
}

void mlir::scf::IfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v13[0] = a5;
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      *(v12 + 8 * v11) = mlir::TypeRange::dereference_iterator(a3, v11);
      ++v11;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  mlir::OperationState::addOperands(a2, v13, 1uLL);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::IfOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v8, 0, 0);
  mlir::scf::IfOp::build(a1, a2, v8[0], v8[1], a3, v4);
}

void mlir::scf::IfOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v12[0] = a5;
  v9 = *(a2 + 18);
  if (a4 + v9 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = a2[8] + 8 * v9;
    do
    {
      *(v11 + 8 * v10) = mlir::TypeRange::dereference_iterator(a3, v10);
      ++v10;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 18);
  }

  *(a2 + 18) = v9 + a4;
  mlir::OperationState::addOperands(a2, v12, 1uLL);
  mlir::OperationState::addRegion(a2);
}

void mlir::scf::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void), uint64_t a5, void (*a6)(uint64_t, uint64_t, void), uint64_t a7)
{
  v8[28] = *MEMORY[0x277D85DE8];
  v8[0] = a3;
  mlir::OperationState::addOperands(a2, v8, 1uLL);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::scf::IfOp::inferReturnTypes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = *MEMORY[0x277D85DE8];
  *&v17 = a6;
  BYTE8(v17) = 0;
  LOBYTE(v18) = 0;
  *(&v18 + 1) = a9;
  *&v19 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v17);
    if (v18 == 1)
    {
      LOBYTE(v18) = 0;
    }

    a1 = mlir::OperationName::OperationName(&v17 + 1, "scf.if", 6uLL, Context);
    LOBYTE(v18) = 1;
  }

  *(&v19 + 1) = a4;
  v20 = a5;
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v16 = a5;
  return mlir::scf::IfOp::inferReturnTypes(a1, a2, a3, v15, a11);
}

BOOL mlir::scf::IfOp::verify(mlir::Operation **this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(*this + 9))
  {
    return 1;
  }

  v1 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v1 + 24) != v1 + 24)
  {
    return 1;
  }

  v12 = "must have an else block if defining values";
  v13 = 259;
  mlir::OpState::emitOpError(v14, this, &v12);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  v3 = result;
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
    result = v3;
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
      result = v3;
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
      result = v3;
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x259C63150](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
      result = v3;
    }

    if (v15 != &v16)
    {
      free(v15);
      return v3;
    }
  }

  return result;
}

uint64_t mlir::scf::IfOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 9);
  if (v6)
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = v7[4];
    if ((v7[3] - v8) > 4)
    {
      *(v8 + 4) = 40;
      *v8 = 540945696;
      v7[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v7, " -> (", 5uLL);
    }

    v9 = *(*this + 9);
    v10 = *this - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v35[0] = v10;
    v35[1] = v9;
    mlir::ResultRange::getTypes(&AttrDictionary, v35);
    v11 = v33;
    v12 = v34;
    if (v33 != v34)
    {
      v13 = AttrDictionary;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v33);
      (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v11 + 1; v12 != i; ++i)
      {
        v30 = (*(*a2 + 16))(a2);
        v31 = v30[4];
        if (v30[3] - v31 <= 1uLL)
        {
          llvm::raw_ostream::write(v30, ", ", 2uLL);
        }

        else
        {
          *v31 = 8236;
          v30[4] += 2;
        }

        v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, i);
        (*(*a2 + 32))(a2, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if (v16[3] == v17)
    {
      llvm::raw_ostream::write(v16, ")", 1uLL);
    }

    else
    {
      *v17 = 41;
      ++v16[4];
    }
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, v6 != 0, 0);
  v20 = *this;
  v21 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v23 = *(v21 + 24);
  v22 = v21 + 24;
  if (v23 != v22)
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = v24[4];
    if ((v24[3] - v25) > 5)
    {
      *(v25 + 4) = 8293;
      *v25 = 1936483616;
      v24[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v24, " else ", 6uLL);
    }

    (*(*a2 + 224))(a2, v22, 0, v6 != 0, 0);
    v20 = *this;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v20);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v27, 0, 0);
}

__n128 mlir::scf::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(*a1 + 36);
    if (v5)
    {
      v6 = *a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    v18.n128_u64[0] = 0;
    mlir::ValueRange::ValueRange(&v18.n128_u64[1], v6, v5);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 >= *(a3 + 12))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    mlir::ValueRange::ValueRange(&v18.n128_u64[1], 0, 0);
    v9 = *(a3 + 8);
    v10 = *a3;
    if (v9 >= *(a3 + 12))
    {
      if (v10 > &v18 || v10 + 24 * v9 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (v10 + 24 * *(a3 + 8));
    v12 = v18;
    v11[1].n128_u64[0] = v19;
    *v11 = v12;
    ++*(a3 + 8);
    v13 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v15 = *(v13 + 24);
    v14 = v13 + 24;
    if (v15 == v14)
    {
      v18.n128_u64[0] = 0;
    }

    else
    {
      v18.n128_u64[0] = v14;
    }

    mlir::ValueRange::ValueRange(&v18.n128_u64[1], 0, 0);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 >= *(a3 + 12))
    {
LABEL_13:
      if (v8 <= &v18 && v8 + 24 * v7 > &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v16 = (v8 + 24 * *(a3 + 8));
  result = v18;
  v16[1].n128_u64[0] = v19;
  *v16 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::IfOp::getEntrySuccessorRegions(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v29[1] = *(*a1 + 56);
  v29[2] = v9;
  v30 = 1;
  v10 = *(v8 + 44);
  if ((v10 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange(v31, ((v8 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40), v10 & 0x7FFFFF);
    v32 = a2;
    v33 = a3;
    v11 = *a2;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    v29[0] = 0;
    goto LABEL_11;
  }

  mlir::RegionRange::RegionRange(v31, 0, 0);
  v32 = a2;
  v33 = a3;
  v11 = *a2;
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (mlir::BoolAttr::classof(v11))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v29[0] = v12;
  if (v12 && !mlir::BoolAttr::getValue(v29))
  {
LABEL_13:
    if (v29[0])
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_11:
  v13 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v28[0] = v13;
  v14 = *(a4 + 8);
  if (v14 < *(a4 + 12))
  {
    v15 = (*a4 + 24 * v14);
    *v15 = v13;
    mlir::ValueRange::ValueRange(v15 + 1, 0, 0);
    ++*(a4 + 8);
    goto LABEL_13;
  }

  llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v28);
  if (v29[0])
  {
LABEL_14:
    result = mlir::BoolAttr::getValue(v29);
    if (result)
    {
      return result;
    }
  }

LABEL_15:
  v17 = *a1;
  v18 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v20 = *(v18 + 24);
  v19 = v18 + 24;
  if (v20 == v19)
  {
    v23 = *(v17 + 36);
    v24 = v17 - 16;
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v28[0] = v25;
    v28[1] = v23;
    v26 = *(a4 + 8);
    if (v26 >= *(a4 + 12))
    {
      return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, v28);
    }

    v27 = (*a4 + 24 * v26);
    *v27 = 0;
    result = mlir::ValueRange::ValueRange(v27 + 1, v25, v23);
  }

  else
  {
    v28[0] = v19;
    v21 = *(a4 + 8);
    if (v21 >= *(a4 + 12))
    {
      return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v28);
    }

    v22 = (*a4 + 24 * v21);
    *v22 = v19;
    result = mlir::ValueRange::ValueRange(v22 + 1, 0, 0);
  }

  ++*(a4 + 8);
  return result;
}

uint64_t mlir::scf::IfOp::fold(uint64_t *a1)
{
  v1 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  if (*(v1 + 24) == v1 + 24)
  {
    return 0;
  }

  v36 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    return 0;
  }

  v4 = result;
  v34 = *(*(result + 72) + 56);
  result = mlir::Value::getDefiningOp(&v34);
  if (result)
  {
    v5 = result;
    v37 = 1;
    v35 = &v36;
    v36 = 0;
    v38 = &v39;
    v39 = 0;
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v38, result) && ((v6 = *(*(*(v5 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v9 = 1), v9 && mlir::detail::constant_int_value_binder::match(&v35, v39)))
    {
      v10 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v36);
      v11 = v4;
      if (v37 < 0x41)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0;
      v11 = v4;
      if (v37 < 0x41)
      {
        goto LABEL_25;
      }
    }

    if (v36)
    {
      MEMORY[0x259C63150](v36, 0x1000C8000313F17);
      v11 = v4;
    }

LABEL_25:
    if (v10)
    {
      v12 = *a1;
      v13 = *(*a1 + 72);
      v14 = *(*(v11 + 72) + 24);
      v15 = v13[1];
      if (v15)
      {
        v16 = *v13;
        *v15 = *v13;
        if (v16)
        {
          *(v16 + 8) = v15;
        }
      }

      v13[3] = v14;
      v13[1] = v14;
      v17 = *v14;
      *v13 = *v14;
      if (v17)
      {
        *(v17 + 8) = v13;
      }

      *v14 = v13;
      v18 = (((v12 + 16 * ((*(v12 + 44) >> 23) & 1) + ((*(v12 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v12 + 40));
      v19 = v18[1];
      if (v19)
      {
        v20 = v19 - 1;
      }

      else
      {
        v20 = 0;
      }

      v21 = v18 + 3;
      if (v18[3] != v18 + 3 && v21 != v19)
      {
        v22 = v18[4];
        llvm::ilist_traits<mlir::Block>::transferNodesFromList(v18, (v18 + 3), v22, (v18 + 3));
        if (v22 != v21)
        {
          v23 = *v21;
          v24 = *v22;
          *(v24 + 8) = v21;
          *v21 = v24;
          v25 = *v19;
          *(v23 + 8) = v19;
          *v22 = v25;
          *(v25 + 8) = v22;
          *v19 = v23;
        }
      }

      v26 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v27 = *(v26 + 32);
      if (v19)
      {
        v28 = v20 + 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28[1];
      if (v28 != v27 && v29 != v27)
      {
        llvm::ilist_traits<mlir::Block>::transferNodesFromList(v26 + 24, v26, v28, v28[1]);
        if (v29 != v28)
        {
          v31 = *v29;
          v32 = *v28;
          *(v32 + 8) = v29;
          *v29 = v32;
          v33 = *v27;
          *(v31 + 8) = v27;
          *v28 = v33;
          *(v33 + 8) = v28;
          *v27 = v31;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void mlir::scf::IfOp::getRegionInvocationBounds(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a2;
  if (!*a2 || (!(v6 = mlir::BoolAttr::classof(*a2)) ? (v7 = 0) : (v7 = v5), v23 = v7, !v6))
  {
    *v21 = 0;
    *&v21[4] = 0x100000001;
    v14 = *v21;
    if (*(a4 + 3) <= 1u)
    {
      *(a4 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = *(a4 + 2);
    if (v15)
    {
      v16 = *a4;
      *v16 = *v21;
      *(v16 + 8) = 1;
      if (v15 != 1)
      {
        *(v16 + 12) = v14;
        *(v16 + 20) = 1;
      }

      v17 = *(a4 + 2);
      if (v17 > 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = *a4 + 12 * v17;
    v19 = v17 - 2;
    do
    {
      *v18 = v14;
      *(v18 + 8) = 1;
      v18 += 12;
    }

    while (!__CFADD__(v19++, 1));
LABEL_21:
    *(a4 + 2) = 2;
    return;
  }

  *v21 = 0;
  Value = mlir::BoolAttr::getValue(&v23);
  v22 = Value;
  v9 = *(a4 + 2);
  if (v9 >= *(a4 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(a4, v21, &v22);
  }

  else
  {
    v10 = *a4 + 12 * v9;
    *v10 = 0;
    *(v10 + 4) = Value | 0x100000000;
    ++*(a4 + 2);
  }

  *v21 = 0;
  v11 = mlir::BoolAttr::getValue(&v23);
  v22 = !v11;
  v12 = *(a4 + 2);
  if (v12 >= *(a4 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(a4, v21, &v22);
  }

  else
  {
    v13 = *a4 + 12 * v12;
    *v13 = 0;
    *(v13 + 4) = !v11 | 0x100000000;
    ++*(a4 + 2);
  }
}

uint64_t mlir::scf::IfOp::elseBlock(mlir::scf::IfOp *this)
{
  v1 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v2 = *(v1 + 24);
  if (v2 == v1 + 24 || v2 == 0)
  {
    return 0;
  }

  else
  {
    return v2 - 8;
  }
}

void mlir::scf::ParallelOp::build(void *a1, mlir::Attribute *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, void (*a11)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, void *, void *), uint64_t a12)
{
  v16 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v20 = a9;
  v21 = a10;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v19[0] = v16;
  v19[1] = a6;
  v19[2] = a8;
  v19[3] = a10;
  mlir::Builder::getDenseI32ArrayAttr(a1, v19, 4);
}

void mlir::scf::ParallelOp::build(void *a1, mlir::Attribute *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = a9;
  v20[1] = a10;
  v19 = v20;
  mlir::ValueRange::ValueRange(v21, 0, 0);
  if (a9)
  {
    v18 = llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<mlir::scf::ParallelOp::build(mlir::OpBuilder &,mlir::OperationState &,mlir::ValueRange,mlir::ValueRange,mlir::ValueRange,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>)::$_0>;
  }

  else
  {
    v18 = 0;
  }

  mlir::scf::ParallelOp::build(a1, a2, a3, a4, a5, a6, a7, a8, v21[0], v21[1], v18, &v19);
}

uint64_t mlir::scf::ParallelOp::parse(mlir::scf::ParallelOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v35[32] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  v33 = v35;
  v34 = 0x400000000;
  if ((*(*this + 768))(this, &v33, 1, 0, 0))
  {
    v30 = v32;
    v31 = 0x400000000;
    if ((*(*this + 136))(this) & 1) != 0 && ((*(*this + 720))(this, &v30, 1, 1, v34))
    {
      IndexType = mlir::Builder::getIndexType(v5, v6);
      if (v31)
      {
        v8 = IndexType;
        v9 = v30;
        v10 = 32 * v31;
        while (((*(*this + 728))(this, v9, v8, a2 + 16) & 1) != 0)
        {
          v9 += 32;
          v10 -= 32;
          if (!v10)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v27 = v29;
        v28 = 0x400000000;
        v26[8] = 257;
        if ((*(*this + 400))(this, "to", 2, &v24) & 1) != 0 && ((*(*this + 720))(this, &v27, 1, 1, v34))
        {
          v12 = mlir::Builder::getIndexType(v5, v11);
          if (v28)
          {
            v13 = v12;
            v14 = v27;
            v15 = 32 * v28;
            while (((*(*this + 728))(this, v14, v13, a2 + 16) & 1) != 0)
            {
              v14 += 32;
              v15 -= 32;
              if (!v15)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            v24 = v26;
            v25 = 0x400000000;
            v23[8] = 257;
            if ((*(*this + 400))(this, "step", 4, v22) & 1) != 0 && ((*(*this + 720))(this, &v24, 1, 1, v34))
            {
              v17 = mlir::Builder::getIndexType(v5, v16);
              if (v25)
              {
                v18 = v17;
                v19 = v24;
                v20 = 32 * v25;
                while (((*(*this + 728))(this, v19, v18, a2 + 16) & 1) != 0)
                {
                  v19 += 32;
                  v20 -= 32;
                  if (!v20)
                  {
                    goto LABEL_20;
                  }
                }
              }

              else
              {
LABEL_20:
                v22[0] = v23;
                v22[1] = 0x400000000;
                if (((*(*this + 408))(this, "init", 4) & 1) == 0 || ((*(*this + 720))(this, v22, 1, 1, 0xFFFFFFFFLL)) && ((*(*this + 568))(this, a2 + 64))
                {
                  mlir::OperationState::addRegion(a2);
                }

                if (v22[0] != v23)
                {
                  free(v22[0]);
                }
              }
            }

            if (v24 != v26)
            {
              free(v24);
            }
          }
        }

        if (v27 != v29)
        {
          free(v27);
        }
      }
    }

    if (v30 != v32)
    {
      free(v30);
    }
  }

  if (v33 != v35)
  {
    free(v33);
  }

  return 0;
}

double mlir::scf::ParallelOp::getLoopRegions@<D0>(mlir::scf::ParallelOp *this@<X0>, void *a2@<X8>)
{
  a2[2] = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

void mlir::scf::ParallelOp::getLoopInductionVars(mlir::scf::ParallelOp *this@<X0>, uint64_t a2@<X8>)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  __src = v22;
  v21 = 0x600000000;
  v7 = v5 - v6;
  if (((v5 - v6) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = v22;
  if (v5 != v6)
  {
    v9 = v22;
    v10 = v5 - v6 - 8;
    if (v10 < 0x38)
    {
      goto LABEL_22;
    }

    if ((v22 - v6) < 0x20)
    {
      goto LABEL_22;
    }

    v11 = (v10 >> 3) + 1;
    v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
    v9 = &v22[v12];
    v13 = &v6[v12];
    v14 = (v6 + 16);
    v15 = v23;
    v16 = v11 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v6 = v13;
    if (v11 != (v11 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_22:
      do
      {
        v18 = *v6;
        v6 += 8;
        *v9 = v18;
        v9 += 8;
      }

      while (v6 != v5);
    }
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19 = v7 >> 3;
  LODWORD(v21) = v19;
  if (v19 && &__src != a2)
  {
    if (v19 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, v22, 8 * (v7 >> 3));
    v8 = __src;
    *(a2 + 8) = v19;
    LODWORD(v21) = 0;
  }

  *(a2 + 64) = 1;
  if (v8 != v22)
  {
    free(v8);
  }
}

uint64_t mlir::scf::getParallelForInductionVarOwner(uint64_t a1)
{
  result = 0;
  if (a1 && (*(a1 + 8) & 7) == 7)
  {
    result = mlir::Block::getParentOp(*(a1 + 16));
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

__n128 mlir::scf::ParallelOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  mlir::ValueRange::ValueRange(&v12.n128_u64[1], 0, 0);
  v4 = *(a3 + 8);
  v5 = *a3;
  if (v4 >= *(a3 + 12))
  {
    if (v5 > &v12 || v5 + 24 * v4 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 24 * *(a3 + 8));
  v7 = v12;
  v6[1].n128_u64[0] = v13;
  *v6 = v7;
  ++*(a3 + 8);
  v12.n128_u64[0] = 0;
  mlir::ValueRange::ValueRange(&v12.n128_u64[1], 0, 0);
  v8 = *(a3 + 8);
  v9 = *a3;
  if (v8 >= *(a3 + 12))
  {
    if (v9 > &v12 || v9 + 24 * v8 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = (v9 + 24 * *(a3 + 8));
  result = v12;
  v10[1].n128_u64[0] = v13;
  *v10 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::ReduceOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, unint64_t a4)
{
  v8[2] = *MEMORY[0x277D85DE8];
  result = mlir::OperationState::addOperands(a2, a3, a4);
  v8[0] = a3;
  v8[1] = 0;
  if (a4)
  {
    mlir::ValueRange::dereference_iterator(v8, 0);
    mlir::OperationState::addRegion(a2);
  }

  return result;
}

BOOL mlir::scf::ReduceOp::verifyRegions(mlir::Operation **this)
{
  v66 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 11);
  v2 = *&v1 & 0x7FFFFFLL;
  if ((v1 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(((*this + 8 * *(*this + 47) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24 * v4 + 8);
    v6 = v5 ? (v5 - 8) : 0;
    if (*(v6 + 4) == (v6 + 32))
    {
      break;
    }

    v7 = *(*(*(*this + 9) + 32 * v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v6 + 6);
    v8 = *(v6 + 7);
    if (((v8 - v9) & 0x7FFFFFFF8) != 0x10)
    {
      goto LABEL_14;
    }

    if (v8 != v9)
    {
      while (v7 == (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        v9 += 8;
        if (v9 == v8)
        {
          goto LABEL_11;
        }
      }

LABEL_14:
      v52 = 257;
      mlir::OpState::emitOpError(v55, this, v51);
      if (v55[0])
      {
        LODWORD(v53) = 3;
        *(&v53 + 1) = "expected two block arguments with type ";
        v54 = 39;
        if (v57 >= v58)
        {
          if (v56 > &v53 || v56 + 24 * v57 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v56 + 24 * v57;
        v13 = v53;
        *(v12 + 2) = v54;
        *v12 = v13;
        ++v57;
        if (v55[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v53, v7);
          if (v57 >= v58)
          {
            if (v56 > &v53 || v56 + 24 * v57 <= &v53)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v56 + 24 * v57;
          v15 = v53;
          *(v14 + 2) = v54;
          *v14 = v15;
          v16 = ++v57;
          if (v55[0])
          {
            LODWORD(v53) = 3;
            *(&v53 + 1) = " in the ";
            v54 = 8;
            if (v16 >= v58)
            {
              if (v56 > &v53 || v56 + 24 * v16 <= &v53)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v17 = v56 + 24 * v57;
            v18 = v53;
            *(v17 + 2) = v54;
            *v17 = v18;
            v19 = ++v57;
            if (v55[0])
            {
              LODWORD(v53) = 2;
              *(&v53 + 1) = v4;
              if (v19 >= v58)
              {
                if (v56 > &v53 || v56 + 24 * v19 <= &v53)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v20 = v56 + 24 * v57;
              v21 = v53;
              *(v20 + 2) = v54;
              *v20 = v21;
              v22 = ++v57;
              if (v55[0])
              {
                LODWORD(v53) = 3;
                *(&v53 + 1) = "-th reduction region";
                v54 = 20;
                if (v22 >= v58)
                {
                  if (v56 > &v53 || v56 + 24 * v22 <= &v53)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v23 = v56 + 24 * v57;
                v24 = v53;
                *(v23 + 2) = v54;
                *v23 = v24;
                ++v57;
              }
            }
          }
        }
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v63;
          v27 = __p;
          if (v63 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v63 = v25;
          operator delete(v27);
        }

        v28 = v60;
        if (v60)
        {
          v29 = v61;
          v30 = v60;
          if (v61 != v60)
          {
            do
            {
              v32 = *--v29;
              v31 = v32;
              *v29 = 0;
              if (v32)
              {
                MEMORY[0x259C63150](v31, 0x1000C8077774924);
              }
            }

            while (v29 != v28);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        goto LABEL_80;
      }

      return v11;
    }

LABEL_11:
    mlir::Block::getTerminator(v6);
    if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceReturnOp,void>::id)
    {
      v51[0] = "reduction bodies must be terminated with an 'scf.reduce.return' op";
      v52 = 259;
      mlir::OpState::emitOpError(v55, this, v51);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v63;
          v46 = __p;
          if (v63 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v63 = v44;
          operator delete(v46);
        }

        v28 = v60;
        if (v60)
        {
          v47 = v61;
          v30 = v60;
          if (v61 != v60)
          {
            do
            {
              v49 = *--v47;
              v48 = v49;
              *v47 = 0;
              if (v49)
              {
                MEMORY[0x259C63150](v48, 0x1000C8077774924);
              }
            }

            while (v47 != v28);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        goto LABEL_80;
      }

      return v11;
    }

    if (++v4 == v2)
    {
      return 1;
    }
  }

  v52 = 257;
  mlir::OpState::emitOpError(v55, this, v51);
  if (v55[0])
  {
    LODWORD(v53) = 2;
    *(&v53 + 1) = v4;
    if (v57 >= v58)
    {
      if (v56 > &v53 || v56 + 24 * v57 <= &v53)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = v56 + 24 * v57;
    v34 = v53;
    *(v33 + 2) = v54;
    *v33 = v34;
    v35 = ++v57;
    if (v55[0])
    {
      LODWORD(v53) = 3;
      *(&v53 + 1) = "-th reduction has an empty body";
      v54 = 31;
      if (v35 >= v58)
      {
        if (v56 > &v53 || v56 + 24 * v35 <= &v53)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v56 + 24 * v57;
      v37 = v53;
      *(v36 + 2) = v54;
      *v36 = v37;
      ++v57;
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v63;
      v40 = __p;
      if (v63 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v63 = v38;
      operator delete(v40);
    }

    v28 = v60;
    if (v60)
    {
      v41 = v61;
      v30 = v60;
      if (v61 != v60)
      {
        do
        {
          v43 = *--v41;
          v42 = v43;
          *v41 = 0;
          if (v43)
          {
            MEMORY[0x259C63150](v42, 0x1000C8077774924);
          }
        }

        while (v41 != v28);
LABEL_78:
        v30 = v60;
      }

LABEL_79:
      v61 = v28;
      operator delete(v30);
    }

LABEL_80:
    if (v56 != &v59)
    {
      free(v56);
    }
  }

  return v11;
}

BOOL mlir::scf::ReduceReturnOp::verify(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(**(*(*this + 2) + 48) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v1 == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v20 = 257;
  mlir::OpState::emitOpError(v23, this, v19);
  if (v23[0])
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "must have type ";
    v22 = 15;
    if (v25 >= v26)
    {
      if (v24 > &v21 || v24 + 24 * v25 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v24 + 24 * v25;
    v4 = v21;
    *(v3 + 2) = v22;
    *v3 = v4;
    ++v25;
    if (v23[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v21, v1);
      if (v25 >= v26)
      {
        if (v24 > &v21 || v24 + 24 * v25 <= &v21)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v24 + 24 * v25;
      v6 = v21;
      *(v5 + 2) = v22;
      *v5 = v6;
      v7 = ++v25;
      if (v23[0])
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = " (the type of the reduction inputs)";
        v22 = 35;
        if (v7 >= v26)
        {
          if (v24 > &v21 || v24 + 24 * v7 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v24 + 24 * v25;
        v9 = v21;
        *(v8 + 2) = v22;
        *v8 = v9;
        ++v25;
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != &v27)
    {
      free(v24);
    }
  }

  return v2;
}

void mlir::scf::WhileOp::build(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a10)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[4] = a5;
  v24[5] = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  v15 = *(a2 + 18);
  if (a4 + v15 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = a2[8] + 8 * v15;
    do
    {
      *(v17 + 8 * v16) = mlir::TypeRange::dereference_iterator(a3, v16);
      ++v16;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 18);
  }

  *(a2 + 18) = v15 + a4;
  v22 = v24;
  v23 = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v20 = a5;
  v21 = 0;
  if (a6)
  {
    v18 = 0;
    do
    {
      v25[0] = mlir::ValueRange::dereference_iterator(&v20, v18);
      Loc = mlir::Value::getLoc(v25);
      if (v23 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v22 + v23) = Loc;
      LODWORD(v23) = v23 + 1;
      v18 = v21 + 1;
      v21 = v18;
    }

    while (v18 != a6);
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::scf::WhileOp::getConditionOp(mlir::scf::WhileOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    mlir::Block::getTerminator((v1 - 8));
  }

  else
  {
    mlir::Block::getTerminator(0);
  }
}

void mlir::scf::WhileOp::getYieldOp(mlir::scf::WhileOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 32);
  if (v1)
  {
    mlir::Block::getTerminator((v1 - 8));
  }

  else
  {
    mlir::Block::getTerminator(0);
  }
}

uint64_t mlir::scf::WhileOp::getBeforeArguments(mlir::scf::WhileOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48);
}

uint64_t mlir::scf::WhileOp::getAfterArguments(mlir::scf::WhileOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 32);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48);
}

uint64_t mlir::scf::WhileOp::getRegionIterArgs(mlir::scf::WhileOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48);
}

unint64_t *mlir::scf::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a1;
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (v5 + 3 != a2)
    {
      v7 = *(v4 + 36);
      if (v7)
      {
        v8 = v4 - 16;
      }

      else
      {
        v8 = 0;
      }

      v19 = v8;
      v20 = v7;
      v9 = *(a3 + 8);
      if (v9 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a3, &v19);
      }

      else
      {
        v10 = (*a3 + 24 * v9);
        *v10 = 0;
        mlir::ValueRange::ValueRange(v10 + 1, v8, v7);
        ++*(a3 + 8);
      }

      v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v5 = (v11 + 24);
      v21 = (v11 + 24);
      if (*(v11 + 24) != v11 + 24)
      {
        v12 = *(v11 + 32);
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  }

  v21 = v5;
  if (*v5 != v5)
  {
    v12 = v5[1];
LABEL_13:
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 48);
    v15 = (*(v13 + 56) - v14) >> 3;
    v19 = v14;
    v20 = v15;
    v16 = *(a3 + 8);
    if (v16 < *(a3 + 12))
    {
      goto LABEL_17;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v21, &v19);
  }

LABEL_18:
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v16 = *(a3 + 8);
  if (v16 < *(a3 + 12))
  {
LABEL_17:
    v17 = (*a3 + 24 * v16);
    *v17 = v5;
    result = mlir::ValueRange::ValueRange(v17 + 1, v14, v15);
    ++*(a3 + 8);
    return result;
  }

  return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v21, &v19);
}

double mlir::scf::WhileOp::getLoopRegions@<D0>(mlir::scf::WhileOp *this@<X0>, void *a2@<X8>)
{
  v2 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  a2[2] = v2;
  *a2 = a2 + 2;
  a2[3] = v2 + 24;
  *&result = 0x600000002;
  a2[1] = 0x600000002;
  return result;
}

void mlir::scf::WhileOp::parse(mlir::scf::WhileOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v8[32] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0x400000000;
  v3 = &v5;
  v4 = 0x400000000;
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::scf::WhileOp::verify(mlir::Operation **this)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v2 == v2)
  {
    goto LABEL_13;
  }

  v3 = v2[1];
  v4 = v3 - 8;
  if (!v3)
  {
    v4 = 0;
  }

  if (*(v4 + 32) == v4 + 32)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  v7 = v6;
  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
LABEL_14:
    v31 = 261;
    v29 = "expects the 'before' region to terminate with 'scf.condition'";
    v30 = 61;
    mlir::Operation::emitOpError(&v32, v1, &v29);
    if (v7)
    {
      mlir::Diagnostic::attachNote(v33, *(v7 + 24), 1);
    }

    if (v32)
    {
      mlir::InFlightDiagnostic::report(&v32);
    }

    if (v41 != 1)
    {
      return 0;
    }

    if (v40 != &v41)
    {
      free(v40);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v39;
      v17 = __p;
      if (v39 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v39 = v15;
      operator delete(v17);
    }

    v18 = v36;
    if (!v36)
    {
      goto LABEL_53;
    }

    v19 = v37;
    v20 = v36;
    if (v37 == v36)
    {
      goto LABEL_52;
    }

    do
    {
      v22 = *--v19;
      v21 = v22;
      *v19 = 0;
      if (v22)
      {
        MEMORY[0x259C63150](v21, 0x1000C8077774924);
      }
    }

    while (v19 != v18);
    goto LABEL_51;
  }

  v8 = *this;
  v9 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v9 + 24) == v9 + 24 || ((v10 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 32)) != 0 ? (v11 = v10 - 8) : (v11 = 0), *(v11 + 32) == v11 + 32))
  {
    v13 = 0;
  }

  else
  {
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    v13 = v12;
    if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      return 1;
    }
  }

  v31 = 261;
  v29 = "expects the 'after' region to terminate with 'scf.yield'";
  v30 = 56;
  mlir::Operation::emitOpError(&v32, v8, &v29);
  if (v13)
  {
    mlir::Diagnostic::attachNote(v33, *(v13 + 24), 1);
  }

  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
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

    v18 = v36;
    if (!v36)
    {
      goto LABEL_53;
    }

    v26 = v37;
    v20 = v36;
    if (v37 == v36)
    {
LABEL_52:
      v37 = v18;
      operator delete(v20);
LABEL_53:
      if (v34 != &v35)
      {
        free(v34);
      }

      return 0;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x259C63150](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v18);
LABEL_51:
    v20 = v36;
    goto LABEL_52;
  }

  return 0;
}

void mlir::scf::IndexSwitchOp::verify(mlir::scf::IndexSwitchOp *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

BOOL mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(mlir::Operation **a1, uint64_t a2, const char **a3)
{
  v69 = *MEMORY[0x277D85DE8];
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v51 = "expected region to end with scf.yield, but got ";
    v54 = 259;
    mlir::OpState::emitOpError(&v57, a1, &v51);
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
    if (v57)
    {
      mlir::Diagnostic::operator<<(v58, *(v6 + 48));
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v57);
    if (v57)
    {
      mlir::InFlightDiagnostic::report(&v57);
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v66;
        v10 = __p;
        if (v66 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v66 = v8;
        operator delete(v10);
      }

      v11 = v63;
      if (v63)
      {
        v12 = v64;
        v13 = v63;
        if (v64 != v63)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              MEMORY[0x259C63150](v14, 0x1000C8077774924);
            }
          }

          while (v12 != v11);
          v13 = v63;
        }

        v64 = v11;
        operator delete(v13);
      }

      if (v59 != &v62)
      {
        free(v59);
      }
    }

    return v7;
  }

  v16 = v5;
  if ((*(v5 + 46) & 0x80) == 0)
  {
    v17 = 0;
    v18 = *a1;
    if (!*(*a1 + 9))
    {
      goto LABEL_22;
    }

LABEL_44:
    v51 = "expected each region to return ";
    v54 = 259;
    mlir::OpState::emitOpError(&v57, a1, &v51);
    if (v57)
    {
      v38 = *(*a1 + 9);
      LODWORD(v55) = 5;
      *(&v55 + 1) = v38;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v39 = v59 + 24 * v60;
      v40 = v55;
      *(v39 + 2) = v56;
      *v39 = v40;
      v41 = ++v60;
      if (v57)
      {
        LODWORD(v55) = 3;
        *(&v55 + 1) = " values, but ";
        v56 = 13;
        if (v41 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v41 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v42 = v59 + 24 * v60;
        v43 = v55;
        *(v42 + 2) = v56;
        *v42 = v43;
        ++v60;
        if (v57)
        {
          mlir::Diagnostic::operator<<(v58, a3);
          if (v57)
          {
            LODWORD(v55) = 3;
            *(&v55 + 1) = " returns ";
            v56 = 9;
            if (v60 >= v61)
            {
              if (v59 > &v55 || v59 + 24 * v60 <= &v55)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v44 = v59 + 24 * v60;
            v45 = v55;
            *(v44 + 2) = v56;
            *v44 = v45;
            ++v60;
          }
        }
      }
    }

    if ((*(v16 + 46) & 0x80) != 0)
    {
      v46 = *(v16 + 68);
      if (!v57)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v46 = 0;
      if (!v57)
      {
        goto LABEL_56;
      }
    }

    LODWORD(v55) = 5;
    *(&v55 + 1) = v46;
    if (v60 >= v61)
    {
      if (v59 > &v55 || v59 + 24 * v60 <= &v55)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v47 = v59 + 24 * v60;
    v48 = v55;
    *(v47 + 2) = v56;
    *v47 = v48;
    ++v60;
LABEL_56:
    mlir::Diagnostic::attachNote(v58, *(v16 + 24), 1);
  }

  v17 = *(v5 + 68);
  v18 = *a1;
  if (v17 != *(*a1 + 9))
  {
    goto LABEL_44;
  }

LABEL_22:
  v19 = v17;
  v20 = v18 - 16;
  if (!v17)
  {
    v20 = 0;
  }

  v51 = v20;
  v52 = v17;
  mlir::ResultRange::getTypes(&v57, &v51);
  if ((*(v16 + 46) & 0x80) != 0)
  {
    v21 = *(v16 + 68);
    *&v55 = *(v16 + 72);
    *(&v55 + 1) = v21;
    mlir::OperandRange::getTypes(&v51, &v55);
    v7 = 1;
    if (!v17)
    {
      return v7;
    }
  }

  else
  {
    v55 = 0uLL;
    mlir::OperandRange::getTypes(&v51, &v55);
    v7 = 1;
    if (!v17)
    {
      return v7;
    }
  }

  v50 = v16;
  v22 = v58[0];
  if (v58[0] != v59)
  {
    v23 = 0;
    v24 = v57;
    v25 = &v51[32 * v52 + 24];
    v26 = v53 - v52;
    v27 = v59 - 1;
    v28 = v19 - 1;
    while (v26)
    {
      v29 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v24, v22) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v29 != (*(*v25 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        v51 = "expected result #";
        v54 = 259;
        mlir::OpState::emitOpError(&v57, a1, &v51);
        if (v57)
        {
          LODWORD(v55) = 5;
          *(&v55 + 1) = v23;
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v31 = v59 + 24 * v60;
          v32 = v55;
          *(v31 + 2) = v56;
          *v31 = v32;
          v33 = ++v60;
          if (v57)
          {
            LODWORD(v55) = 3;
            *(&v55 + 1) = " of each region to be ";
            v56 = 22;
            if (v33 >= v61)
            {
              if (v59 > &v55 || v59 + 24 * v33 <= &v55)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v34 = v59 + 24 * v60;
            v35 = v55;
            *(v34 + 2) = v56;
            *v34 = v35;
            ++v60;
            if (v57)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v55, v29);
              if (v60 >= v61)
              {
                if (v59 > &v55 || v59 + 24 * v60 <= &v55)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v36 = v59 + 24 * v60;
              v37 = v55;
              *(v36 + 2) = v56;
              *v36 = v37;
              ++v60;
            }
          }
        }

        mlir::Diagnostic::attachNote(v58, *(v50 + 24), 1);
      }

      v7 = 1;
      if (v28 != v23)
      {
        ++v23;
        v25 += 32;
        --v26;
        if (v27 != v22++)
        {
          continue;
        }
      }

      return v7;
    }

    return 1;
  }

  return v7;
}

uint64_t mlir::scf::IndexSwitchOp::getDefaultBlock(mlir::scf::IndexSwitchOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::scf::IndexSwitchOp::getCaseBlock(mlir::scf::IndexSwitchOp *this, unsigned int a2)
{
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 24 * a2 + 32);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::scf::IndexSwitchOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(*a1 + 36);
    if (v4)
    {
      v5 = *a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    v11 = v5;
    v12 = v4;
    v6 = *(a3 + 8);
    if (v6 >= *(a3 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a3, &v11);
    }

    else
    {
      v7 = (*a3 + 24 * v6);
      *v7 = 0;
      mlir::ValueRange::ValueRange(v7 + 1, v5, v4);
      ++*(a3 + 8);
    }
  }

  else
  {
    v8 = *(*a1 + 44);
    v9 = v8 & 0x7FFFFF;
    if ((v8 & 0x7FFFFF) != 0)
    {
      v10 = ((*a1 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    mlir::RegionRange::RegionRange(&v11, v10, v9);
    std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(v11, 0, v12, a3, &v11);
  }
}

double mlir::scf::IndexSwitchOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v20 = *(*a1 + 56);
  v21 = v9;
  v22 = 1;
  v10 = *(v8 + 44);
  v11 = v8 + 16 * ((v10 >> 23) & 1);
  v13 = *(v11 + 64);
  v12 = v11 + 64;
  v23 = v13;
  if ((v10 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange(v24, ((v12 + ((v10 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40), v10 & 0x7FFFFF);
    v25 = a2;
    v26 = a3;
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    mlir::RegionRange::RegionRange(v24, 0, 0);
    v25 = a2;
    v26 = a3;
    v14 = *a2;
    if (!*a2)
    {
      goto LABEL_9;
    }
  }

  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v14 = 0;
  }

  v19 = v14;
  if (v14)
  {
    v27[0] = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

LABEL_9:
  v15 = *(*a1 + 44);
  v16 = v15 & 0x7FFFFF;
  if ((v15 & 0x7FFFFF) != 0)
  {
    v17 = ((*a1 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  mlir::RegionRange::RegionRange(v27, v17, v16);
  return std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(v27[0], 0, v27[1], a4, v27);
}

uint64_t mlir::scf::IndexSwitchOp::getRegionInvocationBounds(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2)
  {
    if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v4 = 0;
    }

    if (v4)
    {
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }
  }

  v5 = *(*result + 44) & 0x7FFFFF;
  v6 = *(a4 + 8);
  if (v6 + v5 > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v7 = *a4 + 12 * v6;
    v8 = *(*result + 44) & 0x7FFFFF;
    do
    {
      *v7 = 0x100000000;
      *(v7 + 8) = 1;
      v7 += 12;
      --v8;
    }

    while (v8);
    LODWORD(v6) = *(a4 + 8);
  }

  *(a4 + 8) = v6 + v5;
  return result;
}

unint64_t mlir::scf::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::scf::detail::ConditionOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "FDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257388CED + v6 + 2;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257388CED + v23 + 2);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257388CED + v5 + 2))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::scf::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  return mlir::OperationState::addOperands(a2, a4, a5);
}

uint64_t mlir::scf::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

void *mlir::scf::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

BOOL mlir::scf::ConditionOp::parse(mlir::scf::ConditionOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3, uint64_t a4)
{
  v17[16] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  v9 = ((*(*this + 280))(this, a2, a3, a4) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v11, 1) & 1) != 0) && ((*(*this + 296))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (v6 = (*(*this + 40))(this), ((*(*this + 720))(this, &v15, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v16 || ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, v13) & 1) != 0) && (v7 = (*(*this + 32))(this), IntegerType = mlir::Builder::getIntegerType(v7, 1), ((*(*this + 728))(this, v11, IntegerType, a2 + 16) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v15, v13, v6, a2 + 16);
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::scf::ConditionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++v6[4];
  }

  v43 = v45;
  v44 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v43, v44);
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) == 1)
  {
    goto LABEL_28;
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

  v12 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v13 = 0;
    v14 = -1;
    v15 = (*(*a2 + 16))(a2);
LABEL_14:
    v16 = v15;
    (*(*a2 + 160))(a2, *(v13 + 56));
    v17 = v14 - 1;
    if (v17)
    {
      v31 = (v13 + 88);
      do
      {
        v33 = v16[4];
        if (v16[3] - v33 > 1uLL)
        {
          *v33 = 8236;
          v16[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v32 = *v31;
        v31 += 4;
        (*(*a2 + 160))(a2, v32);
        --v17;
      }

      while (v17);
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 9);
  v14 = *(v12 + 17) - 1;
  v15 = (*(*a2 + 16))(a2);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++v20[4];
  }

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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 17);
    v26 = *(v24 + 9);
    v27 = v25 - 1;
  }

  else
  {
    v26 = 0;
    v27 = -1;
  }

  v39[0] = v26 + 32;
  v39[1] = v27;
  mlir::OperandRange::getTypes(&AttrDictionary, v39);
  v28 = v41;
  v29 = v42;
  if (v41 != v42)
  {
    v30 = AttrDictionary + 32 * v41;
    (*(*a2 + 32))(a2, *(*(v30 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v28 + 1 != v29)
    {
      v34 = ~v28 + v29;
      v35 = (v30 + 56);
      do
      {
        v37 = (*(*a2 + 16))(a2);
        v38 = v37[4];
        if (v37[3] - v38 > 1uLL)
        {
          *v38 = 8236;
          v37[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v37, ", ", 2uLL);
        }

        v36 = *v35;
        v35 += 4;
        (*(*a2 + 32))(a2, *(v36 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v34;
      }

      while (v34);
    }
  }

LABEL_28:
  if (v43 != v45)
  {
    free(v43);
  }
}