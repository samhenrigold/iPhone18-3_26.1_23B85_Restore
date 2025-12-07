BOOL mlir::detail::Parser::parseVectorDimensionList(mlir::detail::Parser *a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v6 = *(a1 + 1);
    v7 = *(v6 + 56);
    if (v7 == 22)
    {
      v27 = 0;
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken(&v28, (*(a1 + 1) + 8));
      v9 = *(a1 + 1);
      *(v9 + 56) = v28;
      *(v9 + 72) = v29;
      v8 = 1;
      if (!mlir::detail::Parser::parseIntegerInDimensionList(a1, &v27))
      {
        return 0;
      }
    }

    else
    {
      if (v7 != 10)
      {
        return 1;
      }

      v8 = 0;
      v27 = 0;
      if (!mlir::detail::Parser::parseIntegerInDimensionList(a1, &v27))
      {
        return 0;
      }
    }

    v10 = v27;
    v11 = *(a2 + 8);
    if (v11 >= *(a2 + 12))
    {
      break;
    }

    *(*a2 + 8 * v11) = v27;
    ++*(a2 + 8);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_11:
    v14 = a3[1];
    if ((v14 + 1) > a3[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, a3 + 3, v14 + 1, 1);
      v14 = a3[1];
    }

    *(*a3 + v14) = v8;
    ++a3[1];
    if (!mlir::detail::Parser::parseXInDimensionList(a1))
    {
      return 0;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11 + 1, 8);
  *(*a2 + 8 * (*(a2 + 8))++) = v10;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = *(a1 + 1);
  if (*(v12 + 56) == 29)
  {
    *(v12 + 80) = *(v12 + 56);
    *(v12 + 96) = *(v12 + 72);
    mlir::Lexer::lexToken(&v28, (*(a1 + 1) + 8));
    v13 = *(a1 + 1);
    *(v13 + 56) = v28;
    *(v13 + 72) = v29;
    goto LABEL_11;
  }

  v25 = "missing ']' closing scalable dimension";
  v26 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, &v25, &v28);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
  v16 = result;
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
    result = v16;
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
      result = v16;
    }

    v17 = __p;
    if (__p)
    {
      v18 = v35;
      v19 = __p;
      if (v35 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v35 = v17;
      operator delete(v19);
      result = v16;
    }

    v20 = v32;
    if (v32)
    {
      v21 = v33;
      v22 = v32;
      if (v33 != v32)
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
        v22 = v32;
      }

      v33 = v20;
      operator delete(v22);
      result = v16;
    }

    if (v30 != &v31)
    {
      free(v30);
      return v16;
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseIntegerInDimensionList(mlir::detail::Parser *this, unint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  if (v6 >= 2 && v5[1] == 120)
  {
    *a2 = 0;
    *(v4 + 40) = v5 + 1;
LABEL_7:
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(&v22, (*(this + 1) + 8));
    v9 = *(this + 1);
    *(v9 + 56) = v22;
    *(v9 + 72) = v23;
    return 1;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v5, v6);
  if ((v8 & 1) != 0 && (UInt64IntegerValue & 0x8000000000000000) == 0)
  {
    *a2 = UInt64IntegerValue;
    v4 = *(this + 1);
    goto LABEL_7;
  }

  v20 = "invalid dimension";
  v21 = 259;
  mlir::detail::Parser::emitError(this, &v20, &v22);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
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
            MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
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

  return v10;
}

BOOL mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(*a1 + 8) + 56));
  v4 = *(v2 + 1);
  if (*(v4 + 56) != 26)
  {
    v23[0] = 0;
    if (!mlir::detail::Parser::parseIntegerInDimensionList(v2, v23))
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v9 = v23[0];
    v10 = *(v7 + 8);
    if (v10 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v10 + 1, 8);
      LODWORD(v10) = *(v7 + 8);
    }

    *(*v7 + 8 * v10) = v9;
    goto LABEL_10;
  }

  v5 = SrcSymbol;
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken(v23, (*(v2 + 1) + 8));
  v6 = *(v2 + 1);
  *(v6 + 56) = *v23;
  *(v6 + 72) = v24;
  if (**(a1 + 8))
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    if (v8 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 16), (v7 + 16), v8 + 1, 8);
      LODWORD(v8) = *(v7 + 8);
    }

    *(*v7 + 8 * v8) = 0x8000000000000000;
LABEL_10:
    ++*(v7 + 8);
    return 1;
  }

  v21 = "expected static shape";
  v22 = 259;
  mlir::detail::Parser::emitError(v2, v5, &v21, v23);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v30;
      v14 = __p;
      if (v30 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v30 = v12;
      operator delete(v14);
    }

    v15 = v27;
    if (v27)
    {
      v16 = v28;
      v17 = v27;
      if (v28 != v27)
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
        v17 = v27;
      }

      v28 = v15;
      operator delete(v17);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v11;
}

const char *llvm::getTypeName<mlir::MemRefElementTypeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefElementTypeInterface]";
  v6 = 82;
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

const char *llvm::getTypeName<mlir::MemRefLayoutAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
  v6 = 81;
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

void *llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
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
    v12 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
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
    llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id;
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

const char *llvm::getTypeName<mlir::VerifiableTensorEncoding>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VerifiableTensorEncoding]";
  v6 = 80;
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

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  if (*(*(v2 + 1) + 56) == 21)
  {
    v3 = mlir::detail::Parser::parseFunctionType(v2);
  }

  else
  {
    v3 = mlir::detail::Parser::parseNonFunctionType(v2);
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    v7 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v5 + 1, 8);
    v3 = v7;
    LODWORD(v5) = *(v4 + 8);
  }

  *(*v4 + 8 * v5) = v3;
  ++*(v4 + 8);
  return v3 != 0;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = mlir::detail::Parser::parseAttribute(*a1, 0, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = *v6;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v6;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v6 = v18;
    v8 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_15;
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
  if (v11 == &v9[2 * v10] || *v11 != v8 || !v11[1])
  {
LABEL_15:
    v19 = *(a1 + 16);
    if (!*v19)
    {
      *v19 = v6;
      return 1;
    }

    v55[0] = "multiple memory spaces specified in memref type";
    v56 = 259;
    mlir::detail::Parser::emitError(v5, v55, v57);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v63;
        v22 = __p;
        if (v63 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v63 = v20;
        operator delete(v22);
      }

      v23 = v60;
      if (!v60)
      {
        goto LABEL_83;
      }

      v24 = v61;
      v25 = v60;
      if (v61 == v60)
      {
        goto LABEL_82;
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
      goto LABEL_81;
    }

    return v17;
  }

  v28 = *v6;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v38 = v6;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v6 = v38;
    v29 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_46;
    }
  }

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
  if (v32 == &v30[2 * v31] || *v32 != v29)
  {
LABEL_46:
    v39 = *(a1 + 8);
    *v39 = v6;
    v39[1] = 0;
    if (**(a1 + 24))
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

  v46 = v32[1];
  v47 = *(a1 + 8);
  *v47 = v6;
  v47[1] = v46;
  if (**(a1 + 24))
  {
LABEL_47:
    v55[0] = "cannot have affine map for unranked memref type";
    v56 = 259;
    mlir::detail::Parser::emitError(v5, v55, v57);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v40 = __p;
      if (__p)
      {
        v41 = v63;
        v42 = __p;
        if (v63 != __p)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = __p;
        }

        v63 = v40;
        operator delete(v42);
      }

      v23 = v60;
      if (!v60)
      {
        goto LABEL_83;
      }

      v43 = v61;
      v25 = v60;
      if (v61 == v60)
      {
LABEL_82:
        v61 = v23;
        operator delete(v25);
LABEL_83:
        if (v58 != &v59)
        {
          free(v58);
        }

        return v17;
      }

      do
      {
        v45 = *--v43;
        v44 = v45;
        *v43 = 0;
        if (v45)
        {
          MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
        }
      }

      while (v43 != v23);
LABEL_81:
      v25 = v60;
      goto LABEL_82;
    }

    return v17;
  }

LABEL_64:
  if (!**(a1 + 16))
  {
    return 1;
  }

  v55[0] = "expected memory space to be last in memref type";
  v56 = 259;
  mlir::detail::Parser::emitError(v5, v55, v57);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
  if (v57[0])
  {
    mlir::InFlightDiagnostic::report(v57);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v63;
      v50 = __p;
      if (v63 != __p)
      {
        do
        {
          v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v63 = v48;
      operator delete(v50);
    }

    v23 = v60;
    if (!v60)
    {
      goto LABEL_83;
    }

    v51 = v61;
    v25 = v60;
    if (v61 == v60)
    {
      goto LABEL_82;
    }

    do
    {
      v53 = *--v51;
      v52 = v53;
      *v51 = 0;
      if (v53)
      {
        MEMORY[0x1AC55A040](v52, 0x1000C8077774924);
      }
    }

    while (v51 != v23);
    goto LABEL_81;
  }

  return v17;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::detail::Parser::emitError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>(uint64_t a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

BOOL mlir::BytecodeReader::Impl::read(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v201 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1176);
  v7 = *(a1 + 1184);
  v8 = *(a1 + 8);
  v148 = v6;
  v149 = v7;
  v150 = v6;
  v151 = v8;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *&v179 = 4;
  if (v7 > 3)
  {
    v150 = v6 + 4;
  }

  else
  {
    *&v153 = v7;
    mlir::emitError(v8, &v156);
    if (v156)
    {
      mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v156 + 8, "attempting to skip ", &v179, " bytes when only ", &v153, " remain");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v189, &v156);
    if (v156)
    {
      mlir::InFlightDiagnostic::report(&v156);
    }

    if (v177 == 1)
    {
      if (v175 != &v177)
      {
        free(v175);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v174;
        v11 = __p;
        if (v174 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v174 = v9;
        operator delete(v11);
      }

      v12 = v171;
      if (v171)
      {
        v13 = v172;
        v14 = v171;
        if (v172 != v171)
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
          v14 = v171;
        }

        *&v172 = v12;
        operator delete(v14);
      }

      if (v158 != &v160)
      {
        free(v158);
      }
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v189);
    if (v189)
    {
      mlir::InFlightDiagnostic::report(&v189);
    }

    if (v200[0] == 1)
    {
      if (v199 != v200)
      {
        free(v199);
      }

      v18 = v197;
      if (v197)
      {
        v19 = v198;
        v20 = v197;
        if (v198 != v197)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = v197;
        }

        v198 = v18;
        operator delete(v20);
      }

      v21 = v195;
      if (v195)
      {
        v22 = v196;
        v23 = v195;
        if (v196 != v195)
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
          v23 = v195;
        }

        v196 = v21;
        operator delete(v23);
      }

      if (v191 != v194)
      {
        free(v191);
      }
    }

    if (!v17)
    {
      goto LABEL_128;
    }
  }

  {
    goto LABEL_128;
  }

  *&v179 = 6;
  v26 = *(a1 + 248);
  if (v26 < 7)
  {
    if (v26 <= 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    mlir::emitError(v151, &v156);
    if (v156)
    {
      mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(&v156 + 8, "bytecode version ", (a1 + 248), " is newer than the current version ", &v179);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v189, &v156);
    if (v156)
    {
      mlir::InFlightDiagnostic::report(&v156);
    }

    if (v177 == 1)
    {
      if (v175 != &v177)
      {
        free(v175);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v174;
        v29 = __p;
        if (v174 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v174 = v27;
        operator delete(v29);
      }

      v30 = v171;
      if (v171)
      {
        v31 = v172;
        v32 = v171;
        if (v172 != v171)
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
          v32 = v171;
        }

        *&v172 = v30;
        operator delete(v32);
      }

      if (v158 != &v160)
      {
        free(v158);
      }
    }

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v189);
    if (v189)
    {
      mlir::InFlightDiagnostic::report(&v189);
    }

    if (v200[0] == 1)
    {
      if (v199 != v200)
      {
        free(v199);
      }

      v36 = v197;
      if (v197)
      {
        v37 = v198;
        v38 = v197;
        if (v198 != v197)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = v197;
        }

        v198 = v36;
        operator delete(v38);
      }

      v39 = v195;
      if (v195)
      {
        v40 = v196;
        v41 = v195;
        if (v196 != v195)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
            }
          }

          while (v40 != v39);
          v41 = v195;
        }

        v196 = v39;
        operator delete(v41);
      }

      if (v191 != v194)
      {
        free(v191);
      }
    }

    if (!v35)
    {
      goto LABEL_128;
    }
  }

  {
LABEL_128:
    result = 0;
    goto LABEL_129;
  }

  v147 = **a1;
  DiagEngine = mlir::MLIRContext::getDiagEngine(v147);
  *&v156 = a1;
  v158 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,void>::Callbacks + 2;
  v146 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v156);
  v46 = v158;
  if (v158 >= 8)
  {
    if ((v158 & 4) != 0)
    {
      if ((v158 & 2) != 0)
      {
        v47 = &v156;
      }

      else
      {
        v47 = v156;
      }

      (*((v158 & 0xFFFFFFFFFFFFFFF8) + 16))(v47, v45);
    }

    if ((v46 & 2) == 0)
    {
      llvm::deallocate_buffer(v156, *(&v156 + 1));
    }
  }

  LOBYTE(v156) = 0;
  LOBYTE(v157) = 0;
  LOBYTE(v158) = 0;
  v160 = 0;
  LOBYTE(v161) = 0;
  v163 = 0;
  LOBYTE(v164) = 0;
  v166 = 0;
  LOBYTE(v167) = 0;
  v169 = 0;
  LOBYTE(v170) = 0;
  LOBYTE(v171) = 0;
  LOBYTE(v172) = 0;
  LOBYTE(__p) = 0;
  LOBYTE(v174) = 0;
  LOBYTE(v175) = 0;
  LOBYTE(v176) = 0;
  v178 = 0;
  if (v150 == v148 + v149)
  {
LABEL_130:
    v65 = 0;
LABEL_131:
    toString(&v153, v65);
    mlir::emitError(v151, &v189);
    if (v189)
    {
      mlir::Diagnostic::append<char const(&)[30],std::string>(&v189 + 8, "missing data for top-level section: ", &v153);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v179, &v189);
    if (v189)
    {
      mlir::InFlightDiagnostic::report(&v189);
    }

    if (v200[0] == 1)
    {
      if (v199 != v200)
      {
        free(v199);
      }

      v66 = v197;
      if (v197)
      {
        v67 = v198;
        v68 = v197;
        if (v198 != v197)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = v197;
        }

        v198 = v66;
        operator delete(v68);
      }

      v69 = v195;
      if (v195)
      {
        v70 = v196;
        v71 = v195;
        if (v196 != v195)
        {
          do
          {
            v73 = *--v70;
            v72 = v73;
            *v70 = 0;
            if (v73)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8077774924);
            }
          }

          while (v70 != v69);
          v71 = v195;
        }

        v196 = v69;
        operator delete(v71);
      }

      if (v191 != v194)
      {
        free(v191);
      }
    }

    v83 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v179);
    if (v179)
    {
      mlir::InFlightDiagnostic::report(&v179);
    }

    if (v188 == 1)
    {
      if (v187 != &v188)
      {
        free(v187);
      }

      v84 = v185;
      if (v185)
      {
        v85 = v186;
        v86 = v185;
        if (v186 != v185)
        {
          do
          {
            v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
          }

          while (v85 != v84);
          v86 = v185;
        }

        v186 = v84;
        operator delete(v86);
      }

      v87 = v183;
      if (v183)
      {
        v88 = v184;
        v89 = v183;
        if (v184 != v183)
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
          v89 = v183;
        }

        v184 = v87;
        operator delete(v89);
      }

      if (v181 != v182)
      {
        free(v181);
      }
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v153);
    }

    goto LABEL_222;
  }

  do
  {
    LOBYTE(v152) = 0;
    v145 = 0uLL;
    {
      v74 = 0;
LABEL_221:
      v83 = v74;
      goto LABEL_222;
    }

    v48 = &v156 + 24 * v152;
    if (v48[16] == 1)
    {
      toString(&v153, v152);
      mlir::emitError(v151, &v189);
      if (v189)
      {
        mlir::Diagnostic::append<char const(&)[30],std::string>(&v189 + 8, "duplicate top-level section: ", &v153);
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v179, &v189);
      if (v189)
      {
        mlir::InFlightDiagnostic::report(&v189);
      }

      if (v200[0] == 1)
      {
        if (v199 != v200)
        {
          free(v199);
        }

        v75 = v197;
        if (v197)
        {
          v76 = v198;
          v77 = v197;
          if (v198 != v197)
          {
            do
            {
              v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
            }

            while (v76 != v75);
            v77 = v197;
          }

          v198 = v75;
          operator delete(v77);
        }

        v78 = v195;
        if (v195)
        {
          v79 = v196;
          v80 = v195;
          if (v196 != v195)
          {
            do
            {
              v82 = *--v79;
              v81 = v82;
              *v79 = 0;
              if (v82)
              {
                MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
              }
            }

            while (v79 != v78);
            v80 = v195;
          }

          v196 = v78;
          operator delete(v80);
        }

        if (v191 != v194)
        {
          free(v191);
        }
      }

      v74 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v179);
      v92 = v74;
      if (v179)
      {
        mlir::InFlightDiagnostic::report(&v179);
        v74 = v92;
      }

      if (v188 == 1)
      {
        if (v187 != &v188)
        {
          free(v187);
          v74 = v92;
        }

        v93 = v185;
        if (v185)
        {
          v94 = v186;
          v95 = v185;
          if (v186 != v185)
          {
            do
            {
              v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
            }

            while (v94 != v93);
            v95 = v185;
          }

          v186 = v93;
          operator delete(v95);
          v74 = v92;
        }

        v96 = v183;
        if (v183)
        {
          v97 = v184;
          v98 = v183;
          if (v184 != v183)
          {
            do
            {
              v100 = *--v97;
              v99 = v100;
              *v97 = 0;
              if (v100)
              {
                MEMORY[0x1AC55A040](v99, 0x1000C8077774924);
              }
            }

            while (v97 != v96);
            v98 = v183;
          }

          v184 = v96;
          operator delete(v98);
          v74 = v92;
        }

        if (v181 != v182)
        {
          free(v181);
          v74 = v92;
        }
      }

      if (SHIBYTE(v154) < 0)
      {
        operator delete(v153);
        v74 = v92;
      }

      goto LABEL_221;
    }

    *v48 = v145;
    v48[16] = 1;
  }

  while (v150 != v148 + v149);
  if ((v157 & 1) == 0)
  {
    goto LABEL_130;
  }

  if (v160 != 1)
  {
    v65 = 1;
    goto LABEL_131;
  }

  if (v163 != 1)
  {
    v65 = 2;
    goto LABEL_131;
  }

  if (v166 != 1)
  {
    v65 = 3;
    goto LABEL_131;
  }

  if (v169 != 1)
  {
    v65 = 4;
    goto LABEL_131;
  }

  v49 = v178;
  if ((v178 & 1) == 0 && *(a1 + 248) > 4)
  {
    v65 = 8;
    goto LABEL_131;
  }

  v50 = *(a1 + 8);
  v51 = v156;
  v153 = v156;
  v154 = v156;
  v155 = v50;
  *&v145 = 0;
  {
    goto LABEL_326;
  }

  v52 = (a1 + 536);
  v53 = v145;
  v54 = *(a1 + 544);
  if (v145 != v54)
  {
    if (v145 >= v54)
    {
      v55 = v49;
      if (v145 > *(a1 + 548))
      {
        v56 = v145;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 536, (a1 + 552), v145, 16);
        v53 = v56;
        v54 = *(a1 + 544);
      }

      v49 = v55;
      if (v53 != v54)
      {
        v57 = v53;
        bzero((*v52 + 16 * v54), 16 * (v53 - v54));
        LODWORD(v53) = v57;
      }
    }

    LODWORD(v54) = v53;
    *(a1 + 544) = v53;
    v53 = v53;
  }

  if (!v54)
  {
    v61 = *(&v51 + 1);
LABEL_228:
    if (*(&v51 + 1) - (v153 + *(&v153 + 1)) + v154 == v61)
    {
      if (!v49)
      {
        goto LABEL_322;
      }
    }

    else
    {
      mlir::emitError(v155, &v189);
      if (v189)
      {
        LODWORD(v179) = 3;
        *(&v179 + 1) = "unexpected trailing data between the offsets for strings and their data";
        v180 = 71;
        v101 = &v179;
        v102 = v191;
        if (v192 >= v193)
        {
          if (v191 <= &v179 && v191 + 24 * v192 > &v179)
          {
            v143 = &v179 - v191;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
            v102 = v191;
            v101 = (v191 + v143);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
            v101 = &v179;
            v102 = v191;
          }
        }

        v103 = &v102[24 * v192];
        v104 = *v101;
        *(v103 + 2) = *(v101 + 2);
        *v103 = v104;
        ++v192;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v179, &v189);
      if (v189)
      {
        mlir::InFlightDiagnostic::report(&v189);
      }

      if (v200[0] == 1)
      {
        if (v199 != v200)
        {
          free(v199);
        }

        v105 = v197;
        if (v197)
        {
          v106 = v198;
          v107 = v197;
          if (v198 != v197)
          {
            do
            {
              v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
            }

            while (v106 != v105);
            v107 = v197;
          }

          v198 = v105;
          operator delete(v107);
        }

        v108 = v195;
        if (v195)
        {
          v109 = v196;
          v110 = v195;
          if (v196 != v195)
          {
            do
            {
              v112 = *--v109;
              v111 = v112;
              *v109 = 0;
              if (v112)
              {
                MEMORY[0x1AC55A040](v111, 0x1000C8077774924);
              }
            }

            while (v109 != v108);
            v110 = v195;
          }

          v196 = v108;
          operator delete(v110);
        }

        if (v191 != v194)
        {
          free(v191);
        }
      }

      v125 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v179);
      if (v179)
      {
        mlir::InFlightDiagnostic::report(&v179);
      }

      if (v188 == 1)
      {
        if (v187 != &v188)
        {
          free(v187);
        }

        v126 = v185;
        if (v185)
        {
          v127 = v186;
          v128 = v185;
          if (v186 != v185)
          {
            do
            {
              v127 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v127 - 1);
            }

            while (v127 != v126);
            v128 = v185;
          }

          v186 = v126;
          operator delete(v128);
        }

        v129 = v183;
        if (v183)
        {
          v130 = v184;
          v131 = v183;
          if (v184 != v183)
          {
            do
            {
              v133 = *--v130;
              v132 = v133;
              *v130 = 0;
              if (v133)
              {
                MEMORY[0x1AC55A040](v132, 0x1000C8077774924);
              }
            }

            while (v130 != v129);
            v131 = v183;
          }

          v184 = v129;
          operator delete(v131);
        }

        if (v181 != v182)
        {
          free(v181);
        }
      }

      if (!v125)
      {
        goto LABEL_326;
      }

LABEL_320:
      if ((v178 & 1) == 0)
      {
LABEL_322:
        if (mlir::BytecodeReader::Impl::parseDialectSection(a1, v158, v159))
        {
          v189 = v170;
          v190 = v171;
          v179 = v172;
          v180 = __p;
          {
            mlir::BytecodeReader::Impl::parseIRSection(a1, v167, v168, a2);
          }
        }

        goto LABEL_326;
      }
    }

    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

  v58 = 16 * v53;
  v59 = (v58 + *v52 - 8);
  v60 = -v58;
  v61 = *(&v51 + 1);
  while (1)
  {
    v152 = 0;
    {
      break;
    }

    v62 = v61 >= v152;
    v61 -= v152;
    if (!v62)
    {
      mlir::emitError(v155, &v189);
      if (v189)
      {
        LODWORD(v179) = 3;
        *(&v179 + 1) = "string size exceeds the available data size";
        v180 = 43;
        v113 = &v179;
        v114 = v191;
        if (v192 >= v193)
        {
          if (v191 <= &v179 && v191 + 24 * v192 > &v179)
          {
            v144 = &v179 - v191;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
            v114 = v191;
            v113 = (v191 + v144);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
            v113 = &v179;
            v114 = v191;
          }
        }

        v115 = &v114[24 * v192];
        v116 = *v113;
        *(v115 + 2) = *(v113 + 2);
        *v115 = v116;
        ++v192;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v179, &v189);
      if (v189)
      {
        mlir::InFlightDiagnostic::report(&v189);
      }

      if (v200[0] == 1)
      {
        if (v199 != v200)
        {
          free(v199);
        }

        v117 = v197;
        if (v197)
        {
          v118 = v198;
          v119 = v197;
          if (v198 != v197)
          {
            do
            {
              v118 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v118 - 1);
            }

            while (v118 != v117);
            v119 = v197;
          }

          v198 = v117;
          operator delete(v119);
        }

        v120 = v195;
        if (v195)
        {
          v121 = v196;
          v122 = v195;
          if (v196 != v195)
          {
            do
            {
              v124 = *--v121;
              v123 = v124;
              *v121 = 0;
              if (v124)
              {
                MEMORY[0x1AC55A040](v123, 0x1000C8077774924);
              }
            }

            while (v121 != v120);
            v122 = v195;
          }

          v196 = v120;
          operator delete(v122);
        }

        if (v191 != v194)
        {
          free(v191);
        }
      }

      v134 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v179);
      if (v179)
      {
        mlir::InFlightDiagnostic::report(&v179);
      }

      if (v188 == 1)
      {
        if (v187 != &v188)
        {
          free(v187);
        }

        v135 = v185;
        if (v185)
        {
          v136 = v186;
          v137 = v185;
          if (v186 != v185)
          {
            do
            {
              v136 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v136 - 1);
            }

            while (v136 != v135);
            v137 = v185;
          }

          v186 = v135;
          operator delete(v137);
        }

        v138 = v183;
        if (v183)
        {
          v139 = v184;
          v140 = v183;
          if (v184 != v183)
          {
            do
            {
              v142 = *--v139;
              v141 = v142;
              *v139 = 0;
              if (v142)
              {
                MEMORY[0x1AC55A040](v141, 0x1000C8077774924);
              }
            }

            while (v139 != v138);
            v140 = v183;
          }

          v184 = v138;
          operator delete(v140);
        }

        if (v181 != v182)
        {
          free(v181);
        }
      }

      if (!v134)
      {
        break;
      }

      goto LABEL_320;
    }

    v63 = v152 - 1;
    *(v59 - 1) = v51 + v61;
    *v59 = v63;
    v59 -= 2;
    v60 += 16;
    if (!v60)
    {
      goto LABEL_228;
    }
  }

LABEL_326:
  v83 = 0;
LABEL_222:
  mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v146);
  result = v83;
LABEL_129:
  *(a1 + 72) = 0;
  return result;
}

BOOL anonymous namespace::EncodingReader::parseNullTerminatedString(_anonymous_namespace_::EncodingReader *this, llvm::StringRef *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  v5 = memchr(v4, 0, *this + *(this + 1) - v4);
  if (v5)
  {
    *a2 = v4;
    *(a2 + 1) = v5 - v4;
    *(this + 2) = v5 + 1;
    return 1;
  }

  else
  {
    mlir::emitError(*(this + 3), v38);
    if (v38[0])
    {
      LODWORD(v29[0]) = 3;
      v29[1] = "malformed null-terminated string, no null character found";
      v29[2] = 57;
      v7 = v29;
      v8 = v39;
      if (v40 >= v41)
      {
        if (v39 <= v29 && v39 + 24 * v40 > v29)
        {
          v28 = v29 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v8 = v39;
          v7 = v39 + v28;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v7 = v29;
          v8 = v39;
        }
      }

      v9 = &v8[24 * v40];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      ++v40;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v29, v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v46;
        v13 = __p;
        if (v46 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v46 = v11;
        operator delete(v13);
      }

      v14 = v43;
      if (v43)
      {
        v15 = v44;
        v16 = v43;
        if (v44 != v43)
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
          v16 = v43;
        }

        v44 = v14;
        operator delete(v16);
      }

      if (v39 != v42)
      {
        free(v39);
      }
    }

    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v19 = v34;
      if (v34)
      {
        v20 = v35;
        v21 = v34;
        if (v35 != v34)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = v34;
        }

        v35 = v19;
        operator delete(v21);
      }

      v22 = v32;
      if (v32)
      {
        v23 = v33;
        v24 = v32;
        if (v33 != v32)
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
          v24 = v32;
        }

        v33 = v22;
        operator delete(v24);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }

  return v6;
}

uint64_t anonymous namespace::EncodingReader::parseSection(_anonymous_namespace_::EncodingReader *a1, _BYTE *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v29 = 0;
  {
    return 0;
  }

  v28 = 0;
  {
    return 0;
  }

  v6 = v29;
  v7 = v29 & 0x7F;
  *a2 = v29 & 0x7F;
  if (v7 >= 9)
  {
    v27 = v7;
    mlir::emitError(*(a1 + 3), v39);
    if (*v39)
    {
      mlir::Diagnostic::append<char const(&)[21],unsigned int>(&v40, "invalid section ID: ", &v27);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v30, v39);
    if (*v39)
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v8 = v45;
      if (v45)
      {
        v9 = v46;
        v10 = v45;
        if (v46 != v45)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = v45;
        }

        v46 = v8;
        operator delete(v10);
      }

      v11 = v43;
      if (v43)
      {
        v12 = v44;
        v13 = v43;
        if (v44 != v43)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
            }
          }

          while (v12 != v11);
          v13 = v43;
        }

        v44 = v11;
        operator delete(v13);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v18 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v18;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v18;
      }

      v19 = v35;
      if (v35)
      {
        v20 = v36;
        v21 = v35;
        if (v36 != v35)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = v35;
        }

        v36 = v19;
        operator delete(v21);
        result = v18;
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
        result = v18;
      }

      if (v31 != &v32)
      {
        free(v31);
        return v18;
      }
    }

    return result;
  }

  if (v6 < 0)
  {
    *v39 = 0;
    {
      return 0;
    }
  }

  v16 = v28;
}

void toString(char *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        result[23] = 10;
        strcpy(result, "String (0)");
        return;
      }

      if (a2 == 1)
      {
        result[23] = 11;
        strcpy(result, "Dialect (1)");
        return;
      }

LABEL_20:
      v8 = v2;
      v9 = v3;
      v4[0] = "Unknown (";
      v4[2] = a2;
      v5 = 2307;
      v6[0] = v4;
      v6[2] = ")";
      v7 = 770;
      llvm::Twine::str(v6, result);
      return;
    }

    if (a2 == 2)
    {
      result[23] = 12;
      strcpy(result, "AttrType (2)");
    }

    else
    {
      result[23] = 18;
      strcpy(result, "AttrTypeOffset (3)");
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          result[23] = 18;
          strcpy(result, "ResourceOffset (6)");
          return;
        case 7:
          result[23] = 19;
          strcpy(result, "DialectVersions (7)");
          return;
        case 8:
          result[23] = 14;
          strcpy(result, "Properties (8)");
          return;
      }

      goto LABEL_20;
    }

    if (a2 == 4)
    {
      result[23] = 6;
      strcpy(result, "IR (4)");
    }

    else
    {
      result[23] = 12;
      strcpy(result, "Resource (5)");
    }
  }
}

BOOL anonymous namespace::PropertiesSectionReader::initialize(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 1;
  }

  v27 = a3;
  v28 = a4;
  v29 = a3;
  v30 = a2;
  v26 = 0;
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[1];
  v22 = v6;
  v23 = v7;
  v24 = v6;
  v25 = a2;
  v8 = v26;
  if (v26 > *(a1 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v26, 8);
    goto LABEL_7;
  }

  if (v26)
  {
    while (1)
    {
LABEL_7:
      v9 = a1[1];
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v13 = *(a1 + 6);
      if (v13 >= *(a1 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v13 + 1, 8);
        v13 = *(a1 + 6);
      }

      *(a1[2] + 8 * v13) = v9 - (v10 + v11) + v12;
      ++*(a1 + 6);
      v31[0] = 0;
      {
        return 0;
      }

      if (!--v8)
      {
        if (v24 == v22 + v23)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }
  }

  if (v6 == v6 + v7)
  {
    return 1;
  }

LABEL_15:
  mlir::emitError(v25, &v32);
  if (v32)
  {
    LODWORD(v31[0]) = 3;
    v31[1] = "Broken properties section: didn't exhaust the offsets table";
    v31[2] = 59;
    v15 = v31;
    v16 = v34;
    if (v35 >= v36)
    {
      if (v34 <= v31 && v34 + 24 * v35 > v31)
      {
        v21 = v31 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v16 = v34;
        v15 = &v21[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v15 = v31;
        v16 = v34;
      }
    }

    v17 = v16 + 24 * v35;
    v18 = *v15;
    *(v17 + 16) = v15[2];
    *v17 = v18;
    ++v35;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  if (v32)
  {
    v19 = result;
    mlir::InFlightDiagnostic::report(&v32);
    result = v19;
  }

  if (v37[160] == 1)
  {
    v20 = result;
    mlir::Diagnostic::~Diagnostic(&v33);
    return v20;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseDialectSection(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[27] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v40 = a2;
  v41 = a3;
  v42 = a2;
  v43 = v4;
  v39 = 0;
  {
    return 0;
  }

  v5 = v39;
  v6 = *(a1 + 280);
  if (v39 != v6)
  {
    if (v39 < v6)
    {
      v7 = 8 * v6;
      v8 = 8 * v39 - v7;
      v9 = (v7 + *(a1 + 272) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 56);
          *(v10 + 56) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          MEMORY[0x1AC55A070](v10, 0x1072C4009F0BF78);
        }

        --v9;
        v8 += 8;
      }

      while (v8);
      goto LABEL_34;
    }

    if (v39 <= *(a1 + 284))
    {
      v12 = *(a1 + 272);
      v19 = v39 - v6;
      if (v39 == v6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v38[0] = 0;
    v12 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1 + 272, (a1 + 288), v39, 8, v38);
    v13 = *(a1 + 272);
    v14 = *(a1 + 280);
    if (!v14)
    {
LABEL_30:
      v32 = v38[0];
      if (v13 != (a1 + 288))
      {
        free(v13);
      }

      *(a1 + 272) = v12;
      *(a1 + 284) = v32;
      v6 = *(a1 + 280);
      v19 = v5 - v6;
      if (v5 == v6)
      {
        goto LABEL_34;
      }

LABEL_33:
      bzero(&v12[8 * v6], 8 * v19);
LABEL_34:
      *(a1 + 280) = v5;
      goto LABEL_35;
    }

    v15 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v16 = 8 * v14;
    if (v15 >= 0xB)
    {
      if (v13 >= &v12[v16] || (v17 = v12, v18 = *(a1 + 272), v12 >= &v13[v16]))
      {
        v20 = v15 + 1;
        v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
        v17 = &v12[v21];
        v18 = &v13[v21];
        v22 = (v13 + 16);
        v23 = v12 + 16;
        v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = *(v22 - 1);
          v26 = *v22;
          *(v22 - 1) = 0uLL;
          *v22 = 0uLL;
          *(v23 - 1) = v25;
          *v23 = v26;
          v22 += 2;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_23:
          v29 = v13 - 8;
          do
          {
            v30 = *&v29[v16];
            *&v29[v16] = 0;
            if (v30)
            {
              v31 = *(v30 + 56);
              *(v30 + 56) = 0;
              if (v31)
              {
                (*(*v31 + 8))(v31);
              }

              MEMORY[0x1AC55A070](v30, 0x1072C4009F0BF78);
            }

            v16 -= 8;
          }

          while (v16);
          v13 = *(a1 + 272);
          goto LABEL_30;
        }
      }
    }

    else
    {
      v17 = v12;
      v18 = *(a1 + 272);
    }

    v27 = &v13[8 * v14];
    do
    {
      v28 = *v18;
      *v18 = 0;
      v18 += 8;
      *v17 = v28;
      v17 += 8;
    }

    while (v18 != v27);
    goto LABEL_23;
  }

LABEL_35:
  if (v5)
  {
    operator new();
  }

  v37[0] = a1;
  v37[1] = &v40;
  if (*(a1 + 248) >= 4uLL)
  {
    v38[0] = 0;
    {
      return 0;
    }

    if (v38[0] > *(a1 + 372))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 360, (a1 + 376), v38[0], 48);
    }
  }

  if (v42 == v40 + v41)
  {
    return 1;
  }

  while (1)
  {
    v33 = *(a1 + 280);
    v38[0] = *(a1 + 272);
    v38[1] = v33;
    v45[0] = 0;
    {
      return 0;
    }

    v44 = 0;
    {
      return 0;
    }

    v34 = v44;
    if (v44)
    {
      v35 = v45[0];
      {
        if (!--v34)
        {
          goto LABEL_43;
        }
      }

      return 0;
    }

LABEL_43:
    if (v42 == v40 + v41)
    {
      return 1;
    }
  }
}

BOOL mlir::BytecodeReader::Impl::parseResourceSection(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v184 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16) == *(a4 + 16))
  {
    if (*(a3 + 16))
    {
      v144[0] = &unk_1F19F9CC8;
      v144[1] = a1 + 11;
      v15 = a1 + 53;
      v144[2] = a1 + 67;
      v144[3] = a1 + 53;
      v144[4] = a1 + 42;
      v144[5] = a2;
      v144[6] = a1 + 31;
      v17 = *a1;
      v16 = a1[1];
      v18 = a1[34];
      v19 = a1[151];
      v157[1] = *(a1 + 70);
      v158 = v16;
      v156 = v16;
      v157[0] = v18;
      v154 = *a3;
      v155 = v154;
      v151 = *a4;
      v152 = v151;
      v153 = v16;
      v150 = 0;
      {
        return 0;
      }

      v143 = v19;
      if (v150)
      {
        for (i = 0; i < v150; ++i)
        {
          v168 = 0uLL;
          *&v173 = 0;
          {
            return 0;
          }

          v21 = v168;
          v173 = v168;
          v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v17 + 16), &v173);
          if (!v22 || v22 == *(v17 + 16) + 24 * *(v17 + 32))
          {
            v26 = *(v17 + 40);
            if (v26)
            {
              ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v26, v173, *(&v173 + 1), v23);
              v25 = 0;
              goto LABEL_59;
            }
          }

          else
          {
            ParserFor = *(v22 + 16);
            if (ParserFor)
            {
              v25 = 0;
              goto LABEL_59;
            }
          }

          mlir::emitWarning(v158, &v173);
          if (v173)
          {
            LODWORD(v159) = 3;
            *(&v159 + 1) = "ignoring unknown external resources for '";
            v160 = 41;
            v27 = v174;
            if (v175 >= v176)
            {
              if (v174 <= &v159 && v174 + 24 * v175 > &v159)
              {
                v66 = &v159 - v174;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                v27 = v174;
                v28 = v174 + v66;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                v28 = &v159;
                v27 = v174;
              }
            }

            else
            {
              v28 = &v159;
            }

            v29 = &v27[24 * v175];
            v30 = *v28;
            *(v29 + 2) = *(v28 + 2);
            *v29 = v30;
            ++v175;
            if (v173)
            {
              LOWORD(v162) = 261;
              v159 = v21;
              mlir::Diagnostic::operator<<(&v173 + 8, &v159);
              if (v173)
              {
                LODWORD(v159) = 3;
                *(&v159 + 1) = "'";
                v160 = 1;
                v31 = v174;
                if (v175 >= v176)
                {
                  if (v174 <= &v159 && v174 + 24 * v175 > &v159)
                  {
                    v67 = &v159 - v174;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                    v31 = v174;
                    v32 = v174 + v67;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                    v32 = &v159;
                    v31 = v174;
                  }
                }

                else
                {
                  v32 = &v159;
                }

                v33 = &v31[24 * v175];
                v34 = *v32;
                *(v33 + 2) = *(v32 + 2);
                *v33 = v34;
                ++v175;
                if (v173)
                {
                  mlir::InFlightDiagnostic::report(&v173);
                }
              }
            }
          }

          if (v183 == 1)
          {
            if (v182 != &v183)
            {
              free(v182);
            }

            v35 = __p;
            if (__p)
            {
              v36 = v181;
              v37 = __p;
              if (v181 != __p)
              {
                do
                {
                  v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
                }

                while (v36 != v35);
                v37 = __p;
              }

              v181 = v35;
              operator delete(v37);
            }

            v38 = v178;
            if (v178)
            {
              v39 = v179;
              v40 = v178;
              if (v179 != v178)
              {
                do
                {
                  v42 = *--v39;
                  v41 = v42;
                  *v39 = 0;
                  if (v42)
                  {
                    MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
                  }
                }

                while (v39 != v38);
                v40 = v178;
              }

              v179 = v38;
              operator delete(v40);
            }

            if (v174 != v177)
            {
              free(v174);
            }
          }

          ParserFor = 0;
          v25 = 1;
LABEL_59:
          v43 = v158;
          v172 = 0;
          {
            return 0;
          }

          v44 = v172;
          if (v172)
          {
            if (v25)
            {
              while (1)
              {
                v145 = 0uLL;
                v169 = 0;
                *&v173 = 0;
                {
                  break;
                }

                if (!--v44)
                {
                  goto LABEL_85;
                }
              }
            }

            else
            {
              while (1)
              {
                v145 = 0uLL;
                LODWORD(v149) = 0;
                v169 = 0;
                v171 = 0uLL;
                *&v173 = 0;
                {
                  break;
                }

                v48 = *(&v145 + 1);
                v47 = v145;
                v165 = v171;
                v166 = v171;
                v167 = v43;
                v49 = llvm::StringMapImpl::hash(v145, *(&v145 + 1), v45, v46);
                Key = llvm::StringMapImpl::FindKey(a1 + 61, v47, v48, v49);
                if (Key != -1 && Key != *(a1 + 124))
                {
                  v51 = *(a1[61] + 8 * Key);
                  v54 = *(v51 + 8);
                  v52 = v51 + 8;
                  v53 = v54;
                  v55 = *(v52 + 23);
                  if (v55 >= 0)
                  {
                    v47 = v52;
                  }

                  else
                  {
                    v47 = v53;
                  }

                  v56 = *(v52 + 8);
                  if (v55 >= 0)
                  {
                    v48 = v55;
                  }

                  else
                  {
                    v48 = v56;
                  }
                }

                *&v145 = v47;
                *(&v145 + 1) = v48;
                *&v159 = &unk_1F19F9D88;
                *(&v159 + 1) = v47;
                v160 = v48;
                v161 = v149;
                v162 = &v165;
                v163 = a1 + 67;
                v164 = v143;
                if (((*(*ParserFor + 16))(ParserFor, &v159) & 1) == 0)
                {
LABEL_188:
                  ZinIrHalH13g::~ZinIrHalH13g(&v159);
                  return 0;
                }

                if (v166 != v165 + *(&v165 + 1))
                {
                  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
                  if (v173)
                  {
                    mlir::InFlightDiagnostic::report(&v173);
                  }

                  if (v183)
                  {
                    if (v182 != &v183)
                    {
                      free(v182);
                    }

                    v58 = __p;
                    if (__p)
                    {
                      v59 = v181;
                      v60 = __p;
                      if (v181 != __p)
                      {
                        do
                        {
                          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
                        }

                        while (v59 != v58);
                        v60 = __p;
                      }

                      v181 = v58;
                      operator delete(v60);
                    }

                    v61 = v178;
                    if (v178)
                    {
                      v62 = v179;
                      v63 = v178;
                      if (v179 != v178)
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
                        v63 = v178;
                      }

                      v179 = v61;
                      operator delete(v63);
                    }

                    if (v174 != v177)
                    {
                      free(v174);
                    }
                  }

                  ZinIrHalH13g::~ZinIrHalH13g(&v159);
                  if (v57)
                  {
                    goto LABEL_85;
                  }

                  return 0;
                }

                ZinIrHalH13g::~ZinIrHalH13g(&v159);
                if (!--v44)
                {
                  goto LABEL_85;
                }
              }
            }

            return 0;
          }

LABEL_85:
          v15 = a1 + 53;
        }
      }

      Context = mlir::Attribute::getContext(&v158);
      if (v152 != v151 + *(&v151 + 1))
      {
        v76 = Context;
        v77 = "dialect";
        while (1)
        {
          v149 = 0;
          {
            return 0;
          }

          v78 = **v149;
          if (!v78)
          {
            mlir::emitError(v156, &v173);
            if (v173)
            {
              LODWORD(v159) = 3;
              *(&v159 + 1) = "dialect '";
              v160 = 9;
              v104 = &v159;
              v105 = v174;
              if (v175 >= v176)
              {
                if (v174 <= &v159 && v174 + 24 * v175 > &v159)
                {
                  v139 = &v159 - v174;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                  v105 = v174;
                  v104 = v174 + v139;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                  v104 = &v159;
                  v105 = v174;
                }
              }

              v106 = &v105[24 * v175];
              v107 = *v104;
              *(v106 + 2) = *(v104 + 2);
              *v106 = v107;
              ++v175;
              if (v173)
              {
                v108 = *v149;
                LOWORD(v162) = 261;
                v110 = *(v108 + 24);
                v109 = *(v108 + 32);
                *&v159 = v110;
                *(&v159 + 1) = v109;
                mlir::Diagnostic::operator<<(&v173 + 8, &v159);
                if (v173)
                {
                  LODWORD(v159) = 3;
                  *(&v159 + 1) = "' is unknown";
                  v160 = 12;
                  v111 = &v159;
                  v112 = v174;
                  if (v175 >= v176)
                  {
                    if (v174 <= &v159 && v174 + 24 * v175 > &v159)
                    {
                      v141 = &v159 - v174;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                      v112 = v174;
                      v111 = v174 + v141;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                      v111 = &v159;
                      v112 = v174;
                    }
                  }

                  v113 = &v112[24 * v175];
                  v114 = *v111;
                  *(v113 + 2) = *(v111 + 2);
                  *v113 = v114;
                  ++v175;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
            if (v173)
            {
              mlir::InFlightDiagnostic::report(&v173);
            }

            if (v183 != 1)
            {
              return v6;
            }

            if (v182 != &v183)
            {
              free(v182);
            }

            v115 = __p;
            if (__p)
            {
              v116 = v181;
              v117 = __p;
              if (v181 != __p)
              {
                do
                {
                  v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
                }

                while (v116 != v115);
                v117 = __p;
              }

              v181 = v115;
              operator delete(v117);
            }

            v10 = v178;
            if (!v178)
            {
              goto LABEL_236;
            }

            v118 = v179;
            v12 = v178;
            if (v179 == v178)
            {
              goto LABEL_235;
            }

            do
            {
              v120 = *--v118;
              v119 = v120;
              *v118 = 0;
              if (v120)
              {
                MEMORY[0x1AC55A040](v119, 0x1000C8077774924);
              }
            }

            while (v118 != v10);
            goto LABEL_234;
          }

          if (!mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(**v149))
          {
            v148 = 0;
            mlir::emitError(v156, &v173);
            if (v173)
            {
              LODWORD(v159) = 3;
              *(&v159 + 1) = "unexpected resources for dialect '";
              v160 = 34;
              v121 = &v159;
              v122 = v174;
              if (v175 >= v176)
              {
                if (v174 <= &v159 && v174 + 24 * v175 > &v159)
                {
                  v140 = &v159 - v174;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                  v122 = v174;
                  v121 = v174 + v140;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                  v121 = &v159;
                  v122 = v174;
                }
              }

              v123 = &v122[24 * v175];
              v124 = *v121;
              *(v123 + 2) = *(v121 + 2);
              *v123 = v124;
              ++v175;
              if (v173)
              {
                v125 = *v149;
                LOWORD(v162) = 261;
                v127 = *(v125 + 24);
                v126 = *(v125 + 32);
                *&v159 = v127;
                *(&v159 + 1) = v126;
                mlir::Diagnostic::operator<<(&v173 + 8, &v159);
                if (v173)
                {
                  LODWORD(v159) = 3;
                  *(&v159 + 1) = "'";
                  v160 = 1;
                  v128 = &v159;
                  v129 = v174;
                  if (v175 >= v176)
                  {
                    if (v174 <= &v159 && v174 + 24 * v175 > &v159)
                    {
                      v142 = &v159 - v174;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                      v129 = v174;
                      v128 = v174 + v142;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v174, v177, v175 + 1, 24);
                      v128 = &v159;
                      v129 = v174;
                    }
                  }

                  v130 = &v129[24 * v175];
                  v131 = *v128;
                  *(v130 + 2) = *(v128 + 2);
                  *v130 = v131;
                  ++v175;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
            if (v173)
            {
              mlir::InFlightDiagnostic::report(&v173);
            }

            if (v183 != 1)
            {
              return v6;
            }

            if (v182 != &v183)
            {
              free(v182);
            }

            v132 = __p;
            if (__p)
            {
              v133 = v181;
              v134 = __p;
              if (v181 != __p)
              {
                do
                {
                  v133 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v133 - 1);
                }

                while (v133 != v132);
                v134 = __p;
              }

              v181 = v132;
              operator delete(v134);
            }

            v10 = v178;
            if (!v178)
            {
              goto LABEL_236;
            }

            v135 = v179;
            v12 = v178;
            if (v179 == v178)
            {
              goto LABEL_235;
            }

            do
            {
              v137 = *--v135;
              v136 = v137;
              *v135 = 0;
              if (v137)
              {
                MEMORY[0x1AC55A040](v136, 0x1000C8077774924);
              }
            }

            while (v135 != v10);
            goto LABEL_234;
          }

          v79 = v77;
          v80 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v78);
          v147 = v15;
          v148 = v80;
          *&v145 = &v148;
          *(&v145 + 1) = &v154;
          v146 = &v149;
          v81 = v158;
          v172 = 0;
          {
            return 0;
          }

          v82 = v172;
          if (v172)
          {
            do
            {
              v171 = 0uLL;
              v170 = 0;
              v169 = 0;
              v168 = 0uLL;
              *&v173 = 0;
              {
                return 0;
              }

              if (*(&v168 + 1))
              {
                v165 = v168;
                v166 = v168;
                v167 = v81;
                v86 = *(&v171 + 1);
                v85 = v171;
                v87 = llvm::StringMapImpl::hash(v171, *(&v171 + 1), v83, v84);
                v88 = llvm::StringMapImpl::FindKey(a1 + 61, v85, v86, v87);
                if (v88 != -1 && v88 != *(a1 + 124))
                {
                  v89 = *(a1[61] + 8 * v88);
                  v92 = *(v89 + 8);
                  v90 = v89 + 8;
                  v91 = v92;
                  v93 = *(v90 + 23);
                  if (v93 >= 0)
                  {
                    v85 = v90;
                  }

                  else
                  {
                    v85 = v91;
                  }

                  v94 = *(v90 + 8);
                  if (v93 >= 0)
                  {
                    v86 = v93;
                  }

                  else
                  {
                    v86 = v94;
                  }
                }

                *&v171 = v85;
                *(&v171 + 1) = v86;
                *&v159 = &unk_1F19F9D88;
                *(&v159 + 1) = v85;
                v160 = v86;
                v161 = v170;
                v162 = &v165;
                v163 = a1 + 67;
                v164 = v143;
                if (((*(*v80 + 48))(v80, &v159) & 1) == 0)
                {
                  goto LABEL_188;
                }

                if (v166 != v165 + *(&v165 + 1))
                {
                  v95 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
                  if (v173)
                  {
                    mlir::InFlightDiagnostic::report(&v173);
                  }

                  v15 = a1 + 53;
                  if (v183)
                  {
                    if (v182 != &v183)
                    {
                      free(v182);
                    }

                    v96 = __p;
                    if (__p)
                    {
                      v97 = v181;
                      v98 = __p;
                      if (v181 != __p)
                      {
                        do
                        {
                          v97 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v97 - 1);
                        }

                        while (v97 != v96);
                        v98 = __p;
                      }

                      v181 = v96;
                      operator delete(v98);
                    }

                    v99 = v178;
                    if (v178)
                    {
                      v100 = v179;
                      v101 = v178;
                      if (v179 != v178)
                      {
                        do
                        {
                          v103 = *--v100;
                          v102 = v103;
                          *v100 = 0;
                          if (v103)
                          {
                            MEMORY[0x1AC55A040](v102, 0x1000C8077774924);
                          }
                        }

                        while (v100 != v99);
                        v101 = v178;
                      }

                      v179 = v99;
                      operator delete(v101);
                      v15 = a1 + 53;
                    }

                    if (v174 != v177)
                    {
                      free(v174);
                    }

                    ZinIrHalH13g::~ZinIrHalH13g(&v159);
                    v77 = v79;
                  }

                  else
                  {
                    v77 = v79;
                    ZinIrHalH13g::~ZinIrHalH13g(&v159);
                  }

                  if (v95)
                  {
                    goto LABEL_142;
                  }

                  return 0;
                }

                ZinIrHalH13g::~ZinIrHalH13g(&v159);
              }
            }

            while (--v82);
          }

          v15 = a1 + 53;
          v77 = v79;
LABEL_142:
          v6 = 1;
          if (v152 == v151 + *(&v151 + 1))
          {
            return v6;
          }
        }
      }
    }

    return 1;
  }

  if (*(a4 + 16))
  {
    v5 = a1[1];
    *&v159 = "unexpected resource offset section when resource section is not present";
    LOWORD(v162) = 259;
    mlir::emitError(v5, &v159, &v173);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
    if (v173)
    {
      mlir::InFlightDiagnostic::report(&v173);
    }

    if (v183 == 1)
    {
      if (v182 != &v183)
      {
        free(v182);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v181;
        v9 = __p;
        if (v181 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v181 = v7;
        operator delete(v9);
      }

      v10 = v178;
      if (!v178)
      {
        goto LABEL_236;
      }

      v11 = v179;
      v12 = v178;
      if (v179 == v178)
      {
LABEL_235:
        v179 = v10;
        operator delete(v12);
LABEL_236:
        if (v174 != v177)
        {
          free(v174);
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
          MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
        }
      }

      while (v11 != v10);
LABEL_234:
      v12 = v178;
      goto LABEL_235;
    }
  }

  else
  {
    v68 = a1[1];
    *&v159 = "expected resource offset section when resource section is present";
    LOWORD(v162) = 259;
    mlir::emitError(v68, &v159, &v173);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
    if (v173)
    {
      mlir::InFlightDiagnostic::report(&v173);
    }

    if (v183 == 1)
    {
      if (v182 != &v183)
      {
        free(v182);
      }

      v69 = __p;
      if (__p)
      {
        v70 = v181;
        v71 = __p;
        if (v181 != __p)
        {
          do
          {
            v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
          }

          while (v70 != v69);
          v71 = __p;
        }

        v181 = v69;
        operator delete(v71);
      }

      v10 = v178;
      if (!v178)
      {
        goto LABEL_236;
      }

      v72 = v179;
      v12 = v178;
      if (v179 == v178)
      {
        goto LABEL_235;
      }

      do
      {
        v74 = *--v72;
        v73 = v74;
        *v72 = 0;
        if (v74)
        {
          MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
        }
      }

      while (v72 != v10);
      goto LABEL_234;
    }
  }

  return v6;
}

BOOL anonymous namespace::AttrTypeReader::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v32[0] = a4;
  v32[1] = a5;
  v10 = *(a1 + 136);
  v28 = a6;
  v29 = a7;
  v30 = a6;
  v31 = v10;
  v27 = 0;
  {
    return 0;
  }

  v26 = 0;
  {
    return 0;
  }

  v11 = v27;
  v12 = *(a1 + 32);
  if (v27 != v12)
  {
    if (v27 >= v12)
    {
      if (v27 > *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v27, 40);
        v12 = *(a1 + 32);
      }

      if (v11 != v12)
      {
        bzero((*(a1 + 24) + 40 * v12), 40 * ((40 * (v11 - v12) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 32) = v11;
    LODWORD(v12) = v11;
  }

  v13 = (a1 + 80);
  v14 = v26;
  v15 = *(a1 + 88);
  if (v26 != v15)
  {
    if (v26 >= v15)
    {
      if (v26 > *(a1 + 92))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 80, (a1 + 96), v26, 40);
        v15 = *(a1 + 88);
      }

      if (v14 != v15)
      {
        bzero((*v13 + 40 * v15), 40 * ((40 * (v14 - v15) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 88) = v14;
    LODWORD(v12) = *(a1 + 32);
    LODWORD(v15) = v14;
  }

  v25 = 0;
  v33 = 0;
  v38 = (a1 + 24);
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v12)
  {
    v16 = v12;
    while (1)
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      {
        return 0;
      }

      v34 = 0;
      {
        return 0;
      }

      v17 = v34;
      if (v34)
      {
        v18 = v35;
        while (_ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(&v38, *v18))
        {
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        return 0;
      }

LABEL_19:
      if (v33 == v16)
      {
        LODWORD(v15) = *(a1 + 88);
        v13 = (a1 + 80);
        break;
      }
    }
  }

  v33 = 0;
  v38 = v13;
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v15)
  {
    v19 = v15;
    do
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      {
        return 0;
      }

      v34 = 0;
      {
        return 0;
      }

      v20 = v34;
      if (v34)
      {
        v21 = v35;
        while (_ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(&v38, *v21))
        {
          if (!--v20)
          {
            goto LABEL_30;
          }
        }

        return 0;
      }

LABEL_30:
      ;
    }

    while (v33 != v19);
  }

  if (v30 == v28 + v29)
  {
    return 1;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    v23 = result;
    mlir::InFlightDiagnostic::report(&v38);
    result = v23;
  }

  if (v43 == 1)
  {
    v24 = result;
    mlir::Diagnostic::~Diagnostic(&v39);
    return v24;
  }

  return result;
}

void mlir::BytecodeReader::Impl::parseIRSection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  LOBYTE(v5) = 0;
  v6 = 0;
  mlir::ModuleOp::create(v4, &v5);
}

uint64_t anonymous namespace::EncodingReader::parseVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 == (*this + *(this + 1)))
  {
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
    if (*__dst)
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v23;
        v11 = __p;
        if (v23 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v23 = v9;
        operator delete(v11);
      }

      v12 = v20;
      if (v20)
      {
        v13 = v21;
        v14 = v20;
        if (v21 != v20)
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
          v14 = v20;
        }

        v21 = v12;
        operator delete(v14);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }

    if (!v8)
    {
      return 0;
    }

    v5 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (v5)
    {
    }

    {
      v6 = *__dst;
      goto LABEL_4;
    }

    return 0;
  }

  *(this + 2) = v4 + 1;
  v5 = *v4;
  *a2 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = v5 >> 1;
LABEL_4:
  *a2 = v6;
  return 1;
}

uint64_t mlir::BytecodeReader::Impl::sortUseListOrder(uint64_t a1, void ***a2)
{
  v121 = *MEMORY[0x1E69E9840];
  v101 = a2;
  v3 = *a2;
  if (!*a2 || !*v3)
  {
    return 1;
  }

  v5 = *(a1 + 528);
  if (v5)
  {
    v6 = *(a1 + 512);
    v7 = v5 - 1;
    v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(v6 + 48 * v8);
    if (v9 == a2)
    {
      v10 = 0;
    }

    else
    {
      v96 = 1;
      do
      {
        v10 = v9 == -4096;
        if (v9 == -4096)
        {
          break;
        }

        v10 = 0;
        v97 = v8 + v96++;
        v8 = v97 & v7;
        v9 = *(v6 + 48 * v8);
      }

      while (v9 != a2);
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *(a1 + 704);
  v13 = *(a1 + 720);
  if (!v13)
  {
LABEL_14:
    v15 = *(a1 + 720);
    goto LABEL_15;
  }

  v14 = *(v3 + 2);
  v15 = ((v14 >> 4) ^ (v14 >> 9)) & (v13 - 1);
  v16 = *(v12 + 16 * v15);
  if (v16 != v14)
  {
    v17 = 1;
    while (v16 != -4096)
    {
      v18 = v15 + v17++;
      v15 = v18 & (v13 - 1);
      v16 = *(v12 + 16 * v15);
      if (v16 == v14)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v19 = *(v12 + 16 * v15 + 8);
  v20 = mlir::OpOperand::getOperandNumber(v3) | (v19 << 32);
  v117 = &v119;
  v119 = 0;
  v120 = v20;
  v118 = 0x300000001;
  v21 = **a2;
  if (!v21)
  {
    if (v10)
    {
      goto LABEL_85;
    }

LABEL_38:
    v46 = *(a1 + 512);
    v47 = *(a1 + 528);
    if (v47)
    {
      v48 = ((v101 >> 4) ^ (v101 >> 9)) & (v47 - 1);
      v49 = v46 + 48 * v48;
      v50 = *v49;
      if (*v49 == v101)
      {
        goto LABEL_45;
      }

      v51 = 1;
      while (v50 != -4096)
      {
        v52 = v48 + v51++;
        v48 = v52 & (v47 - 1);
        v49 = v46 + 48 * v48;
        v50 = *v49;
        if (*v49 == v101)
        {
          goto LABEL_45;
        }
      }
    }

    v49 = v46 + 48 * v47;
LABEL_45:
    __dst = v109;
    v108 = 0x400000000;
    v53 = *(v49 + 16);
    if (&__dst == (v49 + 8) || v53 == 0)
    {
      LODWORD(v53) = 0;
      v110 = *(v49 + 40);
      v104 = v106;
      v105 = 0x400000000;
      v55 = *v101;
      if (!*v101)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    v62 = v109;
    v63 = *(v49 + 16);
    if (v53 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v109, *(v49 + 16), 4);
      v63 = *(v49 + 16);
      if (!v63)
      {
        goto LABEL_62;
      }

      v62 = __dst;
    }

    memcpy(v62, *(v49 + 8), 4 * v63);
LABEL_62:
    LODWORD(v108) = v53;
    v110 = *(v49 + 40);
    v104 = v106;
    v105 = 0x400000000;
    if (__dst == v109)
    {
      v85 = v53;
      if (v53 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v53, 4), (v85 = v108) != 0))
      {
        memcpy(v104, __dst, 4 * v85);
      }

      LODWORD(v105) = v53;
      LODWORD(v108) = 0;
      v55 = *v101;
      if (!*v101)
      {
LABEL_64:
        v56 = 0;
        if (v110 != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v104 = __dst;
      v105 = __PAIR64__(HIDWORD(v108), v53);
      __dst = v109;
      v108 = 0;
      v55 = *v101;
      if (!*v101)
      {
        goto LABEL_64;
      }
    }

LABEL_51:
    v56 = 0;
    do
    {
      ++v56;
      v55 = *v55;
    }

    while (v55);
    if (v110 != 1)
    {
LABEL_65:
      v98 = 0;
      v99 = 0;
      v100 = 0;
      if (v53)
      {
LABEL_66:
        v64 = 0;
        v65 = v104;
        v66 = 4 * v53;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v98, v65, &v111);
          if (v113[0] != 1)
          {
            goto LABEL_108;
          }

          v67 = *v65++;
          v64 += v67;
          v66 -= 4;
        }

        while (v66);
        if (v56 != v105)
        {
LABEL_108:
          llvm::deallocate_buffer(v98, (4 * v100));
        }

LABEL_104:
        if (v64 == ((v56 - 1) * v56) >> 1)
        {
          v111 = v117;
          v112 = &v104;
          v113[0] = 1;
          v114 = &v117[16 * v118];
          v115 = &v104;
          v116 = 1;
          llvm::SmallVector<unsigned int,4u>::SmallVector<llvm::mapped_iterator<std::pair<unsigned int,unsigned long long> *,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_1,unsigned int>>(v102, &v111);
          llvm::SmallVectorImpl<unsigned int>::operator=(&v104, v102);
          if (v102[0] != &v103)
          {
            free(v102[0]);
          }

          mlir::Value::shuffleUseList(&v101, v104, v105);
        }

        goto LABEL_108;
      }

LABEL_103:
      v64 = 0;
      if (v56)
      {
        goto LABEL_108;
      }

      goto LABEL_104;
    }

LABEL_54:
    if (v53)
    {
      v11 = 0;
      if (v104 != v106)
      {
        free(v104);
      }

      if (__dst != v109)
      {
        free(__dst);
      }

      goto LABEL_113;
    }

    llvm::SmallVector<unsigned int,4u>::SmallVector(&v111, v56);
    v57 = v111;
    v58 = v112;
    if (v112)
    {
      v59 = (v112 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v59 < 7)
      {
        LODWORD(v60) = 0;
        v61 = v111;
LABEL_95:
        v92 = &v57[v58];
        do
        {
          *v61++ = v60;
          LODWORD(v60) = v60 + 1;
        }

        while (v61 != v92);
        goto LABEL_97;
      }

      v86 = v59 + 1;
      v60 = (v59 + 1) & 0x7FFFFFFFFFFFFFF8;
      v61 = v111 + 4 * v60;
      v87 = xmmword_1A75A3B20;
      v88 = (v111 + 16);
      v89.i64[0] = 0x400000004;
      v89.i64[1] = 0x400000004;
      v90.i64[0] = 0x800000008;
      v90.i64[1] = 0x800000008;
      v91 = v60;
      do
      {
        v88[-1] = v87;
        *v88 = vaddq_s32(v87, v89);
        v87 = vaddq_s32(v87, v90);
        v88 += 2;
        v91 -= 8;
      }

      while (v91);
      if (v86 != v60)
      {
        goto LABEL_95;
      }
    }

LABEL_97:
    if (v105)
    {
      v93 = 0;
      v94 = v104;
      do
      {
        v57[v94[v93]] = v94[v93 + 1];
        v93 += 2;
      }

      while (v93 < v105);
    }

    llvm::SmallVectorImpl<unsigned int>::operator=(&v104, &v111);
    if (v111 != v113)
    {
      free(v111);
    }

    LODWORD(v53) = v105;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    if (v105)
    {
      goto LABEL_66;
    }

    goto LABEL_103;
  }

  v22 = 1;
  v23 = 1;
  do
  {
    v24 = *(a1 + 704);
    v25 = *(a1 + 720);
    if (v25)
    {
      v26 = *(v21 + 2);
      v27 = ((v26 >> 4) ^ (v26 >> 9)) & (v25 - 1);
      v28 = *(v24 + 16 * v27);
      if (v28 == v26)
      {
        goto LABEL_24;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v27 + v29++;
        v27 = v30 & (v25 - 1);
        v28 = *(v24 + 16 * v27);
        if (v28 == v26)
        {
          goto LABEL_24;
        }
      }
    }

    v27 = *(a1 + 720);
LABEL_24:
    v31 = *(v24 + 16 * v27 + 8);
    v32 = mlir::OpOperand::getOperandNumber(v21) | (v31 << 32);
    v33 = v20 > v32;
    v34 = v118;
    if (v118 >= HIDWORD(v118))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, &v119, v118 + 1, 16);
      v34 = v118;
    }

    v22 &= v33;
    v35 = &v117[16 * v34];
    *v35 = v23;
    *(v35 + 1) = v32;
    v36 = (v118 + 1);
    LODWORD(v118) = v118 + 1;
    ++v23;
    v21 = *v21;
    v20 = v32;
  }

  while (v21);
  if (v10 & v22)
  {
    goto LABEL_85;
  }

  if ((v22 & 1) == 0)
  {
    v37 = 126 - 2 * __clz(v36);
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(v117, &v117[16 * v36], v38, 1);
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  v39 = v117;
  v40 = v118;
  v111 = v113;
  v112 = 0xC00000000;
  if (v118 >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v118, 4);
    v41 = v112;
    v42 = v111;
    v43 = v111 + 4 * v112;
    v44 = (v40 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v44 < 0x18)
    {
      goto LABEL_36;
    }

LABEL_74:
    if (v43 >= &v39[16 * v44 + 8] || (v68 = &v42[v41 + 1 + v44], v45 = v39, v39 >= v68))
    {
      v69 = v44 + 1;
      v70 = (v44 + 1) & 7;
      if (!v70)
      {
        v70 = 8;
      }

      v71 = v69 - v70;
      v72 = &v43[4 * v71];
      v45 = &v39[16 * v71];
      v73 = (v39 + 64);
      v74 = (v43 + 16);
      do
      {
        v75 = v73 - 8;
        v76 = vld2q_f64(v75);
        v77 = v73 - 4;
        v78 = vld2q_f64(v77);
        v79 = v73 + 16;
        v81 = vld2q_f64(v73);
        v80 = v73 + 4;
        v82 = vld2q_f64(v80);
        v74[-1] = vuzp1q_s32(v76, v78);
        *v74 = vuzp1q_s32(v81, v82);
        v74 += 2;
        v73 = v79;
        v71 -= 8;
      }

      while (v71);
      v43 = v72;
    }

    goto LABEL_81;
  }

  if (v118)
  {
    v41 = 0;
    v42 = v113;
    v43 = v113;
    v44 = (v118 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v44 >= 0x18)
    {
      goto LABEL_74;
    }

LABEL_36:
    v45 = v39;
    do
    {
LABEL_81:
      v83 = *v45;
      v45 += 16;
      *v43 = v83;
      v43 += 4;
    }

    while (v45 != &v39[16 * v40]);
    v84 = v112;
  }

  else
  {
    v84 = 0;
    v42 = v113;
  }

  LODWORD(v112) = v84 + v40;
  mlir::Value::shuffleUseList(&v101, v42, (v84 + v40));
  if (v111 != v113)
  {
    free(v111);
  }

LABEL_85:
  v11 = 1;
LABEL_113:
  if (v117 != &v119)
  {
    free(v117);
  }

  return v11;
}

void *llvm::SmallVector<unsigned int,4u>::SmallVector(void *result, unint64_t a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  if (a2)
  {
    if (a2 < 5)
    {
      v4 = 0;
      v5 = a2;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, a2, 4);
      result = v3;
      v4 = *(v3 + 2);
      v5 = a2 - v4;
      if (a2 == v4)
      {
        goto LABEL_7;
      }
    }

    v6 = result;
    bzero((*result + 4 * v4), 4 * v5);
    result = v6;
LABEL_7:
    *(result + 2) = a2;
  }

  return result;
}

void *llvm::SmallVector<unsigned int,4u>::SmallVector<llvm::mapped_iterator<std::pair<unsigned int,unsigned long long> *,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_1,unsigned int>>(void *result, unsigned int **a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v5 = v4 - *a2;
  if ((v5 >> 4) < 5)
  {
    v7 = 0;
    if (v2 == v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v5 >> 4, 4);
    result = v6;
    v7 = *(v6 + 2);
    if (v2 == v4)
    {
      goto LABEL_8;
    }
  }

  v8 = (*result + 4 * v7);
  v9 = *v3;
  do
  {
    v10 = *v2;
    v2 += 4;
    *v8++ = *(v9 + 4 * v10);
  }

  while (v2 != v4);
  v7 = *(result + 2);
LABEL_8:
  *(result + 2) = v7 + (v5 >> 4);
  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseBlockHeader(uint64_t a1, _anonymous_namespace_::EncodingReader *this, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v6 = *(a3 + 112);
  *(a3 + 112) = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = *(a3 + 104);
  if (v7)
  {
    v8 = (v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v27 = 0;
  {
    return 0;
  }

  v33 = &v35;
  v34 = 0x600000000;
  v30 = v32;
  v31 = 0x600000000;
  v10 = v27;
  if (v27 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, &v35, v27, 8);
    if (v10 > HIDWORD(v31))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v10, 8);
    }
  }

  v11 = mlir::UnknownLoc::get(**a1, v9);
  if (!v10)
  {
LABEL_28:
    mlir::ValueRange::ValueRange(&v28, v33, v34);
    mlir::Block::addArguments(v8, v28, v29, v30, v31);
    mlir::ValueRange::ValueRange(&v28, v8[6], (v8[7] - v8[6]) >> 3);
    v21 = !mlir::BytecodeReader::Impl::defineValues(a1, *(this + 3), v28, v29);
    v22 = v30;
    if (v30 == v32)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v12 = v11;
  while (1)
  {
    v26 = v12;
    if (*(a1 + 248) < 4uLL)
    {
      break;
    }

    v28 = 0;
    {
      goto LABEL_37;
    }

    v13 = v28;
    if (!v14)
    {
      goto LABEL_37;
    }

    v15 = v14;
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_21:
    v17 = v34;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, &v35, v34 + 1, 8);
      v17 = v34;
    }

    *(v33 + v17) = v15;
    LODWORD(v34) = v34 + 1;
    v18 = v26;
    v19 = v31;
    if (v31 >= HIDWORD(v31))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
      v19 = v31;
    }

    *(v30 + v19) = v18;
    LODWORD(v31) = v31 + 1;
    if (!--v10)
    {
      goto LABEL_28;
    }
  }

  v28 = 0;
  {
    if (v16)
    {
      v15 = v16;
LABEL_20:
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, this, &v26) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }
  }

LABEL_37:
  v21 = 1;
  v22 = v30;
  if (v30 != v32)
  {
LABEL_29:
    free(v22);
  }

LABEL_30:
  if (v33 != &v35)
  {
    free(v33);
  }

  if (v21)
  {
    return 0;
  }

  if (*(a1 + 248) < 3uLL)
  {
    return 1;
  }

  LOBYTE(v28) = 0;
  result = 0;
  if (v23)
  {
    if (v28)
    {
      v24 = *(a3 + 104);
      if (v24)
      {
        v25 = v24 - 8;
      }

      else
      {
        v25 = 0;
      }

      mlir::BytecodeReader::Impl::parseUseListOrderForRange(&v33, this, ((*(v25 + 56) - *(v25 + 48)) >> 3));
    }

    return 1;
  }

  return result;
}

BOOL mlir::BytecodeReader::Impl::parseRegions(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2;
  v282 = *MEMORY[0x1E69E9840];
  if (*a3 == a3[1])
  {
LABEL_364:
    if (*(a3 + 120) == 1)
    {
      v181 = a1[86];
      v182 = (v181 - 56);
      v183 = *(v181 - 32);
      if (v183 != (v181 - 16))
      {
        free(v183);
      }

      v184 = *v182;
      if (*v182)
      {
        *(v181 - 48) = v184;
        operator delete(v184);
      }

      a1[86] = v182;
    }

    v185 = v5[1];
    v186 = *(v185 - 88);
    if (v186 != (v185 - 72))
    {
      free(v186);
    }

    v187 = *(v185 - 104);
    *(v185 - 104) = 0;
    if (v187)
    {
      MEMORY[0x1AC55A070](v187, 0x1070C401CF53446);
    }

    v5[1] = v185 - 128;
    return 1;
  }

  v7 = (a1 + 11);
  v221 = a1 + 53;
  v222 = a1 + 67;
  v220 = a1 + 42;
  v223 = a1 + 31;
  v224 = a1 + 11;
  while (!a3[13])
  {
    if ((mlir::BytecodeReader::Impl::parseRegion(a1, a3) & 1) == 0)
    {
      return 0;
    }

    v8 = *a3;
    if (**a3 != *a3)
    {
      break;
    }

LABEL_363:
    v180 = v8 + 24;
    *a3 = v180;
    if (v180 == a3[1])
    {
      goto LABEL_364;
    }
  }

  v9 = a3[2];
  while (1)
  {
    v10 = a3[14];
    a3[14] = v10 - 1;
    v11 = v3;
    if (v10)
    {
      break;
    }

LABEL_355:
    v174 = *(a3[13] + 8);
    a3[13] = v174;
    v8 = *a3;
    if (v174 == *a3)
    {
      a3[13] = 0;
      v175 = a1[86];
      v176 = *(v175 - 56);
      v177 = (*(v175 - 48) - v176) >> 3;
      v178 = *(a3 + 8);
      v179 = v177 - v178;
      if (v177 >= v178)
      {
        if (v177 > v179)
        {
          *(v175 - 48) = v176 + 8 * v179;
        }
      }

      else
      {
        std::vector<mlir::Value>::__append(v175 - 56, -v178);
        v8 = *a3;
      }

      --*(v175 - 24);
      v3 = v11;
      goto LABEL_363;
    }

    v3 = v11;
    v157 = 0;
    if ((mlir::BytecodeReader::Impl::parseBlockHeader(a1, v9, a3) & 1) == 0)
    {
      return v157;
    }
  }

  while (1)
  {
    v226 = 0;
    {
      return 0;
    }

    v12 = *(v9 + 3);
    v13 = a1[45];
    v14 = *(a1 + 92);
    *__src = "operation name";
    *&__src[8] = 14;
    v234 = v226;
    if (v226 < v14)
    {
      v15 = v13 + 48 * v226;
      v16 = *(v15 + 40);
      if (*(v15 + 8))
      {
        goto LABEL_47;
      }

LABEL_34:
      if (*(v15 + 32))
      {
        v244[0] = &unk_1F19F9CC8;
        v244[1] = v7;
        v245 = v222;
        v246 = v221;
        v247 = v220;
        v248[0] = v9;
        v248[1] = v223;
        {
          return 0;
        }

        v26 = *(v15 + 16);
        WORD4(v236) = 773;
        v28 = *(v26 + 24);
        v27 = *(v26 + 32);
        v234 = v28;
        *&v235 = v27;
        *(&v235 + 1) = ".";
        v29 = *(v15 + 24);
        v30 = *(v15 + 32);
        *__src = &v234;
        *&__src[16] = v29;
        *&v269 = v30;
        WORD4(v269) = 1282;
        llvm::Twine::str(__src, &v226);
        v31 = **a1;
        if (*(v15 + 8) == 1)
        {
          *(v15 + 8) = 0;
        }

        if (SHIBYTE(v227[1]) >= 0)
        {
          v32 = &v226;
        }

        else
        {
          v32 = v226;
        }

        if (SHIBYTE(v227[1]) >= 0)
        {
          v33 = SHIBYTE(v227[1]);
        }

        else
        {
          v33 = v227[0];
        }

        mlir::OperationName::OperationName(v15, v32, v33, v31);
        *(v15 + 8) = 1;
        if (SHIBYTE(v227[1]) < 0)
        {
          operator delete(v226);
        }
      }

      else
      {
        mlir::OperationName::OperationName(v15, *(*(v15 + 16) + 24), *(*(v15 + 16) + 32), **a1);
        *(v15 + 8) = 1;
      }

      goto LABEL_47;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v244);
    if (v244[0])
    {
      mlir::InFlightDiagnostic::report(v244);
    }

    if (v262 == 1)
    {
      if (v260 != &v262)
      {
        free(v260);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v259;
        v20 = __p;
        if (v259 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v259 = v18;
        operator delete(v20);
      }

      v21 = v256;
      if (v256)
      {
        v22 = v257;
        v23 = v256;
        if (v257 != v256)
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
          v23 = v256;
        }

        v257 = v21;
        operator delete(v23);
      }

      if (v246 != v248)
      {
        free(v246);
      }
    }

    if (!v17)
    {
      return 0;
    }

    v15 = 0;
    v16 = MEMORY[0x28];
    if ((MEMORY[8] & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_47:
    v34 = *v15;
    v35 = *(v9 + 2);
    v219 = v11;
    if (v35 == (*v9 + *(v9 + 1)))
    {
      v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v244);
      if (v244[0])
      {
        mlir::InFlightDiagnostic::report(v244);
      }

      if (v262 == 1)
      {
        if (v260 != &v262)
        {
          free(v260);
        }

        v38 = __p;
        if (__p)
        {
          v39 = v259;
          v40 = __p;
          if (v259 != __p)
          {
            do
            {
              v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
            }

            while (v39 != v38);
            v40 = __p;
          }

          v259 = v38;
          operator delete(v40);
        }

        v41 = v256;
        if (v256)
        {
          v42 = v257;
          v43 = v256;
          if (v257 != v256)
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
            v43 = v256;
          }

          v257 = v41;
          operator delete(v43);
        }

        if (v246 != v248)
        {
          free(v246);
        }
      }

      if (!v37)
      {
        return 0;
      }

      v36 = 0;
      v231 = 0;
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v9, &v231) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *(v9 + 2) = v35 + 1;
      v36 = *v35;
      v231 = 0;
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v9, &v231) & 1) == 0)
      {
        return 0;
      }
    }

    mlir::OperationState::OperationState(v244, v231, v34);
    if (v36)
    {
      *__src = 0;
      {
        goto LABEL_416;
      }

      v226 = v47;
      if (!v47)
      {
        goto LABEL_416;
      }

      v48 = *(*v47 + 136);
      if (v48 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }

      if (v48 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v49 = v47;
      }

      else
      {
        v234 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DictionaryAttr]";
        *&v235 = 70;
        v50 = llvm::StringRef::find(&v234, "DesiredTypeName = ", 0x12uLL, 0);
        if (v235 >= v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = v235;
        }

        v52 = v234 + v51;
        v53 = v235 - v51;
        v54 = 18;
        if (v53 < 0x12)
        {
          v54 = v53;
        }

        v55 = &v52[v54];
        v56 = v53 - v54;
        if (v56 >= v56 - 1)
        {
          --v56;
        }

        v234 = v55;
        *&v235 = v56;
        v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v281 == 1)
        {
          if (v280 != &v281)
          {
            free(v280);
          }

          v58 = v278;
          if (v278)
          {
            v59 = v279;
            v60 = v278;
            if (v279 != v278)
            {
              do
              {
                v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
              }

              while (v59 != v58);
              v60 = v278;
            }

            v279 = v58;
            operator delete(v60);
          }

          v61 = v276;
          if (v276)
          {
            v62 = v277;
            v63 = v276;
            if (v277 != v276)
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
              v63 = v276;
            }

            v277 = v61;
            operator delete(v63);
          }

          if (v269 != &v270)
          {
            free(v269);
          }
        }

        if (!v57)
        {
          goto LABEL_416;
        }
      }

      mlir::NamedAttrList::NamedAttrList(__src, v49);
      v46 = *__src;
      if (*__src != &__src[16])
      {
        if (__dst != &v255)
        {
          free(__dst);
          v46 = *__src;
        }

        __dst = v46;
        v254 = *&__src[8];
        *__src = &__src[16];
        *&__src[8] = 0;
        v261 = v273;
        goto LABEL_113;
      }

      v89 = *&__src[8];
      v90 = v254;
      if (v254 >= *&__src[8])
      {
        if (*&__src[8])
        {
          memmove(__dst, *__src, 16 * *&__src[8]);
        }

        goto LABEL_175;
      }

      if (HIDWORD(v254) >= *&__src[8])
      {
        if (v254)
        {
          memmove(__dst, *__src, 16 * v254);
          goto LABEL_173;
        }
      }

      else
      {
        LODWORD(v254) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v255, *&__src[8], 16);
      }

      v90 = 0;
LABEL_173:
      if (*&__src[8] != v90)
      {
        memcpy(__dst + 16 * v90, (*__src + 16 * v90), 16 * (*&__src[8] - v90));
      }

LABEL_175:
      LODWORD(v254) = v89;
      *&__src[8] = 0;
      v261 = v273;
      if (*__src != &__src[16])
      {
        free(*__src);
      }
    }

LABEL_113:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    if ((v16 & 0x100) == 0)
    {
      v196 = a1[1];
      WORD4(v236) = 259;
      mlir::emitError(v196, &v234, __src);
      if (*__src)
      {
        v197 = *v223;
        LODWORD(v226) = 5;
        v227[0] = v197;
        v198 = &v226;
        v199 = v269;
        if (DWORD2(v269) >= HIDWORD(v269))
        {
          if (v269 <= &v226 && v269 + 24 * DWORD2(v269) > &v226)
          {
            v216 = &v227[-1] - v269;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v269, &v270, DWORD2(v269) + 1, 24);
            v199 = v269;
            v198 = &v216[v269];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v269, &v270, DWORD2(v269) + 1, 24);
            v198 = &v226;
            v199 = v269;
          }
        }

        v200 = v199 + 24 * DWORD2(v269);
        v201 = *v198;
        *(v200 + 16) = v198[2];
        *v200 = v201;
        v202 = ++DWORD2(v269);
        if (*__src)
        {
          LODWORD(v226) = 3;
          v227[0] = " with properties.";
          v227[1] = 17;
          v203 = &v226;
          v204 = v269;
          if (v202 >= HIDWORD(v269))
          {
            if (v269 <= &v226 && v269 + 24 * v202 > &v226)
            {
              v217 = &v227[-1] - v269;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v269, &v270, v202 + 1, 24);
              v204 = v269;
              v203 = &v217[v269];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v269, &v270, v202 + 1, 24);
              v203 = &v226;
              v204 = v269;
            }
          }

          v205 = v204 + 24 * DWORD2(v269);
          v206 = *v203;
          *(v205 + 16) = v203[2];
          *v205 = v206;
          ++DWORD2(v269);
          if (*__src)
          {
            mlir::InFlightDiagnostic::report(__src);
          }
        }
      }

      if (v281 == 1)
      {
        if (v280 != &v281)
        {
          free(v280);
        }

        v207 = v278;
        if (v278)
        {
          v208 = v279;
          v209 = v278;
          if (v279 != v278)
          {
            do
            {
              v208 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v208 - 1);
            }

            while (v208 != v207);
            v209 = v278;
          }

          v279 = v207;
          operator delete(v209);
        }

        v210 = v276;
        if (v276)
        {
          v211 = v277;
          v212 = v276;
          if (v277 != v276)
          {
            do
            {
              v214 = *--v211;
              v213 = v214;
              *v211 = 0;
              if (v214)
              {
                MEMORY[0x1AC55A040](v213, 0x1000C8077774924);
              }
            }

            while (v211 != v210);
            v212 = v276;
          }

          v277 = v210;
          operator delete(v212);
        }

        if (v269 != &v270)
        {
          free(v269);
        }
      }

LABEL_416:
      mlir::OperationState::~OperationState(v244);
      return 0;
    }

    v226 = &unk_1F19F9CC8;
    v227[0] = v224;
    v227[1] = v222;
    *&v228 = v221;
    *(&v228 + 1) = v220;
    v229 = v9;
    v230 = v223;
    v66 = a1[1];
    v240 = 0;
    {
      goto LABEL_416;
    }

    if (v240 >= *(a1 + 156))
    {
      v241 = "Properties idx out-of-bound for ";
      v243 = 259;
      (*(v226 + 16))(__src, &v226, &v241);
      v234 = *(v34 + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v234);
      if (*__src)
      {
        WORD4(v236) = 261;
        v234 = AttrData;
        *&v235 = v79;
        mlir::Diagnostic::operator<<(&__src[8], &v234);
      }

      v80 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v281 == 1)
      {
        if (v280 != &v281)
        {
          free(v280);
        }

        v81 = v278;
        if (v278)
        {
          v82 = v279;
          v83 = v278;
          if (v279 != v278)
          {
            do
            {
              v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
            }

            while (v82 != v81);
            v83 = v278;
          }

          v279 = v81;
          operator delete(v83);
        }

        v84 = v276;
        if (v276)
        {
          v85 = v277;
          v86 = v276;
          if (v277 == v276)
          {
            goto LABEL_200;
          }

          do
          {
            v88 = *--v85;
            v87 = v88;
            *v85 = 0;
            if (v88)
            {
              MEMORY[0x1AC55A040](v87, 0x1000C8077774924);
            }
          }

          while (v85 != v84);
LABEL_199:
          v86 = v276;
          goto LABEL_200;
        }

LABEL_201:
        if (v269 != &v270)
        {
          free(v269);
        }
      }

LABEL_203:
      if (!v80)
      {
        goto LABEL_416;
      }

      goto LABEL_204;
    }

    v67 = a1[76];
    if (v240 >= v67)
    {
      v241 = "Properties offset out-of-bound for ";
      v243 = 259;
      (*(v226 + 16))(__src, &v226, &v241);
      v234 = *(v34 + 8);
      v91 = mlir::OpaqueAttr::getAttrData(&v234);
      if (*__src)
      {
        WORD4(v236) = 261;
        v234 = v91;
        *&v235 = v92;
        mlir::Diagnostic::operator<<(&__src[8], &v234);
      }

      v80 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v281 != 1)
      {
        goto LABEL_203;
      }

      if (v280 != &v281)
      {
        free(v280);
      }

      v93 = v278;
      if (v278)
      {
        v94 = v279;
        v95 = v278;
        if (v279 != v278)
        {
          do
          {
            v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
          }

          while (v94 != v93);
          v95 = v278;
        }

        v279 = v93;
        operator delete(v95);
      }

      v84 = v276;
      if (!v276)
      {
        goto LABEL_201;
      }

      v96 = v277;
      v86 = v276;
      if (v277 != v276)
      {
        do
        {
          v98 = *--v96;
          v97 = v98;
          *v96 = 0;
          if (v98)
          {
            MEMORY[0x1AC55A040](v97, 0x1000C8077774924);
          }
        }

        while (v96 != v84);
        goto LABEL_199;
      }

LABEL_200:
      v277 = v84;
      operator delete(v86);
      goto LABEL_201;
    }

    v68 = *(a1[77] + 8 * v240);
    v234 = (a1[75] + v68);
    *&v235 = v67 - v68;
    *(&v235 + 1) = v234;
    *&v236 = v66;
    *&__src[8] = *v227;
    v269 = v228;
    *__src = &unk_1F19F9CC8;
    v270 = &v234;
    v271 = v230;
    v232[0] = 0;
    v241 = 0;
    v242 = 0;
    {
      goto LABEL_416;
    }

    v239[0] = v241;
    v239[1] = v242;
    v239[2] = v241;
    v239[3] = v66;
    v235 = *v227;
    v236 = v228;
    v234 = &unk_1F19F9CC8;
    v237 = v239;
    v238 = v230;
    {
      v69 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v70 = *(v34 + 32);
      v71 = *(v34 + 40);
      if (!v71)
      {
        goto LABEL_180;
      }
    }

    else
    {
      mlir::BytecodeReader::Impl::parseRegions();
      v69 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v70 = *(v34 + 32);
      v71 = *(v34 + 40);
      if (!v71)
      {
        goto LABEL_180;
      }
    }

    v72 = v70;
    v73 = v71;
    do
    {
      v74 = v73 >> 1;
      v75 = &v72[2 * (v73 >> 1)];
      v77 = *v75;
      v76 = v75 + 2;
      v73 += ~(v73 >> 1);
      if (v77 < v69)
      {
        v72 = v76;
      }

      else
      {
        v73 = v74;
      }
    }

    while (v73);
    if (v72 != &v70[2 * v71] && *v72 == v69)
    {
      v167 = v72[1];
      if (v167)
      {
        if (((*v167)(&v234, v244) & 1) == 0)
        {
          goto LABEL_416;
        }

        goto LABEL_204;
      }
    }

LABEL_180:
    if (*(v34 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v232[0] = "has properties but missing BytecodeOpInterface for ";
      v233 = 259;
      v241 = *(v34 + 8);
      v99 = mlir::OpaqueAttr::getAttrData(&v241);
      if (*__src)
      {
        v243 = 261;
        v241 = v99;
        v242 = v100;
        mlir::Diagnostic::operator<<(&__src[8], &v241);
      }

      v80 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v281 != 1)
      {
        goto LABEL_203;
      }

      if (v280 != &v281)
      {
        free(v280);
      }

      v101 = v278;
      if (v278)
      {
        v102 = v279;
        v103 = v278;
        if (v279 != v278)
        {
          do
          {
            v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
          }

          while (v102 != v101);
          v103 = v278;
        }

        v279 = v101;
        operator delete(v103);
      }

      v84 = v276;
      if (!v276)
      {
        goto LABEL_201;
      }

      v104 = v277;
      v86 = v276;
      if (v277 != v276)
      {
        do
        {
          v106 = *--v104;
          v105 = v106;
          *v104 = 0;
          if (v106)
          {
            MEMORY[0x1AC55A040](v105, 0x1000C8077774924);
          }
        }

        while (v104 != v84);
        goto LABEL_199;
      }

      goto LABEL_200;
    }

    v149 = v235;
    *__src = 0;
    {
      goto LABEL_416;
    }

    {
      goto LABEL_416;
    }

LABEL_204:
    if ((v36 & 2) != 0)
    {
      v234 = 0;
      {
        goto LABEL_416;
      }

      v133 = v234;
      v134 = v250;
      if (v234 == v250)
      {
        v135 = v224;
        if (v234 >= 1)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v135 = v224;
        if (v234 >= v250)
        {
          if (v234 > v251)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v249, &v252, v234, 8);
            v134 = v250;
          }

          if (v133 != v134)
          {
            bzero((v249 + 8 * v134), 8 * (v133 - v134));
          }
        }

        v250 = v133;
        if (v133 >= 1)
        {
LABEL_278:
          v139 = 0;
          v140 = v133 & 0x7FFFFFFF;
          do
          {
            v141 = v249;
            *__src = 0;
            {
              goto LABEL_416;
            }

            *(v141 + 8 * v139) = v142;
            if (!v142)
            {
              goto LABEL_416;
            }
          }

          while (v140 != ++v139);
        }
      }
    }

    v7 = v224;
    if ((v36 & 4) != 0)
    {
      v232[0] = 0;
      {
        goto LABEL_416;
      }

      v107 = v232[0];
      v108 = v246;
      if (v232[0] != v246)
      {
        if (v232[0] >= v246)
        {
          if (v232[0] > HIDWORD(v246))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, &v247, v232[0], 8);
            v108 = v246;
          }

          if (v107 != v108)
          {
            bzero(&v245[v108], 8 * (v107 - v108));
          }
        }

        LODWORD(v246) = v107;
      }

      if (v107 >= 1)
      {
        v109 = 0;
        v110 = v107 & 0x7FFFFFFF;
        while (1)
        {
          v111 = a1[86];
          v241 = 0;
          {
            break;
          }

          v112 = v241;
          v46 = *(v9 + 3);
          v114 = *(v111 - 56);
          v113 = *(v111 - 48);
          v234 = "value";
          *&v235 = 5;
          v226 = v241;
          if (v241 >= (v113 - v114) >> 3)
          {
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }

            if (v281 == 1)
            {
              if (v280 != &v281)
              {
                free(v280);
              }

              v188 = v278;
              if (v278)
              {
                v189 = v279;
                v190 = v278;
                if (v279 != v278)
                {
                  do
                  {
                    v189 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v189 - 1);
                  }

                  while (v189 != v188);
                  v190 = v278;
                }

                v279 = v188;
                operator delete(v190);
              }

              v191 = v276;
              if (v276)
              {
                v192 = v277;
                v193 = v276;
                if (v277 != v276)
                {
                  do
                  {
                    v195 = *--v192;
                    v194 = v195;
                    *v192 = 0;
                    if (v195)
                    {
                      MEMORY[0x1AC55A040](v194, 0x1000C8077774924);
                    }
                  }

                  while (v192 != v191);
                  v193 = v276;
                }

                v277 = v191;
                operator delete(v193);
              }

              if (v269 != &v270)
              {
                free(v269);
              }
            }

            break;
          }

          v115 = *(v114 + 8 * v241);
          if (v115)
          {
            v245[v109] = v115;
          }

          else
          {
            ForwardRef = mlir::BytecodeReader::Impl::createForwardRef(a1, v46);
            *(v114 + 8 * v112) = ForwardRef;
            v245[v109] = ForwardRef;
            if (!ForwardRef)
            {
              goto LABEL_416;
            }
          }

          if (v110 == ++v109)
          {
            goto LABEL_223;
          }
        }

        v245[v109] = 0;
        goto LABEL_416;
      }
    }

LABEL_223:
    if ((v36 & 8) != 0)
    {
      v232[0] = 0;
      {
        goto LABEL_416;
      }

      v117 = v232[0];
      v118 = v263;
      if (v232[0] != v263)
      {
        if (v232[0] >= v263)
        {
          if (v232[0] > v264)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v262, &v265, v232[0], 8);
            v118 = v263;
          }

          if (v117 != v118)
          {
            bzero((v262 + 8 * v118), 8 * (v117 - v118));
          }
        }

        v263 = v117;
      }

      if (v117 >= 1)
      {
        v119 = 0;
        v120 = v117 & 0x7FFFFFFF;
        do
        {
          v121 = v262;
          v241 = 0;
          {
            goto LABEL_416;
          }

          v46 = *(v9 + 3);
          v122 = a3[5];
          v123 = *(a3 + 12);
          v234 = "successor";
          *&v235 = 9;
          v226 = v241;
          if (v241 < v123)
          {
            *(v121 + 8 * v119) = *(v122 + 8 * v241);
          }

          else
          {
            v124 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }

            if (v281 == 1)
            {
              if (v280 != &v281)
              {
                free(v280);
              }

              v125 = v278;
              if (v278)
              {
                v126 = v279;
                v127 = v278;
                if (v279 != v278)
                {
                  do
                  {
                    v126 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v126 - 1);
                  }

                  while (v126 != v125);
                  v127 = v278;
                }

                v279 = v125;
                operator delete(v127);
              }

              v128 = v276;
              if (v276)
              {
                v129 = v277;
                v130 = v276;
                if (v277 != v276)
                {
                  do
                  {
                    v132 = *--v129;
                    v131 = v132;
                    *v129 = 0;
                    if (v132)
                    {
                      MEMORY[0x1AC55A040](v131, 0x1000C8077774924);
                    }
                  }

                  while (v129 != v128);
                  v130 = v276;
                }

                v277 = v128;
                operator delete(v130);
              }

              if (v269 != &v270)
              {
                free(v269);
              }
            }

            if (!v124)
            {
              goto LABEL_416;
            }
          }
        }

        while (++v119 != v120);
      }
    }

    if (*v223 > 2)
    {
      v136 = (v36 >> 5) & 1;
    }

    else
    {
      v136 = 0;
    }

    if (v136 == 1)
    {
      mlir::BytecodeReader::Impl::parseUseListOrderForRange(__src, v9, v250);
    }

    v225 &= 0xFFFFFFFFFFFFFF00;
    if ((v36 & 0x10) != 0)
    {
      *__src = 0;
      {
        goto LABEL_416;
      }

      v137 = __src[0];
      v138 = *__src >> 1;
      llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(&v266, *__src >> 1);
      v11 = v219;
      if (v138 >= 1)
      {
        operator new();
      }
    }

    else
    {
      v137 = 0;
      v11 = v219;
    }

    v143 = mlir::Operation::create(v244, v46);
    v144 = a3[13];
    if (v144)
    {
      v145 = v144 - 8;
    }

    else
    {
      v145 = 0;
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v145 + 32, v143);
    ZinIrHalH13g::~ZinIrHalH13g(v143);
    v146 = *(v145 + 32);
    *v147 = v146;
    v147[1] = v145 + 32;
    *(v146 + 8) = v147;
    *(v145 + 32) = v147;
    ZinIrHalH13g::~ZinIrHalH13g(v143);
    if (*(a3 + 8))
    {
      v148 = v143[9];
      if (v148)
      {
        mlir::ValueRange::ValueRange(__src, (v143 - 4), v148);
        if (!mlir::BytecodeReader::Impl::defineValues(a1, *(v9 + 3), *__src, *&__src[8]))
        {
          goto LABEL_416;
        }
      }
    }

    mlir::OperationState::~OperationState(v244);
    v150 = v143[11];
    if ((v150 & 0x7FFFFF) != 0)
    {
      break;
    }

    v5 = a2;
    v173 = a3[14];
    a3[14] = v173 - 1;
    if (!v173)
    {
      goto LABEL_355;
    }
  }

  *__src = ((&v143[4 * ((v150 >> 23) & 1) + 17] + ((v150 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v143[10];
  *&__src[8] = *__src + 24 * (v150 & 0x7FFFFF);
  *&__src[16] = v9;
  *&v269 = 0;
  DWORD2(v269) = 0;
  v270 = v272;
  v271 = 0x600000000;
  v274 = 0uLL;
  v275 = v137 & 1;
  if (*v223 < 2 || (v137 & 1) == 0)
  {
    v151 = a2[1];
    if (v151 >= a2[2])
    {
      a2[1] = std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__emplace_back_slow_path<mlir::BytecodeReader::Impl::RegionReadState>(a2, __src);
      if (v137)
      {
LABEL_338:
        v170 = a1[86];
        if (v170 >= a1[87])
        {
          v171 = std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>(a1 + 85);
        }

        else
        {
          *(v170 + 16) = 0u;
          *(v170 + 32) = 0u;
          *(v170 + 48) = 0;
          *v170 = 0u;
          *(v170 + 24) = v170 + 40;
          v171 = (v170 + 56);
          *(v170 + 36) = 4;
        }

        a1[86] = v171;
      }

LABEL_342:
      v157 = 1;
      goto LABEL_343;
    }

    v152 = *__src;
    *(v151 + 16) = *&__src[16];
    *v151 = v152;
    v153 = v269;
    *&v269 = 0;
    *(v151 + 24) = v153;
    *(v151 + 32) = DWORD2(v269);
    v154 = (v151 + 56);
    *(v151 + 40) = v151 + 56;
    *(v151 + 48) = 0x600000000;
    if (v151 == __src || (v155 = v271) == 0)
    {
LABEL_337:
      v169 = v274;
      *(v151 + 120) = v275;
      *(v151 + 104) = v169;
      a2[1] = v151 + 128;
      if (v137)
      {
        goto LABEL_338;
      }

      goto LABEL_342;
    }

    v156 = v270;
    if (v270 != v272)
    {
      *(v151 + 40) = v270;
      *(v151 + 48) = v155;
      *(v151 + 52) = HIDWORD(v271);
      v270 = v272;
      HIDWORD(v271) = 0;
LABEL_336:
      LODWORD(v271) = 0;
      goto LABEL_337;
    }

    if (v271 < 7)
    {
      v168 = v271;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v151 + 40, (v151 + 56), v271, 8);
      v168 = v271;
      if (!v271)
      {
LABEL_335:
        *(v151 + 48) = v155;
        goto LABEL_336;
      }

      v156 = v270;
      v154 = *(v151 + 40);
    }

    memcpy(v154, v156, 8 * v168);
    goto LABEL_335;
  }

  LOBYTE(v241) = 0;
  v226 = 0;
  v227[0] = 0;
  {
    if (v241 == 4)
    {
      operator new();
    }

    v158 = a1[1];
    v234 = "expected IR section for region";
    WORD4(v236) = 259;
    mlir::emitError(v158, &v234, v244);
    v157 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v244);
    if (v244[0])
    {
      mlir::InFlightDiagnostic::report(v244);
    }

    if (v262 == 1)
    {
      if (v260 != &v262)
      {
        free(v260);
      }

      v159 = __p;
      if (__p)
      {
        v160 = v259;
        v161 = __p;
        if (v259 != __p)
        {
          do
          {
            v160 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v160 - 1);
          }

          while (v160 != v159);
          v161 = __p;
        }

        v259 = v159;
        operator delete(v161);
      }

      v162 = v256;
      if (v256)
      {
        v163 = v257;
        v164 = v256;
        if (v257 != v256)
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
          v164 = v256;
        }

        v257 = v162;
        operator delete(v164);
      }

      if (v246 != v248)
      {
        free(v246);
      }
    }
  }

  else
  {
    v157 = 0;
  }

LABEL_343:
  if (v270 != v272)
  {
    free(v270);
  }

  v172 = v269;
  *&v269 = 0;
  if (v172)
  {
    MEMORY[0x1AC55A070](v172, 0x1070C401CF53446);
  }

  return v157;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[54]>(uint64_t a1, uint64_t a2, const char *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, v21);
  if (v21[0])
  {
    v18 = 3;
    v19 = a3;
    v20 = strlen(a3);
    v5 = &v18;
    v6 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v17 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v6 = v22;
        v5 = (v22 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v5 = &v18;
        v6 = v22;
      }
    }

    v7 = &v6[24 * v23];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v23;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
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
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::splice(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a4 != a5 && a2 != a5)
  {
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(result, a3, a4, a5);
    v8 = *a5;
    v9 = *a4;
    *(v9 + 8) = a5;
    *a5 = v9;
    v10 = *a2;
    *(v8 + 8) = a2;
    *a4 = v10;
    *(v10 + 8) = a4;
    *a2 = v8;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseRegion(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7 = 0;
  {
    return 0;
  }

  v4 = v7;
  if (v7)
  {
    v6 = 0;
    {
      *(a2 + 32) = v6;
      *(a2 + 48) = 0;
      if (v4 > *(a2 + 52))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 40, (a2 + 56), v4, 8);
      }

      operator new();
    }

    return 0;
  }

  return 1;
}

uint64_t mlir::BytecodeReader::Impl::createForwardRef(mlir::BytecodeReader::Impl *this, const mlir::OperationState *a2)
{
  v3 = (this + 832);
  v4 = *(this + 104);
  v5 = (this + 760);
  if (v4 == v3)
  {
    v7 = mlir::Operation::create((this + 872), a2);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(this + 760, v7);
    ZinIrHalH13g::~ZinIrHalH13g(v7);
    v8 = *(this + 95);
    *v9 = v8;
    v9[1] = v5;
    *(v8 + 8) = v9;
    *(this + 95) = v9;
    ZinIrHalH13g::~ZinIrHalH13g(v7);
  }

  else
  {
    ZinIrHalH13g::~ZinIrHalH13g(v4);
    mlir::Operation::moveBefore(v6, (this + 728), this + 95);
  }

  ZinIrHalH13g::~ZinIrHalH13g(*v5);
  return v10 - 16;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  result = readBytecodeFileImpl(v9, a2, a3, &v7);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

BOOL readBytecodeFileImpl(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = mlir::FileLineColLoc::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v18 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v18;
    mlir::BytecodeReader::Impl::Impl(v23, v8, a3, 0, v21, a4);
    mlir::BytecodeReader::Impl::read(v23, a2, 0, v19);
    mlir::BytecodeReader::Impl::~Impl(v23);
  }

  *&v21[0] = "input buffer is not an MLIR bytecode file";
  v22 = 259;
  mlir::emitError(v8, v21, v23);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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

    v10 = __p;
    if (__p)
    {
      v11 = v29;
      v12 = __p;
      if (v29 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v29 = v10;
      operator delete(v12);
    }

    v13 = v26;
    if (v26)
    {
      v14 = v27;
      v15 = v26;
      if (v27 != v26)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v26;
      }

      v27 = v13;
      operator delete(v15);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v9;
}

uint64_t mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 5;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(v13, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, char *__s, char **a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<unsigned long,char const(&)[8]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<unsigned long,char const(&)[8]>(uint64_t a1, char **a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 5;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

BOOL anonymous namespace::EncodingReader::parseByte<unsigned char>(void *a1, _BYTE *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v13[0])
    {
      mlir::InFlightDiagnostic::report(v13);
    }

    if (v21 == 1)
    {
      if (v20 != &v21)
      {
        free(v20);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v19;
        v6 = __p;
        if (v19 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v19 = v4;
        operator delete(v6);
      }

      v7 = v16;
      if (v16)
      {
        v8 = v17;
        v9 = v16;
        if (v17 != v16)
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
          v9 = v16;
        }

        v17 = v7;
        operator delete(v9);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

BOOL anonymous namespace::EncodingReader::alignTo(_anonymous_namespace_::EncodingReader *this, int a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = (a2 - 1);
  if ((a2 ^ v3) > v3)
  {
    do
    {
      if ((v3 & *(this + 2)) == 0)
      {
        return 1;
      }

      v56 = 0;
      {
        return 0;
      }

      v4 = v56;
    }

    while (v56 == 203);
    if (v56)
    {
      v5 = 16;
      do
      {
        v68[v5-- - 8] = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
      v7 = v5 + 1;
      v8 = 16 - v5;
      if ((16 - v5) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }
    }

    else
    {
      v68[8] = 48;
      v7 = 16;
      v8 = 1;
    }

    if (v8 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v7 != 17)
    {
      memcpy(&__dst, &v68[v7 - 8], v8);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    v30 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
    v31 = v30->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v53, "'");
    v33 = v32->__r_.__value_.__r.__words[2];
    *v54 = *&v32->__r_.__value_.__l.__data_;
    v55 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    mlir::emitError(*(this + 3), &v67);
    if (v67)
    {
      v59 = 260;
      v57[0] = v54;
      mlir::Diagnostic::operator<<(v68, v57);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v57, &v67);
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

      v34 = __p;
      if (__p)
      {
        v35 = v76;
        v36 = __p;
        if (v76 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v76 = v34;
        operator delete(v36);
      }

      v37 = v73;
      if (v73)
      {
        v38 = v74;
        v39 = v73;
        if (v74 != v73)
        {
          do
          {
            v41 = *--v38;
            v40 = v41;
            *v38 = 0;
            if (v41)
            {
              MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
            }
          }

          while (v38 != v37);
          v39 = v73;
        }

        v74 = v37;
        operator delete(v39);
      }

      if (v69 != v72)
      {
        free(v69);
      }
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v42 = v63;
      if (v63)
      {
        v43 = v64;
        v44 = v63;
        if (v64 != v63)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = v63;
        }

        v64 = v42;
        operator delete(v44);
      }

      v45 = v61;
      if (v61)
      {
        v46 = v62;
        v47 = v61;
        if (v62 != v61)
        {
          do
          {
            v49 = *--v46;
            v48 = v49;
            *v46 = 0;
            if (v49)
            {
              MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
            }
          }

          while (v46 != v45);
          v47 = v61;
        }

        v62 = v45;
        operator delete(v47);
      }

      if (v58 != v60)
      {
        free(v58);
      }
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54[0]);
      if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_105:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v21;
        }

LABEL_109:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return v21;
      }
    }

    else if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    operator delete(v53.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v21;
    }

    goto LABEL_109;
  }

  mlir::emitError(*(this + 3), &v67);
  if (v67)
  {
    LODWORD(v57[0]) = 3;
    v57[1] = "expected alignment to be a power-of-two";
    v57[2] = 39;
    v9 = v57;
    v10 = v69;
    if (v70 >= v71)
    {
      if (v69 <= v57 && v69 + 24 * v70 > v57)
      {
        v51 = v57 - v69;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v10 = v69;
        v9 = (v69 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v9 = v57;
        v10 = v69;
      }
    }

    v11 = &v10[24 * v70];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v70;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(v57, &v67);
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

    v13 = __p;
    if (__p)
    {
      v14 = v76;
      v15 = __p;
      if (v76 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v76 = v13;
      operator delete(v15);
    }

    v16 = v73;
    if (v73)
    {
      v17 = v74;
      v18 = v73;
      if (v74 != v73)
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
        v18 = v73;
      }

      v74 = v16;
      operator delete(v18);
    }

    if (v69 != v72)
    {
      free(v69);
    }
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
  if (v57[0])
  {
    mlir::InFlightDiagnostic::report(v57);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v22 = v63;
    if (v63)
    {
      v23 = v64;
      v24 = v63;
      if (v64 != v63)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v63;
      }

      v64 = v22;
      operator delete(v24);
    }

    v25 = v61;
    if (v61)
    {
      v26 = v62;
      v27 = v61;
      if (v62 != v61)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v61;
      }

      v62 = v25;
      operator delete(v27);
    }

    if (v58 != v60)
    {
      free(v58);
    }
  }

  return v21;
}

BOOL anonymous namespace::EncodingReader::parseBytes(void *a1, char *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = a1[2];
  if (*a1 + a1[1] - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    a1[2] += a2;
    return 1;
  }

  else
  {
    v14 = (*a1 + a1[1] - v3);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
            }
          }

          while (v9 != v8);
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

__n128 mlir::Diagnostic::append<char const(&)[21],unsigned int>(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[21],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, uint64_t a2, char **a3, char **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v15);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v16, "attempting to parse ", a3, " bytes when only ", a4, " remain");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
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
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

BOOL _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v24 = 0;
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v24;
  *(v8 + 16) = v24 & 1;
  v10 = v9 >> 1;
  v24 = v10;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *v11 + v10;
  if (v13 <= v12[1])
  {
    *(v8 + 24) = *v12 + *v11;
    *(v8 + 32) = v10;
    *(v8 + 8) = a2;
    *v11 = v13;
    return 1;
  }

  else
  {
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v15 = __p;
      if (__p)
      {
        v16 = v31;
        v17 = __p;
        if (v31 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v31 = v15;
        operator delete(v17);
      }

      v18 = v28;
      if (v28)
      {
        v19 = v29;
        v20 = v28;
        if (v29 != v28)
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
          v20 = v28;
        }

        v29 = v18;
        operator delete(v20);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v14;
}

double mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(uint64_t a1, char *__s, char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

BOOL anonymous namespace::EncodingReader::parseBytes(_anonymous_namespace_::EncodingReader *this, size_t __n, unsigned __int8 *__dst)
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = __n;
  v5 = *(this + 2);
  if (*this + *(this + 1) - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    *(this + 2) += __n;
    return 1;
  }

  else
  {
    v16 = (*this + *(this + 1) - v5);
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

uint64_t anonymous namespace::EncodingReader::parseMultiByteVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = __clz(__rbit32(*a2));
  v5[0] = *a2;
  {
    return 0;
  }

  *a2 = v5[0] >> (v3 + 1);
  return 1;
}

BOOL resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, _OWORD *a5, const char *a6, const char *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v18[0] = a6;
  v18[1] = a7;
  v17 = a4;
  if (a3 <= a4)
  {
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }

    if (v27 == 1)
    {
      if (v26 != &v27)
      {
        free(v26);
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
              MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
            }
          }

          while (v12 != v11);
          v13 = v22;
        }

        v23 = v11;
        operator delete(v13);
      }

      if (v20 != &v21)
      {
        free(v20);
      }
    }
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    return 1;
  }

  return v7;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, uint64_t a2, const char **a3, char **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v15);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(&v16, "invalid ", a3, " index: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
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
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

double mlir::Diagnostic::append<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, char *__s, const char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = a3[1];
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(a1, a4, a5).n128_u64[0];
  return result;
}

BOOL parseEntry<llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,std::unique_ptr<anonymous namespace::BytecodeDialect>*>(_anonymous_namespace_::EncodingReader *a1, uint64_t *a2, void *a3, const char *a4, const char *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  {
    return 0;
  }

  v10 = *(a1 + 3);
  v11 = *a2;
  v12 = a2[1];
  v25[0] = a4;
  v25[1] = a5;
  v24 = v23;
  if (v12 <= v23)
  {
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

  else
  {
    *a3 = v11 + 8 * v23;
    return 1;
  }

  return v13;
}

void anonymous namespace::DialectReader::emitError(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(*(*(a1 + 40) + 24), &v13);
  if (v13)
  {
    mlir::Diagnostic::operator<<(&v14, a2);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

uint64_t anonymous namespace::DialectReader::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(v7, a2, a3, v8);
  if (Key == -1)
  {
    v10 = *(v7 + 8);
  }

  else
  {
    v10 = Key;
  }

  v11 = *v7 + 8 * v10;
  if (v11 == **(a1 + 32) + 8 * *(*(a1 + 32) + 8))
  {
    return 0;
  }

  v12 = *(*v11 + 8);
  v15 = *(*(a1 + 40) + 24);
  Context = mlir::Attribute::getContext(&v15);
  {
    return 0;
  }

  else
  {
    return *(*(*v11 + 8) + 56);
  }
}

BOOL anonymous namespace::DialectReader::readAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v7 = 0;
  {
    return 0;
  }

  *a2 = v5;
  return v5 != 0;
}

BOOL anonymous namespace::DialectReader::readOptionalAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v7 = 0;
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  *a2 = v5;
  return v5 != 0;
}

BOOL anonymous namespace::DialectReader::readType(_anonymous_namespace_::DialectReader *this, mlir::Type *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v7 = 0;
  {
    return 0;
  }

  *a2 = v5;
  return v5 != 0;
}

uint64_t anonymous namespace::DialectReader::readSignedVarInt(_anonymous_namespace_::EncodingReader **this, unint64_t *a2)
{
  v4 = 0;
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void anonymous namespace::DialectReader::readAPIntWithKnownWidth(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v18[4] = *MEMORY[0x1E69E9840];
  if (a2 <= 8)
  {
    LOBYTE(v16) = 0;
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
      if (!v3)
      {
        LOBYTE(v6) = 0;
      }

      v7 = v6 & v16;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (a2 <= 0x40)
  {
    v16 = 0;
    {
      v7 = (-(v16 & 1) ^ (v16 >> 1)) & (0xFFFFFFFFFFFFFFFFLL >> -v3);
LABEL_9:
      *(a3 + 8) = v3;
      *a3 = v7;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_14;
  }

  v15 = 0;
  {
LABEL_14:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v8 = v15;
  v16 = v18;
  v17 = 0x400000000;
  if (v15)
  {
    if (v15 < 5)
    {
      v9 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v15, 8);
      v9 = v17;
    }

    if (v8 != v9)
    {
      bzero(v16 + 8 * v9, 8 * (v8 - v9));
    }

    v10 = 0;
    LODWORD(v17) = v8;
    while (1)
    {
      v11 = v16;
      {
        break;
      }

      *&v11[v10] = -(*&v11[v10] & 1) ^ (*&v11[v10] >> 1);
      v10 += 8;
      if (!--v8)
      {
        goto LABEL_23;
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    v12 = v16;
    if (v16 != v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_23:
    llvm::APInt::APInt(&v13, v3);
    *(a3 + 8) = v14;
    *a3 = v13;
    *(a3 + 16) = 1;
    v12 = v16;
    if (v16 != v18)
    {
LABEL_26:
      free(v12);
    }
  }
}

void anonymous namespace::DialectReader::readAPFloatWithKnownSemantics(ZinMirL2Config::Tile *this@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  OverlapPadBottom = ZinMirL2Config::Tile::GetOverlapPadBottom(this);
  v7 = (*(*a2 + 88))(&v11, a2, OverlapPadBottom);
  if ((v13 & 1) == 0)
  {
    *a3 = 0;
    a3[32] = 0;
    return;
  }

  v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v9 == this)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v14, this, &v11);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v14, this, &v11, v8);
  v10 = (a3 + 8);
  if (v9 == v14.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, &v14);
    a3[32] = 1;
    if (v9 != v14.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_9:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v14);
    goto LABEL_10;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v10, &v14);
  a3[32] = 1;
  if (v9 == v14.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v14);
LABEL_10:
  if ((v13 & 1) != 0 && v12 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
    }
  }
}

BOOL anonymous namespace::DialectReader::readString(_anonymous_namespace_::DialectReader *this, llvm::StringRef *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 5);
  v10 = 0;
  {
    return 0;
  }

  v5 = v10;
  v6 = *(v4 + 3);
  v7 = *v3;
  v8 = *(v3 + 8);

  return resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v6, v7, v8, v5, a2, "string", 6);
}

uint64_t anonymous namespace::DialectReader::readBlob(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void anonymous namespace::DialectReader::readResourceHandle(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v4 = *(this + 5);
  v21 = 0;
  {
    goto LABEL_27;
  }

  v5 = *(v4 + 3);
  v6 = *v3;
  v7 = *(v3 + 2);
  v23[0] = "resource handle";
  v23[1] = 15;
  v22 = v21;
  if (v21 >= v7)
  {
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v30;
        v14 = __p;
        if (v30 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v30 = v12;
        operator delete(v14);
      }

      v15 = v27;
      if (v27)
      {
        v16 = v28;
        v17 = v27;
        if (v28 != v27)
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
          v17 = v27;
        }

        v28 = v15;
        operator delete(v17);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }

    if (v11)
    {
      v9 = 0;
      *&v10 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_26;
    }

LABEL_27:
    v20 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  v8 = (v6 + 24 * v21);
  v9 = *v8;
  v10 = *(v8 + 1);
LABEL_26:
  *a2 = v9;
  *(a2 + 8) = v10;
  v20 = 1;
LABEL_28:
  *(a2 + 24) = v20;
}

uint64_t anonymous namespace::BytecodeDialect::load(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    return 1;
  }

  Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32));
  if (Dialect)
  {
    *a1 = Dialect;
    *(a1 + 8) = 1;
    v7 = Dialect;
    v8 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(Dialect);
    if (v8)
    {
      v8 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v7);
    }

    *(a1 + 16) = v8;
    v9 = *(a1 + 48);
    if (!v9)
    {
      return 1;
    }

LABEL_9:
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a2 + 48);
      v12 = *(*(a2 + 40) + 24);
      v47 = *(a1 + 40);
      v48 = v9;
      v49 = v47;
      v50 = v12;
      v52 = &unk_1F19F9CC8;
      v13 = *(a2 + 24);
      v53 = *(a2 + 8);
      *v54 = v13;
      v55[0] = &v47;
      v55[1] = v11;
      (*(*v10 + 56))(v45);
      v14 = v45[0];
      v45[0] = 0;
      v15 = *(a1 + 56);
      *(a1 + 56) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v45[0];
        v45[0] = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v14 = *(a1 + 56);
      }

      return v14 != 0;
    }

    v45[0] = "dialect '";
    v46 = 259;
    (*(*a2 + 16))(&v52, a2, v45);
    if (v52)
    {
      v51 = 261;
      v18 = *(a1 + 32);
      v47 = *(a1 + 24);
      v48 = v18;
      mlir::Diagnostic::operator<<(&v53, &v47);
      if (v52)
      {
        LODWORD(v47) = 3;
        v48 = "' does not implement the bytecode interface, but found a version entry";
        v49 = 70;
        v19 = &v47;
        v20 = v54[0];
        if (LODWORD(v54[1]) >= HIDWORD(v54[1]))
        {
          if (v54[0] <= &v47 && v54[0] + 24 * LODWORD(v54[1]) > &v47)
          {
            v43 = &v47 - v54[0];
            llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
            v20 = v54[0];
            v19 = (v54[0] + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
            v19 = &v47;
            v20 = v54[0];
          }
        }

        v21 = &v20[24 * LODWORD(v54[1])];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++LODWORD(v54[1]);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
    v23 = result;
    if (v52)
    {
      mlir::InFlightDiagnostic::report(&v52);
      result = v23;
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
        result = v23;
      }

      v24 = __p;
      if (__p)
      {
        v25 = v59;
        v26 = __p;
        if (v59 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v59 = v24;
        operator delete(v26);
        result = v23;
      }

      v27 = v56;
      if (!v56)
      {
        goto LABEL_60;
      }

      v28 = v57;
      v29 = v56;
      if (v57 == v56)
      {
LABEL_59:
        v57 = v27;
        operator delete(v29);
        result = v23;
LABEL_60:
        if (v54[0] != v55)
        {
          free(v54[0]);
          return v23;
        }

        return result;
      }

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
LABEL_58:
      v29 = v56;
      goto LABEL_59;
    }

    return result;
  }

  if (mlir::MLIRContext::allowsUnregisteredDialects(a3))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v9 = *(a1 + 48);
    if (v9)
    {
      goto LABEL_9;
    }

    return 1;
  }

  v45[0] = "dialect '";
  v46 = 259;
  (*(*a2 + 16))(&v52, a2, v45);
  if (v52)
  {
    v51 = 261;
    v32 = *(a1 + 32);
    v47 = *(a1 + 24);
    v48 = v32;
    mlir::Diagnostic::operator<<(&v53, &v47);
    if (v52)
    {
      LODWORD(v47) = 3;
      v48 = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
      v49 = 154;
      v33 = &v47;
      v34 = v54[0];
      if (LODWORD(v54[1]) >= HIDWORD(v54[1]))
      {
        if (v54[0] <= &v47 && v54[0] + 24 * LODWORD(v54[1]) > &v47)
        {
          v44 = &v47 - v54[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
          v34 = v54[0];
          v33 = (v54[0] + v44);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
          v33 = &v47;
          v34 = v54[0];
        }
      }

      v35 = &v34[24 * LODWORD(v54[1])];
      v36 = *v33;
      *(v35 + 2) = v33[2];
      *v35 = v36;
      ++LODWORD(v54[1]);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
  v23 = result;
  if (v52)
  {
    mlir::InFlightDiagnostic::report(&v52);
    result = v23;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v23;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v59;
      v39 = __p;
      if (v59 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v59 = v37;
      operator delete(v39);
      result = v23;
    }

    v27 = v56;
    if (!v56)
    {
      goto LABEL_60;
    }

    v40 = v57;
    v29 = v56;
    if (v57 == v56)
    {
      goto LABEL_59;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
      }
    }

    while (v40 != v27);
    goto LABEL_58;
  }

  return result;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::BytecodeDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeDialectInterface]";
  v6 = 80;
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

uint64_t anonymous namespace::AttrTypeReader::resolveAttribute(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(this + 8) <= a2)
  {
    mlir::emitError(*(this + 17), &v75);
    if (v75)
    {
      LODWORD(v68) = 3;
      v69 = "invalid ";
      *&v70 = 8;
      v19 = &v68;
      v20 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v68 && v77 + 24 * v78 > &v68)
        {
          v57 = &v68 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v20 = v77;
          v19 = (v77 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v19 = &v68;
          v20 = v77;
        }
      }

      v21 = &v20[24 * v78];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v78;
      if (v75)
      {
        LOWORD(v71) = 261;
        v68 = "Attribute";
        v69 = 9;
        mlir::Diagnostic::operator<<(&v76, &v68);
        if (v75)
        {
          LODWORD(v68) = 3;
          v69 = " index: ";
          *&v70 = 8;
          v23 = &v68;
          v24 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v68 && v77 + 24 * v78 > &v68)
            {
              v58 = &v68 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v24 = v77;
              v23 = (v77 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v23 = &v68;
              v24 = v77;
            }
          }

          v25 = &v24[24 * v78];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v78;
          if (v75)
          {
            LODWORD(v68) = 5;
            v69 = a2;
            v28 = &v68;
            v29 = v77;
            if (v27 >= v79)
            {
              if (v77 <= &v68 && v77 + 24 * v27 > &v68)
              {
                v59 = &v68 - v77;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v27 + 1, 24);
                v29 = v77;
                v28 = (v77 + v59);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v27 + 1, 24);
                v28 = &v68;
                v29 = v77;
              }
            }

            v30 = &v29[24 * v78];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v78;
            if (v75)
            {
              mlir::InFlightDiagnostic::report(&v75);
            }
          }
        }
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

    v32 = __p;
    if (__p)
    {
      v33 = v84;
      v34 = __p;
      if (v84 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v84 = v32;
      operator delete(v34);
    }

    v35 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v36 = v82;
    v37 = v81;
    if (v82 == v81)
    {
      goto LABEL_77;
    }

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
    goto LABEL_76;
  }

  v3 = *(this + 3) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v65 = *(v3 + 24);
    v66 = v65;
    v67 = v5;
    if (*(v3 + 16) != 1)
    {
      v68 = "Attribute";
      v69 = 9;
      v60 = 0;
      v61 = 0;
      {
        v74 = 0;
        Context = mlir::Attribute::getContext(v6);
        mlir::parseAttribute(v60, v61, Context, 0, &v74, 1);
      }

      return 0;
    }

    v7 = *(this + 2);
    v8 = *(this + 18);
    v68 = &unk_1F19F9CC8;
    v69 = this;
    v70 = *this;
    v71 = v7;
    v72 = &v65;
    v73 = v8;
    v10 = *(v3 + 8);
    v11 = mlir::Attribute::getContext((this + 136));
    {
      return 0;
    }

    v12 = *(this + 19);
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = *(v12 + 48);
      v15 = 8 * v13;
      while (((*(**v14 + 16))(*v14, &v68, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
      {
        if (*v3)
        {
          goto LABEL_59;
        }

        v65 = *(v3 + 24);
        v66 = v65;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v16 = *(v3 + 8);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(*v17 + 16))(v17, &v68);
      *v3 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v84;
          v44 = __p;
          if (v84 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v84 = v42;
          operator delete(v44);
        }

        v45 = v81;
        if (v81)
        {
          v46 = v82;
          v47 = v81;
          if (v82 != v81)
          {
            do
            {
              v49 = *--v46;
              v48 = v49;
              *v46 = 0;
              if (v49)
              {
                MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
              }
            }

            while (v46 != v45);
            v47 = v81;
          }

          v82 = v45;
          operator delete(v47);
        }

        if (v77 != v80)
        {
          free(v77);
        }
      }

      if (!v41)
      {
        return 0;
      }
    }

LABEL_59:
    if (v66 == v65 + *(&v65 + 1))
    {
      return *v3;
    }

    v64 = 1283;
    v60 = "unexpected trailing bytes after ";
    v62 = "Attribute";
    v63 = 9;
    v68 = &v60;
    *&v70 = " entry";
    LOWORD(v71) = 770;
    if (v75)
    {
      mlir::InFlightDiagnostic::report(&v75);
    }

    if (v86 != 1)
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

    v35 = v81;
    if (!v81)
    {
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

    v53 = v82;
    v37 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v35;
      operator delete(v37);
      goto LABEL_78;
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

    while (v53 != v35);
LABEL_76:
    v37 = v81;
    goto LABEL_77;
  }

  return v4;
}