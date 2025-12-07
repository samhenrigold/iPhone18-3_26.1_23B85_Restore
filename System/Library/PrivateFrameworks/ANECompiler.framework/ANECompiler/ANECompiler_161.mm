uint64_t mlir::memref::PrefetchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "isDataCache", 0xBuLL, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v27, "isWrite", 7uLL, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v27, "localityHint", 0xCuLL, v13);
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

unint64_t mlir::memref::PrefetchOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

uint64_t mlir::memref::PrefetchOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 7)
  {
    if (!memcmp(__s1, "isWrite", 7uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "localityHint", 0xCuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 11)
  {
    return 0;
  }

  if (*__s1 != 0x6143617461447369 || *(__s1 + 3) != 0x6568636143617461)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::PrefetchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 7)
  {
    result = memcmp(__s1, "isWrite", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[1] = v8;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "localityHint", 0xCuLL);
    if (!result)
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

        v5[2] = v7;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 11 && *__s1 == 0x6143617461447369 && *(__s1 + 3) == 0x6568636143617461)
  {
    if (a4)
    {
      result = mlir::BoolAttr::classof(a4);
      if (result)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *v5 = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::PrefetchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "isDataCache", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "isWrite", 7uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "localityHint", 0xCuLL, v6);
  }
}

BOOL mlir::memref::PrefetchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v8, "isDataCache", 0xB, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v9, "isWrite", 7, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(v10, "localityHint", 0xC, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(const char *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v32 = a1;
    Value = mlir::AffineMapAttr::getValue(&v32);
    if (mlir::Type::isSignlessInteger(&Value, 32))
    {
      v31 = a1;
      if ((mlir::IntegerAttr::getInt(&v31) & 0x8000000000000000) == 0)
      {
        v30 = a1;
        if (mlir::IntegerAttr::getInt(&v30) <= 3)
        {
          return 1;
        }
      }
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v32) = 3;
    v33 = "attribute '";
    v34 = 11;
    v10 = &v32;
    v11 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v28 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v11 = v38;
        v10 = (v38 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v10 = &v32;
        v11 = v38;
      }
    }

    v12 = &v11[24 * v39];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    ++v39;
    if (Value)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (Value)
      {
        LODWORD(v32) = 3;
        v33 = "' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3";
        v34 = 115;
        v14 = &v32;
        v15 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v29 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v15 = v38;
            v14 = (v38 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v14 = &v32;
            v15 = v38;
          }
        }

        v16 = &v15[24 * v39];
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        ++v39;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

BOOL mlir::memref::PrefetchOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 16));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::BoolAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BoolAttr]";
  v38 = 64;
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

uint64_t mlir::memref::PrefetchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::memref::PrefetchOp::verifyInvariantsImpl(uint64_t **this)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v2 = v1 + 8;
  v3 = v4;
  if (!v4)
  {
    v43[0] = "requires attribute 'isDataCache'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v51;
      v13 = __p;
      if (v51 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v51 = v11;
      operator delete(v13);
    }

    v14 = v48;
    if (v48)
    {
      v15 = v49;
      v16 = v48;
      if (v49 != v48)
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
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v5 = v2[1];
  if (!v5)
  {
    v43[0] = "requires attribute 'isWrite'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v51;
      v21 = __p;
      if (v51 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v51 = v19;
      operator delete(v21);
    }

    v14 = v48;
    if (v48)
    {
      v22 = v49;
      v16 = v48;
      if (v49 != v48)
      {
        do
        {
          v24 = *--v22;
          v23 = v24;
          *v22 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v22 != v14);
        goto LABEL_56;
      }

LABEL_57:
      v49 = v14;
      operator delete(v16);
    }

LABEL_58:
    if (v46 != &v47)
    {
      free(v46);
    }

    return v10;
  }

  v6 = v2[2];
  if (!v6)
  {
    v43[0] = "requires attribute 'localityHint'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
    }

    v14 = v48;
    if (v48)
    {
      v28 = v49;
      v16 = v48;
      if (v49 != v48)
      {
        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v28 != v14);
LABEL_56:
        v16 = v48;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v45[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v5, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45))
  {
    return 0;
  }

  v45[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(v6, "localityHint", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45))
  {
    return 0;
  }

  v45[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v3, "isDataCache", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45))
  {
    return 0;
  }

  ODSOperands = mlir::memref::PrefetchOp::getODSOperands(this, 0, v8, v9);
  if (v33)
  {
    v36 = v33;
    v37 = 0;
    v38 = ODSOperands + 24;
    while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, (*(*v38 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v37))
    {
      ++v37;
      v38 += 32;
      if (v36 == v37)
      {
        goto LABEL_67;
      }
    }

    return 0;
  }

  LODWORD(v37) = 0;
LABEL_67:
  v10 = 1;
  v39 = mlir::memref::PrefetchOp::getODSOperands(this, 1u, v34, v35);
  if (v40)
  {
    v41 = v40;
    for (i = v39 + 24; mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37); i += 32)
    {
      LODWORD(v37) = v37 + 1;
      v10 = 1;
      if (!--v41)
      {
        return v10;
      }
    }

    return 0;
  }

  return v10;
}

BOOL mlir::memref::RankOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v10))
  {
    return 0;
  }

  v12 = v10;
  v5 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = IndexType;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v11, v4, a2 + 16);
}

BOOL mlir::memref::ReallocOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

BOOL mlir::memref::ReallocOp::verifyInvariantsImpl(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v41[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v3, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(v4, *(*(v4[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
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

BOOL mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    mlir::Builder::getZeroAttr();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
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
  if (v41 == &v39[2 * v40] || *v41 != v38)
  {
LABEL_56:
    v88 = a2;
    v89 = 0;
    mlir::ElementsAttr::isSplat(&v88);
    v49 = *a2;
    {
      goto LABEL_57;
    }

LABEL_66:
    v81 = v49;
    mlir::Builder::getI32VectorAttr();
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = *(v81 + 8);
    v52 = *(v81 + 16);
    if (!v52)
    {
      goto LABEL_69;
    }

    goto LABEL_58;
  }

  v59 = v41[1];
  v88 = a2;
  v89 = v59;
  mlir::ElementsAttr::isSplat(&v88);
  v49 = *a2;
  {
    goto LABEL_66;
  }

LABEL_57:
  v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v51 = *(v49 + 8);
  v52 = *(v49 + 16);
  if (!v52)
  {
    goto LABEL_69;
  }

LABEL_58:
  v53 = v51;
  v54 = v52;
  do
  {
    v55 = v54 >> 1;
    v56 = &v53[2 * (v54 >> 1)];
    v58 = *v56;
    v57 = v56 + 2;
    v54 += ~(v54 >> 1);
    if (v58 < v50)
    {
      v53 = v57;
    }

    else
    {
      v54 = v55;
    }
  }

  while (v54);
  if (v53 != &v51[2 * v52] && *v53 == v50)
  {
    v61 = v53[1];
    v82 = a2;
    v83 = v61;
    ShapedType = mlir::ElementsAttr::getShapedType(&v82);
    a1 = v37;
    if (!ShapedType)
    {
      goto LABEL_2;
    }

    goto LABEL_72;
  }

LABEL_69:
  v82 = a2;
  v83 = 0;
  v60 = mlir::ElementsAttr::getShapedType(&v82);
  a1 = v37;
  if (!v60)
  {
    goto LABEL_2;
  }

LABEL_72:
  v63 = *a2;
  {
    v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v65 = *(v63 + 8);
    v66 = *(v63 + 16);
    if (!v66)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v73 = v63;
    mlir::Builder::getI32VectorAttr();
    v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v65 = *(v73 + 8);
    v66 = *(v73 + 16);
    if (!v66)
    {
      goto LABEL_84;
    }
  }

  v67 = v65;
  v68 = v66;
  do
  {
    v69 = v68 >> 1;
    v70 = &v67[2 * (v68 >> 1)];
    v72 = *v70;
    v71 = v70 + 2;
    v68 += ~(v68 >> 1);
    if (v72 < v64)
    {
      v67 = v71;
    }

    else
    {
      v68 = v69;
    }
  }

  while (v68);
  if (v67 == &v65[2 * v66] || *v67 != v64)
  {
LABEL_84:
    v85 = a2;
    v86 = 0;
    mlir::ShapedType::getShape(&v85);
    a1 = v37;
    if (v74 == 1)
    {
      return 1;
    }

    goto LABEL_2;
  }

  v75 = v67[1];
  v85 = a2;
  v86 = v75;
  mlir::ShapedType::getShape(&v85);
  a1 = v37;
  if (v76 == 1)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(a1, &v82, &v88);
  if (v88)
  {
    LODWORD(v85) = 3;
    v86 = " #";
    v87 = 2;
    v10 = &v85;
    v11 = v90;
    if (v91 >= v92)
    {
      if (v90 <= &v85 && v90 + 24 * v91 > &v85)
      {
        v77 = &v85 - v90;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
        v11 = v90;
        v10 = (v90 + v77);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
        v10 = &v85;
        v11 = v90;
      }
    }

    v12 = &v11[24 * v91];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v91;
    if (v88)
    {
      LODWORD(v85) = 5;
      v86 = a5;
      v15 = &v85;
      v16 = v90;
      if (v14 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v14 > &v85)
        {
          v78 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
          v16 = v90;
          v15 = (v90 + v78);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
          v15 = &v85;
          v16 = v90;
        }
      }

      v17 = &v16[24 * v91];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v91;
      if (v88)
      {
        LODWORD(v85) = 3;
        v86 = " must be 1D memref of any type values, but got ";
        v87 = 47;
        v20 = &v85;
        v21 = v90;
        if (v19 >= v92)
        {
          if (v90 <= &v85 && v90 + 24 * v19 > &v85)
          {
            v79 = &v85 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
            v21 = v90;
            v20 = (v90 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
            v20 = &v85;
            v21 = v90;
          }
        }

        v22 = &v21[24 * v91];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v91;
        if (v88)
        {
          v24 = &v85;
          mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
          v25 = v90;
          if (v91 >= v92)
          {
            if (v90 <= &v85 && v90 + 24 * v91 > &v85)
            {
              v80 = &v85 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
              v25 = v90;
              v24 = (v90 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
              v24 = &v85;
              v25 = v90;
            }
          }

          v26 = &v25[24 * v91];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v91;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
  if (v88)
  {
    mlir::InFlightDiagnostic::report(&v88);
  }

  if (v99 == 1)
  {
    if (v98 != &v99)
    {
      free(v98);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v97;
      v31 = __p;
      if (v97 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v97 = v29;
      operator delete(v31);
    }

    v32 = v94;
    if (v94)
    {
      v33 = v95;
      v34 = v94;
      if (v95 != v94)
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
        v34 = v94;
      }

      v95 = v32;
      operator delete(v34);
    }

    if (v90 != v93)
    {
      free(v90);
    }
  }

  return v28;
}

uint64_t mlir::memref::ReallocOp::parse(uint64_t a1, uint64_t a2)
{
  v36[16] = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v34 = v36;
  v35 = 0x400000000;
  v22[1] = 1;
  v23 = 0;
  v22[0] = &v23;
  v31 = &v33;
  v32 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*a1 + 288))(a1))
  {
    (*(*a1 + 40))(a1);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v5 = (*(*a1 + 712))(a1, &v27, 1);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }

      v6 = &v27;
      v7 = v34;
      if (v35 >= HIDWORD(v35))
      {
        if (v34 <= &v27 && v34 + 32 * v35 > &v27)
        {
          v20 = &v27 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 32);
          v7 = v34;
          v6 = (v34 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 32);
          v6 = &v27;
          v7 = v34;
        }
      }

      v8 = &v7[32 * v35];
      v9 = *(v6 + 1);
      *v8 = *v6;
      *(v8 + 1) = v9;
      LODWORD(v35) = v35 + 1;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v21 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(a2 + 8);
  v27 = a1;
  v28 = &v21;
  v29 = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v11, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReallocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27))
    {
      goto LABEL_21;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v27))
  {
    goto LABEL_21;
  }

  v23 = v27;
  v30 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v27) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((mlir::AsmParser::parseTypeList(a1, &v31) & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v12, v13);
  mlir::OperationState::addTypes(a2, v31, v32);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v22, v4, a2 + 16))
  {
    goto LABEL_21;
  }

  if (v35)
  {
    v15 = v34;
    v16 = 32 * v35;
    while (((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v17 = 1;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    v17 = 0;
LABEL_22:
    v18 = v31;
    if (v31 != &v33)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v17 = 1;
  v18 = v31;
  if (v31 != &v33)
  {
LABEL_23:
    free(v18);
  }

LABEL_24:
  if (v34 != v36)
  {
    free(v34);
  }

  return v17;
}

void mlir::memref::ReallocOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x1E69E9840];
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
  if (*(*this + 17) == 1 || !*(*(*this + 9) + 56))
  {
    goto LABEL_15;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "(", 1uLL);
    v8 = *this;
    if (*(*this + 17) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*(v8[9] + 56))
    {
      (*(*a2 + 160))(a2);
    }

    goto LABEL_12;
  }

  *v7 = 40;
  ++v6[4];
  v8 = *this;
  if (*(*this + 17) != 1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v9 = (*(*a2 + 16))(a2);
  v10 = v9[4];
  if (v9[3] == v10)
  {
    llvm::raw_ostream::write(v9, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++v9[4];
  }

LABEL_15:
  v39 = v41;
  v40 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v12, v39, v40);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++v15[4];
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 28532;
    v21[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, "to", 2uLL);
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

  v25 = *(*this + 9);
  v26 = *this - 16;
  if (!v25)
  {
    v26 = 0;
  }

  v38[0] = v26;
  v38[1] = v25;
  mlir::OperandRange::getTypes(&AttrDictionary, v38);
  v27 = v36;
  v28 = v37;
  if (v36 != v37)
  {
    v29 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v36);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v27 + 1; v28 != i; ++i)
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 > 1uLL)
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      v32 = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, i);
      (*(*a2 + 32))(a2, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v39 != v41)
  {
    free(v39);
  }
}

void mlir::memref::ReallocOp::getEffects(uint64_t result, uint64_t a2)
{
  {
    v12 = a2;
    v13 = result;
    mlir::memref::DeallocOp::getEffects();
    result = v13;
    a2 = v12;
  }

  v24 = *(*result + 72);
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Free>(void)::instance;
  v23 = 0;
  v22 = 1;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = a2;
    v17 = result;
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
    result = v17;
    a2 = v16;
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v14 = a2;
  v15 = result;
  mlir::memref::AtomicRMWOp::getEffects();
  result = v15;
  a2 = v14;
  v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(v14 + 8);
  if (v2 >= *(v14 + 12))
  {
    goto LABEL_10;
  }

LABEL_5:
  v3 = *a2 + 40 * v2;
  v4 = v24;
  v5 = v23;
  v6 = v22;
  *v3 = v25;
  *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v3 + 36) = v6;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_11:
  v18 = a2;
  v19 = result;
  mlir::memref::ReallocOp::getEffects();
  result = v19;
  a2 = v18;
LABEL_6:
  v24 = *result - 16;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v23 = 1;
  v22 = 1;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(a2 + 8);
    if (v7 < *(a2 + 12))
    {
LABEL_8:
      v8 = *a2 + 40 * v7;
      v9 = v24;
      v10 = v23;
      v11 = v22;
      *v8 = v25;
      *(v8 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 4;
      *(v8 + 24) = 0;
      *(v8 + 32) = v10;
      *(v8 + 36) = v11;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v20 = a2;
    mlir::memref::AtomicRMWOp::getEffects();
    a2 = v20;
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(v20 + 8);
    if (v7 < *(v20 + 12))
    {
      goto LABEL_8;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}

uint64_t mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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
    mlir::ValueRange::ValueRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(mlir::memref::ReinterpretCastOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
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

  v12 = (16 * v2 + 4 * v5 + *this + 88);
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

BOOL mlir::memref::ReinterpretCastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v16 = &v72;
      v17 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v17 = v77;
          v16 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v16 = &v72;
          v17 = v77;
        }
      }

      v18 = &v17[24 * v78];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v84;
      v22 = __p;
      if (v84 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v84 = v20;
      operator delete(v22);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v24 = v82;
    v25 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v23;
      operator delete(v25);
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
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
LABEL_76:
    v25 = v81;
    goto LABEL_77;
  }

  v8 = mlir::DictionaryAttr::get(&v71, "static_offsets", 0xEuLL);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v8))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 59;
      v28 = &v72;
      v29 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v65 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v29 = v77;
          v28 = (v77 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v28 = &v72;
          v29 = v77;
        }
      }

      v30 = &v29[24 * v78];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v78;
      if (v75)
      {
        v32 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
        v33 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v33 = v77;
            v32 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v32 = &v72;
            v33 = v77;
          }
        }

        v34 = &v33[24 * v78];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v84;
      v38 = __p;
      if (v84 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v84 = v36;
      operator delete(v38);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v39 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
      }
    }

    while (v39 != v23);
    goto LABEL_76;
  }

  *a1 = v9;
LABEL_8:
  v10 = mlir::DictionaryAttr::get(&v71, "static_sizes", 0xCuLL);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v10))
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v74 = 57;
      v42 = &v72;
      v43 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v66 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v43 = v77;
          v42 = (v77 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v42 = &v72;
          v43 = v77;
        }
      }

      v44 = &v43[24 * v78];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v78;
      if (v75)
      {
        v46 = &v72;
        mlir::DiagnosticArgument::DiagnosticArgument(&v72, v11);
        v47 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v47 = v77;
            v46 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v46 = &v72;
            v47 = v77;
          }
        }

        v48 = &v47[24 * v78];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v78;
        if (v75)
        {
          mlir::InFlightDiagnostic::report(&v75);
        }
      }
    }

    if ((v86 & 1) == 0)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v84;
      v52 = __p;
      if (v84 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v84 = v50;
      operator delete(v52);
    }

    v23 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v53 = v82;
    v25 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
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

    while (v53 != v23);
    goto LABEL_76;
  }

  a1[1] = v11;
LABEL_11:
  v12 = mlir::DictionaryAttr::get(&v71, "static_strides", 0xEuLL);
  if (v12)
  {
    v13 = v12;
    if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v12))
    {
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 59;
        v56 = &v72;
        v57 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v68 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v57 = v77;
            v56 = (v77 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v56 = &v72;
            v57 = v77;
          }
        }

        v58 = &v57[24 * v78];
        v59 = *v56;
        *(v58 + 2) = *(v56 + 2);
        *v58 = v59;
        ++v78;
        if (v75)
        {
          v60 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v13);
          v61 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v61 = v77;
              v60 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v60 = &v72;
              v61 = v77;
            }
          }

          v62 = &v61[24 * v78];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v14 = mlir::DictionaryAttr::get(&v71, "operandSegmentSizes", 0x13uLL);
  if (!v14)
  {
    v14 = mlir::DictionaryAttr::get(&v71, "operand_segment_sizes", 0x15uLL);
    if (!v14)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 4, v14, a3, a4) & 1) != 0;
}

uint64_t mlir::memref::ReinterpretCastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "static_offsets", 0xEuLL, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "static_sizes", 0xCuLL, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "static_strides", 0xEuLL, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 0x13uLL, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

unint64_t mlir::memref::ReinterpretCastOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = a1[4];
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::memref::ReinterpretCastOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
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

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::ReinterpretCastOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
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
      v8 = result ? a4 : 0;
      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 3, result, 4 * v9);
          }
        }
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[1] = v7;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        if (result)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *v5 = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
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
    }
  }

  return result;
}

void mlir::memref::ReinterpretCastOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 0xEuLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 0xCuLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 0xEuLL, v7);
  }

  v8 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v8);
}

BOOL mlir::memref::ReinterpretCastOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v8, "static_offsets", 0xE, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v9, "static_sizes", 0xC, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v10, "static_strides", 0xE, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::memref::ReinterpretCastOp::readProperties(uint64_t a1, void *a2)
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 5)
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
      memmove(v3 + 3, v12, 4 * v13);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v4 + 6), 4);
    (*(*a2 + 16))(a2, v6);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 1));
  (*(*a2 + 16))(a2, *(v4 + 2));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v4 + 6, 4);
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::verifyInvariantsImpl(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = v3[1];
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v12);
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = v3[2];
  if (v6)
  {
    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    mlir::memref::ReinterpretCastOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::memref::ReinterpretCastOp::parse(uint64_t a1, unsigned int *a2)
{
  v45[16] = *MEMORY[0x1E69E9840];
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v32[0] = v33;
  v32[1] = 1;
  v43 = v45;
  v44 = 0x400000000;
  v30 = 0;
  v31 = 0;
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v28 = 0;
  v29 = 0;
  v27[0] = &v28;
  v27[1] = 1;
  v26 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v33, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v35) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "offset", 6, v35) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v43, &v31, v35, 0))
  {
    goto LABEL_36;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    operator new();
  }

  *v5 = v31;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "sizes", 5, v35) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v40, &v30, v35, 0))
  {
    goto LABEL_36;
  }

  v6 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  *(v6 + 8) = v30;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "strides", 7, v35) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v37, &v29, v35, 0))
  {
    goto LABEL_36;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 16) = v29;
  v25 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_36;
  }

  v8 = *(a2 + 1);
  v35[0] = a1;
  v35[1] = &v25;
  v35[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v8, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReinterpretCastOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v35))
  {
    goto LABEL_36;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, v35))
  {
    goto LABEL_36;
  }

  v28 = v35[0];
  v36 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v35) & 1) == 0)
  {
    goto LABEL_36;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v35))
  {
    goto LABEL_36;
  }

  v26 = v35[0];
  v9 = v44;
  v10 = v41;
  v11 = v38;
  v12 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  v12[6] = 1;
  v12[7] = v9;
  v12[8] = v10;
  v12[9] = v11;
  v13 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v13, v14);
  mlir::OperationState::addTypes(a2, &v26, 1);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v32, v27, v4, (a2 + 4)))
  {
    goto LABEL_36;
  }

  if (v44)
  {
    v16 = v43;
    v17 = 32 * v44;
    while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 4) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

LABEL_36:
    v22 = 0;
LABEL_37:
    v23 = v37;
    if (v37 != v39)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_27:
  if (v41)
  {
    v18 = v40;
    v19 = 32 * v41;
    while (((*(*a1 + 728))(a1, v18, IndexType, a2 + 4) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

LABEL_31:
  if (v38)
  {
    v20 = v37;
    v21 = 32 * v38;
    while (((*(*a1 + 728))(a1, v20, IndexType, a2 + 4) & 1) != 0)
    {
      v20 += 32;
      v22 = 1;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  v22 = 1;
  v23 = v37;
  if (v37 != v39)
  {
LABEL_38:
    free(v23);
  }

LABEL_39:
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v22;
}

BOOL mlir::memref::ReshapeOp::verifyInvariantsImpl(uint64_t **this)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
LABEL_3:
    v78 = 261;
    v76 = "operand";
    v77 = 7;
    mlir::Operation::emitOpError(v2, &v76, v83);
    if (v83[0])
    {
      LODWORD(v80) = 3;
      v81 = " #";
      v82 = 2;
      v5 = &v80;
      v6 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v80 && v84 + 24 * v85 > &v80)
        {
          v67 = &v80 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v6 = v84;
          v5 = (v84 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v5 = &v80;
          v6 = v84;
        }
      }

      v7 = &v6[24 * v85];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v85;
      if (v83[0])
      {
        LODWORD(v80) = 5;
        v81 = 1;
        v10 = &v80;
        v11 = v84;
        if (v9 >= v86)
        {
          if (v84 <= &v80 && v84 + 24 * v9 > &v80)
          {
            v72 = &v80 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v9 + 1, 24);
            v11 = v84;
            v10 = (v84 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v9 + 1, 24);
            v10 = &v80;
            v11 = v84;
          }
        }

        v12 = &v11[24 * v85];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v85;
        if (v83[0])
        {
          LODWORD(v80) = 3;
          v81 = " must be 1D memref of signless integer or index values, but got ";
          v82 = 64;
          v15 = &v80;
          v16 = v84;
          if (v14 >= v86)
          {
            if (v84 <= &v80 && v84 + 24 * v14 > &v80)
            {
              v73 = &v80 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v14 + 1, 24);
              v16 = v84;
              v15 = (v84 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v14 + 1, 24);
              v15 = &v80;
              v16 = v84;
            }
          }

          v17 = &v16[24 * v85];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v85;
          if (v83[0])
          {
            v19 = &v80;
            mlir::DiagnosticArgument::DiagnosticArgument(&v80, v3);
            v20 = v84;
            if (v85 >= v86)
            {
              if (v84 <= &v80 && v84 + 24 * v85 > &v80)
              {
                v74 = &v80 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                v20 = v84;
                v19 = (v84 + v74);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                v19 = &v80;
                v20 = v84;
              }
            }

            v21 = &v20[24 * v85];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v85;
          }
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v83);
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

      v24 = __p;
      if (__p)
      {
        v25 = v91;
        v26 = __p;
        if (v91 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v91 = v24;
        operator delete(v26);
      }

      v27 = v88;
      if (v88)
      {
        v28 = v89;
        v29 = v88;
        if (v89 != v88)
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
          v29 = v88;
        }

        v89 = v27;
        operator delete(v29);
      }

      if (v84 != v87)
      {
        free(v84);
      }
    }

    if (v23)
    {
      goto LABEL_42;
    }

    return 0;
  }

  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v4 + 8);
    v34 = *(v4 + 16);
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v44 = v4;
    mlir::Builder::getI32VectorAttr();
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v44 + 8);
    v34 = *(v44 + 16);
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v45 = v35[1];
    goto LABEL_64;
  }

LABEL_62:
  v45 = 0;
LABEL_64:
  v83[0] = v3;
  v83[1] = v45;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (!mlir::Type::isSignlessInteger(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_3;
  }

  v46 = *v3;
  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v46 + 8);
    v49 = *(v46 + 16);
    if (!v49)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v75 = v46;
    mlir::Builder::getI32VectorAttr();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v75 + 8);
    v49 = *(v75 + 16);
    if (!v49)
    {
      goto LABEL_78;
    }
  }

  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
  if (v50 == &v48[2 * v49] || *v50 != v47)
  {
LABEL_78:
    v76 = v3;
    v77 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v76))
    {
      goto LABEL_3;
    }

    goto LABEL_81;
  }

  v56 = v50[1];
  v76 = v3;
  v77 = v56;
  if (!mlir::ElementsAttr::getShapedType(&v76))
  {
    goto LABEL_3;
  }

LABEL_81:
  v57 = *v3;
  {
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    if (!v60)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v68 = v57;
    mlir::Builder::getI32VectorAttr();
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = *(v68 + 8);
    v60 = *(v68 + 16);
    if (!v60)
    {
      goto LABEL_94;
    }
  }

  v61 = v59;
  v62 = v60;
  do
  {
    v63 = v62 >> 1;
    v64 = &v61[2 * (v62 >> 1)];
    v66 = *v64;
    v65 = v64 + 2;
    v62 += ~(v62 >> 1);
    if (v66 < v58)
    {
      v61 = v65;
    }

    else
    {
      v62 = v63;
    }
  }

  while (v62);
  if (v61 == &v59[2 * v60] || *v61 != v58)
  {
LABEL_94:
    v80 = v3;
    v81 = 0;
    mlir::ShapedType::getShape(&v80);
    if (v69 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

  v70 = v61[1];
  v80 = v3;
  v81 = v70;
  mlir::ShapedType::getShape(&v80);
  if (v71 != 1)
  {
    goto LABEL_3;
  }

LABEL_42:
  if (*(*this + 9))
  {
    v41 = *this - 2;
  }

  else
  {
    v41 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::memref::ReshapeOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10))
  {
    return 0;
  }

  v11[0] = mlir::FunctionType::getInputs(&v10);
  v11[1] = v4;
  Results = mlir::FunctionType::getResults(&v10);
  mlir::OperationState::addTypes(a2, Results, v6);
  v9[0] = v15;
  v9[1] = v12;
  v7 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v9, v11, v7, (a2 + 4));
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  v10 = v8 + 32 * v9;
  v11 = *v7;
  v12 = v7[1];
  v13 = &v11[32 * v12];
  v14 = 0;
  if (v9 | v12)
  {
    v15 = **a2;
    v16 = v11;
    do
    {
      v17 = v15 == v10;
      v15 += 32;
      if (v17)
      {
        v16 += 32;
        v15 = v10;
      }

      ++v14;
    }

    while (v15 != v10 || v16 != v13);
  }

  v18 = a3[1];
  if (v14 == v18)
  {
    v19 = *a3;
    v57 = **a2;
    v58 = v11;
    v59 = v10;
    v60 = v13;
    v61 = v19;
    v20 = v10;
    while (v8 != v10 || v11 != v13 || v20 != v10 || v60 != v13)
    {
      v21 = &unk_1F1A01928;
      do
      {
        while (1)
        {
          v23 = *(v21 - 1);
          v24 = (&v57 + (*v21 >> 1));
          if (*v21)
          {
            break;
          }

          v21 += 2;
          v22 = v23(v24);
          if (v22)
          {
            goto LABEL_19;
          }
        }

        v21 += 2;
        v22 = (*(*v24 + v23))();
      }

      while (!v22);
LABEL_19:
      if (((*(*a1 + 728))(a1, v22, *v61, a5) & 1) == 0)
      {
        return 0;
      }

      v8 = v57;
      v20 = v59;
      if (v57 == v59)
      {
        v11 = v58;
        if (v58 != v60)
        {
          v11 = v58 + 32;
          v58 += 32;
        }
      }

      else
      {
        v8 = v57 + 32;
        v57 += 32;
        v11 = v58;
      }

      ++v61;
    }

    return 1;
  }

  else
  {
    v53 = 257;
    (*(*a1 + 24))(&v57, a1, a4, v52);
    if (v57)
    {
      v54 = 5;
      v55 = v14;
      v25 = &v54;
      v26 = v60;
      if (v61 >= HIDWORD(v61))
      {
        if (v60 <= &v54 && v60 + 24 * v61 > &v54)
        {
          v49 = &v54 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 24);
          v26 = v60;
          v25 = (v60 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 24);
          v25 = &v54;
          v26 = v60;
        }
      }

      v27 = &v26[24 * v61];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      v29 = (v61 + 1);
      LODWORD(v61) = v61 + 1;
      if (v57)
      {
        v54 = 3;
        v55 = " operands present, but expected ";
        v56 = 32;
        v30 = &v54;
        v31 = v60;
        if (v29 >= HIDWORD(v61))
        {
          if (v60 <= &v54 && v60 + 24 * v29 > &v54)
          {
            v50 = &v54 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v29 + 1, 24);
            v31 = v60;
            v30 = (v60 + v50);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v29 + 1, 24);
            v30 = &v54;
            v31 = v60;
          }
        }

        v32 = &v31[24 * v61];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        v34 = (v61 + 1);
        LODWORD(v61) = v61 + 1;
        if (v57)
        {
          v54 = 5;
          v55 = v18;
          v35 = &v54;
          v36 = v60;
          if (v34 >= HIDWORD(v61))
          {
            if (v60 <= &v54 && v60 + 24 * v34 > &v54)
            {
              v51 = &v54 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v34 + 1, 24);
              v36 = v60;
              v35 = (v60 + v51);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v34 + 1, 24);
              v35 = &v54;
              v36 = v60;
            }
          }

          v37 = &v36[24 * v61];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          LODWORD(v61) = v61 + 1;
        }
      }
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v57);
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

      v40 = __p;
      if (__p)
      {
        v41 = v66;
        v42 = __p;
        if (v66 != __p)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = __p;
        }

        v66 = v40;
        operator delete(v42);
      }

      v43 = v63;
      if (v63)
      {
        v44 = v64;
        v45 = v63;
        if (v64 != v63)
        {
          do
          {
            v47 = *--v44;
            v46 = v47;
            *v44 = 0;
            if (v47)
            {
              MEMORY[0x1AC55A040](v46, 0x1000C8077774924);
            }
          }

          while (v44 != v43);
          v45 = v63;
        }

        v64 = v43;
        operator delete(v45);
      }

      if (v60 != v62)
      {
        free(v60);
      }
    }
  }

  return v39;
}

BOOL mlir::memref::StoreOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v2);
}

BOOL mlir::memref::StoreOp::verifyInvariantsImpl(uint64_t **this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v21[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(v3, "nontemporal", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21) || !mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v5 = 0;
    v6 = 64;
LABEL_6:
    v7 = v6 + 24;
    v8 = 2;
    while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
    {
      ++v8;
      v7 += 32;
      if (v5 == v8)
      {
        v4 = *this;
        goto LABEL_10;
      }
    }

    return 0;
  }

  v5 = *(v4 + 17);
  if (v5 != 2)
  {
    v6 = v4[9] + 64;
    goto LABEL_6;
  }

LABEL_10:
  v21[0] = *(*(v4[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::AffineBinaryOpExpr::getRHS(v21) == (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v19 = "failed to verify that type of 'value' matches element type of 'memref'";
  v20 = 259;
  mlir::OpState::emitOpError(this, &v19, v21);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v10 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v10;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v10;
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
      result = v10;
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
      result = v10;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v10;
    }
  }

  return result;
}

BOOL mlir::memref::StoreOp::parse(void *a1, uint64_t a2)
{
  v34[16] = *MEMORY[0x1E69E9840];
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v32 = v34;
  v33 = 0x400000000;
  v22[1] = 1;
  v23 = 0;
  v22[0] = &v23;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v27, 1) & 1) != 0 && ((*(*a1 + 120))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v25, 1) & 1) != 0 && ((*(*a1 + 312))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 720))(a1, &v32, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 328))(a1))
      {
        v19[0] = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v5 = *(a2 + 8);
          v29 = a1;
          v30 = v19;
          v31 = a2;
          if (mlir::memref::LoadOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v29) && ((*(*a1 + 104))(a1) & 1) != 0)
          {
            v29 = 0;
            if (mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v29))
            {
              v23 = v29;
              v21 = v29;
              if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                v6 = (*(*a1 + 16))(a1);
                v20 = 257;
                (*(*a1 + 24))(&v29, a1, v6, v19);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v29, "'memref' must be memref of any type values, but got ");
                mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v7, &v21);
                v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
                v10 = v32;
                if (v32 == v34)
                {
                  return v9;
                }

                goto LABEL_23;
              }

              v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v21);
              v30 = v11;
              mlir::ElementsAttr::isSplat(&v29);
              v12 = (*(*a1 + 32))(a1);
              IndexType = mlir::Builder::getIndexType(v12, v13);
              v29 = v23;
              RHS = mlir::AffineBinaryOpExpr::getRHS(&v29);
              if (((*(*a1 + 728))(a1, v27, RHS, a2 + 16) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v22, v4, a2 + 16))
              {
                if (!v33)
                {
                  v9 = 1;
                  v10 = v32;
                  if (v32 == v34)
                  {
                    return v9;
                  }

                  goto LABEL_23;
                }

                v16 = v32;
                v17 = 32 * v33;
                while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 16) & 1) != 0)
                {
                  v16 += 4;
                  v9 = 1;
                  v17 -= 32;
                  if (!v17)
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v9 = 0;
LABEL_22:
  v10 = v32;
  if (v32 != v34)
  {
LABEL_23:
    free(v10);
  }

  return v9;
}

void mlir::memref::StoreOp::getEffects(uint64_t result, uint64_t a2)
{
  {
    v7 = result;
    v8 = a2;
    mlir::memref::StoreOp::getEffects();
    result = v7;
    a2 = v8;
  }

  v13 = *(*result + 72) + 32;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    mlir::memref::AtomicRMWOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::memref::TransposeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "permutation", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
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

uint64_t mlir::memref::TransposeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "permutation", 0xBuLL, *a2);
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

unint64_t mlir::memref::TransposeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x746174756D726570 ? (v4 = *(a3 + 3) == 0x6E6F69746174756DLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::memref::TransposeOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x746174756D726570 && *(a2 + 3) == 0x6E6F69746174756DLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::TransposeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "permutation", 0xBuLL, *a2);
  }
}

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: AffineMap attribute";
        v29 = 51;
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

BOOL mlir::memref::TransposeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::AffineMapAttr]";
  v38 = 69;
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

BOOL mlir::memref::TransposeOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(v3, "permutation", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'permutation'";
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

BOOL mlir::memref::ViewOp::verifyInvariantsImpl(uint64_t **this)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_47;
  }

  {
    mlir::Builder::getI32VectorAttr();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_16;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
    goto LABEL_14;
  }

  v14 = v8[1];
LABEL_16:
  v83[0] = v3;
  v83[1] = v14;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (!mlir::Type::isSignlessInteger(&isSplat, 8))
  {
    goto LABEL_47;
  }

  v15 = *v3;
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
    mlir::Builder::getI32VectorAttr();
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
    v25 = v19[1];
    v76 = v3;
    v77 = v25;
    if (mlir::ElementsAttr::getShapedType(&v76))
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_29:
  v76 = v3;
  v77 = 0;
  if (mlir::ElementsAttr::getShapedType(&v76))
  {
LABEL_32:
    v26 = *v3;
    {
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (v29)
      {
LABEL_34:
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
          v37 = v30[1];
          v80 = v3;
          v81 = v37;
          mlir::ShapedType::getShape(&v80);
          if (v38 == 1)
          {
            goto LABEL_77;
          }

          goto LABEL_47;
        }
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (v29)
      {
        goto LABEL_34;
      }
    }

    v80 = v3;
    v81 = 0;
    mlir::ShapedType::getShape(&v80);
    if (v36 == 1)
    {
      goto LABEL_77;
    }
  }

LABEL_47:
  v78 = 261;
  v76 = "operand";
  v77 = 7;
  mlir::Operation::emitOpError(v2, &v76, v83);
  if (v83[0])
  {
    LODWORD(v80) = 3;
    v81 = " #";
    v82 = 2;
    v39 = &v80;
    v40 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &v80 && v84 + 24 * v85 > &v80)
      {
        v72 = &v80 - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v40 = v84;
        v39 = (v84 + v72);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v39 = &v80;
        v40 = v84;
      }
    }

    v41 = &v40[24 * v85];
    v42 = *v39;
    *(v41 + 2) = v39[2];
    *v41 = v42;
    v43 = ++v85;
    if (v83[0])
    {
      LODWORD(v80) = 5;
      v81 = 0;
      v44 = &v80;
      v45 = v84;
      if (v43 >= v86)
      {
        if (v84 <= &v80 && v84 + 24 * v43 > &v80)
        {
          v73 = &v80 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v45 = v84;
          v44 = (v84 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v44 = &v80;
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
        LODWORD(v80) = 3;
        v81 = " must be 1D memref of 8-bit signless integer values, but got ";
        v82 = 61;
        v49 = &v80;
        v50 = v84;
        if (v48 >= v86)
        {
          if (v84 <= &v80 && v84 + 24 * v48 > &v80)
          {
            v74 = &v80 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v50 = v84;
            v49 = (v84 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v49 = &v80;
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
          v53 = &v80;
          mlir::DiagnosticArgument::DiagnosticArgument(&v80, v3);
          v54 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v80 && v84 + 24 * v85 > &v80)
            {
              v75 = &v80 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v54 = v84;
              v53 = (v84 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v53 = &v80;
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

  if (!v57)
  {
    return 0;
  }

LABEL_77:
  if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  v66 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

    goto LABEL_94;
  }

  if (*(v66 + 17) != 2)
  {
    if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

LABEL_94:
    v66 = v83[0];
  }

  v67 = *(v66 + 9);
  v68 = v66 - 2;
  if (v67)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v69, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::memref::ViewOp::parse(uint64_t a1, unsigned int *a2)
{
  v27[16] = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v13[1] = 1;
  v14 = 0;
  v13[0] = &v14;
  v22 = &v24;
  v23 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v20))
  {
    goto LABEL_20;
  }

  v14 = v20[0];
  v21 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v20) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((mlir::AsmParser::parseTypeList(a1, &v22) & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  mlir::OperationState::addTypes(a2, v22, v23);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v13, v4, (a2 + 4)) || ((*(*a1 + 728))(a1, v15, IndexType, a2 + 4) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v26)
  {
    v8 = v25;
    v9 = 32 * v26;
    while (((*(*a1 + 728))(a1, v8, IndexType, a2 + 4) & 1) != 0)
    {
      v8 += 32;
      v10 = 1;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    v10 = 0;
LABEL_21:
    v11 = v22;
    if (v22 != &v24)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v10 = 1;
  v11 = v22;
  if (v22 != &v24)
  {
LABEL_22:
    free(v11);
  }

LABEL_23:
  if (v25 != v27)
  {
    free(v25);
  }

  return v10;
}

BOOL mlir::memref::SubViewOp::readProperties(uint64_t a1, void *a2)
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 5)
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
      memmove(v3 + 3, v12, 4 * v13);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::memref::SubViewOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, llvm::hashing::detail *a11, uint64_t a12, llvm::hashing::detail *a13, uint64_t a14, llvm::hashing::detail *a15, uint64_t a16)
{
  v31 = a4;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  v21[6] = 1;
  v21[7] = a6;
  v21[8] = a8;
  v21[9] = a10;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a11, a12);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *v23 = DenseI64ArrayAttr;
  v24 = mlir::Builder::getDenseI64ArrayAttr(a1, a13, a14);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 8) = v24;
  v26 = mlir::Builder::getDenseI64ArrayAttr(a1, a15, a16);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 16) = v26;
  v28 = *(a2 + 72);
  if (v28 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v28 + 1, 8);
    LODWORD(v28) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v28) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::memref::SubViewOp::verifyInvariantsImpl(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = v3[1];
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (*v35)
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v12);
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = v3[2];
  if (v6)
  {
    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    *v35 = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
    {
      return 0;
    }

    mlir::memref::SubViewOp::verifyInvariantsImpl();
    return v35[0];
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (*v35)
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::memref::SubViewOp::parse(uint64_t a1, unsigned int *a2)
{
  v45[16] = *MEMORY[0x1E69E9840];
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v32[0] = v33;
  v32[1] = 1;
  v43 = v45;
  v44 = 0x400000000;
  v30 = 0;
  v31 = 0;
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v28 = 0;
  v29 = 0;
  v27[0] = &v28;
  v27[1] = 1;
  v26 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v33, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v43, &v31, v35, 0))
  {
    goto LABEL_31;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    operator new();
  }

  *v5 = v31;
  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v40, &v30, v35, 0))
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 8) = v30;
  (*(*a1 + 40))(a1);
  v35[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v37, &v29, v35, 0))
  {
    goto LABEL_31;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 16) = v29;
  v25 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 1);
  v35[0] = a1;
  v35[1] = &v25;
  v35[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v8, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::SubViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v35))
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v35))
  {
    goto LABEL_31;
  }

  v28 = v35[0];
  v36 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v35) & 1) == 0)
  {
    goto LABEL_31;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v35))
  {
    goto LABEL_31;
  }

  v26 = v35[0];
  v9 = v44;
  v10 = v41;
  v11 = v38;
  v12 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(a2);
  v12[6] = 1;
  v12[7] = v9;
  v12[8] = v10;
  v12[9] = v11;
  v13 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v13, v14);
  mlir::OperationState::addTypes(a2, &v26, 1);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v32, v27, v4, (a2 + 4)))
  {
    goto LABEL_31;
  }

  if (v44)
  {
    v16 = v43;
    v17 = 32 * v44;
    while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 4) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    v22 = 0;
LABEL_32:
    v23 = v37;
    if (v37 != v39)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_22:
  if (v41)
  {
    v18 = v40;
    v19 = 32 * v41;
    while (((*(*a1 + 728))(a1, v18, IndexType, a2 + 4) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_31;
  }

LABEL_26:
  if (v38)
  {
    v20 = v37;
    v21 = 32 * v38;
    while (((*(*a1 + 728))(a1, v20, IndexType, a2 + 4) & 1) != 0)
    {
      v20 += 32;
      v22 = 1;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v22 = 1;
  v23 = v37;
  if (v37 != v39)
  {
LABEL_33:
    free(v23);
  }

LABEL_34:
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v22;
}

void std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::memref::GlobalOp::getConstantInitValue();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    mlir::memref::GlobalOp::getConstantInitValue();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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

void mlir::applyPermutationMap<long long>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a1;
  v5 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v17);
  if (*(a3 + 12) < Value)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v5, Value, 8);
  }

  Results = mlir::AffineMap::getResults(&v17);
  if (v8)
  {
    v9 = Results;
    for (i = 8 * v8; i; i -= 8)
    {
      v11 = *v9;
      v18 = *v9;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 6)
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, v11);
        v16 = v18;
        if (!v18)
        {
          goto LABEL_7;
        }
      }

      else
      {
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, 0);
        v16 = v18;
        if (!v18)
        {
LABEL_7:
          v18 = v11;
          if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 5)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, v12);
          v13 = 0;
          v15 = 0;
          v14 = *(a3 + 8);
          if (v14 < *(a3 + 12))
          {
            goto LABEL_11;
          }

LABEL_15:
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v5, v14 + 1, 8);
          v14 = *(a3 + 8);
          v15 = v13;
          goto LABEL_11;
        }
      }

      v13 = *(a2 + 8 * mlir::AffineDimExpr::getPosition(&v16));
      v14 = *(a3 + 8);
      v15 = v13;
      if (v14 >= *(a3 + 12))
      {
        goto LABEL_15;
      }

LABEL_11:
      *(*a3 + 8 * v14) = v15;
      ++*(a3 + 8);
      ++v9;
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void *mlir::MemoryEffects::Read::Read(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Read::Read();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  }

  return this;
}

{
  {
    v1 = this;
    mlir::MemoryEffects::Read::Read();
    this = v1;
  }

  *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  return this;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Read>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Read]";
  v6 = 75;
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

void mlir::OpBuilder::createOrFold<mlir::memref::DimOp,mlir::Value &,long long &>(mlir::IndexType **a1, _DWORD *a2, uint64_t a3, uint64_t *a4, mlir::MLIRContext **a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::DimOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::memref::DimOp,mlir::Value &,long long &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  v13 = *a4;
  v30[0] = *a5;
  v14 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v31[0], v30);
  mlir::memref::DimOp::build(a1, v31, v13, v14 - 16);
  v16 = mlir::Operation::create(v31, v15);
  v17 = a1[2];
  if (v17)
  {
    v18 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v17 + 32, v16);
    ZinIrHalH13g::~ZinIrHalH13g(v16);
    v19 = *v18;
    *v20 = *v18;
    v20[1] = v18;
    *(v19 + 8) = v20;
    *v18 = v20;
    ZinIrHalH13g::~ZinIrHalH13g(v16);
  }

  if ((mlir::OpBuilder::tryFold(a1, v16, a2) & 1) != 0 && a2[2])
  {
    mlir::Operation::erase(v16, v21);
    goto LABEL_19;
  }

  v22 = v16[9];
  if (v22)
  {
    v23 = (v16 - 4);
  }

  else
  {
    v23 = 0;
  }

  a2[2] = 0;
  if (v22 > a2[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v22, 8);
    v24 = a2[2];
LABEL_14:
    v25 = 0;
    v26 = *a2 + 8 * v24;
    do
    {
      *(v26 + 8 * v25) = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v25);
      ++v25;
    }

    while (v22 != v25);
    a2[2] += v22;
    if (!a1[2])
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v22)
  {
    v24 = 0;
    goto LABEL_14;
  }

  a2[2] = 0;
  if (!a1[2])
  {
    goto LABEL_19;
  }

LABEL_17:
  v27 = a1[1];
  if (v27)
  {
    (*(*v27 + 16))(v27, v16, 0, 0);
  }

LABEL_19:
  mlir::OperationState::~OperationState(v31);
}

void *anonymous namespace::SimplifyAllocConst<mlir::memref::AllocOp>::~SimplifyAllocConst(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAllocConst<mlir::memref::AllocOp>::~SimplifyAllocConst(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(v20, v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v13);
  v15 = *a3;
  mlir::ValueRange::ValueRange(v22, *a4, *(a4 + 8));
  mlir::ValueRange::ValueRange(v21, *a5, *(a5 + 8));
  mlir::memref::AllocOp::build(a1, v20, v15, v22[0], v22[1], v21[0], v21[1], *a6);
  v16 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v17;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::memref::AllocOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::memref::AllocOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4 - 16;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocOp>::~SimplifyDeadAlloc(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocOp>::~SimplifyDeadAlloc(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v27.n128_u64[0] = v7;
  v27.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v27, &v28);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v8;
  mlir::ResultRange::use_end(&v27, v25);
  v10 = v30;
  j = v30;
  v22 = v28;
  v23 = v29;
  for (i = v26; v30 != i; v10 = v30)
  {
    v12 = *(v10 + 16);
    v13 = *(*(v12 + 48) + 16);
    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (*(*(v12 + 72) + 24) == v6)
      {
        return 0;
      }
    }

    else if (v13 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
    {
      return 0;
    }

    mlir::ResultRange::UseIterator::operator++(&v28);
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *&v22 = v17;
  *(&v22 + 1) = v16;
  mlir::ResultRange::use_begin(&v22, &v28);
  v18 = *(a2 + 36);
  if (v18)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v27.n128_u64[0] = v19;
  v27.n128_u64[1] = v18;
  mlir::ResultRange::use_end(&v27, v25);
  v20 = v26;
  v22 = v28;
  v23 = v29;
  v21 = v30;
  for (j = v30; j != v20; v21 = j)
  {
    mlir::ResultRange::UseIterator::operator++(&v22);
    (*(*a3 + 16))(a3, *(v21 + 16));
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

void *anonymous namespace::SimplifyAllocConst<mlir::memref::AllocaOp>::~SimplifyAllocConst(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAllocConst<mlir::memref::AllocaOp>::~SimplifyAllocConst(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(v20, v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v13);
  v15 = *a3;
  mlir::ValueRange::ValueRange(v22, *a4, *(a4 + 8));
  mlir::ValueRange::ValueRange(v21, *a5, *(a5 + 8));
  mlir::memref::AllocOp::build(a1, v20, v15, v22[0], v22[1], v21[0], v21[1], *a6);
  v16 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v17;
}

void *anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocaOp>::~SimplifyDeadAlloc(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocaOp>::~SimplifyDeadAlloc(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocaOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v27.n128_u64[0] = v7;
  v27.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v27, &v28);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v8;
  mlir::ResultRange::use_end(&v27, v25);
  v10 = v30;
  j = v30;
  v22 = v28;
  v23 = v29;
  for (i = v26; v30 != i; v10 = v30)
  {
    v12 = *(v10 + 16);
    v13 = *(*(v12 + 48) + 16);
    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (*(*(v12 + 72) + 24) == v6)
      {
        return 0;
      }
    }

    else if (v13 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
    {
      return 0;
    }

    mlir::ResultRange::UseIterator::operator++(&v28);
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *&v22 = v17;
  *(&v22 + 1) = v16;
  mlir::ResultRange::use_begin(&v22, &v28);
  v18 = *(a2 + 36);
  if (v18)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v27.n128_u64[0] = v19;
  v27.n128_u64[1] = v18;
  mlir::ResultRange::use_end(&v27, v25);
  v20 = v26;
  v22 = v28;
  v23 = v29;
  v21 = v30;
  for (j = v30; j != v20; v21 = j)
  {
    mlir::ResultRange::UseIterator::operator++(&v22);
    (*(*a3 + 16))(a3, *(v21 + 16));
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

void *anonymous namespace::SimplifyDeadAlloc<mlir::memref::ReallocOp>::~SimplifyDeadAlloc(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyDeadAlloc<mlir::memref::ReallocOp>::~SimplifyDeadAlloc(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyDeadAlloc<mlir::memref::ReallocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v27.n128_u64[0] = v7;
  v27.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v27, &v28);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v8;
  mlir::ResultRange::use_end(&v27, v25);
  v10 = v30;
  j = v30;
  v22 = v28;
  v23 = v29;
  for (i = v26; v30 != i; v10 = v30)
  {
    v12 = *(v10 + 16);
    v13 = *(*(v12 + 48) + 16);
    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (*(*(v12 + 72) + 24) == v6)
      {
        return 0;
      }
    }

    else if (v13 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
    {
      return 0;
    }

    mlir::ResultRange::UseIterator::operator++(&v28);
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *&v22 = v17;
  *(&v22 + 1) = v16;
  mlir::ResultRange::use_begin(&v22, &v28);
  v18 = *(a2 + 36);
  if (v18)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v27.n128_u64[0] = v19;
  v27.n128_u64[1] = v18;
  mlir::ResultRange::use_end(&v27, v25);
  v20 = v26;
  v22 = v28;
  v23 = v29;
  v21 = v30;
  for (j = v30; j != v20; v21 = j)
  {
    mlir::ResultRange::UseIterator::operator++(&v22);
    (*(*a3 + 16))(a3, *(v21 + 16));
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::memref::AllocaScopeOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "memref.alloca_scope.return", 26);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void AllocaScopeInliner::~AllocaScopeInliner(AllocaScopeInliner *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t AllocaScopeInliner::matchAndRewrite(uint64_t a1, mlir::ForwardIterator *a2, uint64_t a3)
{
  v15 = &v16;
  v16 = a2;
  if (mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)::{lambda(mlir::Operation *)#1}>, &v15, 0))
  {
    goto LABEL_17;
  }

  ParentOp = *(v16 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  {
    v14 = ParentOp;
    AllocaScopeInliner::matchAndRewrite();
    ParentOp = v14;
  }

  result = (*(**(ParentOp + 6) + 32))(*(ParentOp + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v5 = v16;
    v6 = *(v16 + 2);
    if (*(v16 + 1) == v6 + 4)
    {
      mlir::Block::getTerminator(v6);
      if (v10)
      {
        return 0;
      }
    }

    else
    {
      ZinIrHalH13g::~ZinIrHalH13g(*(v16 + 1));
      v8 = v7;
      mlir::Block::getTerminator(*(v5 + 2));
      if (v8 != v9)
      {
        return 0;
      }
    }

    Parent = mlir::Block::getParent(*(v5 + 2));
    v12 = *(Parent + 8);
    if (v12 == Parent)
    {
      return 0;
    }

    v13 = 1;
    do
    {
      v12 = *(v12 + 8);
      --v13;
    }

    while (v12 != Parent);
    if (v13)
    {
      return 0;
    }

LABEL_17:
    AllocaScopeInliner::matchAndRewrite();
    return 1;
  }

  return result;
}

uint64_t AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()(void **a1, uint64_t a2)
{
  v16[20] = *MEMORY[0x1E69E9840];
  if (**a1 == a2)
  {
    return 1;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_5;
  }

  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v11 = 0;
    InterfaceFor = 0;
    return 0;
  }

  v11 = a2;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!a2)
  {
    return 0;
  }

  v5 = *(a2 + 36);
  if (v5)
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    for (i = 0; v5 != i; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, i);
      v14 = v16;
      v15 = 0x400000000;
      mlir::ExecutionCostOpInterface::getExecutionCost(&v11, &v14);
      v8 = llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(&v14, &NextResultAtOffset);
      v9 = (v14 + 40 * v15);
      if (v8 != v9)
      {
        v2 = v8[1];
      }

      if (v14 != v16)
      {
        free(v14);
      }

      if (v8 != v9)
      {
        v10 = v2[1];
        {
          if (v10 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
          {
            return 0;
          }
        }

        else
        {
          AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()();
          if (v10 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
          {
            return 0;
          }
        }
      }
    }
  }

LABEL_5:
  {
    AllocaScopeInliner::matchAndRewrite();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28B000;
    v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28B000;
    v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v4 = &unk_1EB28B000;
    v18 = v23;
  }

  v19 = v4[408];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t **llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(uint64_t ***a1, void *a2)
{
  result = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = &result[5 * v4];
    v6 = 40 * v4;
    while (1)
    {
      v8 = **result;
      {
        if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v17 = result;
        v14 = a2;
        v16 = v5;
        v13 = v6;
        v15 = v8;
        llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
        a2 = v14;
        v6 = v13;
        v5 = v16;
        result = v17;
        if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
        {
LABEL_8:
          v9 = result[2];
          if (v9 >= 8 && (v10 = result[2] & 6, (v9 & 6) != 0))
          {
            v7 = v9 & 0xFFFFFFFFFFFFFFF8;
            if (v10 != 2 || v7 == 0)
            {
              if (v10 == 4)
              {
                v12 = v7;
              }

              else
              {
                v12 = 0;
              }

              if (v12)
              {
                v7 = v12;
              }
            }

            else
            {
              v7 = *(v7 + 24);
            }
          }

          else
          {
            v7 = 0;
          }

          if (v7 == *a2)
          {
            return result;
          }
        }
      }

      result += 5;
      v6 -= 40;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Allocate>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Allocate]";
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

const char *llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SideEffects::AutomaticAllocationScopeResource]";
  v6 = 101;
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

void AllocaScopeHoister::~AllocaScopeHoister(AllocaScopeHoister *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t AllocaScopeHoister::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[6] = *MEMORY[0x1E69E9840];
  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(a2);
  if (!result)
  {
    return result;
  }

  result = *(a2 + 16);
  if (!result)
  {
    return result;
  }

  result = mlir::Block::getParentOp(result);
  if (!result)
  {
    return result;
  }

  v6 = result;
  {
    mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>();
  }

  if ((*(**(v6 + 48) + 32))(*(v6 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (*(a2 + 8) == v7 + 4)
  {
    mlir::Block::getTerminator(v7);
    if (!v11)
    {
      goto LABEL_11;
    }

    return 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(*(a2 + 8));
  v9 = v8;
  mlir::Block::getTerminator(*(a2 + 16));
  if (v9 != v10)
  {
    return 0;
  }

LABEL_11:
  Parent = mlir::Block::getParent(*(a2 + 16));
  v13 = *(Parent + 8);
  if (v13 == Parent)
  {
    return 0;
  }

  v14 = 1;
  do
  {
    v13 = *(v13 + 8);
    --v14;
  }

  while (v13 != Parent);
  if (v14)
  {
    return 0;
  }

  v15 = *(v6 + 16);
  if (*(v6 + 8) == v15 + 4)
  {
    v17 = 0;
  }

  else
  {
    ZinIrHalH13g::~ZinIrHalH13g(*(v6 + 8));
    v17 = v16;
    v15 = *(v6 + 16);
  }

  mlir::Block::getTerminator(v15);
  if (v17 != v18)
  {
    return 0;
  }

  v19 = mlir::Block::getParent(*(v6 + 16));
  v20 = *(v19 + 8);
  if (v20 == v19)
  {
    return 0;
  }

  v21 = 1;
  do
  {
    v20 = *(v20 + 8);
    --v21;
  }

  while (v20 != v19);
  if (v21)
  {
    return 0;
  }

  while (1)
  {
    ParentOp = *(v6 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    {
      v29 = ParentOp;
      mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>();
      ParentOp = v29;
    }

    if ((*(**(ParentOp + 6) + 32))(*(ParentOp + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      break;
    }

    result = *(v6 + 16);
    if (!result)
    {
      return result;
    }

    result = mlir::Block::getParentOp(result);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v22 = *(result + 16);
    if (*(v6 + 8) == v22 + 4)
    {
      v24 = 0;
    }

    else
    {
      ZinIrHalH13g::~ZinIrHalH13g(*(v6 + 8));
      v24 = v23;
      v22 = *(v6 + 16);
    }

    mlir::Block::getTerminator(v22);
    if (v24 != v25)
    {
      return 0;
    }

    v26 = mlir::Block::getParent(*(v6 + 16));
    v27 = *(v26 + 8);
    if (v27 == v26)
    {
      return 0;
    }

    v28 = 1;
    do
    {
      v27 = *(v27 + 8);
      --v28;
    }

    while (v27 != v26);
    result = 0;
    if (v28)
    {
      return result;
    }
  }

  v31 = *(v6 + 44);
  v32 = 0;
  if ((v31 & 0x7FFFFF) != 0)
  {
    v33 = (((v6 + 16 * ((v31 >> 23) & 1) + ((v31 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v6 + 40));
    v34 = 24 * (v31 & 0x7FFFFF);
    do
    {
      v35 = *(a2 + 16);
      if (v35)
      {
        v36 = mlir::Block::getParent(v35);
      }

      else
      {
        v36 = 0;
      }

      if (v33 == v36 || mlir::Region::isProperAncestor(v33, v36))
      {
        v32 = v33;
      }

      v33 = (v33 + 24);
      v34 -= 24;
    }

    while (v34);
  }

  v41[1] = &v42;
  v42 = v44;
  v43 = 0x600000000;
  v40 = v32;
  v41[0] = &v40;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<AllocaScopeHoister::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)::{lambda(mlir::Operation *)#1}>, v41, 1);
  if (v43)
  {
    v37 = *(v6 + 16);
    ZinIrHalH13g::~ZinIrHalH13g(v6);
    *(a3 + 24) = v37;
    *(a3 + 32) = v38;
    if (v43)
    {
      mlir::OpBuilder::clone((a3 + 8), *v42);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v42 != v44)
  {
    v39 = result;
    free(v42);
    return v39;
  }

  return result;
}

uint64_t AllocaScopeHoister::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v23[20] = *MEMORY[0x1E69E9840];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v18 = 0;
    InterfaceFor = 0;
    return 2;
  }

  if (!a2)
  {
    v18 = 0;
    InterfaceFor = 0;
    return 2;
  }

  v16 = a1;
  v18 = a2;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v4 = *(a2 + 36);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (!v4)
  {
    return 2;
  }

  v6 = 0;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6);
    v21 = v23;
    v22 = 0x400000000;
    mlir::ExecutionCostOpInterface::getExecutionCost(&v18, &v21);
    v7 = llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(&v21, &NextResultAtOffset);
    v8 = (v21 + 40 * v22);
    if (v7 != v8)
    {
      a1 = v7[1];
    }

    if (v21 != v23)
    {
      free(v21);
    }

    if (v7 == v8)
    {
      goto LABEL_12;
    }

    v9 = a1[1];
    {
      break;
    }

    AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()();
    if (v9 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
    {
      goto LABEL_20;
    }

LABEL_12:
    if (v4 == ++v6)
    {
      return 2;
    }
  }

  if (v9 != mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
  {
    goto LABEL_12;
  }

LABEL_20:
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
    if (v10)
    {
      v11 = *v16;
      v12 = (*(a2 + 72) + 24);
      do
      {
        v21 = *v12;
        v13 = *v11;
        ParentRegion = mlir::Value::getParentRegion(&v21);
        if (v13 == ParentRegion || (mlir::Region::isProperAncestor(v13, ParentRegion) & 1) != 0)
        {
          return 2;
        }

        v12 += 4;
      }

      while (--v10);
    }
  }

  AllocaScopeHoister::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()(v16, a2);
  return 1;
}

void anonymous namespace::FoldCopyOfCast::~FoldCopyOfCast(_anonymous_namespace_::FoldCopyOfCast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::FoldCopyOfCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    goto LABEL_15;
  }

  v6 = *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v6 = 0;
  }

  v38 = v6;
  v39 = v6;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && (v8 = DefiningOp, Value = mlir::ArrayAttr::getValue(&v39), v11 = v10, v12 = mlir::ArrayAttr::getValue(&v38), v11 == v13) && !memcmp(Value, v12, 8 * v11) && (RHS = mlir::AffineBinaryOpExpr::getRHS(&v39), RHS == mlir::AffineBinaryOpExpr::getRHS(&v38)))
  {
    (*(*a3 + 40))(a3, a2);
    v15 = *(a2 + 72);
    v16 = *(*(v8 + 72) + 24);
    v17 = v15[1];
    if (v17)
    {
      v18 = *v15;
      *v17 = *v15;
      if (v18)
      {
        *(v18 + 8) = v17;
      }
    }

    v15[3] = v16;
    v15[1] = v16;
    v19 = *v16;
    *v15 = *v16;
    if (v19)
    {
      *(v19 + 8) = v15;
    }

    *v16 = v15;
    (*(*a3 + 48))(a3, a2);
    v20 = 1;
  }

  else
  {
LABEL_15:
    v20 = 0;
  }

  v39 = *(*(a2 + 72) + 56);
  v21 = mlir::Value::getDefiningOp(&v39);
  if (v21 && *(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v22 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(*v22 + 136);
    if (v23 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v22 = 0;
    }

    v38 = v22;
    v39 = v22;
    if (v23 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v24 = v21;
      v25 = mlir::ArrayAttr::getValue(&v39);
      v27 = v26;
      v28 = mlir::ArrayAttr::getValue(&v38);
      if (v27 == v29 && !memcmp(v25, v28, 8 * v27))
      {
        v30 = mlir::AffineBinaryOpExpr::getRHS(&v39);
        if (v30 == mlir::AffineBinaryOpExpr::getRHS(&v38))
        {
          (*(*a3 + 40))(a3, a2);
          v31 = *(a2 + 72);
          v32 = *(*(v24 + 72) + 24);
          v33 = v31 + 4;
          v34 = v31[5];
          if (v34)
          {
            v35 = *v33;
            *v34 = *v33;
            if (v35)
            {
              *(v35 + 8) = v34;
            }
          }

          v31[7] = v32;
          v31[5] = v32;
          v36 = *v32;
          v31[4] = *v32;
          if (v36)
          {
            *(v36 + 8) = v33;
          }

          *v32 = v33;
          (*(*a3 + 48))(a3, a2);
          return 1;
        }
      }
    }
  }

  return v20;
}

void anonymous namespace::FoldEmptyCopy::~FoldEmptyCopy(_anonymous_namespace_::FoldEmptyCopy *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::FoldEmptyCopy::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::BaseMemRefType::hasRank(&v14))
  {
    Value = mlir::ArrayAttr::getValue(&v14);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = Value;
      while (*v8)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v8 = Value;
    }

    if (v8 != (Value + 8 * v6))
    {
      goto LABEL_17;
    }
  }

LABEL_9:
  v14 = *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::BaseMemRefType::hasRank(&v14))
  {
    v9 = mlir::ArrayAttr::getValue(&v14);
    if (v10)
    {
      v11 = 8 * v10;
      for (i = v9; *i; ++i)
      {
        v11 -= 8;
        if (!v11)
        {
          return 0;
        }
      }
    }

    else
    {
      i = v9;
    }

    if (i != (v9 + 8 * v10))
    {
LABEL_17:
      (*(*a3 + 16))(a3, a2);
      return 1;
    }
  }

  return 0;
}

void anonymous namespace::FoldSelfCopy::~FoldSelfCopy(_anonymous_namespace_::FoldSelfCopy *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::FoldSelfCopy::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 72) + 24) != *(*(a2 + 72) + 56))
  {
    return 0;
  }

  (*(*a3 + 16))(a3);
  return 1;
}

void anonymous namespace::DimOfMemRefReshape::~DimOfMemRefReshape(_anonymous_namespace_::DimOfMemRefReshape *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::DimOfMemRefReshape::matchAndRewrite(uint64_t a1, void *a2, uint64_t a3)
{
  v23[0] = *(a2[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(v23);
  if (!DefiningOp || (v6 = DefiningOp, *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::ReshapeOp,void>::id))
  {
    v7 = "Dim op is not defined by a reshape op.";
LABEL_4:
    v23[0] = v7;
    v24 = 259;
    v25 = v23;
    v8 = *(a3 + 16);
    if (v8)
    {
      if (instruction::util::IsTasklet(v8))
      {
        (*(*v8 + 88))(v8, a2[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::memref::DimOp &>(mlir::memref::DimOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v25);
      }
    }

    return 0;
  }

  v23[0] = *(a2[9] + 56);
  ParentBlock = mlir::Value::getParentBlock(v23);
  v11 = *(v6 + 16);
  if (ParentBlock == v11)
  {
    v23[0] = *(a2[9] + 56);
    v15 = mlir::Value::getDefiningOp(v23);
    if (v15 && mlir::Operation::isBeforeInBlock(v6, v15))
    {
      v7 = "dim.getIndex is not defined before reshape in the same block.";
      goto LABEL_4;
    }
  }

  else if (a2[2] != v11)
  {
    v23[0] = *(a2[9] + 56);
    ParentRegion = mlir::Value::getParentRegion(v23);
    if (*(v6 + 16))
    {
      v13 = ParentRegion;
      Parent = mlir::Block::getParent(*(v6 + 16));
      if ((mlir::Region::isProperAncestor(v13, Parent) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((mlir::Region::isProperAncestor(ParentRegion, 0) & 1) == 0)
    {
LABEL_20:
      v7 = "dim.getIndex does not dominate reshape.";
      goto LABEL_4;
    }
  }

  v16 = *(v6 + 16);
  ZinIrHalH13g::~ZinIrHalH13g(v6);
  v18 = *(v17 + 8);
  *(a3 + 24) = v16;
  *(a3 + 32) = v18;
  v19 = a2[3];
  v25 = *(*(v6 + 72) + 56);
  v22 = *(a2[9] + 56);
  v20 = mlir::OpBuilder::create<mlir::memref::LoadOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::IndexType>>((a3 + 8), v19, &v25, &v22);
  v23[0] = v20 - 16;
  v21 = *(a2 - 1);
  if ((v21 ^ *(v20 - 1)) >= 8)
  {
    v25 = (v21 & 0xFFFFFFFFFFFFFFF8);
    v23[0] = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v19, &v25, v23) - 16;
  }

  (**a3)(a3, a2, v23, 1);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::LoadOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::IndexType>>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::LoadOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::LoadOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::IndexType>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::memref::LoadOp::build(a1, v17, *a3, a4, 1uLL, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::LoadOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::memref::GenericAtomicRMWOp::verify(void)::$_0>(uint64_t a1, mlir *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (mlir::isMemoryEffectFree(a2, a2))
  {
    return 1;
  }

  v12 = "body of 'memref.generic_atomic_rmw' should contain only operations with no side effects";
  v13 = 259;
  mlir::Operation::emitError(a2, &v12, v14);
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
            MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return 0;
}

void anonymous namespace::ReinterpretCastOpExtractStridedMetadataFolder::~ReinterpretCastOpExtractStridedMetadataFolder(_anonymous_namespace_::ReinterpretCastOpExtractStridedMetadataFolder *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::ReinterpretCastOpExtractStridedMetadataFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t *, uint64_t))
{
  v56[6] = *MEMORY[0x1E69E9840];
  v46 = a2;
  v54 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v54);
  v5 = DefiningOp;
  if (!DefiningOp)
  {
    return v5;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::ExtractStridedMetadataOp,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::memref::ExtractStridedMetadataOp,void>::id)
  {
    v8 = DefiningOp;
  }

  else
  {
    v8 = 0;
  }

  v45 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = *(DefiningOp + 36);
  v10 = (v9 - 2) >> 1;
  if (v9)
  {
    v11 = DefiningOp - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v10 + 2);
  mlir::ValueRange::ValueRange(&v51, NextResultAtOffset, v10 + 2 + v10 - (v10 + 2));
  mlir::getAsOpFoldResult(v51, v52, &v54);
  v13 = *(*(*(v5 + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((v5 + 24));
  constifyIndexValues(&v54, v13 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantStrides, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  mlir::memref::ReinterpretCastOp::getConstifiedMixedStrides(&v46, &v51);
  if (v55 != v52)
  {
    goto LABEL_32;
  }

  if (*(v46 + 36))
  {
    v15 = v46 - 16;
  }

  else
  {
    v15 = 0;
  }

  v49[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(v49);
  v17 = v16;
  if (!v16)
  {
LABEL_18:
    v24 = *(v5 + 36);
    if (v24)
    {
      v25 = v5 - 16;
    }

    else
    {
      v25 = 0;
    }

    v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 2);
    mlir::ValueRange::ValueRange(v47, v26, (v24 - 2) >> 1);
    mlir::getAsOpFoldResult(v47[0], v47[1], v49);
    v27 = *(*(*(v5 + 72) + 24) + 8);
    v28 = mlir::Attribute::getContext((v5 + 24));
    constifyIndexValues(v49, v27 & 0xFFFFFFFFFFFFFFF8, v28, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantSizes, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
    mlir::memref::ReinterpretCastOp::getConstifiedMixedSizes(&v46, v47);
    if (v17)
    {
      v29 = v49[0];
      v30 = v47[0];
      while (1)
      {
        v32 = *v29++;
        v31 = v32;
        v33 = *v30++;
        if (v31 != v33)
        {
          break;
        }

        if (!--v17)
        {
          goto LABEL_25;
        }
      }

LABEL_33:
      v5 = 0;
      v39 = v47[0];
      if (v47[0] == v48)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_25:
    ConstifiedMixedOffset = mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedOffset(&v45);
    if (ConstifiedMixedOffset != mlir::memref::ReinterpretCastOp::getConstifiedMixedOffset(&v46))
    {
      goto LABEL_33;
    }

    if (*(v46 + 36))
    {
      v36 = v46 - 16;
    }

    else
    {
      v36 = 0;
    }

    v35 = *(*(*(v5 + 72) + 24) + 8);
    v37 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0) + 8) ^ v35;
    v38 = v46;
    if (v37 > 7)
    {
      if (*(v46 + 36))
      {
        v41 = v46 - 16;
      }

      else
      {
        v41 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v43 = *(*(v5 + 72) + 24);
      v44 = v42;
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(a3, v38, &v44, &v43);
      v5 = 1;
      v39 = v47[0];
      if (v47[0] == v48)
      {
LABEL_35:
        if (v49[0] != &v50)
        {
          free(v49[0]);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v44 = *(*(v5 + 72) + 24);
      v5 = 1;
      (**a3)(a3, v46, &v44, 1);
      v39 = v47[0];
      if (v47[0] == v48)
      {
        goto LABEL_35;
      }
    }

LABEL_34:
    free(v39);
    goto LABEL_35;
  }

  v18 = v54;
  v19 = v51;
  v20 = v16;
  while (1)
  {
    v22 = *v18++;
    v21 = v22;
    v23 = *v19++;
    if (v21 != v23)
    {
      break;
    }

    if (!--v20)
    {
      goto LABEL_18;
    }
  }

LABEL_32:
  v5 = 0;
LABEL_37:
  if (v51 != &v53)
  {
    free(v51);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  return v5;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::memref::AllocOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::assign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 << 6;
    v8 = (v7 + *a1 - 64);
    v9 = -v7;
    do
    {
      if (v8 + 2 != *v8)
      {
        free(*v8);
      }

      v8 -= 8;
      v9 += 64;
    }

    while (v9);
  }

  *(a1 + 8) = 0;
  v10 = a3 << 6 >> 6;
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v10);
    v11 = *(a1 + 8);
    v12 = *(a1 + 8);
    v13 = a3 << 6;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  v13 = a3 << 6;
  if (a3)
  {
LABEL_10:
    v14 = 0;
    v15 = *a1 + (v11 << 6);
    v16 = a3 << 6;
    while (1)
    {
      v18 = (v15 + v14);
      v19 = (v15 + v14 + 16);
      *v18 = v19;
      v18[1] = 0x600000000;
      if (a2 == v15)
      {
        goto LABEL_14;
      }

      v20 = a2 + v14;
      v21 = *(a2 + v14 + 8);
      if (!*(a2 + v14 + 8))
      {
        goto LABEL_14;
      }

      if (v21 < 7)
      {
        v17 = *(a2 + v14 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + v14, (v15 + v14 + 16), *(a2 + v14 + 8), 8);
        v17 = *(v20 + 8);
        if (!v17)
        {
          goto LABEL_13;
        }

        v19 = *v18;
      }

      memcpy(v19, *v20, 8 * v17);
LABEL_13:
      *(v18 + 2) = v21;
LABEL_14:
      v14 += 64;
      if (v16 == v14)
      {
        v12 = *(a1 + 8);
        break;
      }
    }
  }

LABEL_21:
  *(a1 + 8) = v12 + (v13 >> 6);
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(uint64_t *a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 64, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x600000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v9, v6);
      }

      v9 += 8;
      v6 += 64;
      v8 -= 64;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = v10 << 6;
      v12 = (v11 + v6 - 64);
      v13 = -v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 8;
        v13 += 64;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 3) = v14;
}

char ***llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(char ***a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = (a2 + 2);
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = 4 * v7;
        v9 = &v6[v8 - 2];
        v10 = -(v8 * 8);
        do
        {
          v11 = *(v9 - 16);
          if (v9 != v11)
          {
            free(v11);
          }

          v9 -= 32;
          v10 += 32;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = a2 + 1;
      a1[1] = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v12 = 0;
      return a1;
    }

    v12 = a2 + 1;
    v14 = *(a2 + 2);
    v15 = *(a1 + 2);
    if (v15 < v14)
    {
      if (*(a1 + 3) >= v14)
      {
        if (!v15)
        {
          v15 = 0;
          v24 = *a2;
          v25 = *(a2 + 2);
          if (*(a2 + 2))
          {
LABEL_32:
            v26 = *a1;
            v27 = 32 * v15;
            v28 = 32 * v25;
            do
            {
              v29 = &v26[v27 / 8];
              *v29 = &v26[v27 / 8 + 2];
              v29[1] = 0x200000000;
              if (*&v24[v27 + 8])
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v29, &v24[v27]);
              }

              v26 += 4;
              v28 -= 32;
              v24 += 32;
            }

            while (v27 != v28);
            v24 = *a2;
          }

LABEL_37:
          *(a1 + 2) = v14;
          v30 = *v12;
          if (v30)
          {
            v31 = 32 * v30;
            v32 = &v24[v31 - 16];
            v33 = -v31;
            do
            {
              v34 = *(v32 - 16);
              if (v32 != v34)
              {
                free(v34);
              }

              v32 -= 32;
              v33 += 32;
            }

            while (v33);
          }

          goto LABEL_12;
        }

        v22 = *a1;
        v23 = 32 * v15;
        do
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v22, v5);
          v5 += 32;
          v22 += 32;
          v23 -= 32;
        }

        while (v23);
      }

      else
      {
        if (v15)
        {
          v16 = &(*a1)[4 * v15 - 2];
          v17 = -32 * v15;
          do
          {
            v18 = *(v16 - 2);
            if (v16 != v18)
            {
              free(v18);
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v17);
        }

        *(a1 + 2) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v14);
        v15 = 0;
      }

      v24 = *a2;
      v25 = *(a2 + 2);
      if (v15 != v25)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    v19 = *a1;
    if (v14)
    {
      v20 = 32 * v14;
      do
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v19, v5);
        v5 += 32;
        v19 += 32;
        v20 -= 32;
      }

      while (v20);
      v21 = &(*a1)[4 * *(a1 + 2)];
      if (v21 == v19)
      {
LABEL_47:
        *(a1 + 2) = v14;
        v38 = *(a2 + 2);
        if (v38)
        {
          v39 = 32 * v38;
          v40 = &(*a2)[v39 - 16];
          v41 = -v39;
          do
          {
            v42 = *(v40 - 2);
            if (v40 != v42)
            {
              free(v42);
            }

            v40 -= 32;
            v41 += 32;
          }

          while (v41);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v21 = (v19 + 32 * v15);
      if (v21 == v19)
      {
        goto LABEL_47;
      }
    }

    v35 = v21 - 16;
    do
    {
      v37 = *(v35 - 2);
      if (v35 != v37)
      {
        free(v37);
      }

      v36 = v35 - 16;
      v35 -= 32;
    }

    while (v36 != v19);
    goto LABEL_47;
  }

  return a1;
}