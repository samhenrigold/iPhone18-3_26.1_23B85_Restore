uint64_t mlir::memref::AllocOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
  if (*a2)
  {
    v3 = a1;
    NamedAttr = mlir::Builder::getNamedAttr(&v22, "alignment", 9uLL, *a2);
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

unint64_t mlir::memref::AllocOp::computePropertiesHash(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = *(a1 + 12) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * *(a1 + 8) + 8));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

uint64_t mlir::memref::AllocOp::getInherentAttr(mlir::MLIRContext *a1, uint64_t a2, void *__s1, size_t __n)
{
  if (__n == 21)
  {
    v6 = a1;
    v7 = a2;
    if (memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }
  }

  else
  {
    if (__n != 19)
    {
      if (__n == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
      {
        return *a2;
      }

      return 0;
    }

    v6 = a1;
    v7 = a2;
    if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return 0;
    }
  }

  return mlir::detail::DenseArrayAttrImpl<int>::get(v6, (v7 + 8), 2);
}

uint64_t mlir::memref::AllocOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
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
      if (a3 == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

    result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
    if (result)
    {
      return result;
    }
  }

  if (a4)
  {
    result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
    v7 = result ? a4 : 0;
    v10 = v7;
    if (v7)
    {
      result = mlir::AffineBinaryOpExpr::getLHS(&v10);
      if (result == 2)
      {
        result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v10);
        if (v8)
        {
          return memmove((v5 + 8), result, 4 * v8);
        }
      }
    }
  }

  return result;
}

void mlir::memref::AllocOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    v5 = a1;
    mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
    a1 = v5;
  }

  v6 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 1), 2);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v6);
}

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v33 = a1;
    v8 = a4;
    v9 = a5;
    Value = mlir::AffineMapAttr::getValue(&v33);
    isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 64);
    a5 = v9;
    a4 = v8;
    if (isSignlessInteger)
    {
      v32 = a1;
      Int = mlir::IntegerAttr::getInt(&v32);
      a5 = v9;
      a4 = v8;
      if ((Int & 0x8000000000000000) == 0)
      {
        return 1;
      }
    }
  }

  a4(&Value, a5);
  if (Value)
  {
    LODWORD(v33) = 3;
    v34 = "attribute '";
    v35 = 11;
    v13 = &v33;
    v14 = v39;
    if (v40 >= v41)
    {
      if (v39 <= &v33 && v39 + 24 * v40 > &v33)
      {
        v30 = &v33 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v14 = v39;
        v13 = (v39 + v30);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v13 = &v33;
        v14 = v39;
      }
    }

    v15 = &v14[24 * v40];
    v16 = *v13;
    *(v15 + 2) = v13[2];
    *v15 = v16;
    ++v40;
    if (Value)
    {
      v36 = 261;
      v33 = a2;
      v34 = a3;
      mlir::Diagnostic::operator<<(&v38, &v33);
      if (Value)
      {
        LODWORD(v33) = 3;
        v34 = "' failed to satisfy constraint: 64-bit signless integer attribute whose minimum value is 0";
        v35 = 90;
        v17 = &v33;
        v18 = v39;
        if (v40 >= v41)
        {
          if (v39 <= &v33 && v39 + 24 * v40 > &v33)
          {
            v31 = &v33 - v39;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v18 = v39;
            v17 = (v39 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
            v17 = &v33;
            v18 = v39;
          }
        }

        v19 = &v18[24 * v40];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v40;
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v46;
      v23 = __p;
      if (v46 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v46 = v21;
      operator delete(v23);
    }

    v24 = v43;
    if (v43)
    {
      v25 = v44;
      v26 = v43;
      if (v44 != v43)
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
        v26 = v43;
      }

      v44 = v24;
      operator delete(v26);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v12;
}

BOOL mlir::memref::AllocOp::readProperties(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, a2[32]))
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::IntegerAttr]";
  v38 = 67;
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

uint64_t mlir::memref::AllocOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 8), 2);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 8), 2);
  }

  return result;
}

uint64_t mlir::memref::AllocOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    v22 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    a3 = v22;
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  mlir::OperationState::addOperands(a2, a4, a5);
  mlir::OperationState::addOperands(a2, a6, a7);
  v28[0] = a5;
  v28[1] = a7;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, v28, 2);
  Context = mlir::Attribute::getContext(a2);
  v25 = 261;
  v23 = "operandSegmentSizes";
  v24 = 19;
  v18 = mlir::StringAttr::get(Context, &v23);
  ZinMirCacheTensors::ZinMirCacheTensors(&v26, v18, DenseI32ArrayAttr);
  result = mlir::NamedAttrList::push_back(a2 + 112, v26, v27);
  if (a8)
  {
    v20 = mlir::Attribute::getContext(a2);
    v25 = 261;
    v23 = "alignment";
    v24 = 9;
    v21 = mlir::StringAttr::get(v20, &v23);
    ZinMirCacheTensors::ZinMirCacheTensors(&v26, v21, a8);
    return mlir::NamedAttrList::push_back(a2 + 112, v26, v27);
  }

  return result;
}

uint64_t mlir::memref::AllocOp::verifyInvariantsImpl(mlir::memref::AllocOp *this)
{
  v1 = *this;
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v4 = v1;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v2, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v4))
  {
    return 0;
  }

  mlir::memref::AllocOp::verifyInvariantsImpl();
  return v5;
}

uint64_t mlir::memref::AllocOp::parse(uint64_t a1, unsigned int *a2)
{
  v25[16] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = 0x400000000;
  v20 = v22;
  v21 = 0x400000000;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*a1 + 320))(a1))
  {
    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v19 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = *(a2 + 1);
  v18[0] = a1;
  v18[1] = &v19;
  v18[2] = a2;
  v5 = mlir::NamedAttrList::get((a2 + 28), **(v4 + 96));
  if (v5)
  {
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v5, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
    {
      goto LABEL_21;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v19))
  {
    goto LABEL_21;
  }

  v18[0] = v19;
  v6 = v24;
  v7 = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(a2) + 8) = v6 | (v7 << 32);
  v8 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v8, v9);
  mlir::OperationState::addTypes(a2, v18, 1);
  if (v24)
  {
    v11 = v23;
    v12 = 32 * v24;
    while (((*(*a1 + 728))(a1, v11, IndexType, a2 + 4) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

LABEL_21:
    v15 = 0;
LABEL_22:
    v16 = v20;
    if (v20 != v22)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (v21)
  {
    v13 = v20;
    v14 = 32 * v21;
    while (((*(*a1 + 728))(a1, v13, IndexType, a2 + 4) & 1) != 0)
    {
      v13 += 32;
      v15 = 1;
      v14 -= 32;
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v15 = 1;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_23:
    free(v16);
  }

LABEL_24:
  if (v23 != v25)
  {
    free(v23);
  }

  return v15;
}

void mlir::memref::AllocOp::getEffects(void *result, uint64_t a2)
{
  {
    v7 = result;
    v8 = a2;
    mlir::memref::AllocOp::getEffects();
    result = v7;
    a2 = v8;
  }

  v13 = *result - 16;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v12 = 0;
  v11 = 1;
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
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 4;
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

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

BOOL mlir::memref::AllocaOp::readProperties(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::memref::AllocaOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, 0, 0);
  v8 = v11[0];
  v9 = v11[1];
  mlir::ValueRange::ValueRange(v12, 0, 0);
  return mlir::memref::AllocOp::build(a1, a2, a3, v8, v9, v12[0], v12[1], a4);
}

uint64_t mlir::memref::AllocaOp::parse(uint64_t a1, unsigned int *a2)
{
  v25[16] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = 0x400000000;
  v20 = v22;
  v21 = 0x400000000;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*a1 + 320))(a1))
  {
    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v20, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v19 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 28) & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = *(a2 + 1);
  v18[0] = a1;
  v18[1] = &v19;
  v18[2] = a2;
  v5 = mlir::NamedAttrList::get((a2 + 28), **(v4 + 96));
  if (v5)
  {
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v5, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocaOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
    {
      goto LABEL_21;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v19))
  {
    goto LABEL_21;
  }

  v18[0] = v19;
  v6 = v24;
  v7 = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(a2) + 8) = v6 | (v7 << 32);
  v8 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v8, v9);
  mlir::OperationState::addTypes(a2, v18, 1);
  if (v24)
  {
    v11 = v23;
    v12 = 32 * v24;
    while (((*(*a1 + 728))(a1, v11, IndexType, a2 + 4) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

LABEL_21:
    v15 = 0;
LABEL_22:
    v16 = v20;
    if (v20 != v22)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (v21)
  {
    v13 = v20;
    v14 = 32 * v21;
    while (((*(*a1 + 728))(a1, v13, IndexType, a2 + 4) & 1) != 0)
    {
      v13 += 32;
      v15 = 1;
      v14 -= 32;
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v15 = 1;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_23:
    free(v16);
  }

LABEL_24:
  if (v23 != v25)
  {
    free(v23);
  }

  return v15;
}

void mlir::memref::AllocaOp::getEffects(void *result, uint64_t a2)
{
  {
    v7 = result;
    v8 = a2;
    mlir::memref::AllocOp::getEffects();
    result = v7;
    a2 = v8;
  }

  v13 = *result - 16;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v12 = 0;
  v11 = 1;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 4;
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
    mlir::memref::AllocaOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

BOOL mlir::memref::AllocaScopeOp::verifyInvariantsImpl(mlir::memref::AllocaScopeOp *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(v2 + 36);
  if (*(v2 + 36))
  {
    v4 = v2 - 16;
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

  v6 = ((v2 + 16 * ((*(v2 + 44) >> 23) & 1) + ((*(v2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40);
  v7 = *(v6 + 8);
  if (v7 != v6 && *(v7 + 8) == v6)
  {
    return 1;
  }

  v33 = "region #";
  v34 = 259;
  mlir::Operation::emitOpError(v2, &v33, &v38);
  if (v38)
  {
    LODWORD(v31[0]) = 5;
    v31[1] = 0;
    v8 = v31;
    v9 = v40;
    if (v41 >= v42)
    {
      if (v40 <= v31 && v40 + 24 * v41 > v31)
      {
        v27 = v31 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v9 = v40;
        v8 = (v40 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v8 = v31;
        v9 = v40;
      }
    }

    v10 = &v9[24 * v41];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v41;
    v12 = v38 == 0;
  }

  else
  {
    v12 = 1;
  }

  v30 = 1283;
  v29[0] = " ('";
  v29[2] = "bodyRegion";
  v29[3] = 10;
  v31[0] = v29;
  v31[2] = "') ";
  v32 = 770;
  if (!v12)
  {
    mlir::Diagnostic::operator<<(&v39, v31);
    if (v38)
    {
      v35 = 3;
      v36 = "failed to verify constraint: region with 1 blocks";
      v37 = 49;
      v13 = &v35;
      v14 = v40;
      if (v41 >= v42)
      {
        if (v40 <= &v35 && v40 + 24 * v41 > &v35)
        {
          v28 = &v35 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v14 = v40;
          v13 = (v40 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v13 = &v35;
          v14 = v40;
        }
      }

      v15 = &v14[24 * v41];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v41;
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v47;
      v20 = __p;
      if (v47 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v47 = v18;
      operator delete(v20);
    }

    v21 = v44;
    if (v44)
    {
      v22 = v45;
      v23 = v44;
      if (v45 != v44)
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
        v23 = v44;
      }

      v45 = v21;
      operator delete(v23);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v17;
}

BOOL mlir::memref::AllocaScopeReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v11 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v8) & 1) == 0))
  {
    v5 = 0;
    v6 = v8[0];
    if (v8[0] == &v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16);
  v6 = v8[0];
  if (v8[0] != &v9)
  {
LABEL_9:
    free(v6);
  }

LABEL_10:
  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

BOOL mlir::memref::CastOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
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
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::memref::CastOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, v12))
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, (a2 + 4));
}

uint64_t mlir::memref::CollapseShapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "reassociation", 0xDuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 58;
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

uint64_t mlir::memref::CollapseShapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "reassociation", 0xDuLL, *a2);
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

unint64_t mlir::memref::CollapseShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x69636F7373616572 ? (v4 = *(a3 + 5) == 0x6E6F69746169636FLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::memref::CollapseShapeOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

void mlir::memref::CollapseShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "reassociation", 0xDuLL, *a2);
  }
}

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v37 = a1;
    Value = mlir::ArrayAttr::getValue(&v37);
    v27 = mlir::ArrayAttr::getValue(&v37);
    v29 = v27 + 8 * v28;
    if (v29 != Value)
    {
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v38 = *Value;
        v30 = mlir::ArrayAttr::getValue(&v38);
        v31 = mlir::ArrayAttr::getValue(&v38);
        v33 = v31 + 8 * v32;
        if (v33 != v30)
        {
          while (*v30)
          {
            if (*(**v30 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              break;
            }

            v39 = *v30;
            v43 = mlir::AffineMapAttr::getValue(&v39);
            if (!mlir::Type::isSignlessInteger(&v43, 64))
            {
              break;
            }

            v30 += 8;
            if (v30 == v33)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_3;
        }

LABEL_33:
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
  a4(&v43, a5);
  if (v43)
  {
    LODWORD(v39) = 3;
    v40 = "attribute '";
    v41 = 11;
    v9 = &v39;
    v10 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v39 && v45 + 24 * v46 > &v39)
      {
        v35 = &v39 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = v45;
        v9 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v9 = &v39;
        v10 = v45;
      }
    }

    v11 = &v10[24 * v46];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
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
        v40 = "' failed to satisfy constraint: Array of 64-bit integer array attributes";
        v41 = 72;
        v13 = &v39;
        v14 = v45;
        if (v46 >= v47)
        {
          if (v45 <= &v39 && v45 + 24 * v46 > &v39)
          {
            v36 = &v39 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v14 = v45;
            v13 = (v45 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
            v13 = &v39;
            v14 = v45;
          }
        }

        v15 = &v14[24 * v46];
        v16 = *v13;
        *(v15 + 2) = v13[2];
        *v15 = v16;
        ++v46;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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
    if (v49)
    {
      v22 = v50;
      v23 = v49;
      if (v50 != v49)
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
        v23 = v49;
      }

      v50 = v21;
      operator delete(v23);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v17;
}

BOOL mlir::memref::CollapseShapeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2);
}

BOOL mlir::memref::CollapseShapeOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v3, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
    v16 = "requires attribute 'reassociation'";
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

BOOL mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_18;
  }

  v10 = a1;
  {
    v54 = v9;
    mlir::Builder::getZeroAttr();
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v54 + 8);
    v13 = *(v54 + 16);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_14;
  }

  v20 = v14[1];
LABEL_16:
  v60[0] = a2;
  v60[1] = v20;
  mlir::ElementsAttr::isSplat(v60);
  isStrided = mlir::isStrided(a2);
  a1 = v10;
  if (isStrided)
  {
    return 1;
  }

LABEL_18:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v60);
  if (v60[0])
  {
    v57 = 3;
    v58 = " #";
    v59 = 2;
    v23 = &v57;
    v24 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v57 && v61 + 24 * v62 > &v57)
      {
        v50 = &v57 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v24 = v61;
        v23 = (v61 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v23 = &v57;
        v24 = v61;
      }
    }

    v25 = &v24[24 * v62];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v62;
    if (v60[0])
    {
      v57 = 5;
      v58 = a5;
      v28 = &v57;
      v29 = v61;
      if (v27 >= v63)
      {
        if (v61 <= &v57 && v61 + 24 * v27 > &v57)
        {
          v51 = &v57 - v61;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v27 + 1, 24);
          v29 = v61;
          v28 = (v61 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v27 + 1, 24);
          v28 = &v57;
          v29 = v61;
        }
      }

      v30 = &v29[24 * v62];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v62;
      if (v60[0])
      {
        v57 = 3;
        v58 = " must be strided memref of any type values, but got ";
        v59 = 52;
        v33 = &v57;
        v34 = v61;
        if (v32 >= v63)
        {
          if (v61 <= &v57 && v61 + 24 * v32 > &v57)
          {
            v52 = &v57 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v32 + 1, 24);
            v34 = v61;
            v33 = (v61 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v32 + 1, 24);
            v33 = &v57;
            v34 = v61;
          }
        }

        v35 = &v34[24 * v62];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v62;
        if (v60[0])
        {
          v37 = &v57;
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, a2);
          v38 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v53 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v38 = v61;
              v37 = (v61 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v37 = &v57;
              v38 = v61;
            }
          }

          v39 = &v38[24 * v62];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v62;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
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

    v41 = __p;
    if (__p)
    {
      v42 = v68;
      v43 = __p;
      if (v68 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v68 = v41;
      operator delete(v43);
    }

    v44 = v65;
    if (v65)
    {
      v45 = v66;
      v46 = v65;
      if (v66 != v65)
      {
        do
        {
          v48 = *--v45;
          v47 = v48;
          *v45 = 0;
          if (v48)
          {
            MEMORY[0x1AC55A040](v47, 0x1000C8077774924);
          }
        }

        while (v45 != v44);
        v46 = v65;
      }

      v66 = v44;
      operator delete(v46);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return v22;
}

BOOL mlir::memref::CollapseShapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15 = 0;
  v16 = 0;
  v14[0] = &v15;
  v14[1] = 1;
  v13 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v16, v7))
  {
    return 0;
  }

  if (v16)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      operator new();
    }

    *v8 = v16;
  }

  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v20[0] = a1;
  v20[1] = &v12;
  v20[2] = a2;
  v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
  if (v10)
  {
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v10, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20))
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v20))
  {
    return 0;
  }

  v15 = v20[0];
  v21 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v20) & 1) == 0)
  {
    return 0;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v20))
  {
    return 0;
  }

  v13 = v20[0];
  mlir::OperationState::addTypes(a2, &v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v14, v4, a2 + 16);
}

void mlir::memref::CollapseShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v25 = v27;
  v27[0] = "reassociation";
  v27[1] = 13;
  v26 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v25, v26);
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

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] - v19 > 3uLL)
  {
    *v19 = 1869901417;
    v18[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v18, "into", 4uLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }
}

BOOL mlir::memref::DeallocOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v6))
  {
    return 0;
  }

  v8 = v6;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::memref::DeallocOp::getEffects(uint64_t result, uint64_t a2)
{
  {
    v7 = result;
    v8 = a2;
    mlir::memref::DeallocOp::getEffects();
    result = v7;
    a2 = v8;
  }

  v13 = *(*result + 72);
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Free>(void)::instance;
  v12 = 0;
  v11 = 1;
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

uint64_t mlir::memref::DimOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (*(a11 + 12))
      {
        v13 = 0;
LABEL_6:
        bzero((*a11 + 8 * v13), 8 - 8 * v13);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
      v13 = *(a11 + 8);
      if (v13 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  v15 = a1;
  **a11 = mlir::Builder::getIndexType(&v15, a2);
  return 1;
}

BOOL mlir::memref::DimOp::verifyInvariantsImpl(uint64_t **this)
{
  v105 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    {
      v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v34 = *(v4 + 8);
      v35 = *(v4 + 16);
      if (!v35)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v51 = v4;
      mlir::Builder::getI32VectorAttr();
      v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v34 = *(v51 + 8);
      v35 = *(v51 + 16);
      if (!v35)
      {
        goto LABEL_67;
      }
    }

    v36 = v34;
    v37 = v35;
    do
    {
      v38 = v37 >> 1;
      v39 = &v36[2 * (v37 >> 1)];
      v41 = *v39;
      v40 = v39 + 2;
      v37 += ~(v37 >> 1);
      if (v41 < v33)
      {
        v36 = v40;
      }

      else
      {
        v37 = v38;
      }
    }

    while (v37);
    if (v36 != &v34[2 * v35] && *v36 == v33)
    {
      v52 = v36[1];
      goto LABEL_69;
    }

LABEL_67:
    v52 = 0;
LABEL_69:
    v94[0] = v3;
    v94[1] = v52;
    mlir::ElementsAttr::isSplat(v94);
    goto LABEL_70;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v4 + 8);
    v44 = *(v4 + 16);
    if (!v44)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v56 = v4;
    mlir::Builder::getI32VectorAttr();
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v56 + 8);
    v44 = *(v56 + 16);
    if (!v44)
    {
      goto LABEL_80;
    }
  }

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
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
LABEL_80:
    v86 = v3;
    v87 = 0;
    mlir::ElementsAttr::isSplat(&v86);
    v57 = *v3;
    {
      goto LABEL_81;
    }

LABEL_90:
    mlir::Builder::getI32VectorAttr();
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    if (!v60)
    {
      goto LABEL_93;
    }

    goto LABEL_82;
  }

  v67 = v45[1];
  v86 = v3;
  v87 = v67;
  mlir::ElementsAttr::isSplat(&v86);
  v57 = *v3;
  {
    goto LABEL_90;
  }

LABEL_81:
  v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v59 = *(v57 + 8);
  v60 = *(v57 + 16);
  if (!v60)
  {
    goto LABEL_93;
  }

LABEL_82:
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
  if (v61 != &v59[2 * v60] && *v61 == v58)
  {
    v68 = v61[1];
    v91 = v3;
    v92 = v68;
    if (mlir::ElementsAttr::getShapedType(&v91))
    {
      goto LABEL_96;
    }

    goto LABEL_3;
  }

LABEL_93:
  v91 = v3;
  v92 = 0;
  if (mlir::ElementsAttr::getShapedType(&v91))
  {
LABEL_96:
    v69 = *v3;
    {
      v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v71 = *(v69 + 8);
      v72 = *(v69 + 16);
      if (v72)
      {
LABEL_98:
        v73 = v71;
        v74 = v72;
        do
        {
          v75 = v74 >> 1;
          v76 = &v73[2 * (v74 >> 1)];
          v78 = *v76;
          v77 = v76 + 2;
          v74 += ~(v74 >> 1);
          if (v78 < v70)
          {
            v73 = v77;
          }

          else
          {
            v74 = v75;
          }
        }

        while (v74);
        if (v73 != &v71[2 * v72] && *v73 == v70)
        {
          v80 = v73[1];
          v89 = v3;
          v90 = v80;
          mlir::ShapedType::getShape(&v89);
          if (v81 >= 1)
          {
            goto LABEL_70;
          }

          goto LABEL_3;
        }
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v71 = *(v69 + 8);
      v72 = *(v69 + 16);
      if (v72)
      {
        goto LABEL_98;
      }
    }

    v89 = v3;
    v90 = 0;
    mlir::ShapedType::getShape(&v89);
    if (v79 >= 1)
    {
      goto LABEL_70;
    }
  }

LABEL_3:
  v88 = 261;
  v86 = "operand";
  v87 = 7;
  mlir::Operation::emitOpError(v2, &v86, v94);
  if (v94[0])
  {
    LODWORD(v91) = 3;
    v92 = " #";
    v93 = 2;
    v6 = &v91;
    v7 = v95;
    if (v96 >= v97)
    {
      if (v95 <= &v91 && v95 + 24 * v96 > &v91)
      {
        v82 = &v91 - v95;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v7 = v95;
        v6 = (v95 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v6 = &v91;
        v7 = v95;
      }
    }

    v8 = &v7[24 * v96];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    v10 = ++v96;
    if (v94[0])
    {
      LODWORD(v91) = 5;
      v92 = 0;
      v11 = &v91;
      v12 = v95;
      if (v10 >= v97)
      {
        if (v95 <= &v91 && v95 + 24 * v10 > &v91)
        {
          v83 = &v91 - v95;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v10 + 1, 24);
          v12 = v95;
          v11 = (v95 + v83);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v10 + 1, 24);
          v11 = &v91;
          v12 = v95;
        }
      }

      v13 = &v12[24 * v96];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      v15 = ++v96;
      if (v94[0])
      {
        LODWORD(v91) = 3;
        v92 = " must be unranked.memref of any type values or non-0-ranked.memref of any type values, but got ";
        v93 = 95;
        v16 = &v91;
        v17 = v95;
        if (v15 >= v97)
        {
          if (v95 <= &v91 && v95 + 24 * v15 > &v91)
          {
            v84 = &v91 - v95;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v15 + 1, 24);
            v17 = v95;
            v16 = (v95 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v15 + 1, 24);
            v16 = &v91;
            v17 = v95;
          }
        }

        v18 = &v17[24 * v96];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v96;
        if (v94[0])
        {
          v20 = &v91;
          mlir::DiagnosticArgument::DiagnosticArgument(&v91, v3);
          v21 = v95;
          if (v96 >= v97)
          {
            if (v95 <= &v91 && v95 + 24 * v96 > &v91)
            {
              v85 = &v91 - v95;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v21 = v95;
              v20 = (v95 + v85);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v20 = &v91;
              v21 = v95;
            }
          }

          v22 = &v21[24 * v96];
          v23 = *v20;
          *(v22 + 2) = v20[2];
          *v22 = v23;
          ++v96;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v94);
  if (v94[0])
  {
    mlir::InFlightDiagnostic::report(v94);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v102;
      v27 = __p;
      if (v102 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v102 = v25;
      operator delete(v27);
    }

    v28 = v99;
    if (v99)
    {
      v29 = v100;
      v30 = v99;
      if (v100 != v99)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v99;
      }

      v100 = v28;
      operator delete(v30);
    }

    if (v95 != v98)
    {
      free(v95);
    }
  }

  if (!v24)
  {
    return 0;
  }

LABEL_70:
  if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
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
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
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
        v42 = " must be index, but got ";
        v43 = 24;
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

uint64_t mlir::memref::DimOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 28) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (IndexType = 0, ((*(*a1 + 536))(a1, &IndexType)) && (v10 = IndexType, v5 = (*(*a1 + 32))(a1), IndexType = mlir::Builder::getIndexType(v5, v6), mlir::OperationState::addTypes(a2, &IndexType, 1), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v4, (a2 + 4))))
  {
    return (*(*a1 + 728))(a1, v11, IndexType, a2 + 4) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::memref::DimOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v5, v19, v20);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ",", 1uLL);
  }

  else
  {
    *v9 = 44;
    ++v8[4];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::memref::DmaWaitOp::verifyInvariantsImpl(uint64_t **this)
{
  if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    v2 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v4 = 4294967294;
      v5 = 32;
LABEL_5:
      v6 = v5 + 24;
      v7 = 1;
      while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
      {
        ++v7;
        v6 += 32;
        if (!--v4)
        {
          v2 = *this;
          if ((*(*this + 46) & 0x80) != 0)
          {
            goto LABEL_11;
          }

          v8 = 0;
          v9 = 0xFFFFFFFFLL;
          goto LABEL_12;
        }
      }

      return 0;
    }

    v3 = (*(v2 + 17) - 1);
    v4 = v3 - 1;
    if (v3 != 1)
    {
      v5 = v2[9] + 32;
      goto LABEL_5;
    }

    v7 = 1;
LABEL_11:
    v10 = *(v2 + 17);
    v8 = v2[9];
    v9 = (v10 - 1);
LABEL_12:
    v11 = (v9 + 1);
    v12 = v11 - v9;
    if (v11 == v9)
    {
      return 1;
    }

    for (i = v8 + 32 * v9 + 24; mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7); i += 32)
    {
      ++v7;
      if (!--v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::memref::DmaWaitOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v20 = v22;
  v21 = 0x400000000;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v13[1] = 1;
  v14 = 0;
  v13[0] = &v14;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v18, 1) & 1) != 0 && ((*(*a1 + 312))(a1))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, &v20, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 328))(a1) & 1) != 0 && ((*(*a1 + 120))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 704))(a1, v15, 1))
      {
        (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
        {
          v12 = 0;
          if (mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v12))
          {
            v14 = v12;
            v5 = (*(*a1 + 32))(a1);
            IndexType = mlir::Builder::getIndexType(v5, v6);
            if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v13, v4, a2 + 16))
            {
              if (!v21)
              {
LABEL_15:
                v10 = (*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1;
                goto LABEL_17;
              }

              v8 = v20;
              v9 = 32 * v21;
              while (((*(*a1 + 728))(a1, v8, IndexType, a2 + 16) & 1) != 0)
              {
                v8 += 32;
                v9 -= 32;
                if (!v9)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }
    }
  }

  v10 = 0;
LABEL_17:
  if (v20 != v22)
  {
    free(v20);
  }

  return v10;
}

uint64_t mlir::memref::ExpandShapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_72;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_71;
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
    goto LABEL_70;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "reassociation", 0xDuLL);
  if (!v8)
  {
LABEL_46:
    v36 = mlir::DictionaryAttr::get(&v58, "static_output_shape", 0x13uLL);
    if (v36)
    {
      v37 = v36;
      if (!mlir::detail::DenseArrayAttrImpl<long long>::classof(v36))
      {
        a3(v62, a4);
        if (v62[0])
        {
          v59 = 3;
          v61 = 64;
          v39 = &v59;
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v56 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v56);
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
          if (v62[0])
          {
            v43 = &v59;
            mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
            v44 = v63;
            if (v64 >= v65)
            {
              if (v63 <= &v59 && v63 + 24 * v64 > &v59)
              {
                v57 = &v59 - v63;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
                v44 = v63;
                v43 = (v63 + v57);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
                v43 = &v59;
                v44 = v63;
              }
            }

            v45 = &v44[24 * v64];
            v46 = *v43;
            *(v45 + 2) = *(v43 + 2);
            *v45 = v46;
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

        v47 = __p;
        if (__p)
        {
          v48 = v70;
          v49 = __p;
          if (v70 != __p)
          {
            do
            {
              v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
            }

            while (v48 != v47);
            v49 = __p;
          }

          v70 = v47;
          operator delete(v49);
        }

        v21 = v67;
        if (!v67)
        {
          goto LABEL_72;
        }

        v50 = v68;
        v23 = v67;
        if (v68 == v67)
        {
          goto LABEL_71;
        }

        do
        {
          v52 = *--v50;
          v51 = v52;
          *v50 = 0;
          if (v52)
          {
            MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
          }
        }

        while (v50 != v21);
        goto LABEL_70;
      }

      a1[1] = v37;
    }

    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v8;
    goto LABEL_46;
  }

  v9 = v8;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 58;
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
  if (v67)
  {
    v22 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_71:
      v68 = v21;
      operator delete(v23);
      goto LABEL_72;
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
LABEL_70:
    v23 = v67;
    goto LABEL_71;
  }

LABEL_72:
  if (v63 != v66)
  {
    free(v63);
  }

  return 0;
}

uint64_t mlir::memref::ExpandShapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "reassociation", 0xDuLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "static_output_shape", 0x13uLL, v8);
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

unint64_t mlir::memref::ExpandShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 19)
  {
    if (a4 == 13 && *a3 == 0x69636F7373616572 && *(a3 + 5) == 0x6E6F69746169636FLL)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x6F5F636974617473 || a3[1] != 0x68735F7475707475 || *(a3 + 11) != 0x65706168735F7475)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::memref::ExpandShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 19)
  {
    if (*a2 == 0x6F5F636974617473 && a2[1] == 0x68735F7475707475 && *(a2 + 11) == 0x65706168735F7475)
    {
      if (a4)
      {
        v7 = result;
        v9 = mlir::detail::DenseArrayAttrImpl<long long>::classof(a4);
        result = v7;
        if (v9)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        v7[1] = v10;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
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
  }

  return result;
}

void mlir::memref::ExpandShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "reassociation", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "static_output_shape", 0x13uLL, v5);
  }
}

BOOL mlir::memref::ExpandShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v8, "reassociation", 0xD, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v9, "static_output_shape", 0x13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || mlir::detail::DenseArrayAttrImpl<long long>::classof(a1))
  {
    return 1;
  }

  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v29) = 3;
    v30 = "attribute '";
    v31 = 11;
    v11 = &v29;
    v12 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v27 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v12 = v35;
        v11 = (v35 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v11 = &v29;
        v12 = v35;
      }
    }

    v13 = &v12[24 * v36];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v36;
    if (v33)
    {
      v32 = 261;
      v29 = a2;
      v30 = a3;
      mlir::Diagnostic::operator<<(&v34, &v29);
      if (v33)
      {
        LODWORD(v29) = 3;
        v30 = "' failed to satisfy constraint: i64 dense array attribute";
        v31 = 57;
        v15 = &v29;
        v16 = v35;
        if (v36 >= v37)
        {
          if (v35 <= &v29 && v35 + 24 * v36 > &v29)
          {
            v28 = &v29 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v16 = v35;
            v15 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v15 = &v29;
            v16 = v35;
          }
        }

        v17 = &v16[24 * v36];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v36;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v9;
}

BOOL mlir::memref::ExpandShapeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, (v3 + 8));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::detail::DenseArrayAttrImpl<long long>::classof(v36))
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int64_t>]";
  v38 = 91;
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

uint64_t mlir::memref::ExpandShapeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::memref::ExpandShapeOp::verifyInvariantsImpl(uint64_t **this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (!v6)
  {
    v37[0] = "requires attribute 'reassociation'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

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

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

LABEL_57:
    free(v35);
    return v18;
  }

  v7 = v5[1];
  if (!v7)
  {
    v37[0] = "requires attribute 'static_output_shape'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v45;
      v29 = __p;
      if (v45 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v45 = v27;
      operator delete(v29);
    }

    v30 = v42;
    if (v42)
    {
      v31 = v43;
      v32 = v42;
      if (v43 != v42)
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
        v32 = v42;
      }

      v43 = v30;
      operator delete(v32);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

    goto LABEL_57;
  }

  v39[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v4, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
  {
    return 0;
  }

  v39[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v7, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39) || !mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v10 = -1;
    v11 = 32;
LABEL_9:
    v12 = v11 + 24;
    v13 = 1;
    while (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13))
    {
      ++v13;
      v12 += 32;
      if (!--v10)
      {
        v8 = *this;
        goto LABEL_13;
      }
    }

    return 0;
  }

  v9 = *(v8 + 17);
  v10 = v9 - 1;
  if (v9 != 1)
  {
    v11 = v8[9] + 32;
    goto LABEL_9;
  }

LABEL_13:
  v14 = *(v8 + 9);
  v15 = v8 - 2;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::memref::ExpandShapeOp::parse(uint64_t a1, uint64_t a2)
{
  v34[16] = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v27[0] = v28;
  v27[1] = 1;
  v25 = 0;
  v26 = 0;
  v32 = v34;
  v33 = 0x400000000;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v28, 1))
  {
    v5 = (*(*a1 + 32))(a1);
    v7 = mlir::NoneType::get(*v5, v6);
    if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v26, v7))
    {
      if (v26)
      {
        v8 = *(a2 + 256);
        if (!v8)
        {
          operator new();
        }

        *v8 = v26;
      }

      v31 = 257;
      if ((*(*a1 + 400))(a1, "output_shape", 12, v30))
      {
        (*(*a1 + 40))(a1);
        v30[0] = 0;
        if (mlir::parseDynamicIndexList(a1, &v32, &v25, v30, 0))
        {
          v9 = *(a2 + 256);
          if (!v9)
          {
            operator new();
          }

          *(v9 + 8) = v25;
          v21 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v10 = *(a2 + 8);
            v30[0] = a1;
            v30[1] = &v21;
            v30[2] = a2;
            v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
            if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v11, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v30))
            {
              v12 = mlir::NamedAttrList::get(a2 + 112, *(*(v10 + 96) + 8));
              if (!v12 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v12, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v30)) && ((*(*a1 + 104))(a1))
              {
                v30[0] = 0;
                if (mlir::AsmParser::parseType<mlir::MemRefType>(a1, v30))
                {
                  v24 = v30[0];
                  v31 = 257;
                  if ((*(*a1 + 400))(a1, "into", 4, v30))
                  {
                    v30[0] = 0;
                    if (mlir::AsmParser::parseType<mlir::MemRefType>(a1, v30))
                    {
                      v22 = v30[0];
                      v13 = (*(*a1 + 32))(a1);
                      IndexType = mlir::Builder::getIndexType(v13, v14);
                      mlir::OperationState::addTypes(a2, &v22, 1);
                      if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v27, v23, v4, a2 + 16))
                      {
                        if (!v33)
                        {
                          v18 = 1;
                          v19 = v32;
                          if (v32 == v34)
                          {
                            return v18;
                          }

                          goto LABEL_28;
                        }

                        v16 = v32;
                        v17 = 32 * v33;
                        while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 16) & 1) != 0)
                        {
                          v16 += 32;
                          v18 = 1;
                          v17 -= 32;
                          if (!v17)
                          {
                            goto LABEL_27;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v18 = 0;
LABEL_27:
  v19 = v32;
  if (v32 != v34)
  {
LABEL_28:
    free(v19);
  }

  return v18;
}

BOOL mlir::memref::ExtractAlignedPointerAsIndexOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
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
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::memref::ExtractAlignedPointerAsIndexOp::parse(uint64_t a1, unsigned int *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v14 = v16;
  v15 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v8 = 0;
    if (mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v8))
    {
      v10 = v8;
      if ((*(*a1 + 56))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v14))
      {
        (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 28))
        {
          mlir::OperationState::addTypes(a2, v14, v15);
          v5 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v9, v4, (a2 + 4));
          v6 = v14;
          if (v14 == v16)
          {
            return v5;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v5 = 0;
  v6 = v14;
  if (v14 != v16)
  {
LABEL_10:
    free(v6);
  }

  return v5;
}

void mlir::memref::ExtractAlignedPointerAsIndexOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v35 = *MEMORY[0x1E69E9840];
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
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 15917;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = *(*this + 9);
  v19 = *this - 16;
  if (!v18)
  {
    v19 = 0;
  }

  v30[0] = v19;
  v30[1] = v18;
  mlir::OperandRange::getTypes(&v31, v30);
  v20 = v32;
  v21 = v34;
  if (v32 != v34)
  {
    v22 = v31;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, v32);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v20 + 1; v21 != i; ++i)
    {
      v28 = (*(*a2 + 16))(a2);
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

      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, i);
      (*(*a2 + 32))(a2, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v31 = &v33;
  v32 = 0x200000000;
  v30[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v30);
  (*(*a2 + 192))(a2, Value, v26, v31, v32);
  if (v31 != &v33)
  {
    free(v31);
  }
}

uint64_t mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(mlir::IndexType *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = *MEMORY[0x1E69E9840];
  *&v18 = a6;
  BYTE8(v18) = 0;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = a9;
  *&v20 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v18);
    if (v19 == 1)
    {
      LOBYTE(v19) = 0;
    }

    mlir::OperationName::OperationName(&v18 + 1, "memref.extract_strided_metadata", 31, Context);
    LOBYTE(v19) = 1;
    a1 = v13;
  }

  *(&v20 + 1) = a4;
  v21 = a5;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v17 = a5;
  return mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(a1, a2, a3, v16, a11);
}

uint64_t mlir::memref::ExtractStridedMetadataOp::verifyInvariantsImpl(uint64_t **this)
{
  v124 = *MEMORY[0x1E69E9840];
  if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_6;
  }

  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v6 + 8);
    v36 = *(v6 + 16);
    if (!v36)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v64 = v6;
    mlir::Builder::getI32VectorAttr();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v64 + 8);
    v36 = *(v64 + 16);
    if (!v36)
    {
      goto LABEL_82;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
LABEL_82:
    v112 = v5;
    v113 = 0;
    mlir::ElementsAttr::isSplat(&v112);
    if (!mlir::isStrided(v5))
    {
      goto LABEL_6;
    }

    goto LABEL_85;
  }

  v65 = v37[1];
  v112 = v5;
  v113 = v65;
  mlir::ElementsAttr::isSplat(&v112);
  if (!mlir::isStrided(v5))
  {
    goto LABEL_6;
  }

LABEL_85:
  v66 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_6;
  }

  {
    v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v68 = *(v66 + 8);
    v69 = *(v66 + 16);
    if (v69)
    {
      goto LABEL_88;
    }

LABEL_97:
    v69 = 0;
    v70 = v68;
    goto LABEL_98;
  }

  v78 = v66;
  mlir::Builder::getI32VectorAttr();
  v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v68 = *(v78 + 8);
  v69 = *(v78 + 16);
  if (!v69)
  {
    goto LABEL_97;
  }

LABEL_88:
  v70 = v68;
  v71 = v69;
  do
  {
    v72 = v71 >> 1;
    v73 = &v70[2 * (v71 >> 1)];
    v75 = *v73;
    v74 = v73 + 2;
    v71 += ~(v71 >> 1);
    if (v75 < v67)
    {
      v70 = v74;
    }

    else
    {
      v71 = v72;
    }
  }

  while (v71);
LABEL_98:
  if (v70 != &v68[2 * v69] && *v70 == v67)
  {
    v79 = v70[1];
  }

  else
  {
    v79 = 0;
  }

  v105 = v5;
  v106 = v79;
  mlir::ElementsAttr::isSplat(&v105);
  v80 = *v5;
  {
    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v82 = *(v80 + 8);
    v83 = *(v80 + 16);
    if (v83)
    {
      goto LABEL_104;
    }

LABEL_111:
    v83 = 0;
    v84 = v82;
    goto LABEL_112;
  }

  mlir::Builder::getI32VectorAttr();
  v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v82 = *(v80 + 8);
  v83 = *(v80 + 16);
  if (!v83)
  {
    goto LABEL_111;
  }

LABEL_104:
  v84 = v82;
  v85 = v83;
  do
  {
    v86 = v85 >> 1;
    v87 = &v84[2 * (v85 >> 1)];
    v89 = *v87;
    v88 = v87 + 2;
    v85 += ~(v85 >> 1);
    if (v89 < v81)
    {
      v84 = v88;
    }

    else
    {
      v85 = v86;
    }
  }

  while (v85);
LABEL_112:
  if (v84 != &v82[2 * v83] && *v84 == v81)
  {
    v90 = v84[1];
    v109 = v5;
    v110 = v90;
    if (!mlir::ElementsAttr::getShapedType(&v109))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v109 = v5;
    v110 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v109))
    {
      goto LABEL_6;
    }
  }

  v91 = *v5;
  {
    v92 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v93 = *(v91 + 8);
    v94 = *(v91 + 16);
    if (v94)
    {
      goto LABEL_119;
    }

LABEL_128:
    v94 = 0;
    v95 = v93;
    goto LABEL_129;
  }

  mlir::Builder::getI32VectorAttr();
  v92 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v93 = *(v91 + 8);
  v94 = *(v91 + 16);
  if (!v94)
  {
    goto LABEL_128;
  }

LABEL_119:
  v95 = v93;
  v96 = v94;
  do
  {
    v97 = v96 >> 1;
    v98 = &v95[2 * (v96 >> 1)];
    v100 = *v98;
    v99 = v98 + 2;
    v96 += ~(v96 >> 1);
    if (v100 < v92)
    {
      v95 = v99;
    }

    else
    {
      v96 = v97;
    }
  }

  while (v96);
LABEL_129:
  if (v95 != &v93[2 * v94] && *v95 == v92)
  {
    v103 = v95[1];
  }

  else
  {
    v103 = 0;
  }

  v108[0] = v5;
  v108[1] = v103;
  mlir::ShapedType::getShape(v108);
  if (v104)
  {
LABEL_6:
    v107 = 261;
    v105 = "result";
    v106 = 6;
    mlir::Operation::emitOpError(v4, &v105, &v112);
    if (v112)
    {
      LODWORD(v109) = 3;
      v110 = " #";
      v111 = 2;
      v7 = &v109;
      v8 = v114;
      if (v115 >= v116)
      {
        if (v114 <= &v109 && v114 + 24 * v115 > &v109)
        {
          v76 = &v109 - v114;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
          v8 = v114;
          v7 = (v114 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
          v7 = &v109;
          v8 = v114;
        }
      }

      v9 = &v8[24 * v115];
      v10 = *v7;
      *(v9 + 2) = v7[2];
      *v9 = v10;
      v11 = ++v115;
      if (v112)
      {
        LODWORD(v109) = 5;
        v110 = 0;
        v12 = &v109;
        v13 = v114;
        if (v11 >= v116)
        {
          if (v114 <= &v109 && v114 + 24 * v11 > &v109)
          {
            v77 = &v109 - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v11 + 1, 24);
            v13 = v114;
            v12 = (v114 + v77);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v11 + 1, 24);
            v12 = &v109;
            v13 = v114;
          }
        }

        v14 = &v13[24 * v115];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        v16 = ++v115;
        if (v112)
        {
          LODWORD(v109) = 3;
          v110 = " must be strided memref of any type values of rank 0, but got ";
          v111 = 62;
          v17 = &v109;
          v18 = v114;
          if (v16 >= v116)
          {
            if (v114 <= &v109 && v114 + 24 * v16 > &v109)
            {
              v101 = &v109 - v114;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v16 + 1, 24);
              v18 = v114;
              v17 = (v114 + v101);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v16 + 1, 24);
              v17 = &v109;
              v18 = v114;
            }
          }

          v19 = &v18[24 * v115];
          v20 = *v17;
          *(v19 + 2) = v17[2];
          *v19 = v20;
          ++v115;
          if (v112)
          {
            v21 = &v109;
            mlir::DiagnosticArgument::DiagnosticArgument(&v109, v5);
            v22 = v114;
            if (v115 >= v116)
            {
              if (v114 <= &v109 && v114 + 24 * v115 > &v109)
              {
                v102 = &v109 - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
                v22 = v114;
                v21 = (v114 + v102);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
                v21 = &v109;
                v22 = v114;
              }
            }

            v23 = &v22[24 * v115];
            v24 = *v21;
            *(v23 + 2) = v21[2];
            *v23 = v24;
            ++v115;
          }
        }
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
    if (v112)
    {
      mlir::InFlightDiagnostic::report(&v112);
    }

    if (v123 == 1)
    {
      if (v122 != &v123)
      {
        free(v122);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v121;
        v28 = __p;
        if (v121 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v121 = v26;
        operator delete(v28);
      }

      v29 = v118;
      if (v118)
      {
        v30 = v119;
        v31 = v118;
        if (v119 != v118)
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
          v31 = v118;
        }

        v119 = v29;
        operator delete(v31);
      }

      if (v114 != v117)
      {
        free(v114);
      }
    }

    if (!v25)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v43 = *this - 2;
  }

  else
  {
    v43 = 0;
  }

  v44 = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 1);
  v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(v45 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u))
  {
    v46 = *(*this + 9);
    v47 = v46 - 2;
    if (v46)
    {
      v48 = *this - 2;
    }

    else
    {
      v48 = 0;
    }

    v49 = 2;
    v50 = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, 2);
    if (v47 < 2)
    {
LABEL_57:
      v54 = *(*this + 9);
      v55 = v54 - 2;
      v56 = (v54 - 2) >> 1;
      if (v54)
      {
        v57 = *this - 2;
      }

      else
      {
        v57 = 0;
      }

      v58 = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, v56 + 2);
      if (v55 < 2)
      {
        return 1;
      }

      v60 = v58;
      v61 = 0;
      v62 = v56 + 2 + v56 - (v56 + 2);
      while (1)
      {
        v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(v60, v61);
        if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(v63 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v49))
        {
          break;
        }

        ++v49;
        ++v61;
        result = 1;
        if (v62 == v61)
        {
          return result;
        }
      }
    }

    else
    {
      v51 = v50;
      v52 = 0;
      while (1)
      {
        v53 = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, v52);
        if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(v53 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v52 + 2))
        {
          break;
        }

        if (v47 >> 1 == ++v52)
        {
          v49 = v52 + 2;
          goto LABEL_57;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::memref::ExtractStridedMetadataOp::parse(uint64_t a1, unsigned int *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v14 = v16;
  v15 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v8 = 0;
    if (mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v8))
    {
      v10 = v8;
      if ((*(*a1 + 56))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v14))
      {
        (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 28))
        {
          mlir::OperationState::addTypes(a2, v14, v15);
          v5 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v9, v4, (a2 + 4));
          v6 = v14;
          if (v14 == v16)
          {
            return v5;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v5 = 0;
  v6 = v14;
  if (v14 != v16)
  {
LABEL_10:
    free(v6);
  }

  return v5;
}

uint64_t mlir::memref::GetGlobalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v28 = &v43;
      v29 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v29 = v47;
          v28 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v28 = &v43;
          v29 = v47;
        }
      }

      v30 = &v29[24 * v48];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
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

    v32 = __p;
    if (__p)
    {
      v33 = v54;
      v34 = __p;
      if (v54 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v54 = v32;
      operator delete(v34);
    }

    v23 = v51;
    if (!v51)
    {
      goto LABEL_51;
    }

    v35 = v52;
    v25 = v51;
    if (v52 == v51)
    {
      goto LABEL_50;
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
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v42, "name", 4uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v46[0] = v10;
  if (v10)
  {
    mlir::OpaqueAttr::getAttrData(v46);
    if (!v11)
    {
      *a1 = v9;
      return 1;
    }
  }

  a3(v46, a4);
  if (v46[0])
  {
    v43 = 3;
    v45 = 49;
    v12 = &v43;
    v13 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v40 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v13 = v47;
        v12 = (v47 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v12 = &v43;
        v13 = v47;
      }
    }

    v14 = &v13[24 * v48];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v48;
    if (v46[0])
    {
      v16 = &v43;
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v9);
      v17 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v48 > &v43)
        {
          v41 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v17 = v47;
          v16 = (v47 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v16 = &v43;
          v17 = v47;
        }
      }

      v18 = &v17[24 * v48];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
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

  v20 = __p;
  if (__p)
  {
    v21 = v54;
    v22 = __p;
    if (v54 != __p)
    {
      do
      {
        v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
      }

      while (v21 != v20);
      v22 = __p;
    }

    v54 = v20;
    operator delete(v22);
  }

  v23 = v51;
  if (v51)
  {
    v24 = v52;
    v25 = v51;
    if (v52 == v51)
    {
LABEL_50:
      v52 = v23;
      operator delete(v25);
      goto LABEL_51;
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
LABEL_49:
    v25 = v51;
    goto LABEL_50;
  }

LABEL_51:
  if (v47 != v50)
  {
    free(v47);
  }

  return 0;
}

uint64_t mlir::memref::GetGlobalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "name", 4uLL, *a2);
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

unint64_t mlir::memref::GetGlobalOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::memref::GetGlobalOp::setInherentAttr(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    v10[3] = v4;
    v10[4] = v5;
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      v10[0] = v6;
      if (v6)
      {
        v7 = result;
        mlir::OpaqueAttr::getAttrData(v10);
        result = v7;
        if (v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = a4;
        }
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

void mlir::memref::GetGlobalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "name", 4uLL, *a2);
  }
}

BOOL mlir::memref::GetGlobalOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v2);
}

BOOL mlir::memref::GetGlobalOp::verifyInvariantsImpl(uint64_t **this)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v82 = v2;
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v82))
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
    v6 = *this;
    v7 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
LABEL_7:
      v78 = 261;
      v76 = "result";
      v77 = 6;
      mlir::Operation::emitOpError(v6, &v76, &v82);
      if (v82)
      {
        v79 = 3;
        v80 = " #";
        v81 = 2;
        v9 = &v79;
        v10 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v72 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v10 = v84;
            v9 = (v84 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v9 = &v79;
            v10 = v84;
          }
        }

        v11 = &v10[24 * v85];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        v13 = ++v85;
        if (v82)
        {
          v79 = 5;
          v80 = 0;
          v14 = &v79;
          v15 = v84;
          if (v13 >= v86)
          {
            if (v84 <= &v79 && v84 + 24 * v13 > &v79)
            {
              v73 = &v79 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v13 + 1, 24);
              v15 = v84;
              v14 = (v84 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v13 + 1, 24);
              v14 = &v79;
              v15 = v84;
            }
          }

          v16 = &v15[24 * v85];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          v18 = ++v85;
          if (v82)
          {
            v79 = 3;
            v80 = " must be statically shaped memref of any type values, but got ";
            v81 = 62;
            v19 = &v79;
            v20 = v84;
            if (v18 >= v86)
            {
              if (v84 <= &v79 && v84 + 24 * v18 > &v79)
              {
                v74 = &v79 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v18 + 1, 24);
                v20 = v84;
                v19 = (v84 + v74);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v18 + 1, 24);
                v19 = &v79;
                v20 = v84;
              }
            }

            v21 = &v20[24 * v85];
            v22 = *v19;
            *(v21 + 2) = *(v19 + 2);
            *v21 = v22;
            ++v85;
            if (v82)
            {
              v23 = &v79;
              mlir::DiagnosticArgument::DiagnosticArgument(&v79, v7);
              v24 = v84;
              if (v85 >= v86)
              {
                if (v84 <= &v79 && v84 + 24 * v85 > &v79)
                {
                  v75 = &v79 - v84;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                  v24 = v84;
                  v23 = (v84 + v75);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                  v23 = &v79;
                  v24 = v84;
                }
              }

              v25 = &v24[24 * v85];
              v26 = *v23;
              *(v25 + 2) = *(v23 + 2);
              *v25 = v26;
              ++v85;
            }
          }
        }
      }

      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 == 1)
      {
        if (v92 != &v93)
        {
          free(v92);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v91;
          v30 = __p;
          if (v91 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v91 = v28;
          operator delete(v30);
        }

        v31 = v88;
        if (v88)
        {
          v32 = v89;
          v33 = v88;
          if (v89 != v88)
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
            v33 = v88;
          }

          v89 = v31;
          operator delete(v33);
        }

        if (v84 != v87)
        {
          free(v84);
        }
      }

      return v27;
    }

    {
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v8 + 8);
      v47 = *(v8 + 16);
      if (!v47)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v55 = v8;
      mlir::Builder::getI32VectorAttr();
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v55 + 8);
      v47 = *(v55 + 16);
      if (!v47)
      {
        goto LABEL_84;
      }
    }

    v48 = v46;
    v49 = v47;
    do
    {
      v50 = v49 >> 1;
      v51 = &v48[2 * (v49 >> 1)];
      v53 = *v51;
      v52 = v51 + 2;
      v49 += ~(v49 >> 1);
      if (v53 < v45)
      {
        v48 = v52;
      }

      else
      {
        v49 = v50;
      }
    }

    while (v49);
    if (v48 != &v46[2 * v47] && *v48 == v45)
    {
      v66 = v48[1];
      v82 = v7;
      v83 = v66;
      mlir::ElementsAttr::isSplat(&v82);
      v56 = *v7;
      {
LABEL_85:
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (!v59)
        {
          goto LABEL_97;
        }

LABEL_86:
        v60 = v58;
        v61 = v59;
        do
        {
          v62 = v61 >> 1;
          v63 = &v60[2 * (v61 >> 1)];
          v65 = *v63;
          v64 = v63 + 2;
          v61 += ~(v61 >> 1);
          if (v65 < v57)
          {
            v60 = v64;
          }

          else
          {
            v61 = v62;
          }
        }

        while (v61);
        if (v60 != &v58[2 * v59] && *v60 == v57)
        {
          v68 = v60[1];
          v76 = v7;
          v77 = v68;
          if (!mlir::ElementsAttr::getShapedType(&v76))
          {
            goto LABEL_7;
          }

LABEL_100:
          Shape = mlir::ShapedType::getShape(&v76);
          if (!v70)
          {
            return 1;
          }

          v71 = 8 * v70;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v71 -= 8;
            if (!v71)
            {
              return 1;
            }
          }

          goto LABEL_7;
        }

LABEL_97:
        v76 = v7;
        v77 = 0;
        if (!mlir::ElementsAttr::getShapedType(&v76))
        {
          goto LABEL_7;
        }

        goto LABEL_100;
      }

LABEL_94:
      v67 = v56;
      mlir::Builder::getI32VectorAttr();
      v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v58 = *(v67 + 8);
      v59 = *(v67 + 16);
      if (!v59)
      {
        goto LABEL_97;
      }

      goto LABEL_86;
    }

LABEL_84:
    v82 = v7;
    v83 = 0;
    mlir::ElementsAttr::isSplat(&v82);
    v56 = *v7;
    {
      goto LABEL_85;
    }

    goto LABEL_94;
  }

  v76 = "requires attribute 'name'";
  v78 = 259;
  mlir::OpState::emitOpError(this, &v76, &v82);
  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v91;
      v39 = __p;
      if (v91 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v91 = v37;
      operator delete(v39);
    }

    v40 = v88;
    if (v88)
    {
      v41 = v89;
      v42 = v88;
      if (v89 != v88)
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
        v42 = v88;
      }

      v89 = v40;
      operator delete(v42);
    }

    if (v84 != v87)
    {
      free(v84);
    }
  }

  return v36;
}

uint64_t mlir::memref::GetGlobalOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v15, v6))
  {
    return 0;
  }

  if (v15)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v15;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v13))
  {
    return 0;
  }

  v8 = v13[0];
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
  if (v10)
  {
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v10, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GetGlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13))
    {
      return 0;
    }
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = v8;
  ++*(a2 + 72);
  return 1;
}

void mlir::memref::GetGlobalOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
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
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
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

  if (*(*this + 9))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = v19;
  v19[0] = "name";
  v19[1] = 4;
  v18 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v15, v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::memref::GlobalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v63 = v6;
  if (!v6)
  {
    a3(v67, a4);
    if (v67[0])
    {
      LODWORD(v64) = 3;
      v65 = "expected DictionaryAttr to set properties";
      v66 = 41;
      v26 = &v64;
      v27 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v69 > &v64)
        {
          v58 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v27 = v68;
          v26 = (v68 + v58);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v26 = &v64;
          v27 = v68;
        }
      }

      v28 = &v27[24 * v69];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v69;
      if (v67[0])
      {
        mlir::InFlightDiagnostic::report(v67);
      }
    }

    if (v77 != 1)
    {
      return 0;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v75;
      v32 = __p;
      if (v75 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v75 = v30;
      operator delete(v32);
    }

    v21 = v72;
    if (!v72)
    {
      goto LABEL_70;
    }

    v33 = v73;
    v23 = v72;
    if (v73 == v72)
    {
LABEL_69:
      v73 = v21;
      operator delete(v23);
LABEL_70:
      if (v68 != v71)
      {
        free(v68);
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
    v23 = v72;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v63, "alignment", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v67, a4);
      if (v67[0])
      {
        LODWORD(v64) = 3;
        v66 = 54;
        v10 = &v64;
        v11 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v69 > &v64)
          {
            v59 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v11 = v68;
            v10 = (v68 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v10 = &v64;
            v11 = v68;
          }
        }

        v12 = &v11[24 * v69];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v69;
        if (v67[0])
        {
          v14 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, v9);
          v15 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v60 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v15 = v68;
              v14 = (v68 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v14 = &v64;
              v15 = v68;
            }
          }

          v16 = &v15[24 * v69];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v69;
          if (v67[0])
          {
            mlir::InFlightDiagnostic::report(v67);
          }
        }
      }

      if ((v77 & 1) == 0)
      {
        return 0;
      }

      if (v76 != &v77)
      {
        free(v76);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v75;
        v20 = __p;
        if (v75 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v75 = v18;
        operator delete(v20);
      }

      v21 = v72;
      if (!v72)
      {
        goto LABEL_70;
      }

      v22 = v73;
      v23 = v72;
      if (v73 == v72)
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

  v36 = mlir::DictionaryAttr::get(&v63, "constant", 8uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(v67, a4);
      if (v67[0])
      {
        LODWORD(v64) = 3;
        v66 = 53;
        v38 = &v64;
        v39 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v69 > &v64)
          {
            v61 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v39 = v68;
            v38 = (v68 + v61);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v38 = &v64;
            v39 = v68;
          }
        }

        v40 = &v39[24 * v69];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v69;
        if (v67[0])
        {
          v42 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, v37);
          v43 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v62 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v43 = v68;
              v42 = (v68 + v62);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v42 = &v64;
              v43 = v68;
            }
          }

          v44 = &v43[24 * v69];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v69;
          if (v67[0])
          {
            mlir::InFlightDiagnostic::report(v67);
          }
        }
      }

      if ((v77 & 1) == 0)
      {
        return 0;
      }

      if (v76 != &v77)
      {
        free(v76);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v75;
        v48 = __p;
        if (v75 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v75 = v46;
        operator delete(v48);
      }

      v21 = v72;
      if (!v72)
      {
        goto LABEL_70;
      }

      v49 = v73;
      v23 = v72;
      if (v73 == v72)
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

  v52 = mlir::DictionaryAttr::get(&v63, "initial_value", 0xDuLL);
  if (v52)
  {
    a1[2] = v52;
  }

  v53 = mlir::DictionaryAttr::get(&v63, "sym_name", 8uLL);
  v64 = v53;
  if (!v53)
  {
LABEL_79:
    v55 = mlir::DictionaryAttr::get(&v63, "sym_visibility", 0xEuLL);
    v64 = v55;
    if (v55)
    {
      if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(v67, a4);
        goto LABEL_86;
      }

      a1[4] = v55;
    }

    v56 = mlir::DictionaryAttr::get(&v63, "type", 4uLL);
    v64 = v56;
    if (v56)
    {
      if (*(*v56 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(v67, a4);
        goto LABEL_86;
      }

      a1[5] = v56;
    }

    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v53;
    goto LABEL_79;
  }

  a3(v67, a4);
LABEL_86:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v54, &v64);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v67);
  return 0;
}

uint64_t mlir::memref::GlobalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v48, "alignment", 9uLL, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v48, "constant", 8uLL, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v48, "initial_value", 0xDuLL, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v48, "sym_name", 8uLL, v18);
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
    v24 = mlir::Builder::getNamedAttr(&v48, "sym_visibility", 0xEuLL, v23);
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
    v29 = mlir::Builder::getNamedAttr(&v48, "type", 4uLL, v28);
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

unint64_t mlir::memref::GlobalOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::memref::GlobalOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 8)
  {
    if (__n == 4)
    {
      if (!memcmp(__s1, "type", 4uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 8)
    {
      if (!memcmp(__s1, "constant", 8uLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "sym_name", 8uLL))
      {
        return a2[3];
      }
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "sym_visibility", 0xEuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "initial_value", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 != 0x6E656D6E67696C61 || *(__s1 + 8) != 116)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::GlobalOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      result = memcmp(__s1, "type", 4uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

    else if (a3 == 8)
    {
      result = memcmp(__s1, "constant", 8uLL);
      if (result)
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

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  else if (a3 == 14)
  {
    result = memcmp(__s1, "sym_visibility", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[4] = v9;
      }

      else
      {
        v5[4] = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "initial_value", 0xDuLL);
    if (!result)
    {
      v5[2] = a4;
    }
  }

  else if (a3 == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  return result;
}

void mlir::memref::GlobalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "constant", 8uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "initial_value", 0xDuLL, v6);
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

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "type", 4uLL, v9);
  }
}

BOOL mlir::memref::GlobalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(v8, "alignment", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "constant", 8, a3, a4))
    {
      mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
      if (!v10 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v10, "sym_name", 8, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
        if (!v11 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v11, "sym_visibility", 0xE, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
          if (!v12 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(v12, "type", 4, a3, a4))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(const char *a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
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
    isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 64);
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
        v31 = "' failed to satisfy constraint: 64-bit signless integer attribute";
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

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: unit attribute";
        v29 = 46;
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

BOOL mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(uint64_t a1, const char *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v34 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::AffineMapAttr::getValue(&v34);
    a5 = v8;
    a4 = v7;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      return 1;
    }
  }

  a4(&v34, a5);
  if (v34)
  {
    LODWORD(v30) = 3;
    v31 = "attribute '";
    v32 = 11;
    v10 = &v30;
    v11 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v28 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v11 = v36;
        v10 = (v36 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v10 = &v30;
        v11 = v36;
      }
    }

    v12 = &v11[24 * v37];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    ++v37;
    if (v34)
    {
      v33 = 261;
      v30 = a2;
      v31 = a3;
      mlir::Diagnostic::operator<<(&v35, &v30);
      if (v34)
      {
        LODWORD(v30) = 3;
        v31 = "' failed to satisfy constraint: memref type attribute";
        v32 = 53;
        v14 = &v30;
        v15 = v36;
        if (v37 >= v38)
        {
          if (v36 <= &v30 && v36 + 24 * v37 > &v30)
          {
            v29 = &v30 - v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v15 = v36;
            v14 = (v36 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
            v14 = &v30;
            v15 = v36;
          }
        }

        v16 = &v15[24 * v37];
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        ++v37;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
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

  return v18;
}

BOOL mlir::memref::GlobalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && ((*(*a1 + 56))(a1, v3 + 2) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 5);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::UnitAttr]";
  v38 = 64;
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

uint64_t mlir::memref::GlobalOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::memref::GlobalOp::verifyInvariantsImpl(uint64_t **this)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v2 = v1 + 8;
  v3 = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = v2[5];
    if (v6)
    {
      v8 = v2[1];
      v9 = v2[4];
      v31[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
      {
        return 0;
      }

      v31[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "sym_visibility", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
      {
        return 0;
      }

      v31[0] = *this;
      if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(v6, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
      {
        return 0;
      }

      v31[0] = *this;
      if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "constant", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
      {
        return 0;
      }

      v31[0] = *this;
      return mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(v3, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31);
    }

    v29[0] = "requires attribute 'type'";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, v31);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v37;
        v21 = __p;
        if (v37 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v37 = v19;
        operator delete(v21);
      }

      v22 = v34;
      if (v34)
      {
        v23 = v35;
        v24 = v34;
        if (v35 != v34)
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
          v24 = v34;
        }

        v35 = v22;
        operator delete(v24);
      }

      v27 = v32;
      if (v32 != v33)
      {
LABEL_48:
        free(v27);
      }
    }
  }

  else
  {
    v29[0] = "requires attribute 'sym_name'";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, v31);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v37;
        v13 = __p;
        if (v37 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v37 = v11;
        operator delete(v13);
      }

      v14 = v34;
      if (v34)
      {
        v15 = v35;
        v16 = v34;
        if (v35 != v34)
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
          v16 = v34;
        }

        v35 = v14;
        operator delete(v16);
      }

      v27 = v32;
      if (v32 != v33)
      {
        goto LABEL_48;
      }
    }
  }

  return v10;
}

uint64_t mlir::memref::GlobalOp::parse(mlir::AsmParser *a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  v7 = (*(*a1 + 472))(a1, &v51, v6);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    if (v51)
    {
      v8 = a2[32];
      if (!v8)
      {
        operator new();
      }

      *(v8 + 32) = v51;
    }
  }

  if ((*(*a1 + 408))(a1, "constant", 8))
  {
    v9 = (*(*a1 + 32))(a1);
    UnitAttr = mlir::Builder::getUnitAttr(v9, v10);
    v12 = a2[32];
    if (!v12)
    {
      operator new();
    }

    *(v12 + 8) = UnitAttr;
  }

  if (!mlir::AsmParser::parseSymbolName(a1, &v50))
  {
    return 0;
  }

  if (v50)
  {
    v13 = a2[32];
    if (!v13)
    {
      operator new();
    }

    *(v13 + 24) = v50;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v55 = 0;
  if (((*(*a1 + 536))(a1, &v55) & 1) == 0)
  {
    return 0;
  }

  v14 = v55;
  if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v14 = 0;
  }

  v54 = v14;
  if (v14 && mlir::BaseMemRefType::hasRank(&v54))
  {
    Value = mlir::ArrayAttr::getValue(&v54);
    if (!v16)
    {
LABEL_26:
      v18 = mlir::TypeAttr::get(v55);
      if ((*(*a1 + 144))(a1))
      {
        if ((*(*a1 + 408))(a1, "uninitialized", 13))
        {
          Context = mlir::AsmParser::getContext(a1);
          v49 = mlir::UnitAttr::get(Context, v20);
        }

        else
        {
          TensorTypeFromMemRefType = mlir::memref::getTensorTypeFromMemRefType(v54);
          if (((*(*a1 + 440))(a1, &v49, TensorTypeFromMemRefType) & 1) == 0)
          {
            return 0;
          }

          if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(&v49))
          {
            v44 = (*(*a1 + 16))(a1);
            v53 = 257;
            (*(*a1 + 24))(v59, a1, v44, v52);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, "initial value should be a unit or elements attribute");
            v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
            if (!v46)
            {
              return 0;
            }
          }
        }
      }

      goto LABEL_56;
    }

    v17 = 8 * v16;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_26;
      }
    }
  }

  v21 = (*(*a1 + 16))(a1);
  v53 = 257;
  (*(*a1 + 24))(v59, a1, v21, v52);
  if (v59[0])
  {
    v56 = 3;
    v57 = "type should be static shaped memref, but got ";
    v58 = 45;
    v22 = &v56;
    v23 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v47 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v23 = v60;
        v22 = (v60 + v47);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v22 = &v56;
        v23 = v60;
      }
    }

    v24 = &v23[24 * v61];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v61;
    if (v59[0])
    {
      v26 = &v56;
      mlir::DiagnosticArgument::DiagnosticArgument(&v56, v55);
      v27 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v48 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v27 = v60;
          v26 = (v60 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v26 = &v56;
          v27 = v60;
        }
      }

      v28 = &v27[24 * v61];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v61;
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v69 == 1)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v67;
      v33 = __p;
      if (v67 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v67 = v31;
      operator delete(v33);
    }

    v34 = v64;
    if (v64)
    {
      v35 = v65;
      v36 = v64;
      if (v65 != v64)
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
        v36 = v64;
      }

      v65 = v34;
      operator delete(v36);
    }

    if (v60 != v63)
    {
      free(v60);
    }
  }

  if (!v30)
  {
    return 0;
  }

  v18 = 0;
LABEL_56:
  v39 = a2[32];
  if (!v39)
  {
    operator new();
  }

  *(v39 + 40) = v18;
  if (v49)
  {
    v40 = a2[32];
    if (!v40)
    {
      operator new();
    }

    *(v40 + 16) = v49;
  }

  v52[0] = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 14))
  {
    v41 = a2[1];
    v59[0] = a1;
    v59[1] = v52;
    v59[2] = a2;
    if (mlir::memref::GlobalOp::verifyInherentAttrs(v41, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v59))
    {
      return 1;
    }
  }

  return 0;
}

void mlir::memref::GlobalOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  if (*(*this + 2 * v5 + 12))
  {
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

    (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 12));
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (v4[2 * v5 + 9])
  {
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
    if (v10[3] - v11 > 7uLL)
    {
      *v11 = 0x746E6174736E6F63;
      v10[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "constant", 8uLL);
    }
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

  v39 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11);
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
  (*(*a2 + 88))(a2, AttrData, v15);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++v18[4];
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = *this;
  v23 = *this + 64;
  v24 = &v23[16 * ((*(*this + 11) >> 23) & 1)];
  v25 = *(v24 + 2);
  (*(*a2 + 40))(a2, *(v24 + 5));
  if (*&v23[16 * ((*(v22 + 11) >> 23) & 1) + 16])
  {
    v26 = (*(*a2 + 16))(a2);
    v27 = v26[4];
    if ((v26[3] - v27) > 2)
    {
      *(v27 + 2) = 32;
      *v27 = 15648;
      v26[4] += 3;
      v28 = *&v23[16 * ((*(v22 + 11) >> 23) & 1) + 16];
      if (!v28)
      {
LABEL_31:
        (*(*a2 + 48))(a2, v25);
        goto LABEL_32;
      }
    }

    else
    {
      llvm::raw_ostream::write(v26, " = ", 3uLL);
      v28 = *&v23[16 * ((*(v22 + 11) >> 23) & 1) + 16];
      if (!v28)
      {
        goto LABEL_31;
      }
    }

    if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_31;
    }

    v36 = (*(*a2 + 16))(a2);
    v37 = v36[4];
    if (v36[3] - v37 > 0xCuLL)
    {
      qmemcpy(v37, "uninitialized", 13);
      v36[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v36, "uninitialized", 0xDuLL);
    }
  }

LABEL_32:
  v39 = v41;
  v41[0] = "sym_visibility";
  v41[1] = 14;
  v41[2] = "constant";
  v41[3] = 8;
  v40 = 0x200000002;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, 3uLL, 16);
  v29 = v39 + 16 * v40;
  *v29 = "sym_name";
  v29[1] = 8;
  v30 = (v40 + 1);
  LODWORD(v40) = v30;
  if (v30 >= HIDWORD(v40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v30 + 1, 16);
    LODWORD(v30) = v40;
  }

  v31 = v39 + 16 * v30;
  *v31 = "type";
  v31[1] = 4;
  v32 = (v40 + 1);
  LODWORD(v40) = v32;
  if (v32 >= HIDWORD(v40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v32 + 1, 16);
    LODWORD(v32) = v40;
  }

  v33 = v39 + 16 * v32;
  *v33 = "initial_value";
  v33[1] = 13;
  LODWORD(v40) = v40 + 1;
  mlir::Attribute::getContext((*this + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v35, v39, v40);
  if (v39 != v41)
  {
    free(v39);
  }
}

BOOL mlir::memref::MemorySpaceCastOp::parse(uint64_t a1, unsigned int *a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, v12))
  {
    return 0;
  }

  v8 = v12[0];
  v13 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v12) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, (a2 + 4));
}

uint64_t mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::memref::PrefetchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      v22 = &v71;
      v23 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v23 = v76;
          v22 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v22 = &v71;
          v23 = v76;
        }
      }

      v24 = &v23[24 * v77];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
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

    v26 = __p;
    if (__p)
    {
      v27 = v83;
      v28 = __p;
      if (v83 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v83 = v26;
      operator delete(v28);
    }

    v29 = v80;
    if (!v80)
    {
      goto LABEL_81;
    }

    v30 = v81;
    v31 = v80;
    if (v81 == v80)
    {
      goto LABEL_80;
    }

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
    goto LABEL_79;
  }

  v8 = mlir::DictionaryAttr::get(&v70, "isDataCache", 0xBuLL);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 56;
        v34 = &v71;
        v35 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v35 = v76;
            v34 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v34 = &v71;
            v35 = v76;
          }
        }

        v36 = &v35[24 * v77];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v77;
        if (v74)
        {
          v38 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
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

      v42 = __p;
      if (__p)
      {
        v43 = v83;
        v44 = __p;
        if (v83 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v83 = v42;
        operator delete(v44);
      }

      v29 = v80;
      if (!v80)
      {
        goto LABEL_81;
      }

      v45 = v81;
      v31 = v80;
      if (v81 == v80)
      {
        goto LABEL_80;
      }

      do
      {
        v47 = *--v45;
        v46 = v47;
        *v45 = 0;
        if (v47)
        {
          MEMORY[0x1AC55A040](v46, 0x1000C8077774924);
        }
      }

      while (v45 != v29);
      goto LABEL_79;
    }

    *a1 = v9;
  }

  v10 = mlir::DictionaryAttr::get(&v70, "isWrite", 7uLL);
  if (v10)
  {
    v11 = v10;
    if (mlir::BoolAttr::classof(v10))
    {
      a1[1] = v11;
      goto LABEL_11;
    }

    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v73 = 52;
      v48 = &v71;
      v49 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v65 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v49 = v76;
          v48 = (v76 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v48 = &v71;
          v49 = v76;
        }
      }

      v50 = &v49[24 * v77];
      v51 = *v48;
      *(v50 + 2) = *(v48 + 2);
      *v50 = v51;
      ++v77;
      if (v74)
      {
        v52 = &v71;
        mlir::DiagnosticArgument::DiagnosticArgument(&v71, v11);
        v53 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v68 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v53 = v76;
            v52 = (v76 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v52 = &v71;
            v53 = v76;
          }
        }

        v54 = &v53[24 * v77];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
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

    v56 = __p;
    if (__p)
    {
      v57 = v83;
      v58 = __p;
      if (v83 != __p)
      {
        do
        {
          v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v83 = v56;
      operator delete(v58);
    }

    v29 = v80;
    if (!v80)
    {
LABEL_81:
      if (v76 != v79)
      {
        free(v76);
      }

      return 0;
    }

    v59 = v81;
    v31 = v80;
    if (v81 == v80)
    {
LABEL_80:
      v81 = v29;
      operator delete(v31);
      goto LABEL_81;
    }

    do
    {
      v61 = *--v59;
      v60 = v61;
      *v59 = 0;
      if (v61)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8077774924);
      }
    }

    while (v59 != v29);
LABEL_79:
    v31 = v80;
    goto LABEL_80;
  }

LABEL_11:
  v12 = mlir::DictionaryAttr::get(&v70, "localityHint", 0xCuLL);
  if (!v12)
  {
    return 1;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[2] = v12;
    return 1;
  }

  v13 = v12;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 57;
    v14 = &v71;
    v15 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v67 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v15 = v76;
        v14 = (v76 + v67);
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
      v18 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v13);
      v19 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v19 = v76;
          v18 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v18 = &v71;
          v19 = v76;
        }
      }

      v20 = &v19[24 * v77];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
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