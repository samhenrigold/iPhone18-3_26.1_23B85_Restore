uint64_t mlir::detail::Parser::parseDenseArrayAttr(mlir::detail::Parser *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(v38, (*(a1 + 1) + 8));
  v3 = *(a1 + 1);
  *(v3 + 56) = *v38;
  *(v3 + 72) = *&v38[16];
  *v38 = "expected '<' after 'array'";
  WORD4(v39) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 23, v38))
  {
    return 0;
  }

  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v34 = mlir::detail::Parser::parseType(a1);
  if (!v34)
  {
    *v38 = "expected an integer or floating point type";
    WORD4(v39) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v38, v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 != 1)
    {
      return 0;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v5 = v52;
    if (v52)
    {
      v6 = v53;
      v7 = v52;
      if (v53 != v52)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = v52;
      }

      v53 = v5;
      operator delete(v7);
    }

    v8 = v50;
    if (v50)
    {
      v9 = v51;
      v10 = v50;
      if (v51 != v50)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            operator delete[](v11);
          }
        }

        while (v9 != v8);
        v10 = v50;
      }

      v51 = v8;
      operator delete(v10);
    }

    v29 = v48;
    if (v48 == &v49)
    {
      return 0;
    }

LABEL_52:
    free(v29);
    return 0;
  }

  if (!mlir::Type::isIntOrIndexOrFloat(&v34))
  {
    v32[0] = "expected integer or float type, got: ";
    v33 = 259;
    mlir::detail::Parser::emitError(a1, Loc, v32, v38);
    if (*v38)
    {
      v13 = v35;
      mlir::DiagnosticArgument::DiagnosticArgument(v35, v34);
      v14 = v39;
      if (DWORD2(v39) >= HIDWORD(v39))
      {
        if (v39 <= v35 && v39 + 24 * DWORD2(v39) > v35)
        {
          v31 = &v35[-v39];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v40, DWORD2(v39) + 1, 24);
          v14 = v39;
          v13 = &v31[v39];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v40, DWORD2(v39) + 1, 24);
          v13 = v35;
          v14 = v39;
        }
      }

      v15 = v14 + 24 * DWORD2(v39);
      v16 = *v13;
      *(v15 + 16) = *(v13 + 2);
      *v15 = v16;
      ++DWORD2(v39);
      if (*v38)
      {
        mlir::InFlightDiagnostic::report(v38);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v44;
      v19 = __p;
      if (v44 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v44 = v17;
      operator delete(v19);
    }

    v20 = v41;
    if (v41)
    {
      v21 = v42;
      v22 = v41;
      if (v42 != v41)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
        v22 = v41;
      }

      v42 = v20;
      operator delete(v22);
    }

    v29 = v39;
    if (v39 == v40)
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (!mlir::Type::isInteger(&v34, 1) && (mlir::Type::getIntOrFloatBitWidth(&v34) & 7) != 0)
  {
    *v38 = "element type bitwidth must be a multiple of 8";
    WORD4(v39) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v38, &v36);
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
    }

    if (v37[192] == 1)
    {
      mlir::Diagnostic::~Diagnostic(v37);
    }

    return 0;
  }

  v25 = *(a1 + 1);
  if (*(v25 + 56) == 19)
  {
    *(v25 + 80) = *(v25 + 56);
    *(v25 + 96) = *(v25 + 72);
    mlir::Lexer::lexToken(v38, (*(a1 + 1) + 8));
    v26 = *(a1 + 1);
    *(v26 + 56) = *v38;
    *(v26 + 72) = *&v38[16];
    return mlir::DenseArrayAttr::get(v34, 0, 0, 0);
  }

  *v38 = "expected ':' after dense array type";
  WORD4(v39) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, v38))
  {
    return 0;
  }

  *v38 = v34;
  *&v38[8] = 0u;
  v39 = 0u;
  v32[0] = v38;
  v32[1] = a1;
  if (mlir::Type::isIntOrIndex(&v34))
  {
    v28 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>;
  }

  else
  {
    v28 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>;
  }

  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 0, v28, v32, 0, 0) && (v32[0] = "expected '>' to close an array attribute", v33 = 259, mlir::detail::Parser::parseToken(a1, 19, v32)))
  {
    result = mlir::DenseArrayAttr::get(*v38, DWORD2(v39), *&v38[8], *&v38[16] - *&v38[8]);
  }

  else
  {
    result = 0;
  }

  if (*&v38[8])
  {
    *&v38[16] = *&v38[8];
    v30 = result;
    operator delete(*&v38[8]);
    return v30;
  }

  return result;
}

BOOL mlir::detail::Parser::parseAttributeDict(mlir::detail::Parser *this, mlir::NamedAttrList *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 1;
  v5 = -4096;
  v6 = -4096;
  v7 = -4096;
  v8 = -4096;
  v3[0] = this;
  v3[1] = &v4;
  v3[2] = a2;
  result = mlir::detail::Parser::parseCommaSeparatedList(this, 4, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>, v3, " in attribute dictionary", 24);
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(v5, (8 * v6));
  }

  return result;
}

uint64_t *mlir::detail::Parser::parseFloatAttr(mlir::detail::Parser *a1, void *F64Type, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v5 = F64Type;
  v72 = *MEMORY[0x1E69E9840];
  FloatingPointValue = mlir::Token::getFloatingPointValue((*(a1 + 1) + 56), F64Type, a3, a4);
  if ((v8 & 1) == 0)
  {
    *&v51 = "floating point value too large for attribute";
    v53 = 259;
    mlir::detail::Parser::emitError(a1, &v51, v63);
    if (v63[0])
    {
      mlir::InFlightDiagnostic::report(v63);
    }

    if (v71 != 1)
    {
      return 0;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v69;
      v18 = __p;
      if (v69 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v69 = v16;
      operator delete(v18);
    }

    v19 = v66;
    if (v66)
    {
      v20 = v67;
      v21 = v66;
      if (v67 != v66)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v66;
      }

      v67 = v19;
      operator delete(v21);
    }

    v24 = v64;
    if (v64 == &v65)
    {
      return 0;
    }

LABEL_25:
    free(v24);
    return 0;
  }

  v9 = *&FloatingPointValue;
  v10 = *(a1 + 1);
  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
  v12 = *(a1 + 1);
  *(v12 + 56) = v51;
  *(v12 + 72) = v52;
  if (!v5)
  {
    v13 = *(a1 + 1);
    if (*(v13 + 56) == 15)
    {
      *(v13 + 80) = *(v13 + 56);
      *(v13 + 96) = *(v13 + 72);
      mlir::Lexer::lexToken(&v51, (*(a1 + 1) + 8));
      v14 = *(a1 + 1);
      *(v14 + 56) = v51;
      *(v14 + 72) = v52;
      result = mlir::detail::Parser::parseType(a1);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v5 = mlir::Builder::getF64Type(a1, v11);
    }
  }

  v25 = *(*v5 + 136);
  if (v25 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    *&v51 = "floating point value not valid for specified type";
    v53 = 259;
    mlir::detail::Parser::emitError(a1, &v51, v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 != 1)
    {
      return 0;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v43 = v59;
    if (v59)
    {
      v44 = v60;
      v45 = v59;
      if (v60 != v59)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = v59;
      }

      v60 = v43;
      operator delete(v45);
    }

    v46 = v57;
    if (v57)
    {
      v47 = v58;
      v48 = v57;
      if (v58 != v57)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v57;
      }

      v58 = v46;
      operator delete(v48);
    }

    v24 = v55;
    if (v55 == &v56)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v42 = v9;
  if (v4)
  {
    v42 = -v9;
  }

  return mlir::FloatAttr::get(v5, v42);
}

llvm::APFloatBase *mlir::detail::Parser::parseDecOrHexAttr(mlir::Builder *a1, llvm::APFloatBase *a2, uint64_t a3)
{
  v3 = a3;
  IntegerType = a2;
  v81 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1);
  v48 = *(v6 + 56);
  v7 = *(v6 + 72);
  v49 = v7;
  v50 = a2;
  v8 = *(&v48 + 1);
  Loc = mlir::Token::getLoc(&v48);
  v10 = *(a1 + 1);
  *(v10 + 96) = *(v10 + 72);
  *(v10 + 80) = *(v10 + 56);
  mlir::Lexer::lexToken(&v78, (*(a1 + 1) + 8));
  v11 = *(a1 + 1);
  *(v11 + 56) = v78;
  *(v11 + 72) = v79;
  if (!IntegerType)
  {
    v19 = *(a1 + 1);
    if (*(v19 + 56) != 15)
    {
      IntegerType = mlir::Builder::getIntegerType(a1, 64);
      v50 = IntegerType;
      v12 = *(*IntegerType + 136);
      if (v12 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
      {
        goto LABEL_3;
      }

LABEL_38:
      v45 = IntegerType;
      LOBYTE(v78) = 0;
      LOBYTE(v80) = 0;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v45);
      Width = mlir::FloatType::getWidth(&v45);
      if (mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, &v78, &v48, v3, FloatSemantics, Width))
      {
        result = mlir::FloatAttr::get(v45, &v78);
        if (v80 != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v80 != 1)
        {
          return result;
        }
      }

      v24 = result;
      v25 = *(&v78 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(result) == v25)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v78 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v78 + 8));
      }

      return v24;
    }

    *(v19 + 80) = *(v19 + 56);
    *(v19 + 96) = *(v19 + 72);
    mlir::Lexer::lexToken(&v78, (*(a1 + 1) + 8));
    v20 = *(a1 + 1);
    *(v20 + 56) = v78;
    *(v20 + 72) = v79;
    result = mlir::detail::Parser::parseType(a1);
    IntegerType = result;
    v50 = result;
    if (!result)
    {
      return result;
    }
  }

  v12 = *(*IntegerType + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    goto LABEL_38;
  }

LABEL_3:
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    goto LABEL_38;
  }

  if (v12 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    *&v78 = "integer literal not valid for specified type";
    v80 = 259;
    mlir::detail::Parser::emitError(a1, Loc, &v78, v69);
    if (v69[0])
    {
      mlir::InFlightDiagnostic::report(v69);
    }

    if (v77 != 1)
    {
      return 0;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v75;
      v15 = __p;
      if (v75 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v75 = v13;
      operator delete(v15);
    }

    v16 = v72;
    if (v72)
    {
      v17 = v73;
      v18 = v72;
      if (v73 != v72)
      {
        do
        {
          v27 = *--v17;
          v26 = v27;
          *v17 = 0;
          if (v27)
          {
            operator delete[](v26);
          }
        }

        while (v17 != v16);
        v18 = v72;
      }

      v73 = v16;
      operator delete(v18);
    }

    v44 = v70;
    if (v70 == &v71)
    {
      return 0;
    }

    goto LABEL_90;
  }

  if (v3)
  {
    if (mlir::Type::isUnsignedInteger(&v50))
    {
      *&v78 = "negative integer literal not valid for unsigned integer type";
      v80 = 259;
      mlir::detail::Parser::emitError(a1, Loc, &v78, v60);
      if (v60[0])
      {
        mlir::InFlightDiagnostic::report(v60);
      }

      if (v68 != 1)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v28 = v65;
      if (v65)
      {
        v29 = v66;
        v30 = v65;
        if (v66 != v65)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v65;
        }

        v66 = v28;
        operator delete(v30);
      }

      v31 = v63;
      if (v63)
      {
        v32 = v64;
        v33 = v63;
        if (v64 != v63)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              operator delete[](v34);
            }
          }

          while (v32 != v31);
          v33 = v63;
        }

        v64 = v31;
        operator delete(v33);
      }

      v44 = v61;
      if (v61 == &v62)
      {
        return 0;
      }

LABEL_90:
      free(v44);
      return 0;
    }

    IntegerType = v50;
  }

  buildAttributeAPInt(&v45, IntegerType, v3, v8, v7);
  if (v47)
  {
    result = mlir::Builder::getIntegerAttr(a1, v50, &v45);
  }

  else
  {
    *&v78 = "integer constant out of range for attribute";
    v80 = 259;
    mlir::detail::Parser::emitError(a1, Loc, &v78, v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v36 = v56;
      if (v56)
      {
        v37 = v57;
        v38 = v56;
        if (v57 != v56)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = v56;
        }

        v57 = v36;
        operator delete(v38);
      }

      v39 = v54;
      if (v54)
      {
        v40 = v55;
        v41 = v54;
        if (v55 != v54)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              operator delete[](v42);
            }
          }

          while (v40 != v39);
          v41 = v54;
        }

        v55 = v39;
        operator delete(v41);
      }

      if (v52 != &v53)
      {
        free(v52);
      }
    }

    result = 0;
  }

  if (v47 == 1 && v46 >= 0x41 && v45)
  {
    v24 = result;
    operator delete[](v45);
    return v24;
  }

  return result;
}

mlir::detail::Parser *mlir::detail::Parser::parseSparseElementsAttr(mlir::Builder *a1, uint64_t *a2)
{
  v70[1] = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken(&v62, (*(a1 + 1) + 8));
  v6 = *(a1 + 1);
  *(v6 + 56) = v62;
  *(v6 + 72) = v63;
  *&v62 = "Expected '<' after 'sparse'";
  v64[4] = 259;
  if (!mlir::detail::Parser::parseToken(a1, 23, &v62))
  {
    return 0;
  }

  IntegerType = mlir::Builder::getIntegerType(a1, 64);
  v8 = *(a1 + 1);
  v9 = (v8 + 56);
  if (*(v8 + 56) == 19)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v62, (*(a1 + 1) + 8));
    v10 = *(a1 + 1);
    *(v10 + 56) = v62;
    *(v10 + 72) = v63;
    result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    v52 = result;
    v53 = v12;
    if (result)
    {
      *&v62 = 0;
      mlir::CallableOpInterface::getArgAttrsAttr(&v52);
      *(&v62 + 1) = v13;
      *&v49 = mlir::RankedTensorType::get(&v62, 2, IntegerType, 0);
      v14 = mlir::TensorType::operator mlir::ShapedType(&v49);
      v16 = v15;
      *&v49 = 0;
      isSplat = mlir::ElementsAttr::isSplat(&v52);
      *&v62 = mlir::RankedTensorType::get(&v49, 1, isSplat, 0);
      v18 = mlir::TensorType::operator mlir::ShapedType(&v62);
      v20 = v19;
      v21 = mlir::DenseElementsAttr::get(v14, v16, 0, 0);
      v22 = mlir::DenseElementsAttr::get(v18, v20, 0, 0);
      *&v49 = Loc;
      *&v62 = a1;
      *(&v62 + 1) = &v49;
      return mlir::SparseElementsAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>, &v62, v52, v53, v21, v22);
    }

    return result;
  }

  v23 = mlir::Token::getLoc(v9);
  *&v62 = a1;
  *(&v62 + 1) = v64;
  v63 = 0x400000000;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v68 = 0;
  if (*(*(a1 + 1) + 56) == 22)
  {
    {
      goto LABEL_14;
    }
  }

  {
    goto LABEL_14;
  }

  v52 = "expected ','";
  v55[4] = 259;
  if (mlir::detail::Parser::parseToken(a1, 16, &v52))
  {
    v24 = mlir::Token::getLoc((*(a1 + 1) + 56));
    v52 = a1;
    v53 = v55;
    v54 = 0x400000000;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    LOBYTE(v59) = 0;
    v25 = *(a1 + 1);
    v26 = (v25 + 56);
    v27 = *(v25 + 56);
    if (v27 == 22)
    {
      {
        goto LABEL_27;
      }
    }

    else if (v27 == 11)
    {
      v28 = *v26;
      v60 = *(v25 + 72);
      v59 = v28;
      v61 = 1;
      *(v25 + 80) = *v26;
      *(v25 + 96) = *(v25 + 72);
      mlir::Lexer::lexToken(&v49, (*(a1 + 1) + 8));
      v29 = *(a1 + 1);
      *(v29 + 56) = v49;
      *(v29 + 72) = v50;
    }

    {
      goto LABEL_27;
    }

    *&v49 = "expected '>'";
    v51 = 259;
    if (mlir::detail::Parser::parseToken(a1, 19, &v49))
    {
      result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
      v47 = result;
      v48 = v32;
      if (result)
      {
        if (v63)
        {
          *&v49 = mlir::RankedTensorType::get(*(&v62 + 1), v63, IntegerType, 0);
          v33 = &v49;
        }

        else
        {
          *&v49 = 1;
          mlir::CallableOpInterface::getArgAttrsAttr(&v47);
          *(&v49 + 1) = v37;
          v46[0] = mlir::RankedTensorType::get(&v49, 2, IntegerType, 0);
          v33 = v46;
        }

        v46[0] = mlir::TensorType::operator mlir::ShapedType(v33);
        v46[1] = v38;
        v40 = mlir::ElementsAttr::isSplat(&v47);
        v41 = v54;
        if (v54)
        {
          v42 = v53;
        }

        else
        {
          v70[0] = *mlir::CallableOpInterface::getArgAttrsAttr(v46);
          v42 = v70;
          v41 = 1;
        }

        *&v49 = mlir::RankedTensorType::get(v42, v41, v40, 0);
        v43 = mlir::TensorType::operator mlir::ShapedType(&v49);
        v70[0] = Loc;
        *&v49 = a1;
        *(&v49 + 1) = v70;
        result = mlir::SparseElementsAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>, &v49, v47, v48, Attr, v45);
        v34 = v56;
        if (!v56)
        {
LABEL_30:
          if (v53 != v55)
          {
            v36 = result;
            free(v53);
            result = v36;
          }

          goto LABEL_15;
        }

LABEL_29:
        v57 = v34;
        v35 = result;
        operator delete(v34);
        result = v35;
        goto LABEL_30;
      }

LABEL_28:
      v34 = v56;
      if (!v56)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

LABEL_14:
  result = 0;
LABEL_15:
  if (__p)
  {
    v66 = __p;
    v30 = result;
    operator delete(__p);
    result = v30;
  }

  if (*(&v62 + 1) != v64)
  {
    v31 = result;
    free(*(&v62 + 1));
    return v31;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseStridedLayoutAttr(mlir::detail::Parser *this)
{
  v34 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v29[0] = this;
  v29[1] = &Loc;
  v2 = *(this + 1);
  *(v2 + 96) = *(v2 + 72);
  *(v2 + 80) = *(v2 + 56);
  mlir::Lexer::lexToken(&v31, (*(this + 1) + 8));
  v3 = *(this + 1);
  *(v3 + 56) = v31;
  *(v3 + 72) = v32[0];
  *&v31 = "expected '<' after 'strided'";
  v33 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, &v31))
  {
    return 0;
  }

  *&v26 = "expected '['";
  v28 = 259;
  if (!mlir::detail::Parser::parseToken(this, 22, &v26))
  {
    return 0;
  }

  *&v31 = v32;
  *(&v31 + 1) = 0x600000000;
  if (*(*(this + 1) + 56) != 29)
  {
    v11 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
    if ((v12 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v13 = DWORD2(v31);
      if (DWORD2(v31) >= HIDWORD(v31))
      {
        v17 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v32, DWORD2(v31) + 1, 8);
        v11 = v17;
        v13 = DWORD2(v31);
      }

      *(v31 + 8 * v13) = v11;
      ++DWORD2(v31);
      v14 = *(this + 1);
      if (*(v14 + 56) != 16)
      {
        break;
      }

      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v15 = *(this + 1);
      *(v15 + 56) = v26;
      *(v15 + 72) = v27;
      v11 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
      if ((v16 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  *&v26 = "expected ']'";
  v28 = 259;
  if (mlir::detail::Parser::parseToken(this, 29, &v26))
  {
    v4 = *(this + 1);
    if (*(v4 + 56) == 19)
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v5 = *(this + 1);
      *(v5 + 56) = v26;
      *(v5 + 72) = v27;
      if (mlir::StridedLayoutAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>, v29, 0, v31, DWORD2(v31)))
      {
        v6 = ***(this + 1);
        v7 = v31;
        v8 = DWORD2(v31);
        v9 = 0;
LABEL_8:
        result = mlir::StridedLayoutAttr::get(v6, v9, v7, v8);
        goto LABEL_25;
      }
    }

    else
    {
      *&v26 = "expected ','";
      v28 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v26))
      {
        v24 = "expected 'offset' after comma";
        v25 = 259;
        if (mlir::detail::Parser::parseToken(this, 70, &v24))
        {
          v22 = "expected ':' after 'offset'";
          v23 = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v22))
          {
            v18 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
            if (v19)
            {
              v20 = v18;
              *&v26 = "expected '>'";
              v28 = 259;
              if (mlir::detail::Parser::parseToken(this, 19, &v26) && mlir::StridedLayoutAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>, v29, v20, v31, DWORD2(v31)))
              {
                v6 = ***(this + 1);
                v7 = v31;
                v8 = DWORD2(v31);
                v9 = v20;
                goto LABEL_8;
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  result = 0;
LABEL_25:
  if (v31 != v32)
  {
    v21 = result;
    free(v31);
    return v21;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseDistinctAttr(mlir::detail::Parser *a1, AttributeStorage *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken(&v33, (*(a1 + 1) + 8));
  v6 = *(a1 + 1);
  *(v6 + 56) = v33;
  *(v6 + 72) = v34;
  *&v33 = "expected '[' after 'distinct'";
  v35 = 259;
  if (mlir::detail::Parser::parseToken(a1, 22, &v33))
  {
    v7 = *(a1 + 1);
    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    *&v33 = "expected distinct ID";
    v35 = 259;
    if (mlir::detail::Parser::parseToken(a1, 10, &v33))
    {
      UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v8, v9);
      v32 = v10;
      if ((v10 & 1) == 0)
      {
        *&v33 = "expected an unsigned 64-bit integer";
        v35 = 259;
        mlir::detail::Parser::emitError(a1, &v33, v37);
        if (v37[0])
        {
          mlir::InFlightDiagnostic::report(v37);
        }

        if (v45 == 1)
        {
          if (v44 != &v45)
          {
            free(v44);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v43;
            v17 = __p;
            if (v43 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v43 = v15;
            operator delete(v17);
          }

          v18 = v40;
          if (v40)
          {
            v19 = v41;
            v20 = v40;
            if (v41 != v40)
            {
              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  operator delete[](v21);
                }
              }

              while (v19 != v18);
              v20 = v40;
            }

            v41 = v18;
            operator delete(v20);
          }

          if (v38 != &v39)
          {
            free(v38);
          }
        }

        return 0;
      }

      *&v33 = "expected ']' to close distinct ID";
      v35 = 259;
      if (mlir::detail::Parser::parseToken(a1, 29, &v33))
      {
        v29[0] = "expected '<' after distinct ID";
        v30 = 259;
        if (mlir::detail::Parser::parseToken(a1, 23, v29))
        {
          v11 = *(a1 + 1);
          if (*(v11 + 56) == 19)
          {
            *(v11 + 80) = *(v11 + 56);
            *(v11 + 96) = *(v11 + 72);
            mlir::Lexer::lexToken(&v33, (*(a1 + 1) + 8));
            v12 = *(a1 + 1);
            *(v12 + 56) = v33;
            *(v12 + 72) = v34;
            UnitAttr = mlir::Builder::getUnitAttr(a1, v13);
            goto LABEL_32;
          }

          v24 = mlir::detail::Parser::parseAttribute(a1, a2);
          if (!v24)
          {
            *&v33 = "expected attribute";
            v35 = 259;
            mlir::detail::Parser::emitError(a1, &v33, v36);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
            return 0;
          }

          UnitAttr = v24;
          *&v33 = "expected '>' to close distinct attribute";
          v35 = 259;
          if (mlir::detail::Parser::parseToken(a1, 19, &v33))
          {
LABEL_32:
            v25 = *(*(a1 + 1) + 104);
            v26 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::find((v25 + 72), &UInt64IntegerValue);
            if (*(v25 + 72) + 16 * *(v25 + 88) == v26)
            {
              v29[0] = mlir::DistinctAttr::create(UnitAttr);
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>((v25 + 72), &UInt64IntegerValue, v29, &v33);
              v27 = v33;
            }

            else
            {
              v27 = v26;
              if (mlir::AffineMapAttr::getValue((v26 + 8)) != UnitAttr)
              {
                v29[0] = "referenced attribute does not match previous definition: ";
                v30 = 259;
                mlir::detail::Parser::emitError(a1, Loc, v29, &v33);
                Value = mlir::AffineMapAttr::getValue((v27 + 8));
                mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(&v33, &Value);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
                return 0;
              }
            }

            return *(v27 + 8);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(mlir::detail::Parser *a1, void *a2, AttributeStorage *a3)
{
  v4 = *(*(a1 + 1) + 56);
  v5 = (v4 - 4) > 0x3C || ((1 << (v4 - 4)) & 0x10800060C01500E3) == 0;
  if (v5 && ((v8 = v4 - 72, v9 = v8 > 0xA, v10 = (1 << v8) & 0x481, !v9) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v15 = 0;
    v12 = mlir::detail::Parser::parseOptionalType(a1, &v15);
    if (v12 & 0x100) != 0 && (v12)
    {
      v13 = v12;
      v14 = mlir::TypeAttr::get(v15);
      v12 = v13;
      *a2 = v14;
    }

    return v12 | (HIBYTE(v12) << 8);
  }

  else
  {
    v6 = mlir::detail::Parser::parseAttribute(a1, a3);
    *a2 = v6;
    return (v6 != 0) | 0x100u;
  }
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, unsigned int a4)
{
  if (*(*(a1 + 8) + 56) != 22)
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseAttribute(a1, a3, a3, a4);
  if (!v5)
  {
    return 256;
  }

  *a2 = v5;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 11)
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseAttribute(a1, a3, a3, a4);
  if (!v5)
  {
    return 256;
  }

  *a2 = v5;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 4)
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseAttribute(a1, a3, a3, a4);
  if (!v5)
  {
    return 256;
  }

  *a2 = v5;
  return 257;
}

void buildAttributeAPInt(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v19[1] = a5;
  v20 = a2;
  v19[0] = a4;
  v18 = 1;
  v7 = 10;
  __p = 0;
  if (a5 >= 2)
  {
    if (*(a4 + 1) == 120)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }
  }

  if (!llvm::StringRef::getAsInteger(v19, v7, &__p))
  {
    if (mlir::Type::isIndex(&v20))
    {
      IntOrFloatBitWidth = 64;
      v9 = v18;
      v11 = v18 - 64;
      v10 = v18 > 0x40;
      if (v18 >= 0x40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v20);
      v9 = v18;
      v11 = v18 - IntOrFloatBitWidth;
      v10 = v18 > IntOrFloatBitWidth;
      if (v18 >= IntOrFloatBitWidth)
      {
LABEL_10:
        if (v10)
        {
          if (v9 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase(&__p) < v11)
            {
              goto LABEL_43;
            }
          }

          else if (v9 + __clz(__p) - 64 < v11)
          {
            goto LABEL_43;
          }

          llvm::APInt::trunc(&v15, &__p, IntOrFloatBitWidth);
          if (v18 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          __p = v15;
          v9 = v16;
          v18 = v16;
        }

        if (!IntOrFloatBitWidth)
        {
          if (a3)
          {
            goto LABEL_43;
          }

          goto LABEL_47;
        }

LABEL_26:
        if (a3)
        {
          if (v9 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(&__p);
          }

          else
          {
            v12 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
            if (!v9)
            {
              v12 = 0;
            }

            __p = (v12 & ~__p);
          }

          llvm::APInt::operator++(&__p);
          v9 = v18;
          p_p = (__p + 8 * ((v18 - 1) >> 6));
          if (v18 < 0x41)
          {
            p_p = &__p;
          }

          if (((*p_p >> (v18 - 1)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (mlir::Type::isSignedInteger(&v20) || mlir::Type::isIndex(&v20))
        {
          v9 = v18;
          v13 = (__p + 8 * ((v18 - 1) >> 6));
          if (v18 < 0x41)
          {
            v13 = &__p;
          }

          if ((*v13 >> (v18 - 1)))
          {
LABEL_43:
            *a1 = 0;
            *(a1 + 16) = 0;
            if (v9 < 0x41)
            {
              return;
            }

            goto LABEL_44;
          }
        }

        else
        {
          v9 = v18;
        }

LABEL_47:
        *(a1 + 8) = v9;
        *a1 = __p;
        *(a1 + 16) = 1;
        return;
      }
    }

    llvm::APInt::zext(&v15, &__p, IntOrFloatBitWidth);
    if (v18 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    __p = v15;
    v9 = v16;
    v18 = v16;
    goto LABEL_26;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v18 < 0x41)
  {
    return;
  }

LABEL_44:
  if (__p)
  {
    operator delete[](__p);
  }
}

uint64_t *mlir::detail::Parser::parseElementsLiteralType(mlir::detail::Parser *a1, uint64_t *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  v26[0] = "expected ':'";
  v27 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, v26))
  {
    return 0;
  }

  result = mlir::detail::Parser::parseType(a1);
  a2 = result;
  if (result)
  {
LABEL_2:
    v25[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
    v25[1] = v3;
    if (v25[0])
    {
      if (mlir::CallOpInterface::getArgOperands(v25))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v25);
        if (!v5)
        {
          return v25[0];
        }

        v6 = 8 * v5;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v6 -= 8;
          if (!v6)
          {
            return v25[0];
          }
        }
      }

      v26[0] = "elements literal type must have static shape";
      v27 = 259;
      mlir::detail::Parser::emitError(a1, v26, v28);
      if (v28[0])
      {
        mlir::InFlightDiagnostic::report(v28);
      }

      if (v36 != 1)
      {
        return 0;
      }

      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (v31)
      {
        v12 = v32;
        v13 = v31;
        if (v32 != v31)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v31;
        }

        v32 = v11;
        operator delete(v13);
      }

      v24 = v29;
      if (v29 == &v30)
      {
        return 0;
      }
    }

    else
    {
      v26[0] = "elements literal must be a shaped type";
      v27 = 259;
      mlir::detail::Parser::emitError(a1, v26, v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 != 1)
      {
        return 0;
      }

      if (v44 != &v45)
      {
        free(v44);
      }

      v16 = v42;
      if (v42)
      {
        v17 = v43;
        v18 = v42;
        if (v43 != v42)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v42;
        }

        v43 = v16;
        operator delete(v18);
      }

      v19 = v40;
      if (v40)
      {
        v20 = v41;
        v21 = v40;
        if (v41 != v40)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              operator delete[](v22);
            }
          }

          while (v20 != v19);
          v21 = v40;
        }

        v41 = v19;
        operator delete(v21);
      }

      v24 = v38;
      if (v38 == &v39)
      {
        return 0;
      }
    }

    free(v24);
    return 0;
  }

  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::getAttr(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v322 = *MEMORY[0x1E69E9840];
  *&v301 = a3;
  *(&v301 + 1) = a4;
  isSplat = mlir::ElementsAttr::isSplat(&v301);
  if (*(a1 + 104) == 1 && (mlir::Type::isIntOrIndexOrFloat(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    v306 = v301;
    v305 = mlir::ElementsAttr::isSplat(&v306);
    if (!mlir::Type::isIntOrIndexOrFloat(&v305) && *(*v305 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v35 = *a1;
      v310 = 257;
      mlir::detail::Parser::emitError(v35, a2, &v309, &v311);
      if (v311)
      {
        LODWORD(v307[0]) = 3;
        v307[1] = "expected floating-point, integer, or complex element type, got ";
        v308 = 63;
        v36 = v307;
        v37 = *(&v312 + 1);
        if (v313 >= v314)
        {
          if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
          {
            v285 = v307 - *(&v312 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v37 = *(&v312 + 1);
            v36 = &v285[*(&v312 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v36 = v307;
            v37 = *(&v312 + 1);
          }
        }

        v38 = v37 + 24 * v313;
        v39 = *v36;
        *(v38 + 16) = v36[2];
        *v38 = v39;
        ++v313;
        if (v311)
        {
          v40 = v307;
          mlir::DiagnosticArgument::DiagnosticArgument(v307, v305);
          v41 = *(&v312 + 1);
          if (v313 >= v314)
          {
            if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
            {
              v287 = v307 - *(&v312 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
              v41 = *(&v312 + 1);
              v40 = &v287[*(&v312 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
              v40 = v307;
              v41 = *(&v312 + 1);
            }
          }

          v42 = v41 + 24 * v313;
          v43 = *v40;
          *(v42 + 16) = v40[2];
          *v42 = v43;
          ++v313;
          if (v311)
          {
            mlir::InFlightDiagnostic::report(&v311);
          }
        }
      }

      if (v321[0] != 1)
      {
        return 0;
      }

      if (v320 != v321)
      {
        free(v320);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v319;
        v46 = __p;
        if (v319 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v319 = v44;
        operator delete(v46);
      }

      v30 = v316;
      if (!v316)
      {
        goto LABEL_240;
      }

      v47 = v317;
      v32 = v316;
      if (v317 == v316)
      {
        goto LABEL_239;
      }

      do
      {
        v49 = *--v47;
        v48 = v49;
        *v47 = 0;
        if (v49)
        {
          operator delete[](v48);
        }
      }

      while (v47 != v30);
      goto LABEL_238;
    }

    v303[0] = 0;
    v303[1] = 0;
    v304 = 0;
    v77 = *a1;
    *v307 = *(a1 + 80);
    v308 = *(a1 + 96);
    mlir::Token::getHexStringValue(&v311, v307);
    if (BYTE8(v312) == 1)
    {
      if (SHIBYTE(v304) < 0)
      {
        operator delete(v303[0]);
      }

      *v303 = v311;
      v304 = v312;
    }

    else
    {
      Loc = mlir::Token::getLoc(v307);
      v310 = 259;
      mlir::detail::Parser::emitError(v77, Loc, &v309, &v311);
      v79 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
      if (v311)
      {
        mlir::InFlightDiagnostic::report(&v311);
      }

      if (v321[0] == 1)
      {
        if (v320 != v321)
        {
          free(v320);
        }

        v80 = __p;
        if (__p)
        {
          v81 = v319;
          v82 = __p;
          if (v319 != __p)
          {
            do
            {
              v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
            }

            while (v81 != v80);
            v82 = __p;
          }

          v319 = v80;
          operator delete(v82);
        }

        v83 = v316;
        if (v316)
        {
          v84 = v317;
          v85 = v316;
          if (v317 != v316)
          {
            do
            {
              v87 = *--v84;
              v86 = v87;
              *v84 = 0;
              if (v87)
              {
                operator delete[](v86);
              }
            }

            while (v84 != v83);
            v85 = v316;
          }

          v317 = v83;
          operator delete(v85);
        }

        if (*(&v312 + 1) != v315)
        {
          free(*(&v312 + 1));
        }
      }

      if (!v79)
      {
        goto LABEL_338;
      }
    }

    if (SHIBYTE(v304) >= 0)
    {
      v185 = v303;
    }

    else
    {
      v185 = v303[0];
    }

    if (SHIBYTE(v304) >= 0)
    {
      v186 = HIBYTE(v304);
    }

    else
    {
      v186 = v303[1];
    }

    v302 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v306, *(&v306 + 1), v185, v186, &v302))
    {
      result = mlir::DenseElementsAttr::getFromRawBuffer(v306, *(&v306 + 1), v185, v186);
      if ((SHIBYTE(v304) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_339:
      v215 = v303[0];
      goto LABEL_340;
    }

    v187 = *a1;
    v310 = 257;
    mlir::detail::Parser::emitError(v187, a2, &v309, &v311);
    if (v311)
    {
      LODWORD(v307[0]) = 3;
      v307[1] = "elements hex data size is invalid for provided type: ";
      v308 = 53;
      v188 = v307;
      v189 = *(&v312 + 1);
      if (v313 >= v314)
      {
        if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
        {
          v286 = v307 - *(&v312 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
          v189 = *(&v312 + 1);
          v188 = &v286[*(&v312 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
          v188 = v307;
          v189 = *(&v312 + 1);
        }
      }

      v190 = v189 + 24 * v313;
      v191 = *v188;
      *(v190 + 16) = v188[2];
      *v190 = v191;
      ++v313;
      if (v311)
      {
        v192 = v307;
        mlir::DiagnosticArgument::DiagnosticArgument(v307, v306);
        v193 = *(&v312 + 1);
        if (v313 >= v314)
        {
          if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
          {
            v288 = v307 - *(&v312 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v193 = *(&v312 + 1);
            v192 = &v288[*(&v312 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v192 = v307;
            v193 = *(&v312 + 1);
          }
        }

        v194 = v193 + 24 * v313;
        v195 = *v192;
        *(v194 + 16) = v192[2];
        *v194 = v195;
        ++v313;
        if (v311)
        {
          mlir::InFlightDiagnostic::report(&v311);
        }
      }
    }

    if (v321[0] == 1)
    {
      if (v320 != v321)
      {
        free(v320);
      }

      v196 = __p;
      if (__p)
      {
        v197 = v319;
        v198 = __p;
        if (v319 != __p)
        {
          do
          {
            v197 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v197 - 1);
          }

          while (v197 != v196);
          v198 = __p;
        }

        v319 = v196;
        operator delete(v198);
      }

      v199 = v316;
      if (v316)
      {
        v200 = v317;
        v201 = v316;
        if (v317 != v316)
        {
          do
          {
            v203 = *--v200;
            v202 = v203;
            *v200 = 0;
            if (v203)
            {
              operator delete[](v202);
            }
          }

          while (v200 != v199);
          v201 = v316;
        }

        v317 = v199;
        operator delete(v201);
      }

      if (*(&v312 + 1) != v315)
      {
        free(*(&v312 + 1));
      }
    }

LABEL_338:
    result = 0;
    if ((SHIBYTE(v304) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_339;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v4 = *(a1 + 8);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v301);
    if (v9 != v7 || memcmp(v4, ArgAttrsAttr, 8 * v7))
    {
      v10 = *a1;
      v310 = 257;
      mlir::detail::Parser::emitError(v10, a2, &v309, &v311);
      if (v311)
      {
        LODWORD(v307[0]) = 3;
        v307[1] = "inferred shape of elements literal ([";
        v308 = 37;
        v11 = v307;
        v12 = *(&v312 + 1);
        if (v313 >= v314)
        {
          if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
          {
            v282 = v307 - *(&v312 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v12 = *(&v312 + 1);
            v11 = &v282[*(&v312 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v11 = v307;
            v12 = *(&v312 + 1);
          }
        }

        v13 = v12 + 24 * v313;
        v14 = *v11;
        *(v13 + 16) = v11[2];
        *v13 = v14;
        ++v313;
        if (v311)
        {
          v15 = *(a1 + 16);
          v16 = *(a1 + 8);
          v307[0] = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v16, &v16[v15], &v311 + 8, &v311 + 8, v307);
          if (v311)
          {
            LODWORD(v307[0]) = 3;
            v307[1] = "]) does not match type ([";
            v308 = 25;
            v17 = v307;
            v18 = *(&v312 + 1);
            if (v313 >= v314)
            {
              if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
              {
                v284 = v307 - *(&v312 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
                v18 = *(&v312 + 1);
                v17 = &v284[*(&v312 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
                v17 = v307;
                v18 = *(&v312 + 1);
              }
            }

            v19 = v18 + 24 * v313;
            v20 = *v17;
            *(v19 + 16) = v17[2];
            *v19 = v20;
            ++v313;
          }
        }
      }

      v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v301);
      if (v311)
      {
        v307[0] = ", ";
        llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v21, &v21[v22], &v311 + 8, &v311 + 8, v307);
        if (v311)
        {
          LODWORD(v307[0]) = 3;
          v307[1] = "])";
          v308 = 2;
          v23 = v307;
          v24 = *(&v312 + 1);
          if (v313 >= v314)
          {
            if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
            {
              v283 = v307 - *(&v312 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
              v24 = *(&v312 + 1);
              v23 = &v283[*(&v312 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
              v23 = v307;
              v24 = *(&v312 + 1);
            }
          }

          v25 = v24 + 24 * v313;
          v26 = *v23;
          *(v25 + 16) = v23[2];
          *v25 = v26;
          ++v313;
          if (v311)
          {
            mlir::InFlightDiagnostic::report(&v311);
          }
        }
      }

      if (v321[0] != 1)
      {
        return 0;
      }

      if (v320 != v321)
      {
        free(v320);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v319;
        v29 = __p;
        if (v319 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v319 = v27;
        operator delete(v29);
      }

      v30 = v316;
      if (!v316)
      {
LABEL_240:
        if (*(&v312 + 1) != v315)
        {
          free(*(&v312 + 1));
        }

        return 0;
      }

      v31 = v317;
      v32 = v316;
      if (v317 == v316)
      {
LABEL_239:
        v317 = v30;
        operator delete(v32);
        goto LABEL_240;
      }

      do
      {
        v34 = *--v31;
        v33 = v34;
        *v31 = 0;
        if (v34)
        {
          operator delete[](v33);
        }
      }

      while (v31 != v30);
LABEL_238:
      v32 = v316;
      goto LABEL_239;
    }
  }

  if ((*(a1 + 104) & 1) == 0 && *(a1 + 56) == *(a1 + 64))
  {
    v134 = mlir::CallableOpInterface::getArgAttrsAttr(&v301);
    if (mlir::ShapedType::getNumElements(v134, v135))
    {
      v136 = *a1;
      v310 = 257;
      mlir::detail::Parser::emitError(v136, a2, &v309, &v311);
      if (v311)
      {
        LODWORD(v307[0]) = 3;
        v307[1] = "parsed zero elements, but type (";
        v308 = 32;
        v137 = v307;
        v138 = *(&v312 + 1);
        if (v313 >= v314)
        {
          if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
          {
            v290 = v307 - *(&v312 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v138 = *(&v312 + 1);
            v137 = &v290[*(&v312 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v137 = v307;
            v138 = *(&v312 + 1);
          }
        }

        v139 = v138 + 24 * v313;
        v140 = *v137;
        *(v139 + 16) = v137[2];
        *v139 = v140;
        ++v313;
        if (v311)
        {
          v141 = v307;
          mlir::DiagnosticArgument::DiagnosticArgument(v307, v301);
          v142 = *(&v312 + 1);
          if (v313 >= v314)
          {
            if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
            {
              v292 = v307 - *(&v312 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
              v142 = *(&v312 + 1);
              v141 = &v292[*(&v312 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
              v141 = v307;
              v142 = *(&v312 + 1);
            }
          }

          v143 = v142 + 24 * v313;
          v144 = *v141;
          *(v143 + 16) = v141[2];
          *v143 = v144;
          v145 = ++v313;
          if (v311)
          {
            LODWORD(v307[0]) = 3;
            v307[1] = ") expected at least 1";
            v308 = 21;
            v146 = v307;
            v147 = *(&v312 + 1);
            if (v145 >= v314)
            {
              if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v145 > v307)
              {
                v294 = v307 - *(&v312 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v145 + 1, 24);
                v147 = *(&v312 + 1);
                v146 = &v294[*(&v312 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v145 + 1, 24);
                v146 = v307;
                v147 = *(&v312 + 1);
              }
            }

            v148 = v147 + 24 * v313;
            v149 = *v146;
            *(v148 + 16) = v146[2];
            *v148 = v149;
            ++v313;
            if (v311)
            {
              mlir::InFlightDiagnostic::report(&v311);
            }
          }
        }
      }

      if (v321[0] != 1)
      {
        return 0;
      }

      if (v320 != v321)
      {
        free(v320);
      }

      v150 = __p;
      if (__p)
      {
        v151 = v319;
        v152 = __p;
        if (v319 != __p)
        {
          do
          {
            v151 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v151 - 1);
          }

          while (v151 != v150);
          v152 = __p;
        }

        v319 = v150;
        operator delete(v152);
      }

      v30 = v316;
      if (!v316)
      {
        goto LABEL_240;
      }

      v153 = v317;
      v32 = v316;
      if (v317 == v316)
      {
        goto LABEL_239;
      }

      do
      {
        v155 = *--v153;
        v154 = v155;
        *v153 = 0;
        if (v155)
        {
          operator delete[](v154);
        }
      }

      while (v153 != v30);
      goto LABEL_238;
    }
  }

  v50 = isSplat;
  v51 = *(*isSplat + 136);
  if (v51 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v50 = 0;
  }

  *&v311 = v50;
  if (v51 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    isSplat = mlir::AffineMapAttr::getValue(&v311);
    if (mlir::Type::isIntOrIndex(&isSplat))
    {
      goto LABEL_60;
    }

    goto LABEL_131;
  }

  if (!mlir::Type::isIntOrIndex(&isSplat))
  {
LABEL_131:
    v88 = *(*isSplat + 136);
    if (v88 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v88 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v252 = *(&v301 + 1);
      v253 = v301;
      mlir::ElementsAttr::isSplat(&v301);
      if (*(a1 + 104) != 1)
      {
        v256 = *(a1 + 56);
        v299 = *(a1 + 64);
        v257 = v299 - v256;
        if (v299 == v256)
        {
          v262 = 0;
          v261 = 0;
          v259 = 0;
        }

        else
        {
          v296 = v253;
          v297 = v252;
          v258 = v257 >> 5;
          if ((v257 >> 5) > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_539:
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v259 = operator new(24 * v258);
          v260 = &v259[24 * v258];
          v261 = operator new(v257 >> 1);
          v257 = v259;
          v262 = v261;
          v263 = &v261[16 * v258];
          do
          {
            while (1)
            {
              v266 = *(v256 + 1);
              v311 = *v256;
              v312 = v266;
              mlir::Token::getStringValue((&v311 + 8), &v309);
              if (v257 >= v260)
              {
                v267 = v257 - v259;
                v268 = 0xAAAAAAAAAAAAAAABLL * ((v257 - v259) >> 3);
                v269 = v268 + 1;
                if (v268 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_539;
                }

                if (0x5555555555555556 * ((v260 - v259) >> 3) > v269)
                {
                  v269 = 0x5555555555555556 * ((v260 - v259) >> 3);
                }

                v270 = 0xAAAAAAAAAAAAAAABLL * ((v260 - v259) >> 3) >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v269;
                if (v270)
                {
                  if (v270 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_538;
                  }

                  v271 = operator new(24 * v270);
                }

                else
                {
                  v271 = 0;
                }

                v257 = &v271[24 * v268];
                *v257 = v309;
                v260 = &v271[24 * v270];
                memset(&v309, 0, sizeof(v309));
                memcpy((v257 - v267), v259, v267);
                if (v259)
                {
                  operator delete(v259);
                  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v309.__r_.__value_.__l.__data_);
                  }
                }

                v259 = (v257 - v267);
              }

              else
              {
                *v257 = v309;
              }

              if (v261 >= v263)
              {
                break;
              }

              if (*(v257 + 23) >= 0)
              {
                v264 = v257;
              }

              else
              {
                v264 = *v257;
              }

              *v261 = v264;
              v265 = *(v257 + 23);
              if ((v265 & 0x80u) != 0)
              {
                v265 = *(v257 + 8);
              }

              *(v261 + 1) = v265;
              v261 += 16;
              v257 += 24;
              v256 += 32;
              if (v256 == v299)
              {
                goto LABEL_472;
              }
            }

            v272 = v261 - v262;
            v273 = (v261 - v262) >> 4;
            v274 = v273 + 1;
            if ((v273 + 1) >> 60)
            {
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            if ((v263 - v262) >> 3 > v274)
            {
              v274 = (v263 - v262) >> 3;
            }

            if ((v263 - v262) >= 0x7FFFFFFFFFFFFFF0)
            {
              v275 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v275 = v274;
            }

            if (v275)
            {
              if (v275 >> 60)
              {
LABEL_538:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v276 = operator new(16 * v275);
            }

            else
            {
              v276 = 0;
            }

            v277 = &v276[16 * v273];
            v263 = &v276[16 * v275];
            v278 = *(v257 + 23);
            v279 = *v257;
            if (v278 >= 0)
            {
              v279 = v257;
            }

            *v277 = v279;
            if (v278 < 0)
            {
              v278 = *(v257 + 8);
            }

            v277[1] = v278;
            v261 = (v277 + 2);
            memcpy(v276, v262, v272);
            if (v262)
            {
              operator delete(v262);
            }

            v262 = v276;
            v257 += 24;
            v256 += 32;
          }

          while (v256 != v299);
LABEL_472:
          v253 = v296;
          v252 = v297;
        }

        result = mlir::DenseStringElementsAttr::get(v253, v252, v262, (v261 - v262) >> 4);
        if (v262)
        {
          v280 = result;
          operator delete(v262);
          result = v280;
        }

        if (!v259)
        {
          return result;
        }

        v243 = result;
        while (v257 != v259)
        {
          v281 = *(v257 - 1);
          v257 -= 24;
          if (v281 < 0)
          {
            operator delete(*v257);
          }
        }

        v245 = v259;
        goto LABEL_420;
      }

      mlir::Token::getStringValue((a1 + 80), &v311);
      v254 = SBYTE7(v312);
      v255 = v311;
      if ((SBYTE7(v312) & 0x80u) == 0)
      {
        v255 = &v311;
      }

      if (SBYTE7(v312) < 0)
      {
        v254 = *(&v311 + 1);
      }

      v309.__r_.__value_.__r.__words[0] = v255;
      v309.__r_.__value_.__l.__size_ = v254;
      result = mlir::DenseStringElementsAttr::get(v253, v252, &v309, 1);
      if ((SBYTE7(v312) & 0x80000000) == 0)
      {
        return result;
      }

      v215 = v311;
LABEL_340:
      v216 = result;
      v217 = v215;
      goto LABEL_396;
    }

    v303[0] = 0;
    v303[1] = 0;
    v304 = 0;
    *&v306 = isSplat;
    std::vector<llvm::APFloat>::reserve(v303, (*(a1 + 64) - *(a1 + 56)) >> 5);
    v108 = *(a1 + 56);
    v109 = *(a1 + 64);
    if (v108 == v109)
    {
LABEL_402:
      if (v51 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        result = mlir::DenseElementsAttr::get(v301, *(&v301 + 1), v303[0], ((v303[1] - v303[0]) >> 5) >> 1);
        v242 = v303[0];
        if (!v303[0])
        {
          return result;
        }
      }

      else
      {
        result = mlir::DenseElementsAttr::get(v301, *(&v301 + 1), v303[0], (v303[1] - v303[0]) >> 5);
        v242 = v303[0];
        if (!v303[0])
        {
          return result;
        }
      }

      goto LABEL_413;
    }

    while (1)
    {
      v110 = *v108;
      v111 = *(v108 + 2);
      if (v111 != 9)
      {
        if (v111 != 10 || *(v108 + 3) < 2uLL || **(v108 + 2) != 30768)
        {
          v157 = *a1;
          v310 = 257;
          mlir::detail::Parser::emitError(v157, &v309, &v311);
          if (v311)
          {
            LODWORD(v307[0]) = 3;
            v307[1] = "expected floating-point elements, but parsed integer";
            v308 = 52;
            v158 = v307;
            v159 = *(&v312 + 1);
            if (v313 >= v314)
            {
              if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
              {
                v289 = v307 - *(&v312 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
                v159 = *(&v312 + 1);
                v158 = &v289[*(&v312 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
                v158 = v307;
                v159 = *(&v312 + 1);
              }
            }

            v160 = v159 + 24 * v313;
            v161 = *v158;
            *(v160 + 16) = v158[2];
            *v160 = v161;
            ++v313;
          }

          v162 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
          if (v311)
          {
            mlir::InFlightDiagnostic::report(&v311);
          }

          if (v321[0] == 1)
          {
            if (v320 != v321)
            {
              free(v320);
            }

            v163 = __p;
            if (__p)
            {
              v164 = v319;
              v165 = __p;
              if (v319 != __p)
              {
                do
                {
                  v164 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v164 - 1);
                }

                while (v164 != v163);
                v165 = __p;
              }

              v319 = v163;
              operator delete(v165);
            }

            v166 = v316;
            if (v316)
            {
              v167 = v317;
              v168 = v316;
              if (v317 != v316)
              {
                do
                {
                  v170 = *--v167;
                  v169 = v170;
                  *v167 = 0;
                  if (v170)
                  {
                    operator delete[](v169);
                  }
                }

                while (v167 != v166);
                v168 = v316;
              }

              v317 = v166;
              operator delete(v168);
            }

            if (*(&v312 + 1) != v315)
            {
              free(*(&v312 + 1));
            }
          }

          if (v162)
          {
            goto LABEL_402;
          }

LABEL_412:
          result = 0;
          v242 = v303[0];
          if (!v303[0])
          {
            return result;
          }

LABEL_413:
          v243 = result;
          v244 = v303[1];
          v245 = v242;
          if (v303[1] != v242)
          {
            v246 = llvm::APFloatBase::PPCDoubleDouble(v242);
            v247 = (v244 - 24);
            do
            {
              while (v246 == *v247)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v247);
                v249 = (v248 - 8);
                v247 = (v248 - 32);
                if (v249 == v242)
                {
                  goto LABEL_418;
                }
              }

              llvm::detail::IEEEFloat::~IEEEFloat(v247);
              v251 = (v250 - 8);
              v247 = (v250 - 32);
            }

            while (v251 != v242);
LABEL_418:
            v245 = v303[0];
          }

          v303[1] = v242;
LABEL_420:
          operator delete(v245);
          return v243;
        }

        LOBYTE(v311) = 0;
        LOBYTE(v313) = 0;
        v112 = *a1;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v306);
        Width = mlir::FloatType::getWidth(&v306);
        v115 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v112, &v311, (v108 + 8), v110, FloatSemantics, Width);
        v116 = v115;
        if (v115)
        {
          v117 = v303[1];
          if (v303[1] >= v304)
          {
            v115 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(v303, &v311);
            v303[1] = v115;
            if (v313 == 1)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v118 = *(&v311 + 1);
            if (llvm::APFloatBase::PPCDoubleDouble(v115) == v118)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(v117 + 1, (&v311 + 8));
              v115 = v117 + 32;
              v303[1] = (v117 + 32);
              if (v313 == 1)
              {
                goto LABEL_205;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat((v117 + 8), (&v311 + 8));
              v115 = v117 + 32;
              v303[1] = (v117 + 32);
              if (v313 == 1)
              {
                goto LABEL_205;
              }
            }
          }
        }

        else if (v313 == 1)
        {
LABEL_205:
          v131 = *(&v311 + 1);
          if (llvm::APFloatBase::PPCDoubleDouble(v115) == v131)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v311 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v311 + 8));
          }
        }

        if ((v116 & 1) == 0)
        {
          goto LABEL_412;
        }

        goto LABEL_185;
      }

      v119 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue((v108 + 8), v105, v106, v107));
      if ((v120 & 1) == 0)
      {
        v218 = *a1;
        v309.__r_.__value_.__r.__words[0] = "floating point value too large for attribute";
        v310 = 259;
        mlir::detail::Parser::emitError(v218, &v309, &v311);
        v219 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
        if (v311)
        {
          mlir::InFlightDiagnostic::report(&v311);
        }

        if (v321[0] == 1)
        {
          if (v320 != v321)
          {
            free(v320);
          }

          v220 = __p;
          if (__p)
          {
            v221 = v319;
            v222 = __p;
            if (v319 != __p)
            {
              do
              {
                v221 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v221 - 1);
              }

              while (v221 != v220);
              v222 = __p;
            }

            v319 = v220;
            operator delete(v222);
          }

          v223 = v316;
          if (v316)
          {
            v224 = v317;
            v225 = v316;
            if (v317 != v316)
            {
              do
              {
                v227 = *--v224;
                v226 = v227;
                *v224 = 0;
                if (v227)
                {
                  operator delete[](v226);
                }
              }

              while (v224 != v223);
              v225 = v316;
            }

            v317 = v223;
            operator delete(v225);
          }

          if (*(&v312 + 1) != v315)
          {
            free(*(&v312 + 1));
          }
        }

        if (v219)
        {
          goto LABEL_402;
        }

        goto LABEL_412;
      }

      v123 = v119;
      if (v110)
      {
        v123 = -v119;
      }

      v124 = llvm::detail::IEEEFloat::IEEEFloat(&v309, v123, v120, v121, v122);
      v125 = llvm::APFloatBase::IEEEdouble(v124);
      llvm::APFloat::Storage::Storage(&v311 + 8, &v309, v125);
      llvm::detail::IEEEFloat::~IEEEFloat(&v309);
      isF64 = mlir::Type::isF64(&v306);
      if ((isF64 & 1) == 0)
      {
        v309.__r_.__value_.__s.__data_[0] = 0;
        v127 = mlir::FloatType::getFloatSemantics(&v306);
        isF64 = llvm::APFloat::convert(&v311, v127, 1, &v309);
      }

      v128 = v303[1];
      if (v303[1] >= v304)
      {
        v132 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(v303, &v311);
        v133 = llvm::APFloatBase::PPCDoubleDouble(v132);
        v303[1] = v132;
        if (v133 != *(&v311 + 1))
        {
          goto LABEL_208;
        }
      }

      else
      {
        v129 = *(&v311 + 1);
        v130 = llvm::APFloatBase::PPCDoubleDouble(isF64);
        if (v130 == v129)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v128 + 1, (&v311 + 8));
          v303[1] = (v128 + 32);
          if (v130 != *(&v311 + 1))
          {
LABEL_208:
            llvm::detail::IEEEFloat::~IEEEFloat((&v311 + 8));
            goto LABEL_185;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat((v128 + 8), (&v311 + 8));
          v303[1] = (v128 + 32);
          if (v130 != *(&v311 + 1))
          {
            goto LABEL_208;
          }
        }
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v311 + 8));
LABEL_185:
      v108 += 32;
      if (v108 == v109)
      {
        goto LABEL_402;
      }
    }
  }

LABEL_60:
  v298 = v51;
  v303[0] = 0;
  v303[1] = 0;
  v304 = 0;
  *&v306 = isSplat;
  v52 = *(a1 + 64) - *(a1 + 56);
  if (v52)
  {
    v53 = v52 >> 5;
    if ((v52 >> 5) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v303[0] = operator new(v52 >> 1);
    v303[1] = v303[0];
    v304 = (v303[0] + 16 * v53);
  }

  isUnsignedInteger = mlir::Type::isUnsignedInteger(&v306);
  v55 = *(a1 + 56);
  v56 = *(a1 + 64);
  if (v55 == v56)
  {
LABEL_381:
    if (v298 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      result = mlir::DenseElementsAttr::get(v301, *(&v301 + 1), v303[0], ((v303[1] - v303[0]) >> 4) >> 1);
      v239 = v303[0];
      if (v303[0])
      {
        goto LABEL_388;
      }
    }

    else
    {
      result = mlir::DenseElementsAttr::get(v301, *(&v301 + 1), v303[0], (v303[1] - v303[0]) >> 4);
      v239 = v303[0];
      if (v303[0])
      {
        goto LABEL_388;
      }
    }

    return result;
  }

  v57 = isUnsignedInteger;
  while (1)
  {
    v58 = (v55 + 8);
    v59 = *v55;
    v60 = mlir::Token::getLoc((v55 + 8));
    if ((v59 & v57) == 1)
    {
      v171 = *a1;
      v310 = 257;
      mlir::detail::Parser::emitError(v171, v60, &v309, &v311);
      if (v311)
      {
        LODWORD(v307[0]) = 3;
        v307[1] = "expected unsigned integer elements, but parsed negative value";
        v308 = 61;
        v172 = v307;
        v173 = *(&v312 + 1);
        if (v313 >= v314)
        {
          if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
          {
            v291 = v307 - *(&v312 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v173 = *(&v312 + 1);
            v172 = &v291[*(&v312 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v172 = v307;
            v173 = *(&v312 + 1);
          }
        }

        v174 = v173 + 24 * v313;
        v175 = *v172;
        *(v174 + 16) = v172[2];
        *v174 = v175;
        ++v313;
      }

      v176 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
      if (v311)
      {
        mlir::InFlightDiagnostic::report(&v311);
      }

      if (v321[0] == 1)
      {
        if (v320 != v321)
        {
          free(v320);
        }

        v177 = __p;
        if (__p)
        {
          v178 = v319;
          v179 = __p;
          if (v319 != __p)
          {
            do
            {
              v178 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v178 - 1);
            }

            while (v178 != v177);
            v179 = __p;
          }

          v319 = v177;
          operator delete(v179);
        }

        v180 = v316;
        if (!v316)
        {
          goto LABEL_378;
        }

        v181 = v317;
        v182 = v316;
        if (v317 == v316)
        {
          goto LABEL_377;
        }

        do
        {
          v184 = *--v181;
          v183 = v184;
          *v181 = 0;
          if (v184)
          {
            operator delete[](v183);
          }
        }

        while (v181 != v180);
        goto LABEL_376;
      }

      goto LABEL_380;
    }

    v61 = *v58;
    if (*v58 != 59 && v61 != 79)
    {
      break;
    }

    if (!mlir::Type::isInteger(&v306, 1))
    {
      v204 = *a1;
      v310 = 257;
      mlir::detail::Parser::emitError(v204, v60, &v309, &v311);
      if (v311)
      {
        LODWORD(v307[0]) = 3;
        v307[1] = "expected i1 type for 'true' or 'false' values";
        v308 = 45;
        v205 = v307;
        v206 = *(&v312 + 1);
        if (v313 >= v314)
        {
          if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
          {
            v293 = v307 - *(&v312 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v206 = *(&v312 + 1);
            v205 = &v293[*(&v312 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
            v205 = v307;
            v206 = *(&v312 + 1);
          }
        }

        v207 = v206 + 24 * v313;
        v208 = *v205;
        *(v207 + 16) = v205[2];
        *v207 = v208;
        ++v313;
      }

      v176 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
      if (v311)
      {
        mlir::InFlightDiagnostic::report(&v311);
      }

      if (v321[0] == 1)
      {
        if (v320 != v321)
        {
          free(v320);
        }

        v209 = __p;
        if (__p)
        {
          v210 = v319;
          v211 = __p;
          if (v319 != __p)
          {
            do
            {
              v210 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v210 - 1);
            }

            while (v210 != v209);
            v211 = __p;
          }

          v319 = v209;
          operator delete(v211);
        }

        v180 = v316;
        if (!v316)
        {
          goto LABEL_378;
        }

        v212 = v317;
        v182 = v316;
        if (v317 == v316)
        {
          goto LABEL_377;
        }

        do
        {
          v214 = *--v212;
          v213 = v214;
          *v212 = 0;
          if (v214)
          {
            operator delete[](v213);
          }
        }

        while (v212 != v180);
        goto LABEL_376;
      }

LABEL_380:
      if (v176)
      {
        goto LABEL_381;
      }

      goto LABEL_387;
    }

    v65 = *v58 == 79;
    DWORD2(v311) = 1;
    *&v311 = v65;
    v66 = v303[1];
    if (v303[1] >= v304)
    {
      v303[1] = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(v303, &v311);
      if (DWORD2(v311) >= 0x41)
      {
LABEL_80:
        if (v311)
        {
          operator delete[](v311);
        }
      }
    }

    else
    {
      *(v303[1] + 2) = 1;
      *v66 = v65;
      v303[1] = (v66 + 16);
      if (DWORD2(v311) >= 0x41)
      {
        goto LABEL_80;
      }
    }

LABEL_66:
    v55 += 32;
    if (v55 == v56)
    {
      goto LABEL_381;
    }
  }

  if (v61 == 9)
  {
    v228 = *a1;
    v310 = 257;
    mlir::detail::Parser::emitError(v228, v60, &v309, &v311);
    if (v311)
    {
      LODWORD(v307[0]) = 3;
      v307[1] = "expected integer elements, but parsed floating-point";
      v308 = 52;
      v229 = v307;
      v230 = *(&v312 + 1);
      if (v313 >= v314)
      {
        if (*(&v312 + 1) <= v307 && *(&v312 + 1) + 24 * v313 > v307)
        {
          v295 = v307 - *(&v312 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
          v230 = *(&v312 + 1);
          v229 = &v295[*(&v312 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v312 + 8, v315, v313 + 1, 24);
          v229 = v307;
          v230 = *(&v312 + 1);
        }
      }

      v231 = v230 + 24 * v313;
      v232 = *v229;
      *(v231 + 16) = v229[2];
      *v231 = v232;
      ++v313;
    }

    v176 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
    if (v311)
    {
      mlir::InFlightDiagnostic::report(&v311);
    }

    if (v321[0] == 1)
    {
      if (v320 != v321)
      {
        free(v320);
      }

      v233 = __p;
      if (__p)
      {
        v234 = v319;
        v235 = __p;
        if (v319 != __p)
        {
          do
          {
            v234 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v234 - 1);
          }

          while (v234 != v233);
          v235 = __p;
        }

        v319 = v233;
        operator delete(v235);
      }

      v180 = v316;
      if (!v316)
      {
        goto LABEL_378;
      }

      v236 = v317;
      v182 = v316;
      if (v317 == v316)
      {
LABEL_377:
        v317 = v180;
        operator delete(v182);
LABEL_378:
        if (*(&v312 + 1) != v315)
        {
          free(*(&v312 + 1));
        }

        goto LABEL_380;
      }

      do
      {
        v238 = *--v236;
        v237 = v238;
        *v236 = 0;
        if (v238)
        {
          operator delete[](v237);
        }
      }

      while (v236 != v180);
LABEL_376:
      v182 = v316;
      goto LABEL_377;
    }

    goto LABEL_380;
  }

  buildAttributeAPInt(v307, v306, v59 & 1, *(v55 + 2), *(v55 + 3));
  v62 = v308;
  if (v308)
  {
    v63 = v303[1];
    if (v303[1] >= v304)
    {
      v76 = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(v303, v307);
    }

    else
    {
      v64 = v307[1];
      *(v303[1] + 2) = v307[1];
      if (v64 > 0x40)
      {
        llvm::APInt::initSlowCase(v63, v307);
      }

      else
      {
        *v63 = v307[0];
      }

      v76 = (v63 + 2);
    }

    v303[1] = v76;
  }

  else
  {
    v67 = *a1;
    v309.__r_.__value_.__r.__words[0] = "integer constant out of range for type";
    v310 = 259;
    mlir::detail::Parser::emitError(v67, v60, &v309, &v311);
    LOBYTE(v4) = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v311);
    if (v311)
    {
      mlir::InFlightDiagnostic::report(&v311);
    }

    if (v321[0] == 1)
    {
      if (v320 != v321)
      {
        free(v320);
      }

      v68 = __p;
      if (__p)
      {
        v69 = v319;
        v70 = __p;
        if (v319 != __p)
        {
          do
          {
            v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
          }

          while (v69 != v68);
          v70 = __p;
        }

        v319 = v68;
        operator delete(v70);
      }

      v71 = v316;
      if (v316)
      {
        v72 = v317;
        v73 = v316;
        if (v317 != v316)
        {
          do
          {
            v75 = *--v72;
            v74 = v75;
            *v72 = 0;
            if (v75)
            {
              operator delete[](v74);
            }
          }

          while (v72 != v71);
          v73 = v316;
        }

        v317 = v71;
        operator delete(v73);
      }

      if (*(&v312 + 1) != v315)
      {
        free(*(&v312 + 1));
      }
    }
  }

  if (v308 == 1 && LODWORD(v307[1]) >= 0x41 && v307[0])
  {
    operator delete[](v307[0]);
  }

  if (v62)
  {
    goto LABEL_66;
  }

  if (v4)
  {
    goto LABEL_381;
  }

LABEL_387:
  result = 0;
  v239 = v303[0];
  if (v303[0])
  {
LABEL_388:
    v216 = result;
    v240 = v303[1];
    v217 = v239;
    if (v303[1] != v239)
    {
      do
      {
        v241 = *(v240 - 2);
        v240 -= 2;
        if (v241 >= 0x41 && *v240)
        {
          operator delete[](*v240);
        }
      }

      while (v240 != v239);
      v217 = v303[0];
    }

    v303[1] = v239;
LABEL_396:
    operator delete(v217);
    return v216;
  }

  return result;
}

void *mlir::TensorType::operator mlir::ShapedType(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::TensorType::operator mlir::ShapedType();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

unint64_t mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (v2 + 56);
  if (*(v2 + 56) == 26)
  {
    *(v2 + 80) = *v3;
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v17, (*(a1 + 8) + 8));
    v4 = 0;
    v5 = *(a1 + 8);
    *(v5 + 56) = v17;
    *(v5 + 72) = v18;
    v6 = 0x8000000000000000;
    return v6 | v4;
  }

  Loc = mlir::Token::getLoc(v3);
  v9 = *(a1 + 8);
  v10 = *(v9 + 56);
  if (v10 == 24)
  {
    *(v9 + 80) = *(v9 + 56);
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken(&v17, (*(a1 + 8) + 8));
    v11 = *(a1 + 8);
    *(v11 + 56) = v17;
    *(v11 + 72) = v18;
    v9 = *(a1 + 8);
    if (*(v9 + 56) != 10)
    {
      goto LABEL_14;
    }
  }

  else if (v10 != 10)
  {
    goto LABEL_14;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v9 + 64), *(v9 + 72));
  if (v13)
  {
    v14 = UInt64IntegerValue;
    if ((UInt64IntegerValue & 0x8000000000000000) == 0)
    {
      v15 = *(a1 + 8);
      *(v15 + 80) = *(v15 + 56);
      *(v15 + 96) = *(v15 + 72);
      mlir::Lexer::lexToken(&v17, (*(a1 + 8) + 8));
      v16 = *(a1 + 8);
      *(v16 + 56) = v17;
      *(v16 + 72) = v18;
      if (v10 == 24)
      {
        v4 = -v14;
      }

      else
      {
        v4 = v14;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF00;
      v4 = v4;
      return v6 | v4;
    }
  }

LABEL_14:
  mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(a1, Loc);
  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::find(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = *(v2 + 16 * v4);
    if (*a2 == v5)
    {
      return v2 + 16 * v4;
    }

    v7 = 1;
    while (v5 != -1)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = *(v2 + 16 * v4);
      if (*a2 == v5)
      {
        return v2 + 16 * v4;
      }
    }
  }

  return v2 + 16 * v3;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -2;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
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
      if (*v9 == -1)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
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
    llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
    if (*v9 == -1)
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

__n128 mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = v10;
    mlir::DiagnosticArgument::DiagnosticArgument(v10, *a2);
    v4 = a1;
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= v10 && v5 + 24 * v6 > v10)
      {
        v9 = &v10[-v5];
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = &v9[v5];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = v10;
      }
    }

    v7 = (v5 + 24 * *(v4 + 32));
    result = *v2;
    v7[1].n128_u64[0] = v2[1].n128_u64[0];
    *v7 = result;
    ++*(v4 + 32);
  }

  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::parseList(mlir::detail::Parser **a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a1;
  __src = v18;
  v17 = 0x400000000;
  v13 = 0;
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = &v14;
  v12[3] = &v15;
  v12[4] = &__src;
  v3 = 0;
  {
    *(a2 + 8) = 0;
    v4 = v13;
    if (*(a2 + 12))
    {
      v5 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), 1uLL, 8);
      v5 = *(a2 + 8);
    }

    *(*a2 + 8 * v5) = v4;
    v6 = *(a2 + 12);
    v7 = (*(a2 + 8) + 1);
    *(a2 + 8) = v7;
    v8 = __src;
    v9 = v17;
    v10 = v17 + v7;
    if (v10 > v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v10, 8);
      LODWORD(v7) = *(a2 + 8);
    }

    if (v9)
    {
      memcpy((*a2 + 8 * v7), v8, 8 * v9);
      LODWORD(v7) = *(a2 + 8);
    }

    *(a2 + 8) = v7 + v9;
    v3 = 1;
  }

  if (__src != v18)
  {
    free(__src);
  }

  return v3;
}

uint64_t anonymous namespace::TensorLiteralParser::parseElement(mlir::detail::Parser **this)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 1);
  v5 = (v3 + 56);
  v4 = *(v3 + 56);
  if (v4 <= 23)
  {
    if ((v4 - 9) >= 2 && v4 != 11)
    {
      if (v4 == 21)
      {
        *(v3 + 80) = *v5;
        *(v3 + 96) = *(v3 + 72);
        mlir::Lexer::lexToken(&v51, (*(v2 + 1) + 8));
        v6 = *(v2 + 1);
        *(v6 + 56) = v51;
        *(v6 + 72) = v52;
        {
          return 0;
        }

        v7 = *this;
        *&v51 = "expected ',' between complex elements";
        v54 = 259;
        if (!mlir::detail::Parser::parseToken(v7, 16, &v51))
        {
          return 0;
        }

        {
          return 0;
        }

        v8 = *this;
        v49[0] = "expected ')' after complex elements";
        v50 = 259;
        return mlir::detail::Parser::parseToken(v8, 28, v49);
      }

LABEL_28:
      v49[0] = "expected element literal of primitive type";
      v50 = 259;
      mlir::detail::Parser::emitError(v2, v49, &v51);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
      v26 = result;
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
        result = v26;
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
          result = v26;
        }

        v27 = __p;
        if (__p)
        {
          v28 = v59;
          v29 = __p;
          if (v59 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v59 = v27;
          operator delete(v29);
          result = v26;
        }

        v30 = v56;
        if (!v56)
        {
          goto LABEL_69;
        }

        v31 = v57;
        v32 = v56;
        if (v57 == v56)
        {
LABEL_68:
          v57 = v30;
          operator delete(v32);
          result = v26;
LABEL_69:
          if (v53 != &v55)
          {
            free(v53);
            return v26;
          }

          return result;
        }

        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            operator delete[](v33);
          }
        }

        while (v31 != v30);
LABEL_67:
        v32 = v56;
        goto LABEL_68;
      }

      return result;
    }

LABEL_13:
    v10 = this[8];
    v11 = this[9];
    if (v10 < v11)
    {
      *v10 = 0;
LABEL_15:
      v12 = *v5;
      *(v10 + 3) = *(v5 + 2);
      *(v10 + 8) = v12;
      v13 = (v10 + 32);
LABEL_48:
      this[8] = v13;
      v37 = *this;
      v38 = *(v37 + 1);
      *(v38 + 80) = *(v38 + 56);
      *(v38 + 96) = *(v38 + 72);
      mlir::Lexer::lexToken(&v51, (*(v37 + 1) + 8));
      v39 = *(v37 + 1);
      *(v39 + 56) = v51;
      *(v39 + 72) = v52;
      return 1;
    }

    v14 = this[7];
    v15 = v10 - v14;
    v16 = (v10 - v14) >> 5;
    v17 = v16 + 1;
    if (!((v16 + 1) >> 59))
    {
      v18 = v11 - v14;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (!v19)
      {
        v20 = 0;
        goto LABEL_45;
      }

      if (!(v19 >> 59))
      {
        v20 = operator new(32 * v19);
LABEL_45:
        v35 = &v20[32 * v16];
        *v35 = 0;
        goto LABEL_46;
      }

LABEL_83:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    goto LABEL_82;
  }

  if (v4 != 24)
  {
    if (v4 != 79 && v4 != 59)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  *(v3 + 80) = *v5;
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v51, (*(v2 + 1) + 8));
  v21 = *(v2 + 1);
  *(v21 + 56) = v51;
  *(v21 + 72) = v52;
  v22 = *this;
  v23 = *(*this + 1);
  v24 = *(v23 + 56);
  v5 = (v23 + 56);
  if ((v24 - 9) < 2)
  {
    v10 = this[8];
    v25 = this[9];
    if (v10 < v25)
    {
      *v10 = 1;
      goto LABEL_15;
    }

    v14 = this[7];
    v15 = v10 - v14;
    v46 = (v10 - v14) >> 5;
    v47 = v46 + 1;
    if (!((v46 + 1) >> 59))
    {
      v48 = v25 - v14;
      if (v48 >> 4 > v47)
      {
        v47 = v48 >> 4;
      }

      if (v48 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v47;
      }

      if (v19)
      {
        if (v19 >> 59)
        {
          goto LABEL_83;
        }

        v20 = operator new(32 * v19);
      }

      else
      {
        v20 = 0;
      }

      v35 = &v20[32 * v46];
      *v35 = 1;
LABEL_46:
      v36 = *v5;
      *(v35 + 3) = *(v5 + 2);
      *(v35 + 8) = v36;
      v13 = (v35 + 32);
      memcpy(v20, v14, v15);
      this[7] = v20;
      this[8] = v13;
      this[9] = &v20[32 * v19];
      if (v14)
      {
        operator delete(v14);
      }

      goto LABEL_48;
    }

LABEL_82:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v49[0] = "expected integer or floating point literal";
  v50 = 259;
  mlir::detail::Parser::emitError(v22, v49, &v51);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  v26 = result;
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
    result = v26;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v26;
    }

    v40 = __p;
    if (__p)
    {
      v41 = v59;
      v42 = __p;
      if (v59 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v59 = v40;
      operator delete(v42);
      result = v26;
    }

    v30 = v56;
    if (!v56)
    {
      goto LABEL_69;
    }

    v43 = v57;
    v32 = v56;
    if (v57 == v56)
    {
      goto LABEL_68;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        operator delete[](v44);
      }
    }

    while (v43 != v30);
    goto LABEL_67;
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TensorLiteralParser::parseList(llvm::SmallVectorImpl<long long> &)::$_0>(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  __s2 = v25;
  v24 = 0x400000000;
  if (*(*(*v2 + 1) + 56) == 22)
  {
    {
LABEL_3:
      v3 = 0;
      goto LABEL_42;
    }
  }

  {
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  ++**(a1 + 8);
  if (*v4)
  {
    v5 = *(a1 + 32);
    if (v5 == &__s2)
    {
LABEL_40:
      *v4 = 0;
LABEL_41:
      v3 = 1;
      goto LABEL_42;
    }

    v6 = v24;
    v7 = *(v5 + 8);
    if (v7 >= v24)
    {
      if (v24)
      {
        memmove(*v5, __s2, 8 * v24);
      }

      goto LABEL_39;
    }

    if (*(v5 + 12) >= v24)
    {
      if (v7)
      {
        memmove(*v5, __s2, 8 * v7);
        goto LABEL_37;
      }
    }

    else
    {
      *(v5 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6, 8);
    }

    v7 = 0;
LABEL_37:
    if (v24 != v7)
    {
      memcpy((*v5 + 8 * v7), __s2 + 8 * v7, 8 * (v24 - v7));
    }

LABEL_39:
    *(v5 + 8) = v6;
    v4 = *(a1 + 16);
    goto LABEL_40;
  }

  v8 = *(a1 + 32);
  v9 = **(a1 + 24);
  v10 = *(v8 + 8);
  if (v10 == v24 && !memcmp(*v8, __s2, 8 * v10))
  {
    goto LABEL_41;
  }

  v11 = *v9;
  v21 = "tensor literal is invalid; ranks are not consistent between elements";
  v22 = 259;
  mlir::detail::Parser::emitError(v11, &v21, v26);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

    v12 = __p;
    if (__p)
    {
      v13 = v32;
      v14 = __p;
      if (v32 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v32 = v12;
      operator delete(v14);
    }

    v15 = v29;
    if (v29)
    {
      v16 = v30;
      v17 = v29;
      if (v30 != v29)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            operator delete[](v18);
          }
        }

        while (v16 != v15);
        v17 = v29;
      }

      v30 = v15;
      operator delete(v17);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

LABEL_42:
  if (__s2 != v25)
  {
    free(__s2);
  }

  return v3;
}

__n128 llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(const char **a1, const char **a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v38 = v5;
    v39 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    v35 = 2;
    v36 = v13;
    v14 = *(a3 + 24);
    v15 = &v35;
    if (v14 >= *(a3 + 28))
    {
      v33 = a1;
      if (v11 <= &v35 && v11 + 24 * v14 > &v35)
      {
        v34 = &v35 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v34[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v35;
      }

      a1 = v33;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      if (*a5)
      {
        v20 = strlen(*a5);
        v35 = 3;
        v36 = v19;
        v37 = v20;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v35 = 3;
        v36 = 0;
        v37 = 0;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      if (v22 > &v35 || v22 + 24 * v21 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, (a4 + 32), v21 + 1, 24);
        v22 = *(a4 + 16);
LABEL_8:
        v23 = &v35;
        goto LABEL_9;
      }

      v31 = &v35 - v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, (a4 + 32), v21 + 1, 24);
      v22 = *(a4 + 16);
      v23 = &v31[v22];
LABEL_9:
      v24 = v22 + 24 * *(a4 + 24);
      v25 = *v23;
      *(v24 + 16) = *(v23 + 2);
      *v24 = v25;
      ++*(a4 + 24);
      v26 = *i;
      v35 = 2;
      v36 = v26;
      v27 = *(a3 + 24);
      v28 = *(a3 + 16);
      if (v27 >= *(a3 + 28))
      {
        if (v28 <= &v35 && v28 + 24 * v27 > &v35)
        {
          v32 = &v35 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v27 + 1, 24);
          v28 = *v12;
          v29 = &v32[*v12];
          goto LABEL_11;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v27 + 1, 24);
        v28 = *v12;
      }

      v29 = &v35;
LABEL_11:
      v30 = (v28 + 24 * *(a3 + 24));
      result = *v29;
      v30[1].n128_u64[0] = v29[1].n128_u64[0];
      *v30 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

_DWORD *std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(uint64_t *a1, const llvm::APInt *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = a1[2] - v2;
  if (v8 >> 3 > v5)
  {
    v5 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    if (v9 >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = operator new(16 * v9);
    v11 = &v10[16 * v4];
    v12 = *(a2 + 2);
    *(v11 + 8) = v12;
    if (v12 <= 0x40)
    {
LABEL_10:
      *v11 = *a2;
      v13 = v4;
      v14 = &v10[16 * v9];
      v15 = v11 + 16;
      v16 = v11 - 16 * v4;
      if (v2 == v3)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    v11 = 16 * v4;
    v17 = *(a2 + 2);
    *(16 * v4 + 8) = v17;
    if (v17 <= 0x40)
    {
      goto LABEL_10;
    }
  }

  llvm::APInt::initSlowCase(v11, a2);
  v2 = *a1;
  v3 = a1[1];
  v13 = (v3 - *a1) >> 4;
  v14 = &v10[16 * v9];
  v15 = v11 + 16;
  v16 = v11 - 16 * v13;
  if (*a1 == v3)
  {
    goto LABEL_22;
  }

LABEL_14:
  v18 = &v10[16 * v4 + 8 + -16 * v13];
  v19 = v2;
  do
  {
    *v18 = *(v19 + 8);
    *(v18 - 1) = *v19;
    *(v19 + 8) = 0;
    v19 += 16;
    v18 += 16;
  }

  while (v19 != v3);
  do
  {
    if (*(v2 + 8) >= 0x41u && *v2)
    {
      operator delete[](*v2);
    }

    v2 += 16;
  }

  while (v2 != v3);
  v2 = *a1;
LABEL_22:
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v14;
  if (v2)
  {
    operator delete(v2);
  }

  return v15;
}

void std::vector<llvm::APFloat>::reserve(llvm::APFloatBase *a1, unint64_t a2)
{
  if (a2 > (*(a1 + 2) - *a1) >> 5)
  {
    if (a2 >> 59)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v2 = *(a1 + 1) - *a1;
    v16 = a1;
    v3 = 32 * a2;
    __p = operator new(32 * a2);
    v13 = __p + v2;
    v14 = __p + v2;
    v15 = __p + v3;
    v5 = std::vector<llvm::APFloat>::__swap_out_circular_buffer(a1, &__p);
    v6 = v13;
    if (v14 != v13)
    {
      v7 = v14;
      v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
      v9 = v7;
      do
      {
        while (1)
        {
          v14 = v9 - 32;
          v11 = *(v9 - 3);
          v10 = (v9 - 24);
          if (v8 != v11)
          {
            break;
          }

          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v10);
          v9 = v14;
          if (v14 == v6)
          {
            goto LABEL_8;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v10);
        v9 = v14;
      }

      while (v14 != v6);
    }

LABEL_8:
    if (__p)
    {
      operator delete(__p);
    }
  }
}

llvm::APFloatBase *std::vector<llvm::APFloat>::__swap_out_circular_buffer(llvm::APFloatBase *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = *(result + 1);
  v7 = v4 - (v5 - *result);
  if (v5 != *result)
  {
    v8 = (v5 - *result) >> 5;
    v9 = llvm::APFloatBase::PPCDoubleDouble(result);
    v10 = (v6 + 8);
    v11 = (v4 - 32 * v8 + 8);
    do
    {
      while (v9 == v10->n128_u64[0])
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v10);
        v12 = &v10[1].n128_i8[8];
        v10 += 2;
        v11 = v13 + 2;
        if (v12 == v5)
        {
          goto LABEL_6;
        }
      }

      v14 = llvm::detail::IEEEFloat::IEEEFloat(v11, v10);
      v15 = &v10[1].n128_i8[8];
      v10 += 2;
      v11 = (v14 + 32);
    }

    while (v15 != v5);
LABEL_6:
    result = (v6 + 8);
    do
    {
      while (v9 == *result)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(result);
        v17 = v16 + 24;
        result = (v16 + 32);
        if (v17 == v5)
        {
          goto LABEL_10;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(result);
      v19 = v18 + 24;
      result = (v18 + 32);
    }

    while (v19 != v5);
LABEL_10:
    v6 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  *(v3 + 1) = v6;
  a2[1] = v6;
  v20 = *(v3 + 1);
  *(v3 + 1) = a2[2];
  a2[2] = v20;
  v21 = *(v3 + 2);
  *(v3 + 2) = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = (*(a1 + 1) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 2) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v23 = a1;
  if (v7)
  {
    if (v7 >> 59)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = operator new(32 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  __p = v8;
  v20 = v9;
  v22 = &v8[32 * v7];
  v11 = *(a2 + 8);
  v10 = (a2 + 8);
  v12 = llvm::APFloatBase::PPCDoubleDouble(v8);
  if (v12 == v11)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9 + 1, v10);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v9 + 8), v10);
  }

  v21 = v9 + 32;
  std::vector<llvm::APFloat>::__swap_out_circular_buffer(a1, &__p);
  v13 = *(a1 + 1);
  v15 = v20;
  for (i = v21; v21 != v15; i = v21)
  {
    while (1)
    {
      v21 = i - 32;
      v17 = *(i - 3);
      v16 = (i - 24);
      if (v12 == v17)
      {
        break;
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v16);
      i = v21;
      if (v21 == v15)
      {
        goto LABEL_19;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  }

LABEL_19:
  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

const char *llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>]";
  v6 = 103;
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

void mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = "expected a 64-bit signed integer or '?'";
  v11 = 259;
  mlir::detail::Parser::emitError(a1, a2, &v10, v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v18;
      v4 = __p;
      if (v18 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v18 = v2;
      operator delete(v4);
    }

    v5 = v15;
    if (v15)
    {
      v6 = v16;
      v7 = v15;
      if (v16 != v15)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            operator delete[](v8);
          }
        }

        while (v6 != v5);
        v7 = v15;
      }

      v16 = v5;
      operator delete(v7);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttribute(mlir::Type)::$_0>(mlir::MLIRContext *****a1)
{
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(a1[1], 0);
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v2 + 16), v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(v2 + 8);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 8);
  return (**a1)[*(*a1 + 2) - 1] != 0;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  LOBYTE(StringAttr) = 0;
  v58 = 0;
  v3 = *(v2 + 8);
  v4 = (v3 + 7);
  v5 = *(v3 + 14);
  if (v5 == 3 || v5 == 12)
  {
LABEL_6:
    v8 = v3[8];
    v7 = v3[9];
    LOWORD(v64) = 261;
    *&v61 = v8;
    *(&v61 + 1) = v7;
    v58 = 1;
    StringAttr = mlir::Builder::getStringAttr(v2, &v61);
    goto LABEL_7;
  }

  if (v5 != 11)
  {
    if (!mlir::Token::isKeyword(v4))
    {
      v59.__r_.__value_.__r.__words[0] = "expected attribute name";
      v60 = 259;
      mlir::detail::Parser::emitWrongTokenError(v2, &v59, &v61);
      v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
      if (v61)
      {
        mlir::InFlightDiagnostic::report(&v61);
      }

      if (v72 != 1)
      {
        return v23;
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

      v27 = v67;
      if (!v67)
      {
        goto LABEL_77;
      }

      v50 = v68;
      v29 = v67;
      if (v68 == v67)
      {
        goto LABEL_76;
      }

      do
      {
        v52 = *--v50;
        v51 = v52;
        *v50 = 0;
        if (v52)
        {
          operator delete[](v51);
        }
      }

      while (v50 != v27);
LABEL_75:
      v29 = v67;
LABEL_76:
      v68 = v27;
      operator delete(v29);
      goto LABEL_77;
    }

    v3 = *(v2 + 8);
    goto LABEL_6;
  }

  mlir::Token::getStringValue(v4, &v59);
  LOWORD(v64) = 260;
  *&v61 = &v59;
  v58 = 1;
  StringAttr = mlir::Builder::getStringAttr(v2, &v61);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

LABEL_7:
  mlir::OpaqueAttr::getAttrData(&StringAttr);
  if (!v10)
  {
    v59.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v60 = 259;
    mlir::detail::Parser::emitError(v2, &v59, &v61);
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (v72 != 1)
    {
      return v23;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v70;
      v26 = __p;
      if (v70 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v70 = v24;
      operator delete(v26);
    }

    v27 = v67;
    if (!v67)
    {
      goto LABEL_77;
    }

    v28 = v68;
    v29 = v67;
    if (v68 == v67)
    {
      goto LABEL_76;
    }

    do
    {
      v31 = *--v28;
      v30 = v31;
      *v28 = 0;
      if (v31)
      {
        operator delete[](v30);
      }
    }

    while (v28 != v27);
    goto LABEL_75;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(a1 + 8), &StringAttr, &v61, &v59, v9);
  if ((v62 & 1) == 0)
  {
    v55 = "duplicate key '";
    v56 = 259;
    mlir::detail::Parser::emitError(v2, &v55, &v61);
    AttrData = mlir::OpaqueAttr::getAttrData(&StringAttr);
    if (v61)
    {
      v60 = 261;
      v59.__r_.__value_.__r.__words[0] = AttrData;
      v59.__r_.__value_.__l.__size_ = v33;
      mlir::Diagnostic::operator<<(&v61 + 8, &v59);
      if (v61)
      {
        LODWORD(v59.__r_.__value_.__l.__data_) = 3;
        v59.__r_.__value_.__l.__size_ = "' in dictionary attribute";
        v59.__r_.__value_.__r.__words[2] = 25;
        v34 = &v59;
        v35 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v35 = v63;
            v34 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v34 = &v59;
            v35 = v63;
          }
        }

        v36 = &v35[24 * v64];
        v37 = *&v34->__r_.__value_.__l.__data_;
        *(v36 + 2) = *(&v34->__r_.__value_.__l + 2);
        *v36 = v37;
        ++v64;
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (v72 != 1)
    {
      return v23;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v70;
      v40 = __p;
      if (v70 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v70 = v38;
      operator delete(v40);
    }

    v27 = v67;
    if (v67)
    {
      v41 = v68;
      v29 = v67;
      if (v68 == v67)
      {
        goto LABEL_76;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          operator delete[](v42);
        }
      }

      while (v41 != v27);
      goto LABEL_75;
    }

LABEL_77:
    if (v63 != v66)
    {
      free(v63);
    }

    return v23;
  }

  v11 = *(v2 + 8);
  *(v11 + 80) = *(v11 + 56);
  *(v11 + 96) = *(v11 + 72);
  mlir::Lexer::lexToken(&v61, (*(v2 + 8) + 8));
  v12 = *(v2 + 8);
  *(v12 + 56) = v61;
  *(v12 + 72) = v62;
  *&v61 = mlir::OpaqueAttr::getAttrData(&StringAttr);
  *(&v61 + 1) = v13;
  v59.__r_.__value_.__s.__data_[0] = 46;
  v14 = llvm::StringRef::find(&v61, &v59, 1uLL, 0);
  if (v14 != -1 && *(&v61 + 1) > v14 + 1)
  {
    mlir::MLIRContext::getOrLoadDialect(***(v2 + 8), v61, v14);
  }

  v16 = *(v2 + 8);
  if (*(v16 + 56) == 18)
  {
    *(v16 + 80) = *(v16 + 56);
    *(v16 + 96) = *(v16 + 72);
    mlir::Lexer::lexToken(&v61, (*(v2 + 8) + 8));
    v17 = *(v2 + 8);
    *(v17 + 56) = v61;
    *(v17 + 72) = v62;
    v18 = mlir::detail::Parser::parseAttribute(v2, 0);
    if (!v18)
    {
      return 0;
    }

    v19 = *(a1 + 16);
    mlir::NamedAttribute::NamedAttribute(&v61, StringAttr, v18);
    v21 = *(&v61 + 1);
    v20 = v61;
    v22 = v19;
  }

  else
  {
    v44 = *(a1 + 16);
    v45 = StringAttr;
    UnitAttr = mlir::Builder::getUnitAttr(v2, v15);
    mlir::NamedAttribute::NamedAttribute(&v61, v45, UnitAttr);
    v21 = *(&v61 + 1);
    v20 = v61;
    v22 = v44;
  }

  mlir::NamedAttrList::push_back(v22, v20, v21);
  return 1;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v6 = result + 2;
  v5 = *result;
  v7 = *result & 1;
  if (v7)
  {
    v8 = 4;
    v9 = result + 2;
  }

  else
  {
    v8 = result[4];
    if (!v8)
    {
      v12 = 0;
      v14 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v9 = *(result + 1);
  }

  v10 = v8 - 1;
  v11 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v8 - 1);
  v12 = &v9[2 * v11];
  a4 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v7)
    {
      v13 = 4;
    }

    else
    {
      v6 = *(result + 1);
      v13 = result[4];
    }

    *a3 = v12;
    *(a3 + 8) = &v6[2 * v13];
    *(a3 + 16) = 0;
    return result;
  }

  v16 = 0;
  a5 = 1;
  while (a4 != -4096)
  {
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a4 == -8192;
    }

    if (v17)
    {
      v16 = v12;
    }

    v18 = v11 + a5;
    a5 = (a5 + 1);
    v11 = v18 & v10;
    v12 = &v9[2 * (v18 & v10)];
    a4 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v12 = v16;
  }

  v22 = v12;
  if (v7)
  {
    v14 = 4;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v5 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v5 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(result, v14, a4, a5);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v5 = *v21;
    v12 = v22;
    v7 = *v21 & 1;
  }

  *result = (v5 & 0xFFFFFFFE | v7) + 2;
  if (*v12 != -4096)
  {
    --result[1];
  }

  *v12 = *a2;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v6 = *(result + 1);
    v15 = result[4];
  }

  *a3 = v12;
  *(a3 + 8) = &v6[2 * v15];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

unsigned int *llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v60[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v5 = (a2 - 1) | ((a2 - 1) >> 1);
    v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
    v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
    if ((v7 + 1) > 0x40)
    {
      a2 = v7 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v8 = *(result + 1);
    v9 = result[4];
    if (a2 > 4)
    {
      v25 = a2;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      *(v4 + 1) = buffer;
      *(v4 + 2) = v25;
      v27 = *v4;
      v10 = (v8 + 8 * v9);
      *v4 = *v4 & 1;
      if ((v27 & 1) == 0)
      {
        v28 = buffer + 2 * v25;
        v29 = 8 * v25 - 8;
        if (v29 < 0x18)
        {
          v31 = buffer;
          goto LABEL_28;
        }

LABEL_22:
        v30 = (v29 >> 3) + 1;
        v31 = buffer + 2 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
        v32 = buffer + 1;
        v33 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v34 = v30 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v32[-1] = v33;
          *v32 = v33;
          v32 += 2;
          v34 -= 4;
        }

        while (v34);
        if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_29:
          if (v9)
          {
            v35 = v8;
            do
            {
              v41 = *v35;
              if ((*v35 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v4)
                {
                  v37 = 3;
                  v36 = v4 + 2;
                }

                else
                {
                  v36 = *(v4 + 1);
                  v37 = v4[4] - 1;
                }

                v38 = v37 & ((v41 >> 4) ^ (v41 >> 9));
                v39 = &v36[2 * v38];
                v40 = *v39;
                if (v41 != *v39)
                {
                  v42 = 0;
                  v43 = 1;
                  while (v40 != -4096)
                  {
                    if (v42)
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = v40 == -8192;
                    }

                    if (v44)
                    {
                      v42 = v39;
                    }

                    v45 = v38 + v43++;
                    v38 = v45 & v37;
                    v39 = &v36[2 * (v45 & v37)];
                    v40 = *v39;
                    if (v41 == *v39)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v42)
                  {
                    v39 = v42;
                  }
                }

LABEL_33:
                *v39 = v41;
                *v4 += 2;
              }

              v35 = (v35 + 8);
            }

            while (v35 != v10);
          }

          llvm::deallocate_buffer(v8, (8 * v9));
        }

        do
        {
LABEL_28:
          *v31 = -4096;
          v31 += 2;
        }

        while (v31 != v28);
        goto LABEL_29;
      }
    }

    else
    {
      v10 = (v8 + 8 * v9);
      *result = 1;
    }

    v28 = v4 + 10;
    buffer = (v4 + 2);
    v29 = 24;
    goto LABEL_22;
  }

  v11 = &v59;
  if ((*(result + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v12 = *(result + 2);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v59 = *(result + 1);
    v11 = v60;
    v12 = *(result + 2);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v13 = *(result + 3);
      if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  *v11++ = v12;
  v13 = *(result + 3);
  if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v14 = *(result + 4);
    if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *v11++ = v13;
  v14 = *(result + 4);
  if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v15 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *v11++ = v14;
  v15 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v15 & 1;
    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_58:
    v18 = v4 + 10;
    v17 = v4 + 2;
    v19 = 24;
    goto LABEL_16;
  }

LABEL_57:
  *result = v15 & 0xFFFFFFFE;
  v46 = a2;
  result = llvm::allocate_buffer(8 * a2, 8uLL);
  *(v4 + 1) = result;
  *(v4 + 2) = v46;
  v47 = *v4;
  *v4 = *v4 & 1;
  if (v47)
  {
    goto LABEL_58;
  }

LABEL_14:
  v16 = v4[4];
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = *(v4 + 1);
  v18 = &v17[2 * v16];
  v19 = v18 - v17 - 8;
  if (v19 < 0x18)
  {
    v21 = *(v4 + 1);
    do
    {
LABEL_60:
      *v21 = -4096;
      v21 += 2;
    }

    while (v21 != v18);
    goto LABEL_61;
  }

LABEL_16:
  v20 = (v19 >> 3) + 1;
  v21 = &v17[2 * (v20 & 0x3FFFFFFFFFFFFFFCLL)];
  v22 = (v17 + 4);
  v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v22[-1] = v23;
    *v22 = v23;
    v22 += 2;
    v24 -= 4;
  }

  while (v24);
  if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_60;
  }

LABEL_61:
  if (&v59 != v11)
  {
    v48 = &v59;
    do
    {
      v54 = *v48;
      if ((*v48 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v4)
        {
          v50 = 3;
          v49 = v4 + 2;
        }

        else
        {
          v49 = *(v4 + 1);
          v50 = v4[4] - 1;
        }

        v51 = v50 & ((v54 >> 4) ^ (v54 >> 9));
        v52 = &v49[2 * v51];
        v53 = *v52;
        if (v54 != *v52)
        {
          v55 = 0;
          v56 = 1;
          while (v53 != -4096)
          {
            if (v55)
            {
              v57 = 0;
            }

            else
            {
              v57 = v53 == -8192;
            }

            if (v57)
            {
              v55 = v52;
            }

            v58 = v51 + v56++;
            v51 = v58 & v50;
            v52 = &v49[2 * (v58 & v50)];
            v53 = *v52;
            if (v54 == *v52)
            {
              goto LABEL_65;
            }
          }

          if (v55)
          {
            v52 = v55;
          }
        }

LABEL_65:
        *v52 = v54;
        *v4 += 2;
      }

      ++v48;
    }

    while (v48 != v11);
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>(uint64_t *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 != 24)
  {
    v6 = *(v3 + 56);
    LOBYTE(v42) = 0;
    v44 = 0;
    if (v4 != 10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v13;
    mlir::Lexer::lexToken(__x, (*(v2 + 8) + 8));
    v14 = *(v2 + 8);
    *(v14 + 56) = *__x;
    *(v14 + 72) = v46;
    buildAttributeAPInt(__x, *v1, v4 == 24, v12, v13);
    if (v46)
    {
      v9 = *&__x[8];
      v43 = *&__x[8];
      v42 = *__x;
      v44 = 1;
      if (!*&__x[8])
      {
LABEL_11:
        ++*(v1 + 32);
        v18 = 1;
        goto LABEL_64;
      }

LABEL_10:
      v15 = v9 >> 3;
      v16.__i_ = *(v1 + 16);
      v17 = &v16.__i_[-*(v1 + 8)];
      __x[0] = 0;
      std::vector<char>::insert((v1 + 8), v16, v15, __x);
      llvm::StoreIntToMemory(&v42, &v17[*(v1 + 8)], v15);
      goto LABEL_11;
    }

    v40[0] = "integer constant out of range";
    v41 = 259;
    mlir::detail::Parser::emitError(v2, v40, __x);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__x);
    if (*__x)
    {
      mlir::InFlightDiagnostic::report(__x);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v52;
        v35 = __p;
        if (v52 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v52 = v33;
        operator delete(v35);
      }

      v22 = v49;
      if (!v49)
      {
        goto LABEL_62;
      }

      v36 = v50;
      v24 = v49;
      if (v50 == v49)
      {
        goto LABEL_61;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          operator delete[](v37);
        }
      }

      while (v36 != v22);
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(__x, (*(v2 + 8) + 8));
  v5 = *(v2 + 8);
  *(v5 + 56) = *__x;
  *(v5 + 72) = v46;
  v3 = *(v2 + 8);
  v6 = *(v3 + 56);
  LOBYTE(v42) = 0;
  v44 = 0;
  if (v6 == 10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 == 79 || v6 == 59)
  {
    if (mlir::Type::isInteger(v1, 1))
    {
      v7 = *(*(v2 + 8) + 56);
      mlir::Type::isUnsignedInteger(v1);
      v8 = v7 == 79;
      v9 = 8;
      v43 = 8;
      v42 = v8;
      v44 = 1;
      v10 = *(v2 + 8);
      *(v10 + 96) = *(v10 + 72);
      *(v10 + 80) = *(v10 + 56);
      mlir::Lexer::lexToken(__x, (*(v2 + 8) + 8));
      v11 = *(v2 + 8);
      *(v11 + 56) = *__x;
      *(v11 + 72) = v46;
      goto LABEL_10;
    }

    v40[0] = "expected i1 type for 'true' or 'false' values";
    v41 = 259;
    mlir::detail::Parser::emitError(v2, v40, __x);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__x);
    if (*__x)
    {
      mlir::InFlightDiagnostic::report(__x);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v52;
        v21 = __p;
        if (v52 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v52 = v19;
        operator delete(v21);
      }

      v22 = v49;
      if (!v49)
      {
        goto LABEL_62;
      }

      v23 = v50;
      v24 = v49;
      if (v50 == v49)
      {
LABEL_61:
        v50 = v22;
        operator delete(v24);
LABEL_62:
        if (v47 != &v48)
        {
          free(v47);
        }

        goto LABEL_64;
      }

      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v23 != v22);
LABEL_60:
      v24 = v49;
      goto LABEL_61;
    }
  }

  else
  {
    v40[0] = "expected integer literal";
    v41 = 259;
    mlir::detail::Parser::emitError(v2, v40, __x);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__x);
    if (*__x)
    {
      mlir::InFlightDiagnostic::report(__x);
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

      v22 = v49;
      if (!v49)
      {
        goto LABEL_62;
      }

      v30 = v50;
      v24 = v49;
      if (v50 == v49)
      {
        goto LABEL_61;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v30 != v22);
      goto LABEL_60;
    }
  }

LABEL_64:
  if (v44 == 1 && v43 >= 0x41 && v42)
  {
    operator delete[](v42);
  }

  return v18;
}

std::vector<char>::iterator std::vector<char>::insert(std::vector<char> *this, std::vector<char>::const_iterator __position, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  i = __position.__i_;
  if (!__n)
  {
    return i;
  }

  v5 = __x;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end < __n)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + __n;
    if (v11 < 0)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v12 = (__position.__i_ - begin);
    v13 = value - begin;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      v15 = operator new(v14);
    }

    else
    {
      v15 = 0;
    }

    memset(&v12[v15], *v5, __n);
    memcpy(&v12[v15 + __n], i, end - i);
    this->__end_ = i;
    memcpy(v15, begin, i - begin);
    this->__begin_ = v15;
    this->__end_ = &v12[v15 + __n + end - i];
    this->__end_cap_.__value_ = v15 + v14;
    if (begin)
    {
      operator delete(begin);
    }

    return &v12[v15];
  }

  v16 = end - __position.__i_;
  if (__n > end - __position.__i_)
  {
    memset(this->__end_, *__x, __n - (end - __position.__i_));
    v17 = &i[__n];
    this->__end_ = &i[__n];
    if (!v16)
    {
      return i;
    }

    v18 = end - i;
    v19 = &i[__n];
    v20 = i;
    v21 = &i[__n];
    if (i >= end)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v17 = this->__end_;
  v18 = __n;
  v19 = &__position.__i_[__n];
  v20 = &end[-__n];
  v21 = v17;
  if (end >= __n)
  {
LABEL_16:
    if (__n <= v16)
    {
      v22 = end - i;
    }

    else
    {
      v22 = __n;
    }

    v23 = &end[__n] - i - v22;
    v24 = v23 >= 0x20 && __n > 0x1F;
    v21 = v17;
    if (!v24)
    {
      goto LABEL_45;
    }

    v20 += v23 & 0xFFFFFFFFFFFFFFE0;
    v21 = &v17[v23 & 0xFFFFFFFFFFFFFFE0];
    v25 = &i[v22 + 16];
    v26 = &v25[-__n];
    v27 = v23 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v28 = *v26;
      *(v25 - 1) = *(v26 - 1);
      *v25 = v28;
      v25 += 32;
      v26 += 32;
      v27 -= 32;
    }

    while (v27);
    if (v23 != (v23 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_45:
      do
      {
        v29 = *v20++;
        *v21++ = v29;
      }

      while (v20 != end);
    }
  }

LABEL_28:
  this->__end_ = v21;
  if (v17 != v19)
  {
    memmove(v19, i, v17 - v19);
  }

  if (i <= v5)
  {
    if (this->__end_ <= v5)
    {
      v30 = 0;
    }

    else
    {
      v30 = __n;
    }

    v5 += v30;
  }

  memset(i, *v5, v18);
  return i;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>(uint64_t **a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = v2[1];
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(__p, (v2[1] + 8));
    v5 = v2[1];
    *(v5 + 56) = *__p;
    *(v5 + 72) = v51;
    v3 = v2[1];
  }

  v48 = *(v3 + 56);
  v49 = *(v3 + 72);
  v60[0] = 0;
  v62 = 0;
  v47 = *v1;
  if (v48 == 9)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(__p, (v2[1] + 8));
    v13 = v2[1];
    *(v13 + 56) = *__p;
    *(v13 + 72) = v51;
    v10 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue(&v48, v14, v15, v16));
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    v20 = v10;
    if (v4 == 24)
    {
      v20 = -v10;
    }

    v21 = llvm::detail::IEEEFloat::IEEEFloat(v45, v20, v17, v18, v19);
    v22 = llvm::APFloatBase::IEEEdouble(v21);
    llvm::APFloat::Storage::Storage(&__p[1], v45, v22);
    llvm::detail::IEEEFloat::~IEEEFloat(v45);
    if (v62 == 1)
    {
      v24 = llvm::APFloat::Storage::operator=(&v61, &__p[1]);
      v12 = llvm::APFloatBase::PPCDoubleDouble(v24);
      if (v12 != __p[1])
      {
        goto LABEL_12;
      }

LABEL_52:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
      if (mlir::Type::isF64(v1))
      {
LABEL_14:
        if (v12 == v61.n128_u64[0])
        {
          v10 = COERCE_DOUBLE(llvm::detail::DoubleAPFloat::bitcastToAPInt(__p, &v61, v11));
          v26 = LODWORD(__p[1]);
          if (LODWORD(__p[1]))
          {
            goto LABEL_16;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::bitcastToAPInt(__p, &v61);
          v26 = LODWORD(__p[1]);
          if (LODWORD(__p[1]))
          {
LABEL_16:
            v27 = v26 >> 3;
            v29 = v1[1];
            v28.__i_ = v1[2];
            v30 = (v1 + 1);
            v31 = &v28.__i_[-v29];
            v45[0] = 0;
            std::vector<char>::insert(v30, v28, v27, v45);
            v10 = COERCE_DOUBLE(llvm::StoreIntToMemory(__p, &v30->__begin_[v31], v27));
            v32 = __p[1];
            ++v30[1].__begin_;
            if (v32 >= 0x41)
            {
              v10 = *__p;
              if (__p[0])
              {
                operator delete[](__p[0]);
              }
            }

            goto LABEL_38;
          }
        }

        ++v1[4];
LABEL_38:
        v33 = 1;
        goto LABEL_46;
      }

LABEL_13:
      LOBYTE(__p[0]) = 0;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v47);
      llvm::APFloat::convert(v60, FloatSemantics, 1, __p);
      goto LABEL_14;
    }

    v42 = __p[1];
    v12 = llvm::APFloatBase::PPCDoubleDouble(v23);
    if (v12 == v42)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, &__p[1]);
      v62 = 1;
      if (v12 == __p[1])
      {
        goto LABEL_52;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v61, &__p[1]);
      v62 = 1;
      if (v12 == __p[1])
      {
        goto LABEL_52;
      }
    }

LABEL_12:
    llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
    if (mlir::Type::isF64(v1))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v48 == 10)
  {
    v6 = v4 == 24;
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(__p, (v2[1] + 8));
    v7 = v2[1];
    *(v7 + 56) = *__p;
    *(v7 + 72) = v51;
    v8 = mlir::FloatType::getFloatSemantics(&v47);
    Width = mlir::FloatType::getWidth(&v47);
    v10 = COERCE_DOUBLE(mlir::detail::Parser::parseFloatFromIntegerLiteral(v2, v60, &v48, v6, v8, Width));
    if (LOBYTE(v10))
    {
      v12 = llvm::APFloatBase::PPCDoubleDouble(*&v10);
      goto LABEL_14;
    }

LABEL_19:
    v33 = 0;
    goto LABEL_46;
  }

  *v45 = "expected integer or floating point literal";
  v46 = 259;
  mlir::detail::Parser::emitError(v2, v45, __p);
  *&v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__p);
  v33 = *&v10;
  if (__p[0])
  {
    mlir::InFlightDiagnostic::report(__p);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v34 = v56;
    if (v56)
    {
      v35 = v57;
      v36 = v56;
      if (v57 != v56)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = v56;
      }

      v57 = v34;
      operator delete(v36);
    }

    v37 = v54;
    if (v54)
    {
      v38 = v55;
      v39 = v54;
      if (v55 != v54)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            operator delete[](v40);
          }
        }

        while (v38 != v37);
        v39 = v54;
      }

      v55 = v37;
      operator delete(v39);
    }

    v10 = *&v52;
    if (v52 != &v53)
    {
      free(v52);
    }
  }

LABEL_46:
  if (v62 == 1)
  {
    v43 = v61.n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(*&v10) == v43)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v61);
    }
  }

  return v33;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::grow(uint64_t a1, int a2)
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
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & (((0xBF58476D1CE4E5B9 * v23) >> 31) ^ (484763065 * v23));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -1;
      *v19 = -1;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseDialectSymbolBody(mlir::detail::Parser *this, llvm::StringRef *a2, BOOL *a3)
{
  v6 = 0;
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v48 = v50;
  v49 = xmmword_1E096FB00;
  v9 = *(v7 + 48);
  v37[0] = this;
  v37[1] = &v48;
  while (1)
  {
    while (1)
    {
      if (v8 == v9)
      {
        EndLoc = v8;
        goto LABEL_37;
      }

      EndLoc = (v8 + 1);
      v13 = *v8;
      if (v13 > 0x3D)
      {
        if (*v8 <= 0x5Cu)
        {
          if (v13 == 62)
          {
            if (!mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x3Cu))
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 91)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v13 == 93)
          {
            if (!mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x5Bu))
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 123)
          {
            if (v13 == 125 && !mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x7Bu))
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }
        }

        goto LABEL_24;
      }

      if (*v8 <= 0x28u)
      {
        break;
      }

      switch(v13)
      {
        case ')':
          if (!mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(&v48, v37, 0x28u))
          {
            goto LABEL_43;
          }

          break;
        case '-':
          v10 = v8[1];
          v11 = v8 + 2;
          if (v10 == 62)
          {
            EndLoc = v11;
          }

          break;
        case '<':
          goto LABEL_24;
      }

LABEL_4:
      v6 = v49;
      v8 = EndLoc;
      if (!v49)
      {
        goto LABEL_38;
      }
    }

    if (v13 == 34)
    {
      v14 = *(this + 1);
      *(v14 + 40) = v8;
      mlir::Lexer::lexToken(&v38, (v14 + 8));
      v15 = *(this + 1);
      *(v15 + 56) = v38;
      *(v15 + 72) = v39;
      EndLoc = mlir::Token::getEndLoc((*(this + 1) + 56));
      v16 = *(*(this + 1) + 56);
      if (v16 != 11)
      {
        if (v16 != 2)
        {
LABEL_43:
          v19 = 0;
          goto LABEL_39;
        }

LABEL_37:
        *a3 = 1;
        *&v49 = 0;
LABEL_38:
        v17 = *(this + 1);
        *(v17 + 40) = EndLoc;
        mlir::Lexer::lexToken(&v38, (v17 + 8));
        v18 = *(this + 1);
        *(v18 + 56) = v38;
        *(v18 + 72) = v39;
        *(a2 + 1) = (EndLoc - *a2);
        v19 = 1;
        goto LABEL_39;
      }

      goto LABEL_4;
    }

    if (v13 != 40)
    {
      break;
    }

LABEL_24:
    if ((v6 + 1) > *(&v49 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v48, v50, v6 + 1, 1);
      v6 = v49;
    }

    v48[v6] = v13;
    v8 = EndLoc;
    v6 = v49 + 1;
    *&v49 = v6;
    if (!v6)
    {
      goto LABEL_38;
    }
  }

  if (*v8)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_0::operator()(&v38, v37);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
    if (v38)
    {
      mlir::InFlightDiagnostic::report(&v38);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v45;
        v23 = __p;
        if (v45 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v45 = v21;
        operator delete(v23);
      }

      v24 = v42;
      if (v42)
      {
        v25 = v43;
        v26 = v42;
        if (v43 == v42)
        {
          goto LABEL_78;
        }

        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            operator delete[](v27);
          }
        }

        while (v25 != v24);
LABEL_77:
        v26 = v42;
        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v35 = "unexpected nul or EOF in pretty dialect name";
    v36 = 259;
    mlir::detail::Parser::emitError(this, &v35, &v38);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
    if (v38)
    {
      mlir::InFlightDiagnostic::report(&v38);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v45;
        v31 = __p;
        if (v45 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v45 = v29;
        operator delete(v31);
      }

      v24 = v42;
      if (v42)
      {
        v32 = v43;
        v26 = v42;
        if (v43 != v42)
        {
          do
          {
            v34 = *--v32;
            v33 = v34;
            *v32 = 0;
            if (v34)
            {
              operator delete[](v33);
            }
          }

          while (v32 != v24);
          goto LABEL_77;
        }

LABEL_78:
        v43 = v24;
        operator delete(v26);
      }

LABEL_79:
      if (v40 != &v41)
      {
        free(v40);
      }
    }
  }

LABEL_39:
  if (v48 != v50)
  {
    free(v48);
  }

  return v19;
}

void mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v24 = 257;
  mlir::detail::Parser::emitError(v4, v23, &v28);
  if (v28)
  {
    v25 = 3;
    v26 = "unbalanced '";
    v27 = 12;
    v5 = &v25;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v25 && v30 + 24 * v31 > &v25)
      {
        v21 = &v25 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v25;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v31;
    if (v28)
    {
      mlir::Diagnostic::operator<<(&v29, *(**(a2 + 8) + *(*(a2 + 8) + 8) - 1));
      if (v28)
      {
        v25 = 3;
        v26 = "' character in pretty dialect name";
        v27 = 34;
        v9 = &v25;
        v10 = v30;
        if (v31 >= v32)
        {
          if (v30 <= &v25 && v30 + 24 * v31 > &v25)
          {
            v22 = &v25 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v10 = v30;
            v9 = (v30 + v22);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v9 = &v25;
            v10 = v30;
          }
        }

        v11 = &v10[24 * v31];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v31;
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v28);
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

    v13 = __p;
    if (__p)
    {
      v14 = v37;
      v15 = __p;
      if (v37 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v37 = v13;
      operator delete(v15);
    }

    v16 = v34;
    if (v34)
    {
      v17 = v35;
      v18 = v34;
      if (v35 != v34)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v34;
      }

      v35 = v16;
      operator delete(v18);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

BOOL mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (*(*a1 + v3 - 1) == a3)
  {
    a1[1] = v3 - 1;
    return 1;
  }

  else
  {
    mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_0::operator()(v14, a2);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
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
              operator delete[](v11);
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

  return v4;
}

void *mlir::detail::Parser::parseExtendedAttr(mlir::detail::Parser *a1, uint64_t *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = **v4;
  v6 = *(v4 + 152);
  v7 = *(v4 + 104);
  v10 = *(v4 + 56);
  v8 = (v4 + 56);
  v9 = v10;
  v11 = *(v8 + 1);
  v12 = *(v8 + 2);
  if (v12)
  {
    ++v11;
  }

  *&v101 = v11;
  *(&v101 + 1) = v12 - (v12 != 0);
  if (v9 == 2 && v12 <= 1)
  {
    Checked = mlir::detail::Parser::codeCompleteDialectSymbol(a1);
LABEL_38:
    v45 = Checked;
    goto LABEL_70;
  }

  v89 = v5;
  LocRange = mlir::Token::getLocRange(v8);
  v90 = v15;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v17 = *(a1 + 1);
  *(v17 + 96) = *(v17 + 72);
  *(v17 + 80) = *(v17 + 56);
  mlir::Lexer::lexToken(&v102, (*(a1 + 1) + 8));
  v18 = *(a1 + 1);
  *(v18 + 56) = v102;
  *(v18 + 72) = v103;
  LOBYTE(v102) = 46;
  v19 = llvm::StringRef::find(&v101, &v102, 1uLL, 0);
  v91 = LocRange;
  if (v19 == -1)
  {
    v28 = Loc;
    v26 = 0;
    v99 = 0;
    v100 = 0;
    v98 = v101;
    v22 = *(&v101 + 1);
    v23 = v101;
  }

  else
  {
    v22 = *(&v101 + 1);
    v23 = v101;
    if (v19 >= *(&v101 + 1))
    {
      v24 = *(&v101 + 1);
    }

    else
    {
      v24 = v19;
    }

    if (*(&v101 + 1) >= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = *(&v101 + 1);
    }

    v26 = (v101 + v25);
    *&v98 = v101;
    *(&v98 + 1) = v24;
    v27 = (*(&v101 + 1) - v25);
    v99 = (v101 + v25);
    v100 = (*(&v101 + 1) - v25);
    v28 = Loc;
    if (*(&v101 + 1) != v25)
    {
      v29 = 1;
      v30 = (v101 + v25);
      v31 = *(a1 + 1);
      if (*(v31 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_41:
      v32 = (v23 + v22) == *(v31 + 64);
      if (!v32 && !v29)
      {
        goto LABEL_18;
      }

LABEL_42:
      if (v29)
      {
        if (v32)
        {
          if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v99, &v102))
          {
            goto LABEL_69;
          }

          v30 = v99;
          v27 = v100;
        }
      }

      else
      {
        v99 = (v98 + *(&v98 + 1));
        v100 = 0;
        LOBYTE(v102) = 0;
        if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v99, &v102))
        {
          goto LABEL_69;
        }

        v47 = v100 != 0;
        if (v100)
        {
          v30 = (v99 + 1);
        }

        else
        {
          v30 = v99;
        }

        v27 = &v100[-v47];
        v99 = v30;
        v100 -= v47;
        if ((v102 & 1) == 0)
        {
          if (v27 >= v27 - 1)
          {
            --v27;
          }

          v100 = v27;
        }

        v26 = v28;
      }

      v48 = v98;
      v92[0] = v26;
      v49 = *(a1 + 1);
      v50 = a2;
      if (*(v49 + 56) != 15 || (*(v49 + 80) = *(v49 + 56), *(v49 + 96) = *(v49 + 72), mlir::Lexer::lexToken(&v102, (*(a1 + 1) + 8)), v51 = *(a1 + 1), *(v51 + 56) = v102, *(v51 + 72) = v103, (v50 = mlir::detail::Parser::parseType(a1)) != 0))
      {
        Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v48, *(&v48 + 1));
        if (!Dialect)
        {
          *&v95 = a1;
          *(&v95 + 1) = v92;
          LOWORD(v105) = 261;
          v102 = v48;
          v60 = mlir::StringAttr::get(v89, &v102);
          if (!v50)
          {
            v50 = mlir::NoneType::get(v89, v59);
          }

          Checked = mlir::OpaqueAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v95, v60, v30, v27, v50);
          goto LABEL_38;
        }

        v53 = Dialect;
        v54 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v55 = *(a1 + 1);
        *(v55 + 40) = v30;
        mlir::Lexer::lexToken(&v102, (v55 + 8));
        v56 = *(a1 + 1);
        *(v56 + 56) = v102;
        *(v56 + 72) = v103;
        *(&v102 + 1) = mlir::Token::getLoc((*(a1 + 1) + 56));
        v103 = a1;
        LOBYTE(v104) = 0;
        *&v102 = &unk_1F5AF1AF0;
        v105 = v30;
        v106[0] = v27;
        v45 = (*(*v53 + 32))(v53, &v102, v50);
        v57 = *(a1 + 1);
        *(v57 + 40) = v54;
        mlir::Lexer::lexToken(&v95, (v57 + 8));
        v58 = *(a1 + 1);
        *(v58 + 56) = v95;
        *(v58 + 72) = v96;
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        goto LABEL_70;
      }

LABEL_69:
      v45 = 0;
      goto LABEL_70;
    }
  }

  v27 = 0;
  v29 = *(v23 + v22 - 1) == 46;
  v30 = v26;
  v31 = *(a1 + 1);
  if (*(v31 + 56) == 23)
  {
    goto LABEL_41;
  }

LABEL_17:
  v32 = 0;
  if (v29)
  {
    goto LABEL_42;
  }

LABEL_18:
  v33 = llvm::StringMapImpl::hash(v23, v22, v20, v21);
  Key = llvm::StringMapImpl::FindKey(v7, v23, v22, v33);
  if (Key == -1)
  {
    v35 = *(v7 + 8);
  }

  else
  {
    v35 = Key;
  }

  if (v35 == *(v7 + 8))
  {
    v94 = 1283;
    v92[0] = "undefined symbol alias id '";
    v93 = v101;
    *&v95 = v92;
    v96 = "'";
    v97 = 770;
    mlir::detail::Parser::emitWrongTokenError(a1, &v95, &v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v112 == 1)
    {
      if (v111 != &v112)
      {
        free(v111);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v110;
        v38 = __p;
        if (v110 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v110 = v36;
        operator delete(v38);
      }

      v39 = v107;
      if (v107)
      {
        v40 = v108;
        v41 = v107;
        if (v108 != v107)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              operator delete[](v42);
            }
          }

          while (v40 != v39);
          v41 = v107;
        }

        v108 = v39;
        operator delete(v41);
      }

      if (v104 != v106)
      {
        free(v104);
      }
    }

    goto LABEL_69;
  }

  v46 = *v7;
  if (v6)
  {
    mlir::AsmParserState::addAttrAliasUses(v6, v101, *(&v101 + 1), v91, v90);
  }

  v45 = *(*(v46 + 8 * v35) + 8);
LABEL_70:
  if (v45)
  {
    v61 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v45);
    *&v98 = v61;
    *(&v98 + 1) = v62;
    if (!a2)
    {
      return v45;
    }
  }

  else
  {
    v61 = 0;
    v98 = 0uLL;
    if (!a2)
    {
      return v45;
    }
  }

  if (v61 && mlir::CallOpInterface::getCallableForCallee(&v98) != a2)
  {
    *&v95 = "attribute type different than expected: expected ";
    v97 = 259;
    mlir::detail::Parser::emitError(a1, &v95, &v102);
    if (v102)
    {
      v63 = v92;
      mlir::DiagnosticArgument::DiagnosticArgument(v92, a2);
      v64 = v104;
      if (v105 >= HIDWORD(v105))
      {
        if (v104 <= v92 && v104 + 24 * v105 > v92)
        {
          v86 = v92 - v104;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v64 = v104;
          v63 = v104 + v86;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v63 = v92;
          v64 = v104;
        }
      }

      v65 = &v64[24 * v105];
      v66 = *v63;
      *(v65 + 2) = *(v63 + 2);
      *v65 = v66;
      v67 = (v105 + 1);
      LODWORD(v105) = v105 + 1;
      if (v102)
      {
        LODWORD(v92[0]) = 3;
        v92[1] = ", but got ";
        *&v93 = 10;
        v68 = v92;
        v69 = v104;
        if (v67 >= HIDWORD(v105))
        {
          if (v104 <= v92 && v104 + 24 * v67 > v92)
          {
            v88 = v92 - v104;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v67 + 1, 24);
            v69 = v104;
            v68 = v104 + v88;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v67 + 1, 24);
            v68 = v92;
            v69 = v104;
          }
        }

        v70 = &v69[24 * v105];
        v71 = *v68;
        *(v70 + 2) = *(v68 + 2);
        *v70 = v71;
        LODWORD(v105) = v105 + 1;
      }
    }

    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v98);
    if (v102)
    {
      v73 = v92;
      mlir::DiagnosticArgument::DiagnosticArgument(v92, CallableForCallee);
      v74 = v104;
      if (v105 >= HIDWORD(v105))
      {
        if (v104 <= v92 && v104 + 24 * v105 > v92)
        {
          v87 = v92 - v104;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v74 = v104;
          v73 = v104 + v87;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 24);
          v73 = v92;
          v74 = v104;
        }
      }

      v75 = &v74[24 * v105];
      v76 = *v73;
      *(v75 + 2) = *(v73 + 2);
      *v75 = v76;
      LODWORD(v105) = v105 + 1;
      if (v102)
      {
        mlir::InFlightDiagnostic::report(&v102);
      }
    }

    if (v112 == 1)
    {
      if (v111 != &v112)
      {
        free(v111);
      }

      v77 = __p;
      if (__p)
      {
        v78 = v110;
        v79 = __p;
        if (v110 != __p)
        {
          do
          {
            v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
          }

          while (v78 != v77);
          v79 = __p;
        }

        v110 = v77;
        operator delete(v79);
      }

      v80 = v107;
      if (v107)
      {
        v81 = v108;
        v82 = v107;
        if (v108 != v107)
        {
          do
          {
            v84 = *--v81;
            v83 = v84;
            *v81 = 0;
            if (v84)
            {
              operator delete[](v83);
            }
          }

          while (v81 != v80);
          v82 = v107;
        }

        v108 = v80;
        operator delete(v82);
      }

      if (v104 != v106)
      {
        free(v104);
      }
    }

    return 0;
  }

  return v45;
}

uint64_t mlir::detail::Parser::parseExtendedType(mlir::detail::Parser *this)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = **v2;
  v4 = *(v2 + 152);
  v5 = *(v2 + 104);
  v8 = *(v2 + 56);
  v6 = (v2 + 56);
  v7 = v8;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  if (v10)
  {
    ++v9;
  }

  *&v63 = v9;
  *(&v63 + 1) = v10 - (v10 != 0);
  if (v7 == 2 && v10 <= 1)
  {

    return mlir::detail::Parser::codeCompleteDialectSymbol(this);
  }

  LocRange = mlir::Token::getLocRange(v6);
  v53 = v13;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v14 = *(this + 1);
  *(v14 + 96) = *(v14 + 72);
  *(v14 + 80) = *(v14 + 56);
  mlir::Lexer::lexToken(&v64, (*(this + 1) + 8));
  v15 = *(this + 1);
  *(v15 + 56) = v64;
  *(v15 + 72) = v65;
  LOBYTE(v64) = 46;
  v16 = llvm::StringRef::find(&v63, &v64, 1uLL, 0);
  if (v16 == -1)
  {
    v23 = 0;
    v61 = 0;
    v62 = 0;
    v60 = v63;
    v19 = *(&v63 + 1);
    v20 = v63;
  }

  else
  {
    v19 = *(&v63 + 1);
    v20 = v63;
    if (v16 >= *(&v63 + 1))
    {
      v21 = *(&v63 + 1);
    }

    else
    {
      v21 = v16;
    }

    if (*(&v63 + 1) >= v16 + 1)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = *(&v63 + 1);
    }

    v23 = (v63 + v22);
    *&v60 = v63;
    *(&v60 + 1) = v21;
    v24 = (*(&v63 + 1) - v22);
    v61 = (v63 + v22);
    v62 = (*(&v63 + 1) - v22);
    if (*(&v63 + 1) != v22)
    {
      v25 = 1;
      v26 = (v63 + v22);
      v27 = *(this + 1);
      if (*(v27 + 56) != 23)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }
  }

  v24 = 0;
  v25 = *(v20 + v19 - 1) == 46;
  v26 = v23;
  v27 = *(this + 1);
  if (*(v27 + 56) != 23)
  {
LABEL_17:
    v28 = 0;
    if (!v25)
    {
      goto LABEL_18;
    }

LABEL_44:
    if (v25)
    {
      if (!v28)
      {
        goto LABEL_60;
      }

      if (mlir::detail::Parser::parseDialectSymbolBody(this, &v61, &v64))
      {
        v26 = v61;
        v24 = v62;
LABEL_60:
        v54[0] = v23;
        Dialect = mlir::MLIRContext::getOrLoadDialect(v3, v60, *(&v60 + 1));
        if (Dialect)
        {
          v44 = Dialect;
          v45 = mlir::Token::getLoc((*(this + 1) + 56));
          v46 = *(this + 1);
          *(v46 + 40) = v26;
          mlir::Lexer::lexToken(&v64, (v46 + 8));
          v47 = *(this + 1);
          *(v47 + 56) = v64;
          *(v47 + 72) = v65;
          *(&v64 + 1) = mlir::Token::getLoc((*(this + 1) + 56));
          v65 = this;
          LOBYTE(v66) = 0;
          *&v64 = &unk_1F5AF1AF0;
          v67 = v26;
          v68 = v24;
          v48 = (*(*v44 + 48))(v44, &v64);
          v49 = *(this + 1);
          *(v49 + 40) = v45;
          mlir::Lexer::lexToken(&v57, (v49 + 8));
          v50 = *(this + 1);
          *(v50 + 56) = v57;
          *(v50 + 72) = v58;
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          return v48;
        }

        else
        {
          *&v57 = this;
          *(&v57 + 1) = v54;
          LOWORD(v67) = 261;
          v64 = v60;
          v51 = mlir::StringAttr::get(v3, &v64);
          return mlir::OpaqueType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v57, v51, v26, v24);
        }
      }
    }

    else
    {
      v61 = (v60 + *(&v60 + 1));
      v62 = 0;
      LOBYTE(v64) = 0;
      if (mlir::detail::Parser::parseDialectSymbolBody(this, &v61, &v64))
      {
        v42 = v62 != 0;
        if (v62)
        {
          v26 = (v61 + 1);
        }

        else
        {
          v26 = v61;
        }

        v24 = &v62[-v42];
        v61 = v26;
        v62 -= v42;
        if ((v64 & 1) == 0)
        {
          if (v24 >= v24 - 1)
          {
            --v24;
          }

          v62 = v24;
        }

        v23 = Loc;
        goto LABEL_60;
      }
    }

    return 0;
  }

LABEL_43:
  v28 = (v20 + v19) == *(v27 + 64);
  if (v28 || v25)
  {
    goto LABEL_44;
  }

LABEL_18:
  v29 = llvm::StringMapImpl::hash(v20, v19, v17, v18);
  Key = llvm::StringMapImpl::FindKey((v5 + 24), v20, v19, v29);
  if (Key == -1)
  {
    v31 = *(v5 + 32);
  }

  else
  {
    v31 = Key;
  }

  if (v31 == *(v5 + 32))
  {
    v56 = 1283;
    v54[0] = "undefined symbol alias id '";
    v55 = v63;
    *&v57 = v54;
    v58 = "'";
    v59 = 770;
    mlir::detail::Parser::emitWrongTokenError(this, &v57, &v64);
    if (v64)
    {
      mlir::InFlightDiagnostic::report(&v64);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v72;
        v34 = __p;
        if (v72 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v72 = v32;
        operator delete(v34);
      }

      v35 = v69;
      if (v69)
      {
        v36 = v70;
        v37 = v69;
        if (v70 != v69)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v69;
        }

        v70 = v35;
        operator delete(v37);
      }

      if (v66 != &v68)
      {
        free(v66);
      }
    }

    return 0;
  }

  v41 = *(v5 + 24);
  if (v4)
  {
    mlir::AsmParserState::addTypeAliasUses(v4, v63, *(&v63 + 1), LocRange, v53);
  }

  return *(*(v41 + 8 * v31) + 8);
}

void mlir::parseAttribute(mlir::MLIRContext ****a1, const char *a2, uint64_t **a3, AttributeStorage *a4, const char **a5, int a6)
{
  v97[6] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v53);
  }

  else
  {
    v72 = 261;
    v70 = a1;
    v71[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v70, 0, &v53);
  }

  llvm::SourceMgr::SourceMgr(&v50);
  v11 = v53;
  v53 = 0;
  v71[1] = 0;
  v71[0] = 0;
  v70 = v11;
  if (v51 >= v52)
  {
    v12 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v50, &v70);
  }

  else
  {
    v12 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v51, &v70) + 3);
  }

  v51 = v12;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v70);
  v45[0] = 0;
  v45[1] = 0;
  v45[2] = 0x1000000000;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0x1000000000;
  v45[6] = 0;
  v45[7] = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v88 = a3;
  v89 = 1;
  v91 = 0;
  v90 = 0;
  v92 = 0;
  v93 = 0;
  v94 = v96;
  v95 = 0x600000000;
  v96[6] = v97;
  v96[7] = 0x600000000;
  v70 = &v88;
  mlir::Lexer::Lexer(v71, &v50, a3, 0);
  mlir::Lexer::lexToken(&v73, v71);
  v75 = 1;
  v76 = "";
  v77 = 0;
  v80 = 0;
  v78 = v45;
  v79 = 0;
  v81 = 0;
  v82 = v84;
  v83 = 0;
  v84[1] = 0;
  v84[0] = 0;
  v87[0] = "builtin";
  v87[1] = 7;
  v85 = v87;
  v86 = 0x300000001;
  v43 = *v70;
  v44 = &v70;
  v41 = v73;
  v42 = v74;
  if (mlir::detail::Parser::parseAttribute(&v43, a4, v13, v14))
  {
    v39 = *(v44 + 7);
    v40 = v44[9];
    Loc = mlir::Token::getLoc(&v39);
    v16 = (Loc - mlir::Token::getLoc(&v41));
    if (a5)
    {
      *a5 = v16;
    }

    else if (v16 != a2)
    {
      v17 = mlir::Token::getLoc(&v39);
      v38 = 257;
      mlir::detail::Parser::emitError(&v43, v17, v37, &v58);
      if (v58)
      {
        LODWORD(v54) = 3;
        v55 = "found trailing characters: '";
        v56 = 28;
        v18 = &v54;
        v19 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v54 && v60 + 24 * v61 > &v54)
          {
            v35 = &v54 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v19 = v60;
            v18 = (v60 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v18 = &v54;
            v19 = v60;
          }
        }

        v20 = &v19[24 * v61];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v61;
        if (v58)
        {
          v22 = a2 >= v16 ? v16 : a2;
          v57 = 261;
          v54 = &v22[a1];
          v55 = (a2 - v22);
          mlir::Diagnostic::operator<<(&v59, &v54);
          if (v58)
          {
            LODWORD(v54) = 3;
            v55 = "'";
            v56 = 1;
            v23 = &v54;
            v24 = v60;
            if (v61 >= v62)
            {
              if (v60 <= &v54 && v60 + 24 * v61 > &v54)
              {
                v36 = &v54 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v24 = v60;
                v23 = (v60 + v36);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v23 = &v54;
                v24 = v60;
              }
            }

            v25 = &v24[24 * v61];
            v26 = *v23;
            *(v25 + 2) = v23[2];
            *v25 = v26;
            ++v61;
            if (v58)
            {
              mlir::InFlightDiagnostic::report(&v58);
            }
          }
        }
      }

      if (v69 == 1)
      {
        if (v68 != &v69)
        {
          free(v68);
        }

        v27 = __p;
        if (__p)
        {
          v28 = v67;
          v29 = __p;
          if (v67 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v67 = v27;
          operator delete(v29);
        }

        v30 = v64;
        if (v64)
        {
          v31 = v65;
          v32 = v64;
          if (v65 != v64)
          {
            do
            {
              v34 = *--v31;
              v33 = v34;
              *v31 = 0;
              if (v34)
              {
                operator delete[](v33);
              }
            }

            while (v31 != v30);
            v32 = v64;
          }

          v65 = v30;
          operator delete(v32);
        }

        if (v60 != v63)
        {
          free(v60);
        }
      }
    }
  }

  if (v85 != v87)
  {
    free(v85);
  }

  if (v82 != v84)
  {
    free(v82);
  }

  llvm::deallocate_buffer(v79, (8 * v81));
}

void mlir::parseType(const char *a1, const char *a2, uint64_t **a3, const char **a4, int a5)
{
  v93[6] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v49);
  }

  else
  {
    v68 = 261;
    v66 = a1;
    v67[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v66, 0, &v49);
  }

  llvm::SourceMgr::SourceMgr(&v46);
  v9 = v49;
  v49 = 0;
  v67[1] = 0;
  v67[0] = 0;
  v66 = v9;
  if (v47 >= v48)
  {
    v10 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v46, &v66);
  }

  else
  {
    v10 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v47, &v66) + 3);
  }

  v47 = v10;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v66);
  v41[0] = 0;
  v41[1] = 0;
  v41[2] = 0x1000000000;
  v41[3] = 0;
  v41[4] = 0;
  v41[5] = 0x1000000000;
  v41[6] = 0;
  v41[7] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v84 = a3;
  v85 = 1;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = v92;
  v91 = 0x600000000;
  v92[6] = v93;
  v92[7] = 0x600000000;
  v66 = &v84;
  mlir::Lexer::Lexer(v67, &v46, a3, 0);
  mlir::Lexer::lexToken(&v69, v67);
  v71 = 1;
  v72 = "";
  v73 = 0;
  v76 = 0;
  v74 = v41;
  v75 = 0;
  v77 = 0;
  v78 = v80;
  v79 = 0;
  v80[1] = 0;
  v80[0] = 0;
  v83[0] = "builtin";
  v83[1] = 7;
  v81 = v83;
  v82 = 0x300000001;
  v39 = *v66;
  v40 = &v66;
  v37 = v69;
  v38 = v70;
  if (mlir::detail::Parser::parseType(&v39))
  {
    v35 = *(v40 + 7);
    v36 = v40[9];
    Loc = mlir::Token::getLoc(&v35);
    v12 = (Loc - mlir::Token::getLoc(&v37));
    if (a4)
    {
      *a4 = v12;
    }

    else if (v12 != a2)
    {
      v13 = mlir::Token::getLoc(&v35);
      v34 = 257;
      mlir::detail::Parser::emitError(&v39, v13, v33, &v54);
      if (v54)
      {
        LODWORD(v50) = 3;
        v51 = "found trailing characters: '";
        v52 = 28;
        v14 = &v50;
        v15 = v56;
        if (v57 >= v58)
        {
          if (v56 <= &v50 && v56 + 24 * v57 > &v50)
          {
            v31 = &v50 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
            v15 = v56;
            v14 = (v56 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
            v14 = &v50;
            v15 = v56;
          }
        }

        v16 = &v15[24 * v57];
        v17 = *v14;
        *(v16 + 2) = v14[2];
        *v16 = v17;
        ++v57;
        if (v54)
        {
          v18 = a2 >= v12 ? v12 : a2;
          v53 = 261;
          v50 = &v18[a1];
          v51 = (a2 - v18);
          mlir::Diagnostic::operator<<(&v55, &v50);
          if (v54)
          {
            LODWORD(v50) = 3;
            v51 = "'";
            v52 = 1;
            v19 = &v50;
            v20 = v56;
            if (v57 >= v58)
            {
              if (v56 <= &v50 && v56 + 24 * v57 > &v50)
              {
                v32 = &v50 - v56;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                v20 = v56;
                v19 = (v56 + v32);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                v19 = &v50;
                v20 = v56;
              }
            }

            v21 = &v20[24 * v57];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v57;
            if (v54)
            {
              mlir::InFlightDiagnostic::report(&v54);
            }
          }
        }
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v63;
          v25 = __p;
          if (v63 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v63 = v23;
          operator delete(v25);
        }

        v26 = v60;
        if (v60)
        {
          v27 = v61;
          v28 = v60;
          if (v61 != v60)
          {
            do
            {
              v30 = *--v27;
              v29 = v30;
              *v27 = 0;
              if (v30)
              {
                operator delete[](v29);
              }
            }

            while (v27 != v26);
            v28 = v60;
          }

          v61 = v26;
          operator delete(v28);
        }

        if (v56 != v59)
        {
          free(v56);
        }
      }
    }
  }

  if (v81 != v83)
  {
    free(v81);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  llvm::deallocate_buffer(v75, (8 * v77));
}

void anonymous namespace::CustomDialectAsmParser::~CustomDialectAsmParser(_anonymous_namespace_::CustomDialectAsmParser *this)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 13)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 13;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 20)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 20;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 27)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 27;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 15)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 15;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 16)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 16;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 18)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 18;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 23)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 23;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 19)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 19;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 26)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 26;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalPlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 25)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 25;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 24)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 24;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 30)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 30;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 31)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 31;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v7, (*(v2 + 8) + 8));
  *(*(v2 + 8) + 56) = v7;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseBase64Bytes(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v36 = *(v6 + 64);
      first_not_of = llvm::StringRef::find_first_not_of(&v36, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= *(&v36 + 1))
      {
        v8 = *(&v36 + 1);
      }

      else
      {
        v8 = first_not_of;
      }

      v9 = *(&v36 + 1) - v8;
      *&v39 = v36 + v8;
      *(&v39 + 1) = *(&v36 + 1) - v8;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      if (last_not_of + 1 < *(&v39 + 1))
      {
        v11 = last_not_of + 1;
      }

      else
      {
        v11 = *(&v39 + 1);
      }

      v12 = *(&v39 + 1) - v9 + v11;
      if (*(&v39 + 1) >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v13, a2, &v35);
      if (v35)
      {
        v33 = v35;
        v35 = 0;
        llvm::toString(&v33, &v34);
        v38 = 260;
        v37[0] = &v34;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v48 == 1)
        {
          if (v47 != &v48)
          {
            free(v47);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v46;
            v17 = __p;
            if (v46 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v46 = v15;
            operator delete(v17);
          }

          v18 = v43;
          if (v43)
          {
            v19 = v44;
            v20 = v43;
            if (v44 != v43)
            {
              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  operator delete[](v21);
                }
              }

              while (v19 != v18);
              v20 = v43;
            }

            v44 = v18;
            operator delete(v20);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        return v14;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v39, (*(v5 + 8) + 8));
    v31 = *(v5 + 8);
    *(v31 + 56) = v39;
    *(v31 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v46;
      v25 = __p;
      if (v46 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v46 = v23;
      operator delete(v25);
    }

    v26 = v43;
    if (v43)
    {
      v27 = v44;
      v28 = v43;
      if (v44 != v43)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v43;
      }

      v44 = v26;
      operator delete(v28);
    }

    if (v41 != v42)
    {
      free(v41);
    }
  }

  return v14;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 21)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 21;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 28)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 28;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 22)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 22;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 29)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 29;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 17)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v6, (*(v1 + 8) + 8));
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 17;
}