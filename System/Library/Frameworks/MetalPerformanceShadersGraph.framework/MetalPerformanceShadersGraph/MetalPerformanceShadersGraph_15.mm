uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(uint64_t a1, double *a2, uint64_t a3, unsigned int a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::IEEEFloat::IEEEFloat(v17, 0.0, a2, a3, a4);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(&v19, v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(v17);
  v8 = (*(*a1 + 368))(a1, v7, &v18);
  if ((v8 & 1) == 0)
  {
    v12 = 0;
    v16 = v19;
    if (llvm::APFloatBase::PPCDoubleDouble(v8) != v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](v20);
    return v12;
  }

  *a2 = llvm::APFloat::convertToDouble(&v18, v9, v10, v11);
  v12 = 1;
  v13 = v19;
  if (llvm::APFloatBase::PPCDoubleDouble(v14) == v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v19);
  return v12;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(void *a1, void *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken(&v58, (*(v6 + 8) + 8));
    v9 = *(v6 + 8);
    *(v9 + 56) = v58;
    *(v9 + 72) = v59;
    v7 = *(a1[2] + 8);
  }

  v56 = *(v7 + 56);
  v57 = *(v7 + 72);
  Loc = mlir::Token::getLoc(&v56);
  if (v56 == 10)
  {
    v29 = v8 == 24;
    LOBYTE(v58) = 0;
    v61 = 0;
    v30 = a1[2];
    v31 = llvm::APFloatBase::semanticsSizeInBits(a2);
    v32 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v30, &v58, &v56, v29, a2, v31);
    v33 = 0;
    if (v32)
    {
      llvm::APFloat::Storage::operator=((a3 + 8), (&v58 + 8));
      v34 = a1[2];
      v35 = *(v34 + 8);
      *(v35 + 80) = *(v35 + 56);
      *(v35 + 96) = *(v35 + 72);
      mlir::Lexer::lexToken(&v53, (*(v34 + 8) + 8));
      v36 = *(v34 + 8);
      *(v36 + 56) = v53;
      *(v36 + 72) = v54;
      v33 = 1;
    }

    if (v61 == 1)
    {
      v37 = *(&v58 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(v32) == v37)
      {
        std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](&v59);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v58 + 8));
      }
    }
  }

  else
  {
    v14 = Loc;
    if (v56 == 9)
    {
      FloatingPointValue = mlir::Token::getFloatingPointValue(&v56, v11, v12, v13);
      if (v16)
      {
        v17 = *&FloatingPointValue;
        v18 = a1[2];
        v19 = *(v18 + 8);
        *(v19 + 80) = *(v19 + 56);
        *(v19 + 96) = *(v19 + 72);
        mlir::Lexer::lexToken(&v58, (*(v18 + 8) + 8));
        v23 = *(v18 + 8);
        *(v23 + 56) = v58;
        *(v23 + 72) = v59;
        v24 = -v17;
        if (v8 != 24)
        {
          v24 = v17;
        }

        v25 = llvm::detail::IEEEFloat::IEEEFloat(&v53, v24, v20, v21, v22);
        v26 = llvm::APFloatBase::IEEEdouble(v25);
        llvm::APFloat::Storage::Storage(&v58 + 8, &v53, v26);
        llvm::detail::IEEEFloat::~IEEEFloat(&v53);
        v27 = llvm::APFloat::Storage::operator=((a3 + 8), (&v58 + 8));
        v28 = *(&v58 + 1);
        if (llvm::APFloatBase::PPCDoubleDouble(v27) == v28)
        {
          std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](&v59);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v58 + 8));
        }

        LOBYTE(v58) = 0;
        v33 = 1;
        llvm::APFloat::convert(a3, a2, 1, &v58);
        return v33;
      }

      *&v53 = "floating point value too large";
      v55 = 259;
      (*(*a1 + 24))(&v58, a1, v14, &v53);
      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v46 = __p;
        if (__p)
        {
          v47 = v66;
          v48 = __p;
          if (v66 != __p)
          {
            do
            {
              v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
            }

            while (v47 != v46);
            v48 = __p;
          }

          v66 = v46;
          operator delete(v48);
        }

        v41 = v63;
        if (!v63)
        {
          goto LABEL_49;
        }

        v49 = v64;
        v43 = v63;
        if (v64 == v63)
        {
LABEL_48:
          v64 = v41;
          operator delete(v43);
LABEL_49:
          if (v60 != &v62)
          {
            free(v60);
          }

          return v33;
        }

        do
        {
          v51 = *--v49;
          v50 = v51;
          *v49 = 0;
          if (v51)
          {
            operator delete[](v50);
          }
        }

        while (v49 != v41);
LABEL_47:
        v43 = v63;
        goto LABEL_48;
      }
    }

    else
    {
      *&v53 = "expected floating point literal";
      v55 = 259;
      (*(*a1 + 24))(&v58, a1, Loc, &v53);
      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
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
        if (!v63)
        {
          goto LABEL_49;
        }

        v42 = v64;
        v43 = v63;
        if (v64 == v63)
        {
          goto LABEL_48;
        }

        do
        {
          v45 = *--v42;
          v44 = v45;
          *v42 = 0;
          if (v45)
          {
            operator delete[](v44);
          }
        }

        while (v42 != v41);
        goto LABEL_47;
      }
    }
  }

  return v33;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeyword(void *a1, const void **a2, const char *a3, const void ***a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v27[0] = a2;
  v27[1] = a3;
  v5 = a1[2];
  if (*(*(v5 + 8) + 56) == 2)
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(v5, v27, 1);
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 408))(a1, a2, a3))
  {
    return 1;
  }

  v25 = "expected '";
  v26 = 259;
  (*(*a1 + 24))(&v32, a1, v10, &v25);
  if (v32)
  {
    v31 = 261;
    v28 = a2;
    v29 = a3;
    mlir::Diagnostic::operator<<(v33, &v28);
    if (v32)
    {
      LODWORD(v28) = 3;
      v29 = "'";
      v30 = 1;
      v11 = &v28;
      v12 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v28 && v34 + 24 * v35 > &v28)
        {
          v24 = &v28 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v12 = v34;
          v11 = (v34 + v24);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v11 = &v28;
          v12 = v34;
        }
      }

      v13 = &v12[24 * v35];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      ++v35;
      if (v32)
      {
        mlir::Diagnostic::operator<<(v33, a4);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  v15 = result;
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
    result = v15;
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v41;
      v18 = __p;
      if (v41 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v41 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v38;
    if (v38)
    {
      v20 = v39;
      v21 = v38;
      if (v39 != v38)
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
        v21 = v38;
      }

      v39 = v19;
      operator delete(v21);
      result = v15;
    }

    if (v34 != v37)
    {
      free(v34);
      return v15;
    }
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, const void *a2, size_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  if (v5 == 12 || v5 == 3)
  {
    if (*(v4 + 72) != a3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    return mlir::detail::Parser::codeCompleteOptionalTokens(*(a1 + 16), v12, 1);
  }

  v9 = a2;
  v10 = a3;
  result = mlir::Token::isKeyword((v4 + 56));
  if (result)
  {
    v3 = *(a1 + 16);
    v4 = *(v3 + 8);
    a3 = v10;
    a2 = v9;
    if (*(v4 + 72) != v10)
    {
      return 0;
    }

LABEL_7:
    if (!a3 || !memcmp(*(v4 + 64), a2, a3))
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken(&v13, (*(v3 + 8) + 8));
      v11 = *(v3 + 8);
      *(v11 + 56) = v13;
      *(v11 + 72) = v14;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v8 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
    a2 = v8;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v10, (*(v2 + 8) + 8));
    v6 = *(v2 + 8);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 != 12 && v9 != 3)
  {
    if (v9 == 2)
    {
      v15 = *(a1 + 16);

      return mlir::detail::Parser::codeCompleteOptionalTokens(v15, a3, a4);
    }

    result = mlir::Token::isKeyword((v8 + 56));
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
      goto LABEL_19;
    }

LABEL_7:
    if (v11)
    {
      v13 = 16 * a4;
      for (i = a3; *(i + 8) != v11 || memcmp(*i, v12, v11); i += 16)
      {
        v13 -= 16;
        if (!v13)
        {
          return 0;
        }
      }
    }

    else
    {
      v19 = 16 * a4;
      for (i = a3; *(i + 8); i += 16)
      {
        v19 -= 16;
        if (!v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_20;
  }

  v12 = *(v8 + 64);
  v11 = *(v8 + 72);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_19:
  i = a3;
LABEL_20:
  if (i == a3 + 16 * a4)
  {
    return 0;
  }

  *a2 = v12;
  a2[1] = v11;
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v20, (*(v7 + 8) + 8));
  v18 = *(v7 + 8);
  *(v18 + 56) = v20;
  *(v18 + 72) = v21;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  __src = 0;
  __len = 0;
  if (((*(*a1 + 416))(a1, &__src) & 1) == 0)
  {
    return (*(*a1 + 264))(a1, a2);
  }

  v4 = __src;
  if (!__src)
  {
    __dst = 0uLL;
    v10 = 0;
    if (*(a2 + 23) < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v5 = __len;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (__len | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v5;
    v10 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v10) = __len;
  p_dst = &__dst;
  if (__len)
  {
LABEL_14:
    memmove(p_dst, v4, v5);
  }

  *(p_dst + v5) = 0;
  if (*(a2 + 23) < 0)
  {
LABEL_16:
    operator delete(*a2);
  }

LABEL_17:
  *a2 = __dst;
  *(a2 + 16) = v10;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseAttribute(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, uint64_t (*a4)(uint64_t, AttributeStorage **, AttributeStorage *), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v8 = mlir::detail::Parser::parseAttribute(v6, a3, a3, a4);
    *a2 = v8;
    return v8 != 0;
  }

  else
  {

    return a4(a5, a2, a3);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttribute(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, unsigned int a4)
{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalSymbolName(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v17 = *(v2 + 56);
  v18 = *(v2 + 72);
  if (v17 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v17, &__p);
  v16 = 260;
  *&v14 = &__p;
  *a2 = mlir::Builder::getStringAttr(v5, &v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = a1[2];
  v7 = *(v6 + 8);
  *(v7 + 80) = *(v7 + 56);
  *(v7 + 96) = *(v7 + 72);
  mlir::Lexer::lexToken(&v14, (*(v6 + 8) + 8));
  v8 = *(v6 + 8);
  *(v8 + 56) = v14;
  *(v8 + 72) = v15;
  v9 = *(*(a1[2] + 8) + 152);
  if (v9)
  {
    v10 = mlir::SymbolRefAttr::get(*a2);
    *&v14 = mlir::Token::getLocRange(&v17);
    *(&v14 + 1) = v11;
    mlir::AsmParserState::addUses(v9, v10, &v14, 1);
  }

  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseType(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t, uint64_t **), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v7 = mlir::detail::Parser::parseType(v5);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a3(a4, a2);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrowTypeList(void *a1, unsigned int *a2)
{
  if ((*(*a1 + 56))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrowTypeList(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v8, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonType(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 16);
  v7 = "expected ':'";
  v8 = 259;
  if (!mlir::detail::Parser::parseToken(v4, 15, &v7))
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v5;
  return v5 != 0;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 15)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v8, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

void mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseResourceHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v35 = 0;
    v36 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &v35, a3);
  }

  else
  {
    v7 = *(a1 + 16);
    v30 = 257;
    mlir::detail::Parser::emitError(v7, v29, &v35);
    if (!v35)
    {
      goto LABEL_10;
    }

    LODWORD(v31) = 3;
    v32 = "dialect '";
    v33 = 9;
    v8 = &v31;
    v9 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v31 && v37 + 24 * v38 > &v31)
      {
        v27 = &v31 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v9 = v37;
        v8 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v8 = &v31;
        v9 = v37;
      }
    }

    v10 = &v9[24 * v38];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v38;
    if (v35 && (v12 = *(a2 + 8), v13 = *(a2 + 16), v34 = 261, v31 = v12, v32 = v13, mlir::Diagnostic::operator<<(&v36, &v31), v35))
    {
      LODWORD(v31) = 3;
      v32 = "' does not expect resource handles";
      v33 = 34;
      v14 = &v31;
      v15 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v31 && v37 + 24 * v38 > &v31)
        {
          v28 = &v31 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v15 = v37;
          v14 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = &v31;
          v15 = v37;
        }
      }

      v16 = &v15[24 * v38];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v38;
      v18 = v35;
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&v35);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
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
              operator delete[](v25);
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
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 112), &v7, &v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 144);
    if (v5 >= *(v2 + 148))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 136, (v2 + 152), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 144);
    }

    *(*(v2 + 136) + 8 * v5) = v4;
    ++*(v2 + 144);
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::popCyclicParsing(uint64_t result)
{
  v1 = *(*(result + 16) + 8);
  v2 = v1[16].i32[0];
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[18].u32[0];
    v5 = *(*&v1[17] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[15] = vadd_s32(v1[15], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[18].i32[0] = v4 - 1;
  }

  else
  {
    --v1[18].i32[0];
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
{
  v2 = *(*(a1 + 2) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return mlir::AsmParser::parseKeyword(a1, a2);
  }

  *a2 = "";
  *(a2 + 1) = 0;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::codeCompleteExpectedTokens(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 16);
  v4 = *(result + 8);
  if (*(v4 + 56) == 2 && !*(v4 + 72))
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(result, a2, a3);
  }

  return result;
}

void std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](llvm::APFloatBase *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 - 16);
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
      v5 = 32 * v3 + v1 - 24;
      v6 = -32 * v3;
      do
      {
        while (v4 == *v5)
        {
          std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100]((v5 + 8));
          v5 -= 32;
          v6 += 32;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v5);
        v5 -= 32;
        v6 += 32;
      }

      while (v6);
    }

LABEL_7:

    operator delete[](v2);
  }
}

const llvm::detail::IEEEFloat *llvm::APFloat::Storage::operator=(const llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v8 = *a2;
  if (v5 != v4 && v5 != v8)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2, v6, v7);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v10 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    v11 = a1;
    v12 = a2;
    if (v10 != *a2)
    {
LABEL_9:
      llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
      return a1;
    }

    goto LABEL_14;
  }

  if (v4 != v8)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v14 = v5;
    std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100]((a1 + 8));
    v11 = a1;
    v12 = a2;
    if (v14 != *a2)
    {
      goto LABEL_9;
    }

LABEL_14:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
    return a1;
  }

  llvm::detail::DoubleAPFloat::operator=(a1, a2, v6, v7);
  return a1;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(uint64_t a1)
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
    mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id)
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

const char *llvm::getTypeName<mlir::OpAsmDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6 = 77;
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

{
  v4 = *(result + 4);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 2);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 3) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::LookupBucketFor<mlir::Block *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 8);
    v8 = v18;
  }

  *(result + 2) = v11 + 1;
  if (*v8 != -4096)
  {
    --*(result + 3);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 4);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = (result + 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL));
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          v10->i64[0] = -4096;
          v10 = (v10 + 8);
        }

        while (v10 != (result + 8 * v11));
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = (*a1 + 8 * v29);
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = (*a1 + 8 * (v34 & v18));
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = (result + 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL));
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = (result + 8 * v20);
      do
      {
        v10->i64[0] = -4096;
        v10 = (v10 + 8);
      }

      while (v10 != v26);
    }
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(uint64_t *a1@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v2 = *a1;
  v3 = *a1[1];
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t ***mlir::Lexer::Lexer(uint64_t ***result, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = 0;
  v4 = **a2;
  v5 = *(v4 + 8);
  v6 = (*(v4 + 16) - v5);
  result[2] = v5;
  result[3] = v6;
  result[4] = v5;
  result[5] = 0;
  if (a4)
  {
    result[5] = *(a4 + 8);
  }

  return result;
}

uint64_t mlir::Lexer::getEncodedSourceLocation(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = v2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, LineNumber);
  v8 = *(a1 + 8);
  v10 = (*(***v4 + 16))(**v4);

  return mlir::FileLineColLoc::get(v8, v10, v9, LineNumber, (v7 + 1));
}

void mlir::Lexer::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v9, a2);
  v11 = a2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v9, LineNumber);
  v12 = *(a1 + 8);
  v13 = (*(***v8 + 16))(**v8);
  v15 = mlir::FileLineColLoc::get(v12, v13, v14, LineNumber, (v11 + 1));
  mlir::emitError(v15, a3, v25);
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

    v16 = __p;
    if (__p)
    {
      v17 = v31;
      v18 = __p;
      if (v31 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v31 = v16;
      operator delete(v18);
    }

    v19 = v28;
    if (v28)
    {
      v20 = v29;
      v21 = v28;
      if (v29 != v28)
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
        v21 = v28;
      }

      v29 = v19;
      operator delete(v21);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  v24 = *(a1 + 32) - a2;
  *a4 = 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v24;
}

void mlir::Lexer::lexToken(uint64_t *__return_ptr a1@<X8>, mlir::Lexer *this@<X0>)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = (v2 + 1);
      *(this + 4) = v2 + 1;
      v5 = *v2;
      switch(*v2)
      {
        case 0:
          if (v2 != *(this + 2) + *(this + 3))
          {
            goto LABEL_4;
          }

          *a1 = 0;
          goto LABEL_63;
        case 9:
        case 0xA:
        case 0xD:
        case 0x20:
          goto LABEL_4;
        case 0x21:
        case 0x25:
        case 0x5E:
          goto LABEL_32;
        case 0x22:

          mlir::Lexer::lexString(a1, this, v2);
          return;
        case 0x23:
          if (*v4 == 45 && *(v2 + 2) == 125)
          {
            *(this + 4) = v2 + 3;
            v9 = 33;
            goto LABEL_54;
          }

LABEL_32:

          mlir::Lexer::lexPrefixedIdentifier(this, v2, a1);
          return;
        case 0x28:
          v10 = 21;
          goto LABEL_62;
        case 0x29:
          v10 = 28;
          goto LABEL_62;
        case 0x2A:
          v10 = 30;
          goto LABEL_62;
        case 0x2B:
          v10 = 25;
          goto LABEL_62;
        case 0x2C:
          v10 = 16;
          goto LABEL_62;
        case 0x2D:
          if (*v4 == 62)
          {
            *(this + 4) = v2 + 2;
            *a1 = 13;
            a1[1] = v2;
            a1[2] = 2;
            return;
          }

          v10 = 24;
          goto LABEL_62;
        case 0x2E:
          if (v4 != (*(this + 2) + *(this + 3)) && *v4 == 46 && *(v2 + 2) == 46)
          {
            *(this + 4) = v2 + 3;
            v9 = 17;
            goto LABEL_54;
          }

          v16[0] = "expected three consecutive dots for an ellipsis";
          v17 = 259;
          mlir::Lexer::emitError(this, (v2 + 1), v16, a1);
          return;
        case 0x2F:
          if (*v4 != 47)
          {
            goto LABEL_69;
          }

          v6 = (v2 + 2);
          break;
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
        case 0x39:

          mlir::Lexer::lexNumber(this, v2, a1);
          return;
        case 0x3A:
          v10 = 15;
          goto LABEL_62;
        case 0x3C:
          v10 = 23;
          goto LABEL_62;
        case 0x3D:
          v10 = 18;
          goto LABEL_62;
        case 0x3E:
          v10 = 19;
          goto LABEL_62;
        case 0x3F:
          v10 = 26;
          goto LABEL_62;
        case 0x40:

          mlir::Lexer::lexAtIdentifier(this, v2, a1);
          return;
        case 0x5B:
          v10 = 22;
          goto LABEL_62;
        case 0x5D:
          v10 = 29;
          goto LABEL_62;
        case 0x5F:
          goto LABEL_66;
        case 0x7B:
          if (*v4 == 45 && *(v2 + 2) == 35)
          {
            *(this + 4) = v2 + 3;
            v9 = 32;
LABEL_54:
            *a1 = v9;
            a1[1] = v2;
            a1[2] = 3;
          }

          else
          {
            v10 = 20;
LABEL_62:
            *a1 = v10;
LABEL_63:
            a1[1] = v2;
            a1[2] = 1;
          }

          return;
        case 0x7C:
          v10 = 31;
          goto LABEL_62;
        case 0x7D:
          v10 = 27;
          goto LABEL_62;
        default:
          if (v5 < 0)
          {
            v12 = this;
            v13 = v2;
            v14 = a1;
            v15 = __maskrune(v5, 0x100uLL);
            v2 = v13;
            a1 = v14;
            v11 = v15;
            this = v12;
          }

          else
          {
            v11 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x100;
          }

          if (v11)
          {
LABEL_66:

            mlir::Lexer::lexBareIdentifierOrKeyword(this, v2, a1);
          }

          else
          {
LABEL_69:
            v16[0] = "unexpected character";
            v17 = 259;
            mlir::Lexer::emitError(this, v2, v16, a1);
          }

          return;
      }

      do
      {
        while (1)
        {
          v4 = v6++;
          *(this + 4) = v6;
          v7 = *v4;
          if (!*v4)
          {
            break;
          }

          if (v7 == 10 || v7 == 13)
          {
            ++v4;
            goto LABEL_4;
          }
        }
      }

      while (v4 != (*(this + 2) + *(this + 3)));
      *(this + 4) = v4;
LABEL_4:
      v2 = v4;
    }

    while (v4 != v3);
  }

  *a1 = 2;
  a1[1] = v3;
  a1[2] = 0;
}

uint64_t mlir::Lexer::lexBareIdentifierOrKeyword@<X0>(mlir::Lexer *this@<X0>, const char *__s1@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    v12 = *v6;
    if ((v12 & 0x80000000) != 0)
    {
      result = __maskrune(v12, 0x100uLL);
      v6 = *(this + 4);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *(v7 + 4 * v12 + 60) & 0x100;
      if (result)
      {
        goto LABEL_6;
      }
    }

    v14 = *v6;
    if (v14 < 0 || (*(v7 + 4 * v14 + 60) & 0x400) == 0)
    {
      v8 = *v6 - 36;
      v9 = v8 > 0x3B;
      v10 = (1 << v8) & 0x800000000000401;
      if (v9 || v10 == 0)
      {
        break;
      }
    }

LABEL_6:
    *(this + 4) = ++v6;
  }

  v15 = v6 - __s1;
  if ((v6 - __s1) < 2)
  {
    goto LABEL_22;
  }

  v16 = *__s1;
  if (v16 == 105)
  {
    v17 = __s1 + 1;
    while (*v17 - 48 < 0xA)
    {
      if (++v17 == v6)
      {
LABEL_30:
        v18 = 12;
        goto LABEL_23;
      }
    }
  }

  if (v15 == 2)
  {
    result = memcmp(__s1, "to", v6 - __s1);
    if (result)
    {
      goto LABEL_22;
    }

    v18 = 78;
  }

  else
  {
    if (__s1[1] == 105 && (v16 == 117 || v16 == 115))
    {
      v19 = __s1 + 2;
      while (*v19 - 48 < 0xA)
      {
        if (++v19 == v6)
        {
          goto LABEL_30;
        }
      }
    }

    if (v15 > 6)
    {
      if (v15 <= 9)
      {
        if (v15 == 7)
        {
          if (*__s1 == 1818846563 && *(__s1 + 3) == 1986618476)
          {
            v18 = 39;
            goto LABEL_23;
          }

          if (*__s1 == 1886220131 && *(__s1 + 3) == 2019912816)
          {
            v18 = 40;
            goto LABEL_23;
          }

          if (*__s1 == 1769108595 && *(__s1 + 3) == 1684366441)
          {
            v18 = 74;
            goto LABEL_23;
          }
        }

        else if (v15 == 8)
        {
          switch(*__s1)
          {
            case 0x74636E6974736964:
              v18 = 43;
              goto LABEL_23;
            case 0x4E46334D34453866:
              v18 = 50;
              goto LABEL_23;
            case 0x4E46314D32453466:
              v18 = 55;
              goto LABEL_23;
            case 0x4E46334D32453666:
              v18 = 56;
              goto LABEL_23;
            case 0x4E46324D33453666:
              v18 = 57;
              goto LABEL_23;
            case 0x766964726F6F6C66:
              v18 = 60;
              goto LABEL_23;
          }
        }
      }

      else
      {
        switch(v15)
        {
          case 14:
            if (*__s1 == 0x65725F65736E6564 && *(__s1 + 6) == 0x656372756F736572)
            {
              v18 = 42;
              goto LABEL_23;
            }

            break;
          case 13:
            if (*__s1 == 0x3142334D34453866 && *(__s1 + 5) == 0x5A554E4631314233)
            {
              v18 = 53;
              goto LABEL_23;
            }

            break;
          case 10:
            if (*__s1 == 0x6D5F656E69666661 && *(__s1 + 4) == 28769)
            {
              v18 = 34;
              goto LABEL_23;
            }

            if (*__s1 == 0x735F656E69666661 && *(__s1 + 4) == 29797)
            {
              v18 = 35;
              goto LABEL_23;
            }

            if (*__s1 == 0x7475626972747461 && *(__s1 + 4) == 29541)
            {
              v18 = 37;
              goto LABEL_23;
            }

            if (*__s1 == 0x4E46324D35453866 && *(__s1 + 4) == 23125)
            {
              v18 = 51;
              goto LABEL_23;
            }

            if (*__s1 == 0x4E46334D34453866 && *(__s1 + 4) == 23125)
            {
              v18 = 52;
              goto LABEL_23;
            }

            break;
        }
      }
    }

    else if (v15 <= 3)
    {
      if (v15 == 3)
      {
        if (*__s1 == 12646 && __s1[2] == 54)
        {
          v18 = 44;
          goto LABEL_23;
        }

        if (*__s1 == 13158 && __s1[2] == 50)
        {
          v18 = 45;
          goto LABEL_23;
        }

        if (*__s1 == 13926 && __s1[2] == 52)
        {
          v18 = 46;
          goto LABEL_23;
        }

        if (*__s1 == 14438 && __s1[2] == 48)
        {
          v18 = 47;
          goto LABEL_23;
        }

        if (*__s1 == 28518 && __s1[2] == 114)
        {
          v18 = 61;
          goto LABEL_23;
        }

        if (*__s1 == 28524 && __s1[2] == 99)
        {
          v18 = 64;
          goto LABEL_23;
        }

        if (*__s1 == 24941 && __s1[2] == 120)
        {
          v18 = 65;
          goto LABEL_23;
        }

        if (*__s1 == 26989 && __s1[2] == 110)
        {
          v18 = 67;
          goto LABEL_23;
        }

        if (*__s1 == 28525 && __s1[2] == 100)
        {
          v18 = 68;
          goto LABEL_23;
        }
      }
    }

    else if (v15 == 4)
    {
      switch(*__s1)
      {
        case 0x36316662:
          v18 = 38;
          goto LABEL_23;
        case 0x38323166:
          v18 = 58;
          goto LABEL_23;
        case 0x636E7566:
          v18 = 62;
          goto LABEL_23;
        case 0x656E6F6E:
          v18 = 69;
          goto LABEL_23;
        case 0x657A6973:
          v18 = 71;
          goto LABEL_23;
        case 0x70657473:
          v18 = 73;
          goto LABEL_23;
        case 0x32336674:
          v18 = 77;
          goto LABEL_23;
        case 0x65757274:
          v18 = 79;
          goto LABEL_23;
        case 0x65707974:
          v18 = 81;
          goto LABEL_23;
        case 0x74696E75:
          v18 = 82;
          goto LABEL_23;
      }
    }

    else if (v15 == 5)
    {
      if (*__s1 == 1634890337 && __s1[4] == 121)
      {
        v18 = 36;
        goto LABEL_23;
      }

      if (*__s1 == 1936614756 && __s1[4] == 101)
      {
        v18 = 41;
        goto LABEL_23;
      }

      if (*__s1 == 1936482662 && __s1[4] == 101)
      {
        v18 = 59;
        goto LABEL_23;
      }

      if (*__s1 == 1701080681 && __s1[4] == 120)
      {
        v18 = 63;
        goto LABEL_23;
      }

      if (*__s1 == 1819309428 && __s1[4] == 101)
      {
        v18 = 80;
        goto LABEL_23;
      }
    }

    else
    {
      if (*__s1 == 893728870 && *(__s1 + 2) == 12877)
      {
        v18 = 48;
        goto LABEL_23;
      }

      if (*__s1 == 876951654 && *(__s1 + 2) == 13133)
      {
        v18 = 49;
        goto LABEL_23;
      }

      if (*__s1 == 860174438 && *(__s1 + 2) == 13389)
      {
        v18 = 54;
        goto LABEL_23;
      }

      if (*__s1 == 1919772013 && *(__s1 + 2) == 26213)
      {
        v18 = 66;
        goto LABEL_23;
      }

      if (*__s1 == 1936090735 && *(__s1 + 2) == 29797)
      {
        v18 = 70;
        goto LABEL_23;
      }

      if (*__s1 == 1918988403 && *(__s1 + 2) == 25971)
      {
        v18 = 72;
        goto LABEL_23;
      }

      if (*__s1 == 1651341683 && *(__s1 + 2) == 27759)
      {
        v18 = 75;
        goto LABEL_23;
      }

      if (*__s1 == 1936614772 && *(__s1 + 2) == 29295)
      {
        v18 = 76;
        goto LABEL_23;
      }

      if (*__s1 == 1952671094 && *(__s1 + 2) == 29295)
      {
        v18 = 83;
        goto LABEL_23;
      }
    }

LABEL_22:
    v18 = 3;
  }

LABEL_23:
  *a3 = v18;
  *(a3 + 8) = __s1;
  *(a3 + 16) = v15;
  return result;
}

void mlir::Lexer::lexAtIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  *(this + 4) = v6 + 1;
  v7 = *v6;
  if (v7 != 34)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v19 = __maskrune(*v6, 0x100uLL);
      v9 = *(this + 4);
      if (v7 == 95 || v19 != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = *(this + 4);
      if (v7 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x100) != 0)
      {
LABEL_9:
        v11 = MEMORY[0x1E69E9830];
        while (1)
        {
          v16 = *v9;
          if ((v16 & 0x80000000) != 0)
          {
            v17 = __maskrune(v16, 0x100uLL);
            v9 = *(this + 4);
            if (v17)
            {
              goto LABEL_14;
            }
          }

          else if ((*(v11 + 4 * v16 + 60) & 0x100) != 0)
          {
            goto LABEL_14;
          }

          v18 = *v9;
          if (v18 < 0 || (*(v11 + 4 * v18 + 60) & 0x400) == 0)
          {
            v12 = *v9 - 36;
            v13 = v12 > 0x3B;
            v14 = (1 << v12) & 0x800000000000401;
            if (v13 || v14 == 0)
            {
              *a3 = 4;
              v8 = v9 - a2;
LABEL_24:
              *(a3 + 8) = a2;
              goto LABEL_25;
            }
          }

LABEL_14:
          *(this + 4) = ++v9;
        }
      }
    }

    *&v21 = "@ identifier expected to start with letter or '_'";
    v23 = 259;
    mlir::Lexer::emitError(this, v9 - 1, &v21, a3);
    return;
  }

  mlir::Lexer::lexString(&v21, this, v6 + 1);
  if (v21 != 1)
  {
    v8 = *(this + 4) - a2;
    *a3 = 4;
    goto LABEL_24;
  }

  *a3 = v21;
  v8 = v22;
LABEL_25:
  *(a3 + 16) = v8;
}

void mlir::Lexer::lexPrefixedIdentifier(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  if (v6 > 0x24)
  {
    if (v6 == 94)
    {
      v9 = 7;
      v8 = "invalid block name";
      v7 = 18;
      v10 = *(this + 4);
      v11 = *v10;
      v12 = MEMORY[0x1E69E9830];
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v9 = 6;
      v8 = "invalid SSA name";
      v7 = 16;
      v10 = *(this + 4);
      v11 = *v10;
      v12 = MEMORY[0x1E69E9830];
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v6 == 33)
    {
      v7 = 23;
    }

    else
    {
      v7 = 22;
    }

    if (v6 == 33)
    {
      v8 = "invalid type identifier";
    }

    else
    {
      v8 = "invalid attribute name";
    }

    if (v6 == 33)
    {
      v9 = 8;
    }

    else
    {
      v9 = 5;
    }

    v10 = *(this + 4);
    v11 = *v10;
    v12 = MEMORY[0x1E69E9830];
    if ((v11 & 0x80000000) != 0)
    {
LABEL_31:
      if (__maskrune(v11, 0x100uLL))
      {
        goto LABEL_41;
      }

      goto LABEL_32;
    }
  }

  v13 = *(v12 + 4 * v11 + 60);
  if ((v13 & 0x400) != 0)
  {
    v14 = v10 + 1;
    do
    {
      if ((*(v12 + 4 * v11 + 60) & 0x400) == 0)
      {
        break;
      }

      *(this + 4) = v14;
      v15 = *v14++;
      LOBYTE(v11) = v15;
    }

    while ((v15 & 0x80000000) == 0);
    v16 = (v14 - 1);
LABEL_22:
    v17 = *(this + 5);
    v18 = v17 < a2 || v17 > v16;
    if (!v18)
    {
      *a3 = 2;
      *(a3 + 8) = a2;
      *(a3 + 16) = v17 - a2;
      return;
    }

    v19 = v16 - a2;
    *a3 = v9;
    goto LABEL_28;
  }

  if ((v13 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_32:
  v20 = *(this + 4);
  v21 = *v20 - 36;
  v18 = v21 > 0x3B;
  v22 = (1 << v21) & 0x800000000000601;
  if (!v18 && v22 != 0)
  {
    while (1)
    {
LABEL_41:
      while (1)
      {
        v27 = (*(this + 4) + 1);
        *(this + 4) = v27;
        v28 = *v27;
        if ((v28 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v12 + 4 * v28 + 60) & 0x100) == 0)
        {
          goto LABEL_45;
        }
      }

      if (!__maskrune(v28, 0x100uLL))
      {
LABEL_45:
        v16 = *(this + 4);
        v29 = *v16;
        if (v29 < 0 || (*(v12 + 4 * v29 + 60) & 0x400) == 0)
        {
          v24 = *v16 - 36;
          v18 = v24 > 0x3B;
          v25 = (1 << v24) & 0x800000000000601;
          if (v18 || v25 == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  if (v20 != *(this + 5))
  {
    v31 = 261;
    v30[0] = v8;
    v30[1] = v7;
    mlir::Lexer::emitError(this, v20 - 1, v30, a3);
    return;
  }

  *a3 = 2;
  v19 = v20 - a2;
LABEL_28:
  *(a3 + 8) = a2;
  *(a3 + 16) = v19;
}

void mlir::Lexer::lexString(uint64_t *__return_ptr a1@<X8>, mlir::Lexer *this@<X0>, const char *a3@<X1>)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
LABEL_22:
    *a1 = 2;
    a1[1] = a3;
    a1[2] = v5 - a3;
    return;
  }

  while (1)
  {
    v6 = v4 + 1;
    *(this + 4) = v4 + 1;
    v7 = *v4;
    if (v7 > 0x21)
    {
      break;
    }

    if (*v4)
    {
      if (v7 - 10 < 3)
      {
LABEL_23:
        v11 = "expected '' in string literal";
        goto LABEL_24;
      }
    }

    else if (v4 == (*(this + 2) + *(this + 3)))
    {
      goto LABEL_23;
    }

LABEL_5:
    v4 = v6;
    if (v6 == v5)
    {
      goto LABEL_22;
    }
  }

  if (v7 != 92)
  {
    if (v7 == 34)
    {
      *a1 = 11;
      a1[1] = a3;
      a1[2] = v6 - a3;
      return;
    }

    goto LABEL_5;
  }

  v8 = *v6;
  if ((v8 - 92) <= 0x18 && ((1 << (v8 - 92)) & 0x1040001) != 0)
  {
    v10 = 2;
LABEL_21:
    v6 = &v4[v10];
    *(this + 4) = &v4[v10];
    goto LABEL_5;
  }

  v10 = 2;
  if (v8 == 34)
  {
    goto LABEL_21;
  }

  if (llvm::hexDigitValue(char)::LUT[v8] != -1 && llvm::hexDigitValue(char)::LUT[v4[2]] != -1)
  {
    v10 = 3;
    goto LABEL_21;
  }

  v11 = "unknown escape in string literal";
LABEL_24:
  v12 = v11;
  v13 = 259;
  mlir::Lexer::emitError(this, v4, &v12, a1);
}

uint64_t mlir::Lexer::lexNumber@<X0>(uint64_t this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 32);
  v4 = *v3;
  if (__PAIR64__(v4, *(v3 - 1)) == 0x7800000030)
  {
    v5 = v3[1];
    if (v5 < 0 || (v6 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x10000) == 0))
    {
LABEL_29:
      *a3 = 10;
      *(a3 + 8) = a2;
      *(a3 + 16) = v3 - a2;
      return this;
    }

    *(this + 32) = v3 + 2;
    if ((v3[2] & 0x80000000) == 0)
    {
      v7 = v3[2];
      v8 = v3 + 3;
      do
      {
        if ((*(v6 + 4 * v7 + 60) & 0x10000) == 0)
        {
          break;
        }

        *(this + 32) = v8;
        v9 = *v8++;
        v7 = v9;
      }

      while ((v9 & 0x80000000) == 0);
      v3 = v8 - 1;
      goto LABEL_29;
    }

    *a3 = 10;
    *(a3 + 8) = a2;
    *(a3 + 16) = v3 + 2 - a2;
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_29;
    }

    v10 = MEMORY[0x1E69E9830];
    while ((*(v10 + 4 * v4 + 60) & 0x400) != 0)
    {
      v11 = (v3 + 1);
      *(this + 32) = v3 + 1;
      v12 = v3[1];
      v4 = *++v3;
      if (v12 < 0)
      {
        *a3 = 10;
        *(a3 + 8) = a2;
        *(a3 + 16) = v11 - a2;
        return this;
      }
    }

    if (v4 != 46)
    {
      goto LABEL_29;
    }

    v13 = (v3 + 4);
    do
    {
      v14 = v13;
      v15 = (v13 - 3);
      *(this + 32) = v13 - 3;
      v16 = *(v13 - 3);
      if (v16 < 0)
      {
        break;
      }

      ++v13;
    }

    while ((*(v10 + 4 * v16 + 60) & 0x400) != 0);
    if ((v16 | 0x20) == 0x65)
    {
      v17 = *(v14 - 2);
      if ((*(v10 + 4 * v17 + 60) & 0x400) != 0 || (v17 == 43 || v17 == 45) && (*(v10 + 4 * *(v14 - 1) + 60) & 0x400) != 0)
      {
        v15 = (v14 - 1);
        *(this + 32) = v14 - 1;
        if ((*(v14 - 1) & 0x80000000) == 0)
        {
          v18 = *(v14 - 1);
          do
          {
            if ((*(v10 + 4 * v18 + 60) & 0x400) == 0)
            {
              break;
            }

            *(this + 32) = v14;
            v19 = *v14++;
            v18 = v19;
          }

          while ((v19 & 0x80000000) == 0);
          v15 = (v14 - 1);
        }
      }
    }

    *a3 = 9;
    *(a3 + 8) = a2;
    *(a3 + 16) = v15 - a2;
  }

  return this;
}

BOOL mlir::detail::Parser::parseCallSiteLocation(mlir::detail::Parser *this, LocationAttr *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken(&v23, (*(this + 1) + 8));
  v5 = *(this + 1);
  *(v5 + 56) = v23;
  *(v5 + 72) = v24;
  *&v23 = "expected '(' in callsite location";
  v26 = 259;
  if (!mlir::detail::Parser::parseToken(this, 21, &v23))
  {
    return 0;
  }

  v22.var0 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(this, &v22) & 1) == 0)
  {
    return 0;
  }

  v6 = *(this + 1);
  if (*(v6 + 56) == 3 && *(v6 + 72) == 2 && **(v6 + 64) == 29793)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v23, (*(this + 1) + 8));
    v17 = *(this + 1);
    *(v17 + 56) = v23;
    *(v17 + 72) = v24;
    v20.var0 = 0;
    if (mlir::detail::Parser::parseLocationInstance(this, &v20))
    {
      *&v23 = "expected ')' in callsite location";
      v26 = 259;
      if (mlir::detail::Parser::parseToken(this, 28, &v23))
      {
        v19.var0.var0 = v20.var0;
        a2->var0 = mlir::CallSiteLoc::get(v22.var0, v19, v18);
        return 1;
      }
    }

    return 0;
  }

  v20.var0 = "expected 'at' in callsite location";
  v21 = 259;
  mlir::detail::Parser::emitWrongTokenError(this, &v20, &v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v23);
  v8 = result;
  if (v23)
  {
    mlir::InFlightDiagnostic::report(&v23);
    result = v8;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v31;
      v11 = __p;
      if (v31 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v31 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            operator delete[](v15);
          }
        }

        while (v13 != v12);
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v25 != &v27)
    {
      free(v25);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseLocationInstance(mlir::detail::Parser *this, LocationAttr *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 3)
  {
    v11 = *(v2 + 64);
    v10 = *(v2 + 72);
    if (v10 == 5)
    {
      v25 = this;
      v27 = memcmp(v11, "fused", 5uLL);
      this = v25;
      if (!v27)
      {

        return mlir::detail::Parser::parseFusedLocation(v25, a2);
      }
    }

    else if (v10 == 7)
    {
      v20 = this;
      v22 = memcmp(*(v2 + 64), "unknown", 7uLL);
      this = v20;
      if (!v22)
      {
        *(v2 + 80) = *(v2 + 56);
        *(v2 + 96) = *(v2 + 72);
        mlir::Lexer::lexToken(&v42, (v20[1] + 1));
        v23 = v20[1];
        *(v23 + 7) = v42;
        v23[9] = v43;
        a2->var0 = mlir::UnknownLoc::get(**v20[1], v24);
        return 1;
      }
    }

    else if (v10 == 8 && *v11 == 0x657469736C6C6163)
    {

      return mlir::detail::Parser::parseCallSiteLocation(this, a2);
    }

    v39[0] = "expected location instance";
    v40 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, v39, &v42);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    return v7;
  }

  if (v3 != 11)
  {
    if (v3 == 5)
    {
      v5 = this;
      v6 = mlir::detail::Parser::parseExtendedAttr(this, 0);
      v7 = v6;
      if (!v6)
      {
        return v7;
      }

      v8 = (mlir::LocationAttr::classof(v6) && v7);
      a2->var0 = v8;
      if (v8)
      {
        return 1;
      }

      v39[0] = "expected location attribute, but got";
      v40 = 259;
      mlir::detail::Parser::emitError(v5, v39, &v42);
      if (v42)
      {
        v28 = v41;
        mlir::DiagnosticArgument::DiagnosticArgument(v41, v7);
        v29 = v44;
        if (v45 >= v46)
        {
          if (v44 <= v41 && v44 + 24 * v45 > v41)
          {
            v38 = v41 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v29 = v44;
            v28 = v44 + v38;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v28 = v41;
            v29 = v44;
          }
        }

        v30 = &v29[24 * v45];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        ++v45;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v53 != 1)
      {
        return v7;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v51;
        v34 = __p;
        if (v51 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v51 = v32;
        operator delete(v34);
      }

      v15 = v48;
      if (!v48)
      {
LABEL_61:
        if (v44 != v47)
        {
          free(v44);
        }

        return v7;
      }

      v35 = v49;
      v17 = v48;
      if (v49 == v48)
      {
LABEL_60:
        v49 = v15;
        operator delete(v17);
        goto LABEL_61;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          operator delete[](v36);
        }
      }

      while (v35 != v15);
    }

    else
    {
      v39[0] = "expected location instance";
      v40 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, v39, &v42);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v53 != 1)
      {
        return v7;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v51;
        v14 = __p;
        if (v51 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v51 = v12;
        operator delete(v14);
      }

      v15 = v48;
      if (!v48)
      {
        goto LABEL_61;
      }

      v16 = v49;
      v17 = v48;
      if (v49 == v48)
      {
        goto LABEL_60;
      }

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
    }

    v17 = v48;
    goto LABEL_60;
  }

  return mlir::detail::Parser::parseNameOrFileLineColLocation(this, a2);
}

uint64_t mlir::detail::Parser::parseFusedLocation(mlir::detail::Parser *this, LocationAttr *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(v11, (*(this + 1) + 8));
  v4 = *(this + 1);
  *(v4 + 56) = *v11;
  *(v4 + 72) = v12[0];
  v5 = *(this + 1);
  if (*(v5 + 56) == 23)
  {
    *(v5 + 80) = *(v5 + 56);
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken(v11, (*(this + 1) + 8));
    v6 = *(this + 1);
    *(v6 + 56) = *v11;
    *(v6 + 72) = v12[0];
    v7 = mlir::detail::Parser::parseAttribute(this, 0);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    v11[0] = "expected '>' after fused location metadata";
    v13 = 259;
    if (!mlir::detail::Parser::parseToken(this, 19, v11))
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10[1] = v11;
  v11[0] = v12;
  v11[1] = 0x400000000;
  v10[0] = this;
  if (mlir::detail::Parser::parseCommaSeparatedList(this, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>, v10, " in fused location", 18))
  {
    mlir::FusedLoc::get(v11[0], LODWORD(v11[1]), v8, ***(this + 1));
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return 0;
}

BOOL mlir::detail::Parser::parseNameOrFileLineColLocation(mlir::detail::Parser *this, LocationAttr *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = **v4;
  mlir::Token::getStringValue((v4 + 7), &v50);
  v6 = *(this + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v51, (*(this + 1) + 8));
  v7 = *(this + 1);
  *(v7 + 56) = v51;
  *(v7 + 72) = v52;
  v8 = *(this + 1);
  v9 = (v8 + 56);
  v10 = *(v8 + 56);
  if (v10 == 21)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v51, (*(this + 1) + 8));
    v25 = *(this + 1);
    *(v25 + 56) = v51;
    *(v25 + 72) = v52;
    v48.var0 = 0;
    if (mlir::detail::Parser::parseLocationInstance(this, &v48))
    {
      v54 = 260;
      *&v51 = &v50;
      v26 = mlir::StringAttr::get(v5, &v51);
      a2->var0 = mlir::NameLoc::get(v26, v48.var0);
      *&v51 = "expected ')' after child location of NameLoc";
      v54 = 259;
      if (mlir::detail::Parser::parseToken(this, 28, &v51))
      {
        v16 = 1;
        goto LABEL_51;
      }
    }

    goto LABEL_46;
  }

  if (v10 != 15)
  {
    v54 = 260;
    *&v51 = &v50;
    v27 = mlir::StringAttr::get(v5, &v51);
    v28 = mlir::NameLoc::get(v27);
    goto LABEL_25;
  }

  *(v8 + 80) = *v9;
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v51, (*(this + 1) + 8));
  v11 = *(this + 1);
  *(v11 + 56) = v51;
  *(v11 + 72) = v52;
  v12 = *(this + 1);
  v14 = *(v12 + 56);
  v13 = (v12 + 56);
  if (v14 == 10)
  {
    UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v13);
    if ((UnsignedIntegerValue & 0x100000000) == 0)
    {
      v48.var0 = "expected integer line number in FileLineColLoc";
      v49 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v48, &v51);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
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
        if (!v56)
        {
          goto LABEL_49;
        }

        v21 = v57;
        v22 = v56;
        if (v57 == v56)
        {
LABEL_48:
          v57 = v20;
          operator delete(v22);
LABEL_49:
          if (v53 != &v55)
          {
            free(v53);
          }

          goto LABEL_51;
        }

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
LABEL_47:
        v22 = v56;
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    v35 = UnsignedIntegerValue;
    v36 = *(this + 1);
    *(v36 + 80) = *(v36 + 56);
    *(v36 + 96) = *(v36 + 72);
    mlir::Lexer::lexToken(&v51, (*(this + 1) + 8));
    v37 = *(this + 1);
    *(v37 + 56) = v51;
    *(v37 + 72) = v52;
    *&v51 = "expected ':' in FileLineColLoc";
    v54 = 259;
    if (mlir::detail::Parser::parseToken(this, 15, &v51))
    {
      v38 = *(this + 1);
      v40 = *(v38 + 56);
      v39 = (v38 + 56);
      if (v40 != 10)
      {
        v48.var0 = "expected integer column number in FileLineColLoc";
        v49 = 259;
        mlir::detail::Parser::emitWrongTokenError(this, &v48, &v51);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
        if (v51)
        {
          mlir::InFlightDiagnostic::report(&v51);
        }

        if (v61 == 1)
        {
          mlir::Diagnostic::~Diagnostic((&v51 + 8));
        }

        goto LABEL_51;
      }

      v41 = mlir::Token::getUnsignedIntegerValue(v39);
      if ((v41 & 0x100000000) == 0)
      {
        v48.var0 = "expected integer column number in FileLineColLoc";
        v49 = 259;
        mlir::detail::Parser::emitError(this, &v48, &v51);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
        goto LABEL_51;
      }

      v43 = v41;
      v44 = *(this + 1);
      *(v44 + 80) = *(v44 + 56);
      *(v44 + 96) = *(v44 + 72);
      mlir::Lexer::lexToken(&v51, (*(this + 1) + 8));
      v45 = *(this + 1);
      *(v45 + 56) = v51;
      *(v45 + 72) = v52;
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v50;
      }

      else
      {
        v46 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      v28 = mlir::FileLineColLoc::get(v5, v46, size, v35, v43);
LABEL_25:
      a2->var0 = v28;
      v16 = 1;
      goto LABEL_51;
    }

LABEL_46:
    v16 = 0;
    goto LABEL_51;
  }

  v48.var0 = "expected integer line number in FileLineColLoc";
  v49 = 259;
  mlir::detail::Parser::emitWrongTokenError(this, &v48, &v51);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v59;
      v31 = __p;
      if (v59 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v59 = v29;
      operator delete(v31);
    }

    v20 = v56;
    if (!v56)
    {
      goto LABEL_49;
    }

    v32 = v57;
    v22 = v56;
    if (v57 == v56)
    {
      goto LABEL_48;
    }

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

    while (v32 != v20);
    goto LABEL_47;
  }

LABEL_51:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v16;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v7.var0 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(v2, &v7) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  var0 = v7.var0;
  v5 = *(v3 + 8);
  if (v5 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v5 + 1, 8);
    LODWORD(v5) = *(v3 + 8);
  }

  *(*v3 + 8 * v5) = var0;
  ++*(v3 + 8);
  return 1;
}

BOOL mlir::detail::Parser::parseCommaSeparatedList(mlir::detail::Parser *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 4)
  {
    if (a2 <= 2)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_27;
        }

LABEL_9:
        v23 = 1283;
        *&v20 = "expected '['";
        v21 = a5;
        v22 = a6;
        if (mlir::detail::Parser::parseToken(a1, 22, &v20))
        {
          v12 = *(a1 + 1);
          v13 = v12 + 56;
          if (*(v12 + 56) != 29)
          {
            goto LABEL_27;
          }

LABEL_23:
          *(v12 + 80) = *v13;
          *(v12 + 96) = *(v13 + 16);
          mlir::Lexer::lexToken(&v20, (*(a1 + 1) + 8));
          v14 = *(a1 + 1);
          *(v14 + 56) = v20;
          *(v14 + 72) = v21;
          return 1;
        }

        return 0;
      }

      goto LABEL_21;
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

LABEL_25:
    v23 = 1283;
    *&v20 = "expected '<'";
    v21 = a5;
    v22 = a6;
    if (!mlir::detail::Parser::parseToken(a1, 23, &v20))
    {
      return 1;
    }

    v12 = *(a1 + 1);
    v13 = v12 + 56;
    if (*(v12 + 56) == 19)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      if (*(*(a1 + 1) + 56) != 22)
      {
        return 1;
      }

      goto LABEL_9;
    }

    if (*(*(a1 + 1) + 56) != 21)
    {
      return 1;
    }

LABEL_21:
    v23 = 1283;
    *&v20 = "expected '('";
    v21 = a5;
    v22 = a6;
    if (mlir::detail::Parser::parseToken(a1, 21, &v20))
    {
      v12 = *(a1 + 1);
      v13 = v12 + 56;
      if (*(v12 + 56) != 28)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    return 0;
  }

  if (a2 == 7)
  {
    if (*(*(a1 + 1) + 56) != 23)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (a2 != 8)
  {
    goto LABEL_27;
  }

  if (*(*(a1 + 1) + 56) != 20)
  {
    return 1;
  }

LABEL_17:
  v23 = 1283;
  *&v20 = "expected '{'";
  v21 = a5;
  v22 = a6;
  if (!mlir::detail::Parser::parseToken(a1, 20, &v20))
  {
    return 0;
  }

  v12 = *(a1 + 1);
  v13 = v12 + 56;
  if (*(v12 + 56) == 27)
  {
    goto LABEL_23;
  }

LABEL_27:
  if ((a3(a4) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    v15 = *(a1 + 1);
    if (*(v15 + 56) != 16)
    {
      break;
    }

    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken(&v20, (*(a1 + 1) + 8));
    v16 = *(a1 + 1);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    if ((a3(a4) & 1) == 0)
    {
      return 0;
    }
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
LABEL_41:
        v23 = 1283;
        *&v20 = "expected '>'";
        v21 = a5;
        v22 = a6;
        v18 = a1;
        v19 = 19;
        return mlir::detail::Parser::parseToken(v18, v19, &v20);
      }

      goto LABEL_40;
    }

    if (a2)
    {
LABEL_44:
      v23 = 1283;
      *&v20 = "expected ')'";
      v21 = a5;
      v22 = a6;
      v18 = a1;
      v19 = 28;
      return mlir::detail::Parser::parseToken(v18, v19, &v20);
    }

    return 1;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (a2 != 6)
  {
    if (a2 == 7)
    {
      goto LABEL_41;
    }

LABEL_43:
    v23 = 1283;
    *&v20 = "expected '}'";
    v21 = a5;
    v22 = a6;
    v18 = a1;
    v19 = 27;
    return mlir::detail::Parser::parseToken(v18, v19, &v20);
  }

LABEL_40:
  v23 = 1283;
  *&v20 = "expected ']'";
  v21 = a5;
  v22 = a6;
  v18 = a1;
  v19 = 29;
  return mlir::detail::Parser::parseToken(v18, v19, &v20);
}

BOOL mlir::detail::Parser::parseToken(mlir::detail::Parser *a1, int a2, const llvm::Twine *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 1);
  if (*(v3 + 56) == a2)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v16, (*(a1 + 1) + 8));
    v5 = *(a1 + 1);
    *(v5 + 56) = v16;
    *(v5 + 72) = v17;
    return 1;
  }

  else
  {
    mlir::detail::Parser::emitWrongTokenError(a1, a3, &v16);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (v16)
    {
      mlir::InFlightDiagnostic::report(&v16);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v6;
}

BOOL mlir::detail::Parser::parseCommaSeparatedListUntil(mlir::detail::Parser *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1);
  if (*(v6 + 56) == a2)
  {
    if (a5)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken(&v26, (*(a1 + 1) + 8));
      v7 = *(a1 + 1);
      *(v7 + 56) = v26;
      *(v7 + 72) = v27;
      return 1;
    }

    else
    {
      v24[0] = "expected list element";
      v25 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v24, &v26);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v36 == 1)
      {
        if (v35 != &v36)
        {
          free(v35);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v34;
          v16 = __p;
          if (v34 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v34 = v14;
          operator delete(v16);
        }

        v17 = v31;
        if (v31)
        {
          v18 = v32;
          v19 = v31;
          if (v32 != v31)
          {
            do
            {
              v21 = *--v18;
              v20 = v21;
              *v18 = 0;
              if (v21)
              {
                operator delete[](v20);
              }
            }

            while (v18 != v17);
            v19 = v31;
          }

          v32 = v17;
          operator delete(v19);
        }

        if (v28 != &v30)
        {
          free(v28);
        }
      }
    }
  }

  else
  {
    v11 = a2;
    if (a3(a4))
    {
      while (1)
      {
        v12 = *(a1 + 1);
        if (*(v12 + 56) != 16)
        {
          break;
        }

        *(v12 + 80) = *(v12 + 56);
        *(v12 + 96) = *(v12 + 72);
        mlir::Lexer::lexToken(&v26, (*(a1 + 1) + 8));
        v13 = *(a1 + 1);
        *(v13 + 56) = v26;
        *(v13 + 72) = v27;
        if ((a3(a4) & 1) == 0)
        {
          return 0;
        }
      }

      v25 = 1283;
      v24[0] = "expected ',' or '";
      v24[2] = mlir::Token::getTokenSpelling(v11);
      v24[3] = v22;
      *&v26 = v24;
      v27 = "'";
      v29 = 770;
      return mlir::detail::Parser::parseToken(a1, v11, &v26);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void mlir::detail::Parser::emitWrongTokenError(uint64_t a1@<X0>, uint64_t a2@<X1>, mlir::InFlightDiagnostic *a3@<X8>)
{
  Loc = mlir::Token::getLoc((*(a1 + 8) + 56));
  v7 = *(a1 + 8);
  v8 = *(v7 + 56) == 0;
  v9 = *(v7 + 24);
  v10 = (Loc - v8);
  v11 = Loc - v8 - v9;
  *&v24 = v9;
  *(&v24 + 1) = v11;
  while (1)
  {
    last_not_of = llvm::StringRef::find_last_not_of(&v24, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
    if (last_not_of + 1 < *(&v24 + 1))
    {
      v13 = last_not_of + 1;
    }

    else
    {
      v13 = *(&v24 + 1);
    }

    v14 = *(&v24 + 1) - v11 + v13;
    if (*(&v24 + 1) < v14)
    {
      v14 = *(&v24 + 1);
    }

    *(&v24 + 1) = v14;
    if (!v14)
    {
      break;
    }

    v15 = (v24 + v14);
    v16 = *(v24 + v14 - 1);
    if (v16 != 10 && v16 != 13)
    {
      v21 = *(a1 + 8) + 8;
      goto LABEL_23;
    }

    *(&v24 + 1) = v14 - 1;
    v23 = v24;
    last_of = llvm::StringRef::find_last_of(&v23, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
    if (last_of != -1)
    {
      if (*(&v23 + 1) >= last_of)
      {
        v19 = last_of;
      }

      else
      {
        v19 = *(&v23 + 1);
      }

      *&v23 = v23 + v19;
      *(&v23 + 1) -= v19;
    }

    v20 = llvm::StringRef::find(&v23, "//", 2uLL, 0);
    v11 = *(&v24 + 1);
    if (v20 != -1)
    {
      if (*(&v24 + 1) >= v20 - *(&v23 + 1) + *(&v24 + 1))
      {
        v11 = v20 - *(&v23 + 1) + *(&v24 + 1);
      }

      *(&v24 + 1) = v11;
    }
  }

  v21 = *(a1 + 8) + 8;
  v15 = v10;
LABEL_23:
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v21, v15);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, uint64_t a2@<X1>, mlir::InFlightDiagnostic *a3@<X8>)
{
  Loc = mlir::Token::getLoc((*(a1 + 8) + 56));
  v7 = Loc;
  v8 = *(a1 + 8);
  if (!*(v8 + 56))
  {
    v7 = (Loc - 1);
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v8 + 8, v7);
  mlir::emitError(EncodedSourceLocation, a2, a3);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a3);
  }
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, mlir::InFlightDiagnostic *a4@<X8>)
{
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, a3, a4);
  if (*(*(a1 + 8) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, void **a2)
{
  v4 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 > 58)
  {
    if (v7 == 79)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v16 = *(this + 1);
      *(v16 + 56) = v26;
      *(v16 + 72) = v27;
      v17 = *(a2 + 2);
      if (v17 > 0x40)
      {
        v4 = 1;
        **a2 = 1;
        bzero(*a2 + 8, (((v17 + 63) >> 3) - 8) & 0xFFFFFFF8);
        goto LABEL_39;
      }

      *a2 = (v17 != 0);
    }

    else
    {
      v9 = 0;
      if (v7 != 59)
      {
        return v4 | (v9 << 8);
      }

      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v14 = *(this + 1);
      *(v14 + 56) = v26;
      *(v14 + 72) = v27;
      v15 = *(a2 + 2);
      if (v15 > 0x40)
      {
        **a2 = 0;
        bzero(*a2 + 8, (((v15 + 63) >> 3) - 8) & 0xFFFFFFF8);
      }

      else
      {
        *a2 = 0;
      }
    }

    goto LABEL_38;
  }

  v8 = v7 == 10 || v7 == 24;
  v9 = 0;
  if (v8)
  {
    if (v7 == 24)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v26, (*(this + 1) + 8));
      v10 = *(this + 1);
      *(v10 + 56) = v26;
      *(v10 + 72) = v27;
      v5 = *(this + 1);
    }

    v24 = *(v5 + 56);
    v25 = *(v5 + 72);
    *&v26 = "expected integer value";
    v28 = 259;
    if (!mlir::detail::Parser::parseToken(this, 10, &v26))
    {
      goto LABEL_21;
    }

    v23[0] = *(&v24 + 1);
    v23[1] = v25;
    v11 = 10;
    if (v25 >= 2)
    {
      if (*(*(&v24 + 1) + 1) == 120)
      {
        v11 = 0;
      }

      else
      {
        v11 = 10;
      }
    }

    if (llvm::StringRef::getAsInteger(v23, v11, a2))
    {
      Loc = mlir::Token::getLoc(&v24);
      v21 = "integer value too large";
      v22 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v21, &v26);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v26);
      }

      if (v26)
      {
        mlir::InFlightDiagnostic::report(&v26);
      }

      if (v29 == 1)
      {
        mlir::Diagnostic::~Diagnostic((&v26 + 8));
      }

LABEL_21:
      v4 = 0;
LABEL_39:
      v9 = 1;
      return v4 | (v9 << 8);
    }

    v18 = *(a2 + 2);
    v19 = (*a2 + 8 * ((v18 - 1) >> 6));
    if (v18 < 0x41)
    {
      v19 = a2;
    }

    if ((*v19 >> (v18 - 1)))
    {
      llvm::APInt::zext(&v26, a2, v18 + 1);
      if (*(a2 + 2) >= 0x41u && *a2)
      {
        operator delete[](*a2);
      }

      *a2 = v26;
      *(a2 + 2) = DWORD2(v26);
    }

    if (v7 == 24)
    {
      llvm::APInt::negate(a2);
    }

LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  return v4 | (v9 << 8);
}

uint64_t **llvm::APInt::negate(llvm::APInt *this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v5 = this;
    llvm::APInt::flipAllBitsSlowCase(this);
    this = v5;
  }

  else
  {
    if (v2)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v3 = 0;
    }

    *this = v3 & ~*this;
  }

  return llvm::APInt::operator++(this);
}

uint64_t mlir::detail::Parser::parseOptionalDecimalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 24 || v3 == 10)
  {
    if (v3 == 24)
    {
      *(v2 + 80) = *(v2 + 56);
      *(v2 + 96) = *(v2 + 72);
      mlir::Lexer::lexToken(&v38, (*(this + 1) + 8));
      v7 = *(this + 1);
      *(v7 + 56) = v38;
      *(v7 + 72) = v39;
      v2 = *(this + 1);
    }

    v36 = *(v2 + 56);
    v37 = *(v2 + 72);
    *&v38 = "expected integer value";
    v41 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v38))
    {
      v35[0] = *(&v36 + 1);
      v35[1] = v37;
      if (**(&v36 + 1) == 48 && v37 >= 2)
      {
        v11 = *(*(&v36 + 1) + 1);
        v10 = *(&v36 + 1) + 1;
        v9 = v11;
        v12 = v11 + 32;
        if ((v11 - 65) < 0x1A)
        {
          v9 = v12;
        }

        if (v9 == 120)
        {
          v13 = *(a2 + 2);
          if (v13 > 0x40)
          {
            **a2 = 0;
            bzero((*a2 + 8), (((v13 + 63) >> 3) - 8) & 0xFFFFFFF8);
          }

          else
          {
            *a2 = 0;
          }

          v30 = *(this + 1);
          *(v30 + 40) = v10;
          *(v30 + 80) = *(v30 + 56);
          *(v30 + 96) = *(v30 + 72);
          mlir::Lexer::lexToken(&v38, (*(this + 1) + 8));
          v31 = *(this + 1);
          *(v31 + 56) = v38;
          *(v31 + 72) = v39;
LABEL_55:
          v14 = 1;
LABEL_61:
          v15 = 1;
          return v14 | (v15 << 8);
        }
      }

      if (!llvm::StringRef::getAsInteger(v35, 0xAu, a2))
      {
        v26 = *(a2 + 2);
        v27 = *a2;
        v28 = (*a2 + 8 * ((v26 - 1) >> 6));
        if (v26 < 0x41)
        {
          v28 = a2;
        }

        if ((*v28 >> (v26 - 1)))
        {
          llvm::APInt::zext(&v38, a2, v26 + 1);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            operator delete[](*a2);
          }

          v27 = v38;
          *a2 = v38;
          v26 = DWORD2(v38);
          *(a2 + 2) = DWORD2(v38);
        }

        if (v3 == 24)
        {
          if (v26 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(a2);
          }

          else
          {
            if (v26)
            {
              v29 = 0xFFFFFFFFFFFFFFFFLL >> -v26;
            }

            else
            {
              v29 = 0;
            }

            *a2 = v29 & ~v27;
          }

          llvm::APInt::operator++(a2);
        }

        goto LABEL_55;
      }

      Loc = mlir::Token::getLoc(&v36);
      v33 = "integer value too large";
      v34 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v33, &v38);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v38);
      }

      if (v38)
      {
        mlir::InFlightDiagnostic::report(&v38);
      }

      if (v48 == 1)
      {
        if (v47 != &v48)
        {
          free(v47);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v46;
          v20 = __p;
          if (v46 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v46 = v18;
          operator delete(v20);
        }

        v21 = v43;
        if (v43)
        {
          v22 = v44;
          v23 = v43;
          if (v44 != v43)
          {
            do
            {
              v25 = *--v22;
              v24 = v25;
              *v22 = 0;
              if (v25)
              {
                operator delete[](v24);
              }
            }

            while (v22 != v21);
            v23 = v43;
          }

          v44 = v21;
          operator delete(v23);
        }

        if (v40 != &v42)
        {
          free(v40);
        }
      }
    }

    v14 = 0;
    goto LABEL_61;
  }

  v14 = 0;
  v15 = 0;
  return v14 | (v15 << 8);
}

uint64_t mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, uint64_t a2, mlir::Token *this, int a4, void *a5, unint64_t a6)
{
  v74 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc(this);
  v13 = *(this + 2);
  if (v13 >= 2)
  {
    v14 = *(this + 1);
    if (v14[1] == 120)
    {
      if (a4)
      {
        v59[0] = "hexadecimal float literal should not have a leading minus";
        v60 = 259;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
        mlir::emitError(EncodedSourceLocation, v59, &v64);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v64);
        }

        Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
        if (v64)
        {
          mlir::InFlightDiagnostic::report(&v64);
        }

        if (v73 == 1)
        {
          if (v72 != &v73)
          {
            free(v72);
          }

          v17 = __p;
          if (__p)
          {
            v18 = v71;
            v19 = __p;
            if (v71 != __p)
            {
              do
              {
                v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
              }

              while (v18 != v17);
              v19 = __p;
            }

            v71 = v17;
            operator delete(v19);
          }

          v20 = v68;
          if (!v68)
          {
            goto LABEL_43;
          }

          v21 = v69;
          v22 = v68;
          if (v69 == v68)
          {
LABEL_42:
            v69 = v20;
            operator delete(v22);
LABEL_43:
            if (v66 != v67)
            {
              free(v66);
            }

            return Enum;
          }

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
LABEL_41:
          v22 = v68;
          goto LABEL_42;
        }

        return Enum;
      }

      LODWORD(v62) = 1;
      v61 = 0;
      v64 = v14;
      v65 = v13;
      llvm::StringRef::getAsInteger(&v64, 0, &v61);
      v39 = v62;
      if (v62 > 0x40)
      {
        if (v39 - llvm::APInt::countLeadingZerosSlowCase(&v61) <= a6)
        {
          v40 = llvm::APInt::APInt(&v64, a6, (v39 + 63) >> 6, v61);
          if ((*(a2 + 32) & 1) == 0)
          {
LABEL_49:
            v42 = llvm::APFloatBase::PPCDoubleDouble(v40);
            v43 = (a2 + 8);
            v44 = a5;
            if (v42 != a5)
            {
              goto LABEL_50;
            }

            goto LABEL_80;
          }

LABEL_72:
          v54 = *(a2 + 8);
          v55 = llvm::APFloatBase::PPCDoubleDouble(v40);
          if (v55 == v54)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((a2 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((a2 + 8));
          }

          *(a2 + 32) = 0;
          v43 = (a2 + 8);
          v44 = a5;
          if (v55 != a5)
          {
LABEL_50:
            llvm::detail::IEEEFloat::IEEEFloat(v43, v44, &v64, v41);
            *(a2 + 32) = 1;
            if (v65 < 0x41)
            {
              goto LABEL_83;
            }

            goto LABEL_81;
          }

LABEL_80:
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v43, v44, &v64);
          *(a2 + 32) = 1;
          if (v65 < 0x41)
          {
LABEL_83:
            Enum = 1;
LABEL_84:
            if (v62 >= 0x41 && v61)
            {
              operator delete[](v61);
            }

            return Enum;
          }

LABEL_81:
          if (v64)
          {
            operator delete[](v64);
          }

          goto LABEL_83;
        }
      }

      else if (64 - __clz(v61) <= a6)
      {
        v40 = llvm::APInt::APInt(&v64, a6, (v62 + 63) >> 6, &v61);
        if ((*(a2 + 32) & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_72;
      }

      v59[0] = "hexadecimal float constant out of range for type";
      v60 = 259;
      v45 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(v45, v59, &v64);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v64);
      }

      Enum = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
      if (v64)
      {
        mlir::InFlightDiagnostic::report(&v64);
      }

      if (v73 == 1)
      {
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

        v49 = v68;
        if (v68)
        {
          v50 = v69;
          v51 = v68;
          if (v69 != v68)
          {
            do
            {
              v53 = *--v50;
              v52 = v53;
              *v50 = 0;
              if (v53)
              {
                operator delete[](v52);
              }
            }

            while (v50 != v49);
            v51 = v68;
          }

          v69 = v49;
          operator delete(v51);
        }

        if (v66 != v67)
        {
          free(v66);
        }
      }

      goto LABEL_84;
    }
  }

  v59[0] = "unexpected decimal integer literal for a floating point value";
  v60 = 259;
  v25 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
  mlir::emitError(v25, v59, &v64);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v64);
  }

  v26 = mlir::Diagnostic::attachNote(&v65, 0, 0);
  v27 = *(v26 + 16);
  LODWORD(v61) = 3;
  v62 = "add a trailing dot to make the literal a float";
  v63 = 46;
  v28 = *(v26 + 24);
  v29 = &v61;
  if (v28 >= *(v26 + 28))
  {
    if (v27 <= &v61 && v27 + 24 * v28 > &v61)
    {
      v57 = &v61 - v27;
      v58 = v26;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 16, (v26 + 32), v28 + 1, 24);
      v26 = v58;
      v27 = *(v58 + 16);
      v29 = &v57[v27];
    }

    else
    {
      v56 = v26;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 16, (v26 + 32), v28 + 1, 24);
      v26 = v56;
      v27 = *(v56 + 16);
      v29 = &v61;
    }
  }

  v30 = v27 + 24 * *(v26 + 24);
  v31 = *v29;
  *(v30 + 16) = v29[2];
  *v30 = v31;
  ++*(v26 + 24);
  Enum = getEnumTag for MPSGraphDelegateKernelError();
  if (v64)
  {
    mlir::InFlightDiagnostic::report(&v64);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v71;
      v34 = __p;
      if (v71 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v71 = v32;
      operator delete(v34);
    }

    v20 = v68;
    if (!v68)
    {
      goto LABEL_43;
    }

    v35 = v69;
    v22 = v68;
    if (v69 == v68)
    {
      goto LABEL_42;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v20);
    goto LABEL_41;
  }

  return Enum;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = a1;
    v4 = strlen(__s);
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  v13 = 3;
  v14 = __s;
  v15 = v4;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  v7 = &v13;
  if (v5 >= *(a1 + 28))
  {
    if (v6 <= &v13 && v6 + 24 * v5 > &v13)
    {
      v11 = &v13 - v6;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v5 + 1, 24);
      a1 = v12;
      v6 = *(v12 + 16);
      v7 = &v11[v6];
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v5 + 1, 24);
      a1 = v10;
      v6 = *(v10 + 16);
      v7 = &v13;
    }
  }

  v8 = (v6 + 24 * *(a1 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(a1 + 24);
  return result;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, const mlir::OpAsmDialectInterface *a2@<X1>, llvm::StringRef *a3@<X2>, uint64_t a4@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v64 = a2;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v8 = *(this + 1);
  v9 = *(v8 + 56);
  if (v9 == 3 || v9 == 12)
  {
LABEL_6:
    *a3 = *(v8 + 64);
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v69, (*(this + 1) + 8));
    v11 = *(this + 1);
    *(v11 + 56) = v69;
    *(v11 + 72) = v70;
    v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](*(*(this + 1) + 104) + 48, &v64);
    v13 = *a3;
    v14 = *(a3 + 1);
    v17 = llvm::StringMapImpl::hash(*a3, v14, v15, v16);
    v18 = llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::try_emplace_with_hash<>(v12, v13, v14, v17);
    v19 = *v18;
    if ((*(*v18 + 31) & 0x8000000000000000) != 0)
    {
      v20 = v19 + 8;
      if (!*(v19 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v20 = v19 + 8;
      if (!*(*v18 + 31))
      {
LABEL_12:
        (*(*v64 + 32))(&v61);
        if (v63)
        {
          (*(*v64 + 40))(&v69);
          if (*(v19 + 31) < 0)
          {
            operator delete(*v20);
          }

          v22 = v69;
          *(v20 + 16) = v70;
          *v20 = v22;
          *(v19 + 32) = v61;
          *(v19 + 48) = v62;
          goto LABEL_16;
        }

        v60[16] = 257;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
        mlir::emitError(EncodedSourceLocation, v60, &v69);
        if (*(*(this + 1) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v69);
        }

        if (!v69)
        {
          goto LABEL_50;
        }

        LODWORD(v65) = 3;
        v66 = "unknown 'resource' key '";
        v67 = 24;
        v34 = &v65;
        v35 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v65 && v71 + 24 * v72 > &v65)
          {
            v57 = &v65 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v35 = v71;
            v34 = (v71 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v34 = &v65;
            v35 = v71;
          }
        }

        v36 = &v35[24 * v72];
        v37 = *v34;
        *(v36 + 2) = v34[2];
        *v36 = v37;
        ++v72;
        if (!v69)
        {
          goto LABEL_50;
        }

        v68 = 261;
        v38 = *(a3 + 1);
        v65 = *a3;
        v66 = v38;
        mlir::Diagnostic::operator<<(&v69 + 8, &v65);
        if (!v69)
        {
          goto LABEL_50;
        }

        LODWORD(v65) = 3;
        v66 = "' for dialect '";
        v67 = 15;
        v39 = &v65;
        v40 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v65 && v71 + 24 * v72 > &v65)
          {
            v58 = &v65 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v40 = v71;
            v39 = (v71 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v39 = &v65;
            v40 = v71;
          }
        }

        v41 = &v40[24 * v72];
        v42 = *v39;
        *(v41 + 2) = v39[2];
        *v41 = v42;
        ++v72;
        if (v69 && (v43 = *(v64 + 1), v45 = *(v43 + 8), v44 = *(v43 + 16), v68 = 261, v65 = v45, v66 = v44, mlir::Diagnostic::operator<<(&v69 + 8, &v65), v69))
        {
          LODWORD(v65) = 3;
          v66 = "'";
          v67 = 1;
          v46 = &v65;
          v47 = v71;
          if (v72 >= v73)
          {
            if (v71 <= &v65 && v71 + 24 * v72 > &v65)
            {
              v59 = &v65 - v71;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v47 = v71;
              v46 = (v71 + v59);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
              v46 = &v65;
              v47 = v71;
            }
          }

          v48 = &v47[24 * v72];
          v49 = *v46;
          *(v48 + 2) = v46[2];
          *v48 = v49;
          ++v72;
          v50 = v69;
          *a4 = 0;
          *(a4 + 24) = 0;
          if (v50)
          {
            mlir::InFlightDiagnostic::report(&v69);
          }
        }

        else
        {
LABEL_50:
          *a4 = 0;
          *(a4 + 24) = 0;
        }

        if (v80)
        {
          if (v79 != &v80)
          {
            free(v79);
          }

          v51 = __p;
          if (__p)
          {
            v52 = v78;
            v53 = __p;
            if (v78 != __p)
            {
              do
              {
                v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
              }

              while (v52 != v51);
              v53 = __p;
            }

            v78 = v51;
            operator delete(v53);
          }

          v28 = v75;
          if (!v75)
          {
            goto LABEL_67;
          }

          v54 = v76;
          v30 = v75;
          if (v76 == v75)
          {
LABEL_66:
            v76 = v28;
            operator delete(v30);
LABEL_67:
            if (v71 != v74)
            {
              free(v71);
            }

            return;
          }

          do
          {
            v56 = *--v54;
            v55 = v56;
            *v54 = 0;
            if (v56)
            {
              operator delete[](v55);
            }
          }

          while (v54 != v28);
LABEL_65:
          v30 = v75;
          goto LABEL_66;
        }

        return;
      }
    }

LABEL_16:
    v23 = *(v19 + 31);
    v24 = *(v19 + 8);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    if (v23 < 0)
    {
      v23 = *(v19 + 16);
    }

    *a3 = v24;
    *(a3 + 1) = v23;
    *a4 = *(v19 + 32);
    *(a4 + 16) = *(v19 + 48);
    *(a4 + 24) = 1;
    return;
  }

  if (mlir::Token::isKeyword((v8 + 56)))
  {
    v8 = *(this + 1);
    goto LABEL_6;
  }

  v65 = "expected identifier key for 'resource' entry";
  v68 = 259;
  mlir::detail::Parser::emitError(this, &v65, &v69);
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v69)
  {
    mlir::InFlightDiagnostic::report(&v69);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v78;
      v27 = __p;
      if (v78 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v78 = v25;
      operator delete(v27);
    }

    v28 = v75;
    if (!v75)
    {
      goto LABEL_67;
    }

    v29 = v76;
    v30 = v75;
    if (v76 == v75)
    {
      goto LABEL_66;
    }

    do
    {
      v32 = *--v29;
      v31 = v32;
      *v29 = 0;
      if (v32)
      {
        operator delete[](v31);
      }
    }

    while (v29 != v28);
    goto LABEL_65;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3800000000;
  return v4 + 1;
}

void mlir::detail::Parser::parseResourceHandle(uint64_t *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, mlir::Dialect *a3@<X1>)
{
  v46 = *MEMORY[0x1E69E9840];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3);
    v34 = 0;
    v35 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &v34, a1);
  }

  else
  {
    v29 = 257;
    mlir::detail::Parser::emitError(this, v28, &v34);
    if (!v34)
    {
      goto LABEL_10;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v7 = &v30;
    v8 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v26 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v8 = v36;
        v7 = (v36 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v7 = &v30;
        v8 = v36;
      }
    }

    v9 = &v8[24 * v37];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v37;
    if (v34 && (v11 = *(a3 + 1), v12 = *(a3 + 2), v33 = 261, v30 = v11, v31 = v12, mlir::Diagnostic::operator<<(&v35, &v30), v34))
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v13 = &v30;
      v14 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v30 && v36 + 24 * v37 > &v30)
        {
          v27 = &v30 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v14 = v36;
          v13 = (v36 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v13 = &v30;
          v14 = v36;
        }
      }

      v15 = &v14[24 * v37];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v37;
      v17 = v34;
      *a1 = 0;
      *(a1 + 24) = 0;
      if (v17)
      {
        mlir::InFlightDiagnostic::report(&v34);
      }
    }

    else
    {
LABEL_10:
      *a1 = 0;
      *(a1 + 24) = 0;
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v43;
        v20 = __p;
        if (v43 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v43 = v18;
        operator delete(v20);
      }

      v21 = v40;
      if (v40)
      {
        v22 = v41;
        v23 = v40;
        if (v41 != v40)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              operator delete[](v24);
            }
          }

          while (v22 != v21);
          v23 = v40;
        }

        v41 = v21;
        operator delete(v23);
      }

      if (v36 != v39)
      {
        free(v36);
      }
    }
  }
}

uint64_t mlir::detail::Parser::codeCompleteDialectOrElidedOpName(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v6 = *i;
    if (v6 > 0xC)
    {
      if (v6 != 32 && v6 != 13)
      {
        return 0;
      }
    }

    else if (v6 != 9)
    {
      if (v6 != 10)
      {
        return 0;
      }

      break;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), "", 0);
  v7 = *(a1 + 8);
  v8 = *(v7 + 168) + 16 * *(v7 + 176);
  v9 = *(v8 - 8);
  if (v9)
  {
    v10 = *(v8 - 16);
    v11 = memchr(v10, 46, *(v8 - 8));
    if (v11)
    {
      v12 = v11 - v10 == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      (*(**(v7 + 160) + 24))(*(v7 + 160), v10, v9);
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::codeCompleteDialectSymbol(uint64_t a1)
{
  (*(**(*(a1 + 8) + 160) + 64))(*(*(a1 + 8) + 160));
  return 0;
}

{
  (*(**(*(a1 + 8) + 160) + 80))(*(*(a1 + 8) + 160));
  return 0;
}

void mlir::parseAsmSourceFile(uint64_t **a1, uint64_t a2, uint64_t ***a3, mlir::AsmParserState *a4, mlir::AsmParserState *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  v22[0] = 0;
  v22[1] = 0;
  v22[2] = 0x1000000000;
  v22[3] = 0;
  v22[4] = 0;
  v22[5] = 0x1000000000;
  v22[6] = 0;
  v22[7] = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = a3;
  mlir::Lexer::Lexer(v28, a1, *a3, a5);
  mlir::Lexer::lexToken(v29, v28);
  v30 = 1;
  v31 = "";
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = v22;
  v36 = 0;
  v37 = v39;
  v38 = 0;
  v39[0] = a4;
  v39[1] = a5;
  v40[0] = "builtin";
  v40[1] = 7;
  v39[2] = v40;
  v39[3] = 0x300000001;
  LOBYTE(v41) = 0;
  LOBYTE(v42) = 0;
  v13 = mlir::ModuleOp::create(v12, &v41);
  *&v41 = *v27;
  *(&v41 + 1) = &v27;
  v45 = &v47;
  v46 = 0x200000000;
  v48 = &v50;
  v49 = 0x200000000;
  v52 = 0;
  v51 = 0;
  v53 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v15 = v13[10];
  v14 = v13[11];
  v42 = &v44;
  v43 = 0x200000000;
  v16 = (((&v13[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v15);
  Context = mlir::Region::getContext(v16);
  v58 = 0;
  v60 = 0;
  v59 = 0;
  if (*v16 != v16)
  {
    v19 = *(v16 + 1);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 40);
    v59 = v20;
    v60 = v21;
  }

  v61 = v13;
}

uint64_t anonymous namespace::OperationParser::parseOperation(_anonymous_namespace_::OperationParser *this)
{
  v316 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v3 = v281;
  v279 = v281;
  v280 = 0x100000000;
  v254 = 0;
  v4 = *(this + 1);
  if (*(v4 + 56) == 6)
  {
    v303 = this;
    v304 = &v279;
    v305 = &v254;
    {
      goto LABEL_312;
    }

    while (1)
    {
      v5 = *(this + 1);
      if (*(v5 + 56) != 16)
      {
        break;
      }

      *(v5 + 80) = *(v5 + 56);
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v282, (*(this + 1) + 8));
      *(*(this + 1) + 56) = v282;
      {
        goto LABEL_312;
      }
    }

    v282.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v284) = 259;
    if (!mlir::detail::Parser::parseToken(this, 18, &v282))
    {
      goto LABEL_312;
    }

    v4 = *(this + 1);
  }

  v252 = *(v4 + 56);
  v253 = *(v4 + 72);
  if (v252 != 3)
  {
    if (!mlir::Token::isKeyword(&v252))
    {
      if (v252 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v252, 11))
        {
          if (v252 == 2)
          {
            v40 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, Loc);
          }

          else
          {
            v303 = "expected operation name in quotes";
            LOWORD(v307) = 259;
            mlir::detail::Parser::emitWrongTokenError(this, &v303, &v282);
            v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v282);
          }

          goto LABEL_313;
        }

        v36 = &v282;
        mlir::Token::getStringValue(&v252, &v282);
        size = SHIBYTE(v282.__r_.__value_.__r.__words[2]);
        if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v282.__r_.__value_.__r.__words[0];
        }

        if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v282.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v36->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v38 = size - 1;
            if (size != 1)
            {
              v39 = memchr(v36, 46, size - 1);
              if (!v39 || v39 - v36 == -1)
              {
                (*(**(*(this + 1) + 160) + 24))(*(*(this + 1) + 160), v36, v38);
              }
            }
          }
        }

        else
        {
          (*(**(*(this + 1) + 160) + 16))(*(*(this + 1) + 160), "", 0);
        }

        if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v282.__r_.__value_.__l.__data_);
        }

LABEL_312:
        v40 = 0;
        goto LABEL_313;
      }

      goto LABEL_304;
    }

    v4 = *(this + 1);
  }

  v6 = v279;
  v7 = v280;
  v8 = mlir::Token::getLoc((v4 + 56));
  v9 = *(this + 1);
  v11 = *(v9 + 64);
  v10 = *(v9 + 72);
  v268 = v12;
  v269 = v14;
  if ((v14 & 1) == 0)
  {
    v31 = 0;
    goto LABEL_304;
  }

  v282.__r_.__value_.__r.__words[0] = *(v12 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v282);
  v16 = v15;
  v302 = 0;
  v17 = v268;
  if (*(v268 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v282.__r_.__value_.__r.__words[0] = *(v268 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v282);
    if (!Values)
    {
      LOWORD(v259) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v8);
      mlir::emitError(EncodedSourceLocation, &v255, &v303);
      v42 = AttrData;
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v303);
      }

      if (v303)
      {
        LODWORD(v282.__r_.__value_.__l.__data_) = 3;
        v282.__r_.__value_.__r.__words[2] = 9;
        v43 = &v282;
        v44 = v306;
        if (v307 >= v308)
        {
          if (v306 <= &v282 && v306 + 24 * v307 > &v282)
          {
            v237 = &v282 - v306;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v44 = v306;
            v43 = (v306 + v237);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v43 = &v282;
            v44 = v306;
          }

          v42 = AttrData;
        }

        v45 = &v44[24 * v307];
        v46 = *&v43->__r_.__value_.__l.__data_;
        *(v45 + 2) = *(&v43->__r_.__value_.__l + 2);
        *v45 = v46;
        ++v307;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v268);
      if (v303)
      {
        LOWORD(v284) = 261;
        v282.__r_.__value_.__r.__words[0] = DialectNamespace;
        v282.__r_.__value_.__l.__size_ = v48;
        mlir::Diagnostic::operator<<(&v304, &v282);
        if (v303)
        {
          LODWORD(v282.__r_.__value_.__l.__data_) = 3;
          v282.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v282.__r_.__value_.__r.__words[2] = 27;
          v49 = &v282;
          v50 = v306;
          if (v307 >= v308)
          {
            if (v306 <= &v282 && v306 + 24 * v307 > &v282)
            {
              v242 = &v282 - v306;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v50 = v306;
              v49 = (v306 + v242);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v49 = &v282;
              v50 = v306;
            }

            v42 = AttrData;
          }

          v51 = &v50[24 * v307];
          v52 = *&v49->__r_.__value_.__l.__data_;
          *(v51 + 2) = *(&v49->__r_.__value_.__l + 2);
          *v51 = v52;
          ++v307;
          if (v303)
          {
            LOWORD(v284) = 261;
            v282.__r_.__value_.__r.__words[0] = v11;
            v282.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v304, &v282);
            if (v303)
            {
              LODWORD(v282.__r_.__value_.__l.__data_) = 3;
              v282.__r_.__value_.__l.__size_ = "' ";
              v282.__r_.__value_.__r.__words[2] = 2;
              v53 = &v282;
              v54 = v306;
              if (v307 >= v308)
              {
                if (v306 <= &v282 && v306 + 24 * v307 > &v282)
                {
                  v247 = &v282 - v306;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
                  v54 = v306;
                  v53 = (v306 + v247);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
                  v53 = &v282;
                  v54 = v306;
                }

                v42 = AttrData;
              }

              v55 = &v54[24 * v307];
              v56 = *&v53->__r_.__value_.__l.__data_;
              *(v55 + 2) = *(&v53->__r_.__value_.__l + 2);
              *v55 = v56;
              ++v307;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v282, &v303);
      if (v303)
      {
        mlir::InFlightDiagnostic::report(&v303);
      }

      if (v315 == 1)
      {
        if (v314 != &v315)
        {
          free(v314);
        }

        v57 = __p;
        if (__p)
        {
          v58 = v313;
          v59 = __p;
          if (v313 != __p)
          {
            do
            {
              v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
            }

            while (v58 != v57);
            v59 = __p;
          }

          v313 = v57;
          operator delete(v59);
        }

        v60 = v310;
        if (v310)
        {
          v61 = v311;
          v62 = v310;
          if (v311 != v310)
          {
            do
            {
              v64 = *--v61;
              v63 = v64;
              *v61 = 0;
              if (v64)
              {
                operator delete[](v63);
              }
            }

            while (v61 != v60);
            v62 = v310;
          }

          v311 = v60;
          operator delete(v62);
        }

        if (v306 != v309)
        {
          free(v306);
        }
      }

      if ((v10 != v16 || v10 && memcmp(v11, v42, v10)) && v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v303) = 3;
        v304 = " (tried '";
        v305 = 9;
        v82 = &v303;
        v83 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v303 && v283 + 24 * v284 > &v303)
          {
            v241 = &v303 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v83 = v283;
            v82 = (v283 + v241);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v82 = &v303;
            v83 = v283;
          }

          v42 = AttrData;
        }

        v84 = &v83[24 * v284];
        v85 = *v82;
        *(v84 + 2) = v82[2];
        *v84 = v85;
        ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          LOWORD(v307) = 261;
          v303 = v42;
          v304 = v16;
          mlir::Diagnostic::operator<<(&v282.__r_.__value_.__l.__size_, &v303);
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v303) = 3;
            v304 = "' as well)";
            v305 = 10;
            v86 = &v303;
            v87 = v283;
            if (v284 >= v285)
            {
              if (v283 <= &v303 && v283 + 24 * v284 > &v303)
              {
                v246 = &v303 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v87 = v283;
                v86 = (v283 + v246);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v86 = &v303;
                v87 = v283;
              }
            }

            v88 = &v87[24 * v284];
            v89 = *v86;
            *(v88 + 2) = v86[2];
            *v88 = v89;
            ++v284;
          }
        }
      }

      v90 = mlir::Diagnostic::attachNote(&v282.__r_.__value_.__l.__size_, 0, 0);
      v91 = v90;
      v93 = v90 + 16;
      v92 = *(v90 + 16);
      LODWORD(v303) = 3;
      v304 = "Registered dialects: ";
      v305 = 21;
      v94 = *(v90 + 24);
      v95 = &v303;
      if (v94 >= *(v90 + 28))
      {
        if (v92 <= &v303 && v92 + 24 * v94 > &v303)
        {
          v234 = &v303 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v90 + 16, (v90 + 32), v94 + 1, 24);
          v92 = *(v91 + 16);
          v95 = &v234[v92];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v90 + 16, (v90 + 32), v94 + 1, 24);
          v92 = *(v91 + 16);
          v95 = &v303;
        }
      }

      v96 = v92 + 24 * *(v91 + 24);
      v97 = *v95;
      *(v96 + 16) = v95[2];
      *v96 = v97;
      ++*(v91 + 24);
      mlir::MLIRContext::getAvailableDialects(&v255, ***(this + 1));
      v98 = v256;
      if (v255 != v256)
      {
        v99 = *v255;
        v100 = *(v255 + 1);
        v101 = v255 + 16;
        LOWORD(v307) = 261;
        v303 = v99;
        v304 = v100;
        mlir::Diagnostic::operator<<(v91, &v303);
        while (v101 != v98)
        {
          LOWORD(v307) = 261;
          v303 = ", ";
          v304 = 2;
          mlir::Diagnostic::operator<<(v91, &v303);
          v102 = *v101;
          v103 = *(v101 + 1);
          v101 += 16;
          LOWORD(v307) = 261;
          v303 = v102;
          v304 = v103;
          mlir::Diagnostic::operator<<(v91, &v303);
        }
      }

      if (v255)
      {
        v256 = v255;
        operator delete(v255);
      }

      LODWORD(v303) = 3;
      v304 = " ; for more info on dialect registration see https://mlir.llvm.org/getting_started/Faq/#registered-loaded-dependent-whats-up-with-dialects-management";
      v305 = 149;
      v104 = *(v91 + 24);
      v105 = *(v91 + 16);
      v106 = &v303;
      v3 = v281;
      if (v104 >= *(v91 + 28))
      {
        if (v105 <= &v303 && v105 + 24 * v104 > &v303)
        {
          v235 = &v303 - v105;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v93, (v91 + 32), v104 + 1, 24);
          v105 = *(v91 + 16);
          v106 = &v235[v105];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v93, (v91 + 32), v104 + 1, 24);
          v105 = *(v91 + 16);
          v106 = &v303;
        }
      }

      v107 = v105 + 24 * *(v91 + 24);
      v108 = *v106;
      *(v107 + 16) = v106[2];
      *v107 = v108;
      ++*(v91 + 24);
      if (v282.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v282);
      }

      if (v293[0] != 1)
      {
LABEL_193:
        v31 = 0;
        v131 = v302;
        if (v302 < 8)
        {
          goto LABEL_304;
        }

        goto LABEL_297;
      }

      if (v292 != v293)
      {
        free(v292);
      }

      v109 = v290;
      if (v290)
      {
        v110 = v291;
        v111 = v290;
        if (v291 != v290)
        {
          do
          {
            v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
          }

          while (v110 != v109);
          v111 = v290;
        }

        v291 = v109;
        operator delete(v111);
      }

      v112 = v288;
      if (!v288)
      {
LABEL_191:
        if (v283 != v286)
        {
          free(v283);
        }

        goto LABEL_193;
      }

      v113 = v289;
      v114 = v288;
      if (v289 == v288)
      {
LABEL_190:
        v289 = v112;
        operator delete(v114);
        goto LABEL_191;
      }

      do
      {
        v116 = *--v113;
        v115 = v116;
        *v113 = 0;
        if (v116)
        {
          operator delete[](v115);
        }
      }

      while (v113 != v112);
LABEL_189:
      v114 = v288;
      goto LABEL_190;
    }

    v26 = AttrData;
    (*(*Values + 64))(&v282);
    if (v282.__r_.__value_.__s.__data_[16])
    {
      v33 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v283 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v34 = v302;
      if (v302 >= 8)
      {
        if ((v302 & 4) != 0)
        {
          if ((v302 & 2) != 0)
          {
            v35 = v300;
          }

          else
          {
            v35 = v300[0];
          }

          (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(v35);
        }

        if ((v34 & 2) == 0)
        {
          llvm::deallocate_buffer(v300[0], v300[1]);
        }

        v33 = v283;
      }

      v302 = v33;
      if (v33 >= 8)
      {
        if ((v33 & 2) != 0 && (v33 & 4) != 0)
        {
          (*((v33 & 0xFFFFFFFFFFFFFFF8) + 8))();
          (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(&v282, v132);
        }

        else
        {
          *v300 = *&v282.__r_.__value_.__l.__data_;
          v301 = v282.__r_.__value_.__r.__words[2];
        }
      }

      v133 = 0;
      v20 = 0;
      goto LABEL_241;
    }

    LOWORD(v259) = 257;
    v65 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v8);
    mlir::emitError(v65, &v255, &v303);
    if (*(*(this + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v303);
    }

    if (v303)
    {
      LODWORD(v282.__r_.__value_.__l.__data_) = 3;
      v282.__r_.__value_.__l.__size_ = "custom op '";
      v282.__r_.__value_.__r.__words[2] = 11;
      v66 = &v282;
      v67 = v306;
      if (v307 >= v308)
      {
        if (v306 <= &v282 && v306 + 24 * v307 > &v282)
        {
          v238 = &v282 - v306;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
          v67 = v306;
          v66 = (v306 + v238);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
          v66 = &v282;
          v67 = v306;
        }

        v26 = AttrData;
      }

      v68 = &v67[24 * v307];
      v69 = *&v66->__r_.__value_.__l.__data_;
      *(v68 + 2) = *(&v66->__r_.__value_.__l + 2);
      *v68 = v69;
      ++v307;
      if (v303)
      {
        LOWORD(v284) = 261;
        v282.__r_.__value_.__r.__words[0] = v11;
        v282.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v304, &v282);
        if (v303)
        {
          LODWORD(v282.__r_.__value_.__l.__data_) = 3;
          v282.__r_.__value_.__l.__size_ = "' is unknown";
          v282.__r_.__value_.__r.__words[2] = 12;
          v70 = &v282;
          v71 = v306;
          if (v307 >= v308)
          {
            if (v306 <= &v282 && v306 + 24 * v307 > &v282)
            {
              v245 = &v282 - v306;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v71 = v306;
              v70 = (v306 + v245);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
              v70 = &v282;
              v71 = v306;
            }

            v26 = AttrData;
          }

          v72 = &v71[24 * v307];
          v73 = *&v70->__r_.__value_.__l.__data_;
          *(v72 + 2) = *(&v70->__r_.__value_.__l + 2);
          *v72 = v73;
          ++v307;
        }
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v282, &v303);
    if (v303)
    {
      mlir::InFlightDiagnostic::report(&v303);
    }

    if (v315 == 1)
    {
      if (v314 != &v315)
      {
        free(v314);
      }

      v74 = __p;
      if (__p)
      {
        v75 = v313;
        v76 = __p;
        if (v313 != __p)
        {
          do
          {
            v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
          }

          while (v75 != v74);
          v76 = __p;
        }

        v313 = v74;
        operator delete(v76);
      }

      v77 = v310;
      if (v310)
      {
        v78 = v311;
        v79 = v310;
        if (v311 != v310)
        {
          do
          {
            v81 = *--v78;
            v80 = v81;
            *v78 = 0;
            if (v81)
            {
              operator delete[](v80);
            }
          }

          while (v78 != v77);
          v79 = v310;
        }

        v311 = v77;
        operator delete(v79);
      }

      if (v306 != v309)
      {
        free(v306);
      }
    }

    if (v10 != v16 || v10 && memcmp(v11, v26, v10))
    {
      if (!v282.__r_.__value_.__r.__words[0])
      {
        goto LABEL_175;
      }

      LODWORD(v303) = 3;
      v304 = " (tried '";
      v305 = 9;
      v117 = &v303;
      v118 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v303 && v283 + 24 * v284 > &v303)
        {
          v243 = &v303 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v118 = v283;
          v117 = (v283 + v243);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v117 = &v303;
          v118 = v283;
        }

        v26 = AttrData;
      }

      v119 = &v118[24 * v284];
      v120 = *v117;
      *(v119 + 2) = v117[2];
      *v119 = v120;
      ++v284;
      if (!v282.__r_.__value_.__r.__words[0])
      {
        goto LABEL_175;
      }

      LOWORD(v307) = 261;
      v303 = v26;
      v304 = v16;
      mlir::Diagnostic::operator<<(&v282.__r_.__value_.__l.__size_, &v303);
      if (!v282.__r_.__value_.__r.__words[0])
      {
        goto LABEL_175;
      }

      LODWORD(v303) = 3;
      v304 = "' as well)";
      v305 = 10;
      v121 = &v303;
      v122 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v303 && v283 + 24 * v284 > &v303)
        {
          v248 = &v303 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v122 = v283;
          v121 = (v283 + v248);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v121 = &v303;
          v122 = v283;
        }
      }

      v123 = &v122[24 * v284];
      v124 = *v121;
      *(v123 + 2) = v121[2];
      *v123 = v124;
      ++v284;
    }

    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

LABEL_175:
    if (v293[0] != 1)
    {
      goto LABEL_193;
    }

    if (v292 != v293)
    {
      free(v292);
    }

    v125 = v290;
    if (v290)
    {
      v126 = v291;
      v127 = v290;
      if (v291 != v290)
      {
        do
        {
          v126 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v126 - 1);
        }

        while (v126 != v125);
        v127 = v290;
      }

      v291 = v125;
      operator delete(v127);
    }

    v112 = v288;
    if (!v288)
    {
      goto LABEL_191;
    }

    v128 = v289;
    v114 = v288;
    if (v289 == v288)
    {
      goto LABEL_190;
    }

    do
    {
      v130 = *--v128;
      v129 = v130;
      *v128 = 0;
      if (v130)
      {
        operator delete[](v129);
      }
    }

    while (v128 != v112);
    goto LABEL_189;
  }

  (*(*v268 + 40))(&v282, v268);
  v18 = v302;
  if (v302 >= 8)
  {
    if ((v302 & 4) != 0)
    {
      if ((v302 & 2) != 0)
      {
        v19 = v300;
      }

      else
      {
        v19 = v300[0];
      }

      (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(v19);
    }

    if ((v18 & 2) == 0)
    {
      llvm::deallocate_buffer(v300[0], v300[1]);
    }
  }

  v302 = v283;
  if (v283 >= 8)
  {
    if ((v283 & 2) != 0 && (v283 & 4) != 0)
    {
      (*((v283 & 0xFFFFFFFFFFFFFFF8) + 8))(v300, &v282);
      (*((v302 & 0xFFFFFFFFFFFFFFF8) + 16))(&v282);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v300 = *&v282.__r_.__value_.__l.__data_;
    v301 = v282.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
LABEL_26:
  v20 = (*(*v17 + 32))(v17, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    v21 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v22 = *(v17 + 32);
    v23 = *(v17 + 40);
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_238:
    v26 = AttrData;
LABEL_240:
    v133 = 0;
    goto LABEL_241;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v22 = *(v17 + 32);
  v23 = *(v17 + 40);
  if (!v23)
  {
    goto LABEL_238;
  }

LABEL_28:
  v24 = v22;
  v25 = v23;
  v26 = AttrData;
  do
  {
    v27 = v25 >> 1;
    v28 = &v24[2 * (v25 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v25 += ~(v25 >> 1);
    if (v30 < v21)
    {
      v24 = v29;
    }

    else
    {
      v25 = v27;
    }
  }

  while (v25);
  if (v24 == &v22[2 * v23])
  {
    goto LABEL_240;
  }

  if (*v24 != v21)
  {
    goto LABEL_240;
  }

  v158 = v24[1];
  if (!v158)
  {
    goto LABEL_240;
  }

  v159 = (*(v158 + 24))();
  if (v133)
  {
    v134 = (*(v158 + 24))(v159);
    v135 = *(this + 1);
    v136 = *(v135 + 176);
    if (v136 < *(v135 + 180))
    {
      goto LABEL_242;
    }

    goto LABEL_272;
  }

LABEL_241:
  v134 = "";
  v135 = *(this + 1);
  v136 = *(v135 + 176);
  if (v136 < *(v135 + 180))
  {
    goto LABEL_242;
  }

LABEL_272:
  v249 = v134;
  v160 = v133;
  llvm::SmallVectorBase<unsigned int>::grow_pod(v135 + 168, (v135 + 184), v136 + 1, 16);
  v133 = v160;
  v3 = v281;
  v134 = v249;
  v26 = AttrData;
  LODWORD(v136) = *(v135 + 176);
LABEL_242:
  v137 = (*(v135 + 168) + 16 * v136);
  *v137 = v134;
  v137[1] = v133;
  ++*(v135 + 176);
  v282.__r_.__value_.__r.__words[0] = *(v268 + 8);
  v138 = mlir::OpaqueAttr::getAttrData(&v282);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v297, "MLIR Parser: custom op parser '%s'", v138);
  v267 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v8);
  v139.n128_f64[0] = mlir::OperationState::OperationState(&v282, v267, v268);
  v140 = *(*(this + 1) + 152);
  if (v140)
  {
    mlir::AsmParserState::startOperationDefinition(v140, &v282.__r_.__value_.__r.__words[1]);
  }

  v256 = v8;
  v257 = this;
  v258 = 0;
  v255 = &unk_1F5AF1DC8;
  v259 = v6;
  v260 = v7;
  v261 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
  v262 = v300;
  v263 = v20;
  v264 = v26;
  v265 = v16;
  v266 = this;
  if ((v302 & 2) != 0)
  {
    v141 = v300;
  }

  else
  {
    v141 = v300[0];
  }

  if (((*(v302 & 0xFFFFFFFFFFFFFFF8))(v141, &v255, &v282, v139) & 1) == 0)
  {
    goto LABEL_279;
  }

  mlir::NamedAttrList::findDuplicate(v273, &v287);
  if (v274)
  {
    v142 = (*(v255 + 2))(&v255);
    v271[0] = "attribute '";
    v272 = 259;
    (*(v255 + 3))(&v303, &v255, v142, v271);
    CallableRegion = mlir::CallGraphNode::getCallableRegion(v273);
    v143 = mlir::OpaqueAttr::getAttrData(&CallableRegion);
    if (v303)
    {
      v278 = 261;
      v275 = v143;
      v276 = v144;
      mlir::Diagnostic::operator<<(&v304, &v275);
      if (v303)
      {
        LODWORD(v275) = 3;
        v276 = "' occurs more than once in the attribute list";
        v277 = 45;
        v145 = &v275;
        v146 = v306;
        if (v307 >= v308)
        {
          if (v306 <= &v275 && v306 + 24 * v307 > &v275)
          {
            v239 = &v275 - v306;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v146 = v306;
            v145 = (v306 + v239);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v306, v309, v307 + 1, 24);
            v145 = &v275;
            v146 = v306;
          }
        }

        v147 = &v146[24 * v307];
        v148 = *v145;
        *(v147 + 2) = v145[2];
        *v147 = v148;
        ++v307;
      }
    }

    v149 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v303);
    if (v303)
    {
      mlir::InFlightDiagnostic::report(&v303);
    }

    if (v315 == 1)
    {
      if (v314 != &v315)
      {
        free(v314);
      }

      v150 = __p;
      if (__p)
      {
        v151 = v313;
        v152 = __p;
        if (v313 != __p)
        {
          do
          {
            v151 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v151 - 1);
          }

          while (v151 != v150);
          v152 = __p;
        }

        v313 = v150;
        operator delete(v152);
      }

      v153 = v310;
      if (v310)
      {
        v154 = v311;
        v155 = v310;
        if (v311 != v310)
        {
          do
          {
            v157 = *--v154;
            v156 = v157;
            *v154 = 0;
            if (v157)
            {
              operator delete[](v156);
            }
          }

          while (v154 != v153);
          v155 = v310;
        }

        v311 = v153;
        operator delete(v155);
      }

      if (v306 != v309)
      {
        free(v306);
      }
    }

    if (!v149)
    {
      goto LABEL_279;
    }
  }

  if ((v258 & 1) == 0)
  {
    v213 = v296;
    v275 = v296;
    v296 = 0;
    v214 = mlir::OpBuilder::create((this + 384), &v282);
    v271[0] = v214;
    v31 = 0;
    {
      if (v213)
      {
        v303 = &v267;
        v304 = &v275;
        v305 = v271;
        {
          v31 = v271[0];
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = v214;
      }
    }
  }

  else
  {
LABEL_279:
    v31 = 0;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v303 = &v305;
  v304 = 0x400000000;
  v161 = v295;
  if (v295 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v303, &v305, v295, 8);
    v161 = v295;
  }

  if (v161)
  {
    v162 = v294;
    v163 = &v294[v161];
    do
    {
      v164 = *v162;
      if (*v162)
      {
        for (i = *(v164 + 8); i != v164; i = *(i + 8))
        {
          if (i)
          {
            v166 = (i - 8);
          }

          else
          {
            v166 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v166);
        }
      }

      ++v162;
    }

    while (v162 != v163);
  }

  if (v303 != &v305)
  {
    free(v303);
  }

  mlir::OperationState::~OperationState(&v282);
  v297[0] = &unk_1F5B3F3F8;
  if (v298 != &v299)
  {
    free(v298);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v297);
  --*(*(this + 1) + 176);
  v131 = v302;
  if (v302 >= 8)
  {
LABEL_297:
    if ((v131 & 4) != 0)
    {
      if ((v131 & 2) != 0)
      {
        v167 = v300;
      }

      else
      {
        v167 = v300[0];
      }

      (*((v131 & 0xFFFFFFFFFFFFFFF8) + 16))(v167);
    }

    if ((v131 & 2) == 0)
    {
      llvm::deallocate_buffer(v300[0], v300[1]);
    }
  }

LABEL_304:
  if (!v31)
  {
    goto LABEL_312;
  }

  if (!v280)
  {
    v172 = *(*(this + 1) + 152);
    if (v172)
    {
      LocRange = mlir::Token::getLocRange(&v252);
      v175 = v174;
      EndLoc = mlir::Token::getEndLoc((*(this + 1) + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v172, v31, LocRange, v175, EndLoc, 0, 0);
    }

    goto LABEL_318;
  }

  v168 = *(v31 + 36);
  if (!v168)
  {
    v303 = "cannot name an operation with no results";
    LOWORD(v307) = 259;
    v177 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
    mlir::emitError(v177, &v303, &v282);
    if (*(*(this + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v282);
    }

    v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

    if (v293[0] != 1)
    {
      goto LABEL_313;
    }

    if (v292 != v293)
    {
      free(v292);
    }

    v178 = v290;
    if (v290)
    {
      v179 = v291;
      v180 = v290;
      if (v291 != v290)
      {
        do
        {
          v179 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v179 - 1);
        }

        while (v179 != v178);
        v180 = v290;
      }

      v291 = v178;
      operator delete(v180);
    }

    v181 = v288;
    if (v288)
    {
      v182 = v289;
      v183 = v288;
      if (v289 == v288)
      {
        goto LABEL_370;
      }

      do
      {
        v185 = *--v182;
        v184 = v185;
        *v182 = 0;
        if (v185)
        {
          operator delete[](v184);
        }
      }

      while (v182 != v181);
LABEL_369:
      v183 = v288;
LABEL_370:
      v289 = v181;
      operator delete(v183);
    }

LABEL_371:
    if (v283 != v286)
    {
      free(v283);
    }

    goto LABEL_313;
  }

  if (v254 != v168)
  {
    v303 = "operation defines ";
    LOWORD(v307) = 259;
    v186 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
    mlir::emitError(v186, &v303, &v282);
    if (*(*(this + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v282);
    }

    if (v282.__r_.__value_.__r.__words[0])
    {
      v187 = *(v31 + 36);
      LODWORD(v255) = 5;
      v256 = v187;
      v188 = &v255;
      v189 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v255 && v283 + 24 * v284 > &v255)
        {
          v233 = &v255 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v189 = v283;
          v188 = (v283 + v233);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v188 = &v255;
          v189 = v283;
        }
      }

      v190 = &v189[24 * v284];
      v191 = *v188;
      *(v190 + 2) = v188[2];
      *v190 = v191;
      v192 = ++v284;
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v255) = 3;
        v256 = " results but was provided ";
        v257 = 26;
        v193 = &v255;
        v194 = v283;
        if (v192 >= v285)
        {
          if (v283 <= &v255 && v283 + 24 * v192 > &v255)
          {
            v236 = &v255 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v192 + 1, 24);
            v194 = v283;
            v193 = (v283 + v236);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v192 + 1, 24);
            v193 = &v255;
            v194 = v283;
          }
        }

        v195 = &v194[24 * v284];
        v196 = *v193;
        *(v195 + 2) = v193[2];
        *v195 = v196;
        v197 = ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          LODWORD(v255) = 5;
          v256 = v254;
          v198 = &v255;
          v199 = v283;
          if (v197 >= v285)
          {
            if (v283 <= &v255 && v283 + 24 * v197 > &v255)
            {
              v240 = &v255 - v283;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v197 + 1, 24);
              v199 = v283;
              v198 = (v283 + v240);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v197 + 1, 24);
              v198 = &v255;
              v199 = v283;
            }
          }

          v200 = &v199[24 * v284];
          v201 = *v198;
          *(v200 + 2) = v198[2];
          *v200 = v201;
          v202 = ++v284;
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v255) = 3;
            v256 = " to bind";
            v257 = 8;
            v203 = &v255;
            v204 = v283;
            if (v202 >= v285)
            {
              if (v283 <= &v255 && v283 + 24 * v202 > &v255)
              {
                v244 = &v255 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v202 + 1, 24);
                v204 = v283;
                v203 = (v283 + v244);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v202 + 1, 24);
                v203 = &v255;
                v204 = v283;
              }
            }

            v205 = &v204[24 * v284];
            v206 = *v203;
            *(v205 + 2) = v203[2];
            *v205 = v206;
            ++v284;
          }
        }
      }
    }

    v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

    if (v293[0] != 1)
    {
      goto LABEL_313;
    }

    if (v292 != v293)
    {
      free(v292);
    }

    v207 = v290;
    if (v290)
    {
      v208 = v291;
      v209 = v290;
      if (v291 != v290)
      {
        do
        {
          v208 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v208 - 1);
        }

        while (v208 != v207);
        v209 = v290;
      }

      v291 = v207;
      operator delete(v209);
    }

    v181 = v288;
    if (v288)
    {
      v210 = v289;
      v183 = v288;
      if (v289 == v288)
      {
        goto LABEL_370;
      }

      do
      {
        v212 = *--v210;
        v211 = v212;
        *v210 = 0;
        if (v212)
        {
          operator delete[](v211);
        }
      }

      while (v210 != v181);
      goto LABEL_369;
    }

    goto LABEL_371;
  }

  if (!*(*(this + 1) + 152))
  {
    v215 = v279;
    v216 = v279 + 32 * v280;
    goto LABEL_385;
  }

  LODWORD(v303) = 0;
  v282.__r_.__value_.__r.__words[0] = &v282.__r_.__value_.__r.__words[2];
  v282.__r_.__value_.__l.__size_ = 0x300000000;
  if (v280 <= 3)
  {
    v169 = v279;
    v170 = v279 + 32 * v280;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v282, &v282.__r_.__value_.__r.__words[2], v280, 16);
    if (!v280)
    {
      goto LABEL_381;
    }

    v169 = v279;
    v170 = v279 + 32 * v280;
  }

  v217 = 0;
  v218 = (v169 + 24);
  do
  {
    v219 = v282.__r_.__value_.__r.__words[1];
    if (LODWORD(v282.__r_.__value_.__r.__words[1]) >= HIDWORD(v282.__r_.__value_.__r.__words[1]))
    {
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(&v282, &v303, v218);
    }

    else
    {
      v220 = v282.__r_.__value_.__r.__words[0] + 16 * LODWORD(v282.__r_.__value_.__r.__words[1]);
      *v220 = v217;
      *(v220 + 8) = *v218;
      LODWORD(v282.__r_.__value_.__r.__words[1]) = v219 + 1;
    }

    v217 = v303 + *(v218 - 2);
    LODWORD(v303) = v217;
    v221 = (v218 + 1);
    v218 += 4;
  }

  while (v221 != v170);
LABEL_381:
  v222 = *(*(this + 1) + 152);
  v223 = mlir::Token::getLocRange(&v252);
  v225 = v224;
  v226 = mlir::Token::getEndLoc((*(this + 1) + 80));
  mlir::AsmParserState::finalizeOperationDefinition(v222, v31, v223, v225, v226, v282.__r_.__value_.__l.__data_, LODWORD(v282.__r_.__value_.__r.__words[1]));
  if (v282.__r_.__value_.__l.__data_ != &v282.__r_.__value_.__r.__words[2])
  {
    free(v282.__r_.__value_.__l.__data_);
  }

  if (!v280)
  {
LABEL_318:
    v40 = 1;
    goto LABEL_313;
  }

  v215 = v279;
  v216 = v279 + 32 * v280;
LABEL_385:
  v251 = v216;
  v227 = 0;
  while (1)
  {
    v228 = v3;
    v229 = *(v215 + 4);
    if (v229)
    {
      break;
    }

    v231 = v227;
LABEL_395:
    v215 += 32;
    v40 = 1;
    v227 = v231;
    v3 = v228;
    if (v215 == v251)
    {
      goto LABEL_313;
    }
  }

  v230 = 0;
  while (1)
  {
    v282.__r_.__value_.__r.__words[0] = *(v215 + 3);
    *&v282.__r_.__value_.__r.__words[1] = *v215;
    LODWORD(v283) = v230;
    v231 = (v227 + 1);
    v232 = (v227 >= 6 ? v31 - 96 - 24 * (v227 - 5) : v31 - 16 * v231);
    {
      break;
    }

    ++v230;
    LODWORD(v227) = v231;
    if (v229 == v230)
    {
      goto LABEL_395;
    }
  }

  v40 = 0;
  v3 = v228;
LABEL_313:
  if (v279 != v3)
  {
    free(v279);
  }

  return v40;
}

void anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this, BOOL a2, uint64_t a3, unint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = (this + 208);
  v5 = *(this + 26);
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v14) = 0;
  v7 = *(this + 54);
  v8 = v13;
  if (v7 >= *(this + 55))
  {
    if (v5 <= v13 && v5 + 24 * v7 > v13)
    {
      v12 = v13 - v5;
      v5 = *v6;
      v8 = &v12[*v6];
    }

    else
    {
      v5 = *v6;
      v8 = v13;
    }
  }

  v9 = v5 + 24 * *(this + 54);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = *v8;
  *v8 = 0;
  *(v9 + 8) = *(v8 + 2);
  *(v8 + 2) = 0;
  v10 = *(v9 + 12);
  *(v9 + 12) = *(v8 + 3);
  *(v8 + 3) = v10;
  v11 = *(v9 + 16);
  *(v9 + 16) = *(v8 + 4);
  *(v8 + 4) = v11;
  ++*(this + 54);
  llvm::deallocate_buffer(v13[0], (32 * v14));
}

void anonymous namespace::OperationParser::IsolatedSSANameScope::~IsolatedSSANameScope(_anonymous_namespace_::OperationParser::IsolatedSSANameScope *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 3);
  v6 = *(this + 8);
  if (v6)
  {
    v7 = &v5[3 * v6];
    do
    {
      v8 = v7;
      v7 -= 3;
      if (*(v8 - 3))
      {
        v9 = *(v8 - 4);
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = *(*v7 + v10);
            if (v11 != -8 && v11 != 0)
            {
              llvm::deallocate_buffer(v11, (*v11 + 9));
            }

            v10 += 8;
          }

          while (8 * v9 != v10);
        }
      }

      free(*v7);
    }

    while (v7 != v5);
    v5 = *(this + 3);
  }

  if (v5 != (this + 40))
  {
    free(v5);
  }

  if (*(this + 3))
  {
    v13 = *(this + 2);
    if (v13)
    {
      v14 = 0;
      do
      {
        v15 = *(*this + v14);
        if (v15 != -8 && v15 != 0)
        {
          v18 = *v15;
          v17 = *(v15 + 1);
          if (v17 != (v15 + 24))
          {
            free(v17);
          }

          llvm::deallocate_buffer(v15, (v18 + 41));
        }

        v14 += 8;
      }

      while (8 * v13 != v14);
    }
  }

  free(*this);
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      llvm::deallocate_buffer(*&v5[24 * v11 - 24], (32 * *&v5[24 * v11 - 8]));
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      llvm::deallocate_buffer(*&v5[24 * v11 - 24], (16 * *&v5[24 * v11 - 8]));
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void llvm::SmallVectorTemplateBase<anonymous namespace::OperationParser::IsolatedSSANameScope,false>::grow(uint64_t *a1, unint64_t a2)
{
  v19 = 0;
  v3 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 88, &v19);
  v8 = *a1;
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = &v8[11 * v9];
    do
    {
      v12 = &v8[v10];
      v13 = &v7[v10 * 8];
      *v13 = v8[v10];
      *(v13 + 8) = *&v8[v10 + 1];
      *v12 = 0;
      v12[1] = 0;
      *(v12 + 4) = 0;
      *(v13 + 3) = &v7[v10 * 8 + 40];
      *&v7[v10 * 8 + 32] = 0x200000000;
      if (LODWORD(v8[v10 + 4]))
      {
        llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(&v7[v10 * 8 + 24], (v12 + 3), v5, v6);
      }

      v10 += 11;
    }

    while (v12 + 11 != v11);
    v8 = *a1;
    v14 = *(a1 + 2);
    if (v14)
    {
      v15 = -88 * v14;
      v16 = &v8[11 * v14 - 11];
      do
      {
        v16 = (v17 - 88);
        v15 += 88;
      }

      while (v15);
      v8 = *a1;
    }
  }

  v18 = v19;
  if (v8 != v3)
  {
    free(v8);
  }

  *a1 = v7;
  *(a1 + 3) = v18;
}

unsigned int **llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(unsigned int **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *a2;
  if (*a2 != a2 + 16)
  {
    llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(a1, a2, a3, a4);
    return a1;
  }

  v6 = *(a2 + 8);
  v7 = *(a1 + 2);
  if (v7 < v6)
  {
    if (*(a1 + 3) >= v6)
    {
      v28 = *a1;
      if (v7)
      {
        v29 = a2;
        v30 = &v5[6 * v7];
        do
        {
          v31 = *v5;
          v32 = v5[4];
          v33 = *(v5 + 1);
          *v5 = 0;
          *(v5 + 1) = 0;
          v5[4] = 0;
          v34 = *v28;
          *v28 = v31;
          v35 = v28[2];
          LODWORD(v31) = v28[3];
          *(v28 + 1) = v33;
          v28[4] = v32;
          if (v31 && v35)
          {
            v36 = v34;
            do
            {
              v37 = *v36;
              if (*v36 != -8 && v37 != 0)
              {
                llvm::deallocate_buffer(v37, (*v37 + 9));
              }

              ++v36;
              --v35;
            }

            while (v35);
          }

          free(v34);
          v5 += 6;
          v28 += 6;
        }

        while (v5 != v30);
        v28 = *a1;
        a2 = v29;
        v42 = *v29;
        v43 = *(v29 + 8);
        if (v7 == v43)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v7 = 0;
        v42 = *a2;
        LODWORD(v43) = *(a2 + 8);
        if (!v43)
        {
LABEL_79:
          *(a1 + 2) = v6;
          v61 = a2;
          v62 = *(a2 + 8);
          if (v62)
          {
            v63 = &v42[6 * v62];
            do
            {
              v64 = v63;
              v63 -= 3;
              if (*(v64 - 3))
              {
                v65 = *(v64 - 4);
                if (v65)
                {
                  v66 = 0;
                  do
                  {
                    v67 = *(*v63 + v66);
                    if (v67 != -8 && v67 != 0)
                    {
                      llvm::deallocate_buffer(v67, (*v67 + 9));
                    }

                    v66 += 8;
                  }

                  while (8 * v65 != v66);
                }
              }

              free(*v63);
            }

            while (v63 != v42);
          }

          *(v61 + 8) = 0;
          return a1;
        }
      }
    }

    else
    {
      v8 = a2;
      if (v7)
      {
        v9 = *a1;
        v10 = &(*a1)[6 * v7];
        do
        {
          v11 = v10;
          v10 -= 3;
          if (*(v11 - 3))
          {
            v12 = *(v11 - 4);
            if (v12)
            {
              v13 = 0;
              do
              {
                v14 = *(*v10 + v13);
                if (v14 != -8 && v14 != 0)
                {
                  llvm::deallocate_buffer(v14, (*v14 + 9));
                }

                v13 += 8;
              }

              while (8 * v12 != v13);
            }
          }

          free(*v10);
        }

        while (v10 != v9);
      }

      *(a1 + 2) = 0;
      v70 = 0;
      v28 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, v6, 24, &v70);
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v28, v39, v40);
      v41 = v70;
      if (*a1 != (a1 + 2))
      {
        free(*a1);
      }

      v7 = 0;
      *a1 = v28;
      *(a1 + 3) = v41;
      a2 = v8;
      v42 = *v8;
      LODWORD(v43) = *(v8 + 8);
      if (!v43)
      {
        goto LABEL_79;
      }
    }

    v58 = &v42[6 * v43];
    v59 = &v28[6 * v7];
    v60 = &v42[6 * v7];
    do
    {
      *v59 = *v60;
      *(v59 + 2) = *(v60 + 2);
      *v60 = 0;
      *(v60 + 1) = 0;
      v60[4] = 0;
      v59 += 6;
      v60 += 6;
    }

    while (v60 != v58);
    v42 = *a2;
    goto LABEL_79;
  }

  v16 = *a1;
  v17 = a2;
  if (v6)
  {
    v18 = &v5[6 * v6];
    do
    {
      v19 = *v5;
      v20 = v5[4];
      v21 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v5[4] = 0;
      v22 = *v16;
      *v16 = v19;
      v23 = v16[2];
      LODWORD(v19) = v16[3];
      *(v16 + 1) = v21;
      v16[4] = v20;
      if (v19 && v23)
      {
        v24 = v22;
        do
        {
          v25 = *v24;
          if (*v24 != -8 && v25 != 0)
          {
            llvm::deallocate_buffer(v25, (*v25 + 9));
          }

          ++v24;
          --v23;
        }

        while (v23);
      }

      free(v22);
      v5 += 6;
      v16 += 6;
    }

    while (v5 != v18);
    v27 = *a1;
    LODWORD(v7) = *(a1 + 2);
  }

  else
  {
    v27 = *a1;
  }

  for (i = &v27[6 * v7]; i != v16; free(*i))
  {
    v45 = i;
    i -= 3;
    if (*(v45 - 3))
    {
      v46 = *(v45 - 4);
      if (v46)
      {
        v47 = 0;
        do
        {
          v48 = *(*i + v47);
          if (v48 != -8 && v48 != 0)
          {
            llvm::deallocate_buffer(v48, (*v48 + 9));
          }

          v47 += 8;
        }

        while (8 * v46 != v47);
      }
    }
  }

  *(a1 + 2) = v6;
  v50 = *(v17 + 8);
  if (v50)
  {
    v51 = *v17;
    v52 = (*v17 + 24 * v50);
    do
    {
      v53 = v52;
      v52 -= 3;
      if (*(v53 - 3))
      {
        v54 = *(v53 - 4);
        if (v54)
        {
          v55 = 0;
          do
          {
            v56 = *(*v52 + v55);
            if (v56 != -8 && v56 != 0)
            {
              llvm::deallocate_buffer(v56, (*v56 + 9));
            }

            v55 += 8;
          }

          while (8 * v54 != v55);
        }
      }

      free(*v52);
    }

    while (v52 != v51);
  }

  *(v17 + 8) = 0;
  return a1;
}

double llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[3 * v7];
    do
    {
      v9 = v8;
      v8 -= 3;
      if (*(v9 - 3))
      {
        v10 = *(v9 - 4);
        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = *(*v8 + v11);
            if (v12 != -8 && v12 != 0)
            {
              llvm::deallocate_buffer(v12, (*v12 + 9));
            }

            v11 += 8;
          }

          while (8 * v10 != v11);
        }
      }

      free(*v8);
    }

    while (v8 != v6);
    v6 = *a1;
  }

  if (v6 != (a1 + 16))
  {
    free(v6);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(uint64_t a1, unint64_t a2)
{
  v8 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v8);
  llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(a1, v4, v5, v6);
  v7 = v8;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v7;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *a1 + 24 * v4;
    do
    {
      *a2 = *v5;
      *(a2 + 8) = *(v5 + 1);
      *v5 = 0;
      v5[1] = 0;
      *(v5 + 4) = 0;
      a2 += 24;
      v5 += 3;
    }

    while (v5 != v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *a1;
      v9 = (*a1 + 24 * v7);
      do
      {
        v10 = v9;
        v9 -= 3;
        if (*(v10 - 3))
        {
          v11 = *(v10 - 4);
          if (v11)
          {
            v12 = 0;
            do
            {
              v13 = *(*v9 + v12);
              if (v13 != -8 && v13 != 0)
              {
                llvm::deallocate_buffer(v13, (*v13 + 9));
              }

              v12 += 8;
            }

            while (8 * v11 != v12);
          }
        }

        free(*v9);
      }

      while (v9 != v8);
    }
  }
}

uint64_t anonymous namespace::OperationParser::parseGenericOperation(_anonymous_namespace_::OperationParser *this)
{
  v80 = *MEMORY[0x1E69E9840];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  v48 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v47);
  size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v50 = "empty operation name is invalid";
    v52 = 259;
    mlir::detail::Parser::emitError(this, &v50, v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v75 == 1)
    {
      if (v74 != &v75)
      {
        free(v74);
      }

      v13 = v72;
      if (v72)
      {
        v14 = v73;
        v15 = v72;
        if (v73 != v72)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v72;
        }

        v73 = v13;
        operator delete(v15);
      }

      v16 = v70;
      if (v70)
      {
        v17 = v71;
        v18 = v70;
        if (v71 != v70)
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
          v18 = v70;
        }

        v71 = v16;
        operator delete(v18);
      }

      v30 = v68;
      if (v68 != &v69)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v47, 0, 0) == -1)
  {
    v21 = *(this + 1);
    *(v21 + 80) = *(v21 + 56);
    *(v21 + 96) = *(v21 + 72);
    mlir::Lexer::lexToken(&v50, (*(this + 1) + 8));
    v22 = *(this + 1);
    *(v22 + 56) = v50;
    *(v22 + 72) = v51;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v47;
    }

    else
    {
      v23 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v47.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v50, EncodedSourceLocation, v23, v24);
    if (*(*(&v50 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v25 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
      v26 = &v47;
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v47.__r_.__value_.__r.__words[0];
      }

      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v47.__r_.__value_.__l.__size_;
      }

      v76 = v26;
      v77 = v25;
      LOBYTE(v45) = 46;
      v27 = llvm::StringRef::find(&v76, &v45, 1uLL, 0);
      if (v27 == -1)
      {
        v28 = v76;
        v29 = v77;
      }

      else
      {
        v28 = v76;
        if (v27 >= v77)
        {
          v29 = v77;
        }

        else
        {
          v29 = v27;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v28, v29) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v28, v29))
      {
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v47;
        }

        else
        {
          v33 = v47.__r_.__value_.__r.__words[0];
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v47.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v76, v33, v34, ***(this + 1));
        *(&v50 + 1) = v76;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(***(this + 1)) & 1) == 0)
      {
        v76 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v79 = 259;
        mlir::detail::Parser::emitError(this, &v76, v49);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
        goto LABEL_86;
      }
    }

    v35 = *(*(this + 1) + 152);
    if (v35)
    {
      mlir::AsmParserState::startOperationDefinition(v35, (&v50 + 8));
    }

    LOBYTE(v76) = 0;
    LOBYTE(v78[0]) = 0;
    LOBYTE(v45) = 0;
    v46 = 0;
    v44[0] = 0;
    v44[16] = 0;
    v43[0] = 0;
    v43[16] = 0;
    v31 = 0;
    {
LABEL_87:
      v76 = v78;
      v77 = 0x400000000;
      v37 = v55;
      if (v55 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v55, 8);
        v37 = v55;
      }

      if (v37)
      {
        v38 = v54;
        v39 = &v54[v37];
        do
        {
          v40 = *v38;
          if (*v38)
          {
            for (i = *(v40 + 8); i != v40; i = *(i + 8))
            {
              if (i)
              {
                v42 = (i - 8);
              }

              else
              {
                v42 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v42);
            }
          }

          ++v38;
        }

        while (v38 != v39);
      }

      if (v76 != v78)
      {
        free(v76);
      }

      mlir::OperationState::~OperationState(&v50);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v31;
    }

LABEL_86:
    v31 = 0;
    goto LABEL_87;
  }

  *&v50 = "null character not allowed in operation name";
  v52 = 259;
  mlir::detail::Parser::emitError(this, &v50, v58);
  if (v58[0])
  {
    mlir::InFlightDiagnostic::report(v58);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v64;
      v7 = __p;
      if (v64 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v64 = v5;
      operator delete(v7);
    }

    v8 = v61;
    if (v61)
    {
      v9 = v62;
      v10 = v61;
      if (v62 != v61)
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
        v10 = v61;
      }

      v62 = v8;
      operator delete(v10);
    }

    v30 = v59;
    if (v59 != &v60)
    {
LABEL_55:
      free(v30);
    }
  }

LABEL_56:
  v31 = 0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  return v31;
}

uint64_t anonymous namespace::OperationParser::addDefinition(int32x2_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v7 = (a2 + 8);
  v11 = v8;
  v12 = *(v8 + 8);
  v14 = (a2 + 24);
  v13 = *(a2 + 24);
  v15 = v13 + 1;
  if (v12 > v13 || v12 == v15)
  {
    v17 = *(*v8 + 16 * *(a2 + 24));
    v85 = v17;
    if (!v17)
    {
LABEL_49:
      v52 = *a2;
      v53 = (*v11 + 16 * *(a2 + 24));
      *v53 = a3;
      v53[1] = v52;
      v54 = *(a2 + 8);
      v55 = *(a2 + 16);
      v56 = *&a1[2] + 88 * a1[3].u32[0];
      v57 = (*(v56 - 64) + 24 * *(v56 - 56) - 24);
      v58 = llvm::StringMapImpl::hash(v54, v55, v9, v10);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v57, v54, v55, v58);
      return 1;
    }
  }

  else
  {
    if (v12 <= v15)
    {
      if (*(v8 + 12) < v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v8 + 16), v15, 16);
        v12 = *(v11 + 8);
      }

      if (v12 != v15)
      {
        bzero((*v11 + 16 * v12), 16 * (v15 - v12));
      }
    }

    *(v11 + 8) = v15;
    v17 = *(*v11 + 16 * *v14);
    v85 = v17;
    if (!v17)
    {
      goto LABEL_49;
    }
  }

  v18 = a1[44].i32[0];
  if (v18)
  {
    v19 = a1[42];
    v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
    v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
    v22 = v18 - 1;
    v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
    v24 = *(*&v19 + 16 * v23);
    if (v24 == v17)
    {
LABEL_9:
      if ((a3[1] ^ *(v17 + 8)) < 8)
      {
        while (1)
        {
          v36 = *v17;
          if (!*v17)
          {
            break;
          }

          v37 = v36[1];
          if (v37)
          {
            v38 = *v36;
            *v37 = *v36;
            if (v38)
            {
              *(v38 + 8) = v37;
            }
          }

          v36[3] = a3;
          v36[1] = a3;
          v39 = *a3;
          *v36 = *a3;
          if (v39)
          {
            *(v39 + 8) = v36;
          }

          *a3 = v36;
        }

        DefiningOp = mlir::Value::getDefiningOp(&v85);
        mlir::Operation::destroy(DefiningOp, v43);
        v44 = a1[44].i32[0];
        if (v44)
        {
          v45 = a1[42];
          v46 = 0x9DDFEA08EB382D69 * ((8 * v85 - 0xAE502812AA7333) ^ HIDWORD(v85));
          v47 = 0x9DDFEA08EB382D69 * (HIDWORD(v85) ^ (v46 >> 47) ^ v46);
          LODWORD(v46) = -348639895 * ((v47 >> 47) ^ v47);
          v48 = v44 - 1;
          v49 = v46 & (v44 - 1);
          v50 = *(*&v45 + 16 * v49);
          if (v85 == v50)
          {
LABEL_46:
            *(*&v45 + 16 * v49) = -8192;
            a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
          }

          else
          {
            v78 = 1;
            while (v50 != -4096)
            {
              v79 = v49 + v78++;
              v49 = v79 & v48;
              v50 = *(*&v45 + 16 * v49);
              if (v85 == v50)
              {
                goto LABEL_46;
              }
            }
          }
        }

        v51 = *(*&a1[1] + 152);
        if (v51)
        {
          mlir::AsmParserState::refineDefinition(v51, v85, a3);
        }

        goto LABEL_49;
      }

      v25 = *a2;
      v84 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v25);
      mlir::emitError(EncodedSourceLocation, v83, &v87);
      if (*(*&a1[1] + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v87);
      }

      v86[0] = a3[1] & 0xFFFFFFFFFFFFFFF8;
      if (v87)
      {
        mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(v88, "definition of SSA value '", v7, "#", (a2 + 24), "' has type ", v86);
      }

      v27 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v11 + 16 * *v14 + 8));
      v28 = mlir::Diagnostic::attachNote(v88, v27, 1);
      v82 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::Diagnostic::append<char const(&)[5],mlir::Type>(v28, "previously used here with type ", &v82);
      Enum = getEnumTag for MPSGraphDelegateKernelError();
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v96 == 1)
      {
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

        v33 = v91;
        if (!v91)
        {
          goto LABEL_78;
        }

        v34 = v92;
        v35 = v91;
        if (v92 == v91)
        {
LABEL_77:
          v92 = v33;
          operator delete(v35);
LABEL_78:
          if (v89 != &v90)
          {
            free(v89);
          }

          return Enum;
        }

        do
        {
          v41 = *--v34;
          v40 = v41;
          *v34 = 0;
          if (v41)
          {
            operator delete[](v40);
          }
        }

        while (v34 != v33);
LABEL_76:
        v35 = v91;
        goto LABEL_77;
      }

      return Enum;
    }

    v60 = 1;
    while (v24 != -4096)
    {
      v61 = v23 + v60++;
      v23 = v61 & v22;
      v24 = *(*&v19 + 16 * v23);
      if (v24 == v17)
      {
        goto LABEL_9;
      }
    }
  }

  v62 = *a2;
  v84 = 257;
  v63 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v62);
  mlir::emitError(v63, v83, &v87);
  if (*(*&a1[1] + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v87);
  }

  if (v87)
  {
    mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(v88, "redefinition of SSA value '", v7, "'");
  }

  v64 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v11 + 16 * *v14 + 8));
  v65 = mlir::Diagnostic::attachNote(v88, v64, 1);
  v66 = *(v65 + 16);
  LODWORD(v86[0]) = 3;
  v86[1] = "previously defined here";
  v86[2] = 23;
  v67 = *(v65 + 24);
  v68 = v86;
  if (v67 >= *(v65 + 28))
  {
    if (v66 <= v86 && v66 + 24 * v67 > v86)
    {
      v80 = v86 - v66;
      v81 = v65;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v65 + 16, (v65 + 32), v67 + 1, 24);
      v65 = v81;
      v66 = *(v81 + 16);
      v68 = &v80[v66];
    }

    else
    {
      v77 = v65;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v65 + 16, (v65 + 32), v67 + 1, 24);
      v65 = v77;
      v66 = *(v77 + 16);
      v68 = v86;
    }
  }

  v69 = v66 + 24 * *(v65 + 24);
  v70 = *v68;
  *(v69 + 16) = v68[2];
  *v69 = v70;
  ++*(v65 + 24);
  Enum = getEnumTag for MPSGraphDelegateKernelError();
  if (v87)
  {
    mlir::InFlightDiagnostic::report(&v87);
  }

  if (v96 == 1)
  {
    if (v95 != &v96)
    {
      free(v95);
    }

    v71 = __p;
    if (__p)
    {
      v72 = v94;
      v73 = __p;
      if (v94 != __p)
      {
        do
        {
          v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
        }

        while (v72 != v71);
        v73 = __p;
      }

      v94 = v71;
      operator delete(v73);
    }

    v33 = v91;
    if (!v91)
    {
      goto LABEL_78;
    }

    v74 = v92;
    v35 = v91;
    if (v92 == v91)
    {
      goto LABEL_77;
    }

    do
    {
      v76 = *--v74;
      v75 = v76;
      *v74 = 0;
      if (v76)
      {
        operator delete[](v75);
      }
    }

    while (v74 != v33);
    goto LABEL_76;
  }

  return Enum;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v35 = *(v3 + 56);
  *&v35[16] = *(v3 + 72);
  *&v36 = "expected valid ssa identifier";
  v39 = 259;
  if (!mlir::detail::Parser::parseToken(v2, 6, &v36))
  {
    return 0;
  }

  v4 = 1;
  v34 = 1;
  v5 = *(v2 + 1);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken(&v36, (*(v2 + 1) + 8));
  v6 = *(v2 + 1);
  *(v6 + 56) = v36;
  *(v6 + 72) = v37;
  v7 = *(v2 + 1);
  if (*(v7 + 56) == 10)
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v7 + 64), *(v7 + 72));
    if (v9)
    {
      v4 = UInt64IntegerValue;
      if (UInt64IntegerValue)
      {
        v10 = *(v2 + 1);
        *(v10 + 80) = *(v10 + 56);
        *(v10 + 96) = *(v10 + 72);
        mlir::Lexer::lexToken(&v36, (*(v2 + 1) + 8));
        v11 = *(v2 + 1);
        *(v11 + 56) = v36;
        *(v11 + 72) = v37;
        v34 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v36 = *&v35[8];
        Loc = mlir::Token::getLoc(v35);
        v32[0] = Loc;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(v12, &v36, &v34, v32);
          v4 = v34;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v36;
          *(v15 + 16) = v4;
          *(v15 + 24) = Loc;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v32[0] = "expected named operation to have at least 1 result";
    v33 = 259;
    mlir::detail::Parser::emitError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v26 = __p;
      if (__p)
      {
        v27 = v44;
        v28 = __p;
        if (v44 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v44 = v26;
        operator delete(v28);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v29 = v42;
      v23 = v41;
      if (v42 == v41)
      {
LABEL_45:
        v42 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v38 != &v40)
        {
          free(v38);
          return v17;
        }

        return result;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          operator delete[](v30);
        }
      }

      while (v29 != v21);
LABEL_44:
      v23 = v41;
      goto LABEL_45;
    }
  }

  else
  {
    v32[0] = "expected integer number of results";
    v33 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v44;
        v20 = __p;
        if (v44 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v44 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v22 = v42;
      v23 = v41;
      if (v42 == v41)
      {
        goto LABEL_45;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_44;
    }
  }

  return result;
}

unint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(unint64_t *a1, __int128 *a2, void *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 2);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 2));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 2) + 1);
  *(a1 + 2) = v9;
  return *a1 + 32 * v9 - 32;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v39 = v3;
  v40 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v35, (*(this + 1) + 8));
    v5 = *(this + 1);
    *(v5 + 56) = v35;
    *(v5 + 72) = v36;
    v7 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1), v6);
    if (v8)
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF00;
      return v9 | v7;
    }

    LOBYTE(v35) = 46;
    v18 = llvm::StringRef::find(&v39, &v35, 1uLL, 0);
    if (v18 == -1)
    {
      v19 = v39;
      v20 = v40;
      v21 = v40;
      v22 = *(this + 1);
      if (*(v22 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = v39;
      v20 = v40;
      if (v18 >= v40)
      {
        v21 = v40;
      }

      else
      {
        v21 = v18;
      }

      memset(&v34, 0, sizeof(v34));
      if (v40 > v18 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v19, v21);
        mlir::OperationName::OperationName(&v35, v39, v40, ***(this + 1));
        LOBYTE(v7) = v35;
        v9 = v35 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          v29 = v35;
          operator delete(v34.__r_.__value_.__l.__data_);
          LOBYTE(v7) = v29;
        }

        return v9 | v7;
      }

      v22 = *(this + 1);
      if (*(v22 + 56) != 2)
      {
LABEL_34:
        v25 = *(v22 + 168) + 16 * *(v22 + 176);
        v26 = *(v25 - 16);
        v21 = *(v25 - 8);
        v32 = 773;
        v31[0] = v26;
        v31[1] = v21;
        v31[2] = ".";
        *&v35 = v31;
        v36 = v19;
        v37 = v20;
        v38 = 1282;
        llvm::Twine::str(&v35, &v33);
        v34 = v33;
        size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
        v28 = &v34;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v33.__r_.__value_.__l.__size_;
        }

        v39 = v28;
        v40 = size;
        v19 = v26;
        goto LABEL_39;
      }
    }

    if (*(v19 + v20 - 1) != 46)
    {
      goto LABEL_34;
    }

    if (v21)
    {
      v23 = v19;
      v24 = memchr(v19, 46, v21);
      if (!v24 || v24 - v23 == -1)
      {
        (*(**(v22 + 160) + 24))(*(v22 + 160), v23, v21);
      }
    }

    v9 = 0;
    LOBYTE(v7) = 0;
  }

  else
  {
    *&v35 = "empty operation name is invalid";
    v38 = 259;
    mlir::detail::Parser::emitError(this, &v35, v41);
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

      v10 = __p;
      if (__p)
      {
        v11 = v47;
        v12 = __p;
        if (v47 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v47 = v10;
        operator delete(v12);
      }

      v13 = v44;
      if (v44)
      {
        v14 = v45;
        v15 = v44;
        if (v45 != v44)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              operator delete[](v16);
            }
          }

          while (v14 != v13);
          v15 = v44;
        }

        v45 = v13;
        operator delete(v15);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }

    LOBYTE(v7) = 0;
    v9 = 0;
  }

  return v9 | v7;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(_anonymous_namespace_::OperationParser *a1, unint64_t a2)
{
  v2 = *(a1 + 1);
  if (*(v2 + 56) != 64)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(&v12, (*(a1 + 1) + 8));
  v5 = *(a1 + 1);
  *(v5 + 56) = v12;
  *(v5 + 72) = v13;
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v12))
  {
    v6 = *(*(a1 + 1) + 56);
    v11.var0 = 0;
    if (v6 == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v11) & 1) == 0)
    {
      return 0;
    }

    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v12))
    {
      v7 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v7) = 1;
      }

      v8 = v7 == 0;
      v9 = 24;
      if (!v8)
      {
        v9 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v9) = v11;
      return 1;
    }
  }

  return 0;
}

const char *llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 91;
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

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void anonymous namespace::CustomOpAsmParser::~CustomOpAsmParser(_anonymous_namespace_::CustomOpAsmParser *this)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

void anonymous namespace::CustomOpAsmParser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t **a3@<X2>, mlir::InFlightDiagnostic *a4@<X8>)
{
  v13 = 1283;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v12[0] = "custom op '";
  v12[2] = v5;
  v12[3] = v6;
  *&v14 = v12;
  *&v15 = "' ";
  LOWORD(v16) = 770;
  v7 = *(a3 + 32);
  if (v7 == 1)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  else if (*(a3 + 32))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v7) = 2;
      v8 = a3;
    }

    *&v17 = &v14;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    LOBYTE(v19) = 2;
    BYTE1(v19) = v7;
  }

  else
  {
    LOWORD(v19) = 256;
  }

  *(a1 + 24) = 1;
  v10 = *(a1 + 16);
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v10 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, &v17, a4);
  if (*(*(v10 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a4);
  }
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrow(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColon(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalComma(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEqual(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}