BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLess(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalGreater(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalQuestion(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalPlus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalMinus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalStar(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalVerticalBar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalString(uint64_t a1, uint64_t a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseBase64Bytes(void *a1, uint64_t a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEllipsis(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(uint64_t a1, double *a2, uint64_t a3, unsigned int a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::IEEEFloat::IEEEFloat(v17, 0.0, a2, a3, a4);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v19, v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(v17);
  v8 = (*(*a1 + 368))(a1, v7, &v18);
  if ((v8 & 1) == 0)
  {
    v12 = 0;
    v16 = v19[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v8) != v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    return v12;
  }

  *a2 = llvm::APFloat::convertToDouble(&v18, v9, v10, v11);
  v12 = 1;
  v13 = v19[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v14) == v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v19);
  return v12;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(void *a1, void *a2, uint64_t a3)
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
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v58 + 8));
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
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v58 + 8));
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeyword(void *a1, const void **a2, const char *a3, const void ***a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v27[0] = a2;
  v27[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v27, 1, 0);
    return 0;
  }

  else
  {
    v10 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 408))(a1, a2, a3))
    {
      return 1;
    }

    else
    {
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

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
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

        v15 = __p;
        if (__p)
        {
          v16 = v41;
          v17 = __p;
          if (v41 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v41 = v15;
          operator delete(v17);
        }

        v18 = v38;
        if (v38)
        {
          v19 = v39;
          v20 = v38;
          if (v39 != v38)
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
            v20 = v38;
          }

          v39 = v18;
          operator delete(v20);
        }

        if (v34 != v37)
        {
          free(v34);
        }
      }
    }
  }

  return v5;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, const void *a2, size_t a3)
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
    (*(**(v4 + 160) + 48))(*(v4 + 160), v12, 1, 1);
    return 0;
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 == 12 || v9 == 3)
  {
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
LABEL_17:
      i = a3;
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 == 2)
    {
      (*(**(v8 + 160) + 48))(*(v8 + 160), a3, a4, 1);
      return 0;
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
      goto LABEL_17;
    }
  }

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
    v18 = 16 * a4;
    for (i = a3; *(i + 8); i += 16)
    {
      v18 -= 16;
      if (!v18)
      {
        return 0;
      }
    }
  }

LABEL_18:
  if (i != a3 + 16 * a4)
  {
    *a2 = v12;
    a2[1] = v11;
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v19, (*(v7 + 8) + 8));
    v17 = *(v7 + 8);
    *(v17 + 56) = v19;
    *(v17 + 72) = v20;
    return 1;
  }

  return 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseAttribute(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, uint64_t (*a4)(uint64_t, AttributeStorage **, AttributeStorage *), uint64_t a5)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttribute(uint64_t a1, AttributeStorage **a2, AttributeStorage *a3, unsigned int a4)
{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3, a4);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalSymbolName(void *a1, uint64_t *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseType(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t, uint64_t **), uint64_t a4)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrowTypeList(void *a1, unsigned int *a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrowTypeList(uint64_t a1, unsigned int *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonType(uint64_t a1, uint64_t **a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
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

void mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseResourceHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 112), &v7, v8);
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::popCyclicParsing(uint64_t result)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::codeCompleteExpectedTokens(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalLocationSpecifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 64)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v12, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v12;
  *(v6 + 72) = v13;
  v15.var0 = 0;
  v7 = *(a1 + 88);
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v12))
  {
    v8 = *(a1 + 88);
    if (*(*(v8 + 1) + 56) == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v15) & 1) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 88);
    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(v9, 28, &v12))
    {
      var0 = v15.var0;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = var0;
      return 1;
    }
  }

  return 0;
}

uint64_t anonymous namespace::CustomOpAsmParser::getResultName@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = (*(this + 32) + 16);
    v5 = 32 * v3;
    while (1)
    {
      v6 = a2 - *v4;
      if (a2 < *v4)
      {
        break;
      }

      v4 += 8;
      a2 = v6;
      v5 -= 32;
      if (!v5)
      {
        *a3 = "";
        *(a3 + 8) = 0;
        *(a3 + 16) = -1;
        return this;
      }
    }

    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    if (v8)
    {
      ++v7;
    }

    *a3 = v7;
    *(a3 + 8) = v8 - (v8 != 0);
    *(a3 + 16) = a2;
  }

  else
  {
    *a3 = "";
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return this;
}

uint64_t anonymous namespace::CustomOpAsmParser::getNumResults(_anonymous_namespace_::CustomOpAsmParser *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = (v1 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v3)
  {
    result = 0;
    v8 = v2;
LABEL_9:
    v14 = v2 + 32 * v1;
    do
    {
      result += *(v8 + 16);
      v8 += 32;
    }

    while (v8 != v14);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 + 1;
  v7 = (v3 + 1) & 0xFFFFFFFFFFFFFFELL;
  v8 = v2 + 32 * v7;
  v9 = (v2 + 48);
  v10 = v7;
  do
  {
    v11 = *(v9 - 8);
    v12 = *v9;
    v9 += 16;
    v4 += v11;
    v5 += v12;
    v10 -= 2;
  }

  while (v10);
  result = v5 + v4;
  if (v6 != v7)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  v15 = *(v4 + 72);
  v13 = *(v3 + 400);
  v14 = v5;
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  if (v6)
  {
    v7 = *(*(v3 + 8) + 152);
    if (v7)
    {
      LocRange = mlir::Token::getLocRange(&v14);
      v10 = v9;
      EndLoc = mlir::Token::getEndLoc((*(v3 + 8) + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v7, v6, LocRange, v10, EndLoc, 0, 0);
    }
  }

  if (v13)
  {
    *(v3 + 400) = v13;
  }

  else
  {
    *(v3 + 400) = 0;
    *(v3 + 408) = 0;
  }

  return v6;
}

BOOL anonymous namespace::CustomOpAsmParser::parseGenericOperationAfterOpName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 88);
  v18 = *a3;
  v19 = *(a3 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *a6;
  v13 = *(a6 + 2);
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOperand(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0uLL;
  {
    return 0;
  }

  v4 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return 1;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalOperand(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[11] + 8);
  v5 = *(v3 + 56);
  v4 = v3 + 56;
  if (v5 == 6)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  v6 = a1;
  v7 = a2;
  v8 = a3;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v4, 6);
  a2 = v7;
  a3 = v8;
  v10 = isCodeCompletionFor;
  a1 = v6;
  if (v10)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL anonymous namespace::CustomOpAsmParser::parseOperandList(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v49 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v50 = *(v9 + 56), v51 = *(v9 + 72), v50 == 6) || mlir::Token::isCodeCompletionFor(&v50, 6))
  {
    v46[0] = a1;
    v46[1] = a2;
    v46[2] = &v49;
    Loc = mlir::Token::getLoc((*(a1[11] + 8) + 56));
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v47[0] = "expected ";
      v48 = 259;
      (*(*a1 + 24))(v52, a1, Loc, v47);
      if (v52[0])
      {
        LODWORD(v50) = 2;
        *(&v50 + 1) = a5;
        v11 = &v50;
        v12 = v53;
        if (v54 >= v55)
        {
          if (v53 <= &v50 && v53 + 24 * v54 > &v50)
          {
            v44 = &v50 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v12 = v53;
            v11 = v53 + v44;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v11 = &v50;
            v12 = v53;
          }
        }

        v13 = &v12[24 * v54];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        v15 = ++v54;
        if (v52[0])
        {
          LODWORD(v50) = 3;
          *(&v50 + 1) = " operands";
          v51 = 9;
          v16 = &v50;
          v17 = v53;
          if (v15 >= v55)
          {
            if (v53 <= &v50 && v53 + 24 * v15 > &v50)
            {
              v45 = &v50 - v53;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v15 + 1, 24);
              v17 = v53;
              v16 = v53 + v45;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v15 + 1, 24);
              v16 = &v50;
              v17 = v53;
            }
          }

          v18 = &v17[24 * v54];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v54;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
      v21 = result;
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
        result = v21;
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v60;
          v24 = __p;
          if (v60 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v60 = v22;
          operator delete(v24);
        }

        v25 = v57;
        result = v21;
        if (!v57)
        {
          goto LABEL_67;
        }

        v26 = v58;
        v27 = v57;
        if (v58 == v57)
        {
LABEL_66:
          v58 = v25;
          operator delete(v27);
          result = v21;
LABEL_67:
          if (v53 != v56)
          {
            free(v53);
            return v21;
          }

          return result;
        }

        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
LABEL_65:
        v27 = v57;
        goto LABEL_66;
      }

      return result;
    }

    return 1;
  }

  if ((a5 + 1) <= 1)
  {
    return 1;
  }

  if ((v50 - 21) > 1)
  {
    v37 = a1[11];
    v47[0] = "expected operand";
    v48 = 259;
    mlir::detail::Parser::emitWrongTokenError(v37, v47, v52);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    v21 = result;
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
      result = v21;
    }

    if (v62)
    {
      if (v61 != &v62)
      {
        free(v61);
        result = v21;
      }

      v38 = __p;
      if (__p)
      {
        v39 = v60;
        v40 = __p;
        if (v60 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v60 = v38;
        operator delete(v40);
        result = v21;
      }

      v25 = v57;
      if (!v57)
      {
        goto LABEL_67;
      }

      v41 = v58;
      v27 = v57;
      if (v58 == v57)
      {
        goto LABEL_66;
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

      while (v41 != v25);
      goto LABEL_65;
    }
  }

  else
  {
    v30 = a1[11];
    v47[0] = "unexpected delimiter";
    v48 = 259;
    mlir::detail::Parser::emitError(v30, v47, v52);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    v21 = result;
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
      result = v21;
    }

    if (v62)
    {
      if (v61 != &v62)
      {
        free(v61);
        result = v21;
      }

      v31 = __p;
      if (__p)
      {
        v32 = v60;
        v33 = __p;
        if (v60 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v60 = v31;
        operator delete(v33);
        result = v21;
      }

      v25 = v57;
      if (!v57)
      {
        goto LABEL_67;
      }

      v34 = v58;
      v27 = v57;
      if (v58 == v57)
      {
        goto LABEL_66;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v34 != v25);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::resolveOperand(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  if (result)
  {
    v8 = *(a4 + 8);
    if (v8 >= *(a4 + 12))
    {
      v9 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v8 + 1, 8);
      result = v9;
      LODWORD(v8) = *(a4 + 8);
    }

    *(*a4 + 8 * v8) = result;
    ++*(a4 + 8);
    return 1;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v34[8] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v33 = 0x200000000;
  v28[2] = &v32;
  __src = v31;
  v30 = 0x100000000;
  v28[0] = a1;
  v28[1] = &__src;
  v27 = 0;
  {
    if (v27)
    {
      v13 = mlir::AffineMapAttr::get(v27);
      *a3 = v13;
      NamedAttr = mlir::Builder::getNamedAttr(*(a1 + 88), a4, a5, v13);
      mlir::NamedAttrList::push_back(a6, NamedAttr, v15);
    }

    v16 = v32;
    v17 = v33;
    *(a2 + 8) = 0;
    if (v17 <= *(a2 + 12))
    {
      if (!v17)
      {
        v21 = 0;
LABEL_11:
        v22 = (v21 + v17);
        *(a2 + 8) = v22;
        v23 = __src;
        v24 = v30;
        v25 = v30 + v22;
        if (v25 > *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v25, 32);
          LODWORD(v22) = *(a2 + 8);
        }

        if (v24)
        {
          memcpy((*a2 + 32 * v22), v23, 32 * v24);
          LODWORD(v22) = *(a2 + 8);
        }

        *(a2 + 8) = v22 + v24;
        v19 = 1;
        v20 = __src;
        if (__src != v31)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v18 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v17, 32);
      v18 = *(a2 + 8);
    }

    memcpy((*a2 + 32 * v18), v16, 32 * v17);
    v21 = *(a2 + 8);
    goto LABEL_11;
  }

  v19 = 0;
  v20 = __src;
  if (__src != v31)
  {
LABEL_16:
    free(v20);
  }

LABEL_17:
  if (v32 != v34)
  {
    free(v32);
  }

  return v19;
}

BOOL anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext ***a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseArgument(mlir::AsmParser *a1, uint64_t a2, int a3, int a4)
{
  v13[9] = *MEMORY[0x1E69E9840];
  v12[0] = v13;
  v12[1] = 0x400000000;
  v13[8] = 4;
  if ((*(*a1 + 704))(a1, a2, 0) & 1) != 0 && (!a3 || ((*(*a1 + 576))(a1, a2 + 32)) && (!a4 || ((*(*a1 + 488))(a1, v12)) && ((*(*a1 + 656))(a1, a2 + 48))
  {
    Context = mlir::AsmParser::getContext(a1);
    *(a2 + 40) = mlir::NamedAttrList::getDictionary(v12, Context);
    v9 = 1;
    v10 = v12[0];
    if (v12[0] == v13)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = v12[0];
  if (v12[0] != v13)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalArgument(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 6)
  {
    return (*(*a1 + 752))(a1) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::CustomOpAsmParser::parseArgumentList(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = a4;
  v7 = a5;
  if (!a3 && *(*(a1[11] + 8) + 56) != 6)
  {
    return 1;
  }

  v6[0] = a1;
  v6[1] = a2;
  v6[2] = &v8;
  v6[3] = &v7;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalRegion(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 20)
  {
    return (*(*a1 + 776))(a1) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalRegion(void *a1, mlir::Region **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(a1[11] + 8) + 56) != 20)
  {
    return 0;
  }

  v10 = operator new(0x18uLL);
  *v10 = v10;
  *(v10 + 1) = v10;
  *(v10 + 2) = 0;
  if ((*(*a1 + 776))(a1, v10, a3, a4, a5))
  {
    v11 = *a2;
    *a2 = v10;
    v12 = 1;
    v10 = v11;
    if (!v11)
    {
      return 257;
    }
  }

  else
  {
    v12 = 0;
  }

  mlir::Region::~Region(v10);
  operator delete(v14);
  return v12 | 0x100u;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalSuccessor(_anonymous_namespace_::CustomOpAsmParser *this, mlir::Block **a2)
{
  v2 = *(*(this + 11) + 8);
  v4 = *(v2 + 56);
  v3 = v2 + 56;
  if (v4 == 7)
  {
    return (*(*this + 800))(this, a2) | 0x100u;
  }

  v5 = this;
  v6 = a2;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v3, 7);
  a2 = v6;
  v8 = isCodeCompletionFor;
  this = v5;
  if (v8)
  {
    return (*(*this + 800))(this, a2) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL anonymous namespace::CustomOpAsmParser::parseSuccessorAndUseList(void *a1, uint64_t a2, uint64_t a3)
{
  v44[16] = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 800))(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v42 = v44;
  v43 = 0x400000000;
  {
    if (v43)
    {
      v39 = v41;
      v40 = 0x400000000;
      *&v34 = "expected ':' in operand list";
      LOWORD(v36) = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, &v34) && mlir::detail::Parser::parseTypeListNoParens(v5, &v39))
      {
        v7 = v43;
        if (v43 == v40)
        {
          if (*(a3 + 12) < v43)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v43, 8);
            v7 = v43;
          }

          if (v7)
          {
            v8 = 0;
            v9 = 0;
            v10 = 32 * v7;
            while (1)
            {
              v11 = *&v42[v9 + 16];
              v34 = *&v42[v9];
              v35 = v11;
              v13 = v12 == 0;
              if (!v12)
              {
                break;
              }

              v14 = *(a3 + 8);
              if (v14 >= *(a3 + 12))
              {
                v15 = v12;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v14 + 1, 8);
                v12 = v15;
                v14 = *(a3 + 8);
              }

              *(*a3 + 8 * v14) = v12;
              ++*(a3 + 8);
              v9 += 32;
              v8 += 8;
              if (v10 == v9)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v13 = 0;
          }
        }

        else
        {
          v29 = "expected ";
          v30 = 259;
          mlir::detail::Parser::emitError(v5, &v29, &v34);
          if (v34)
          {
            v31 = 5;
            v32 = v43;
            v17 = &v31;
            v18 = *(&v35 + 1);
            if (v36 >= v37)
            {
              if (*(&v35 + 1) <= &v31 && *(&v35 + 1) + 24 * v36 > &v31)
              {
                v27 = &v31 - *(&v35 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v35 + 8, v38, v36 + 1, 24);
                v18 = *(&v35 + 1);
                v17 = &v27[*(&v35 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v35 + 8, v38, v36 + 1, 24);
                v17 = &v31;
                v18 = *(&v35 + 1);
              }
            }

            v19 = v18 + 24 * v36;
            v20 = *v17;
            *(v19 + 16) = *(v17 + 2);
            *v19 = v20;
            v21 = ++v36;
            if (v34)
            {
              v31 = 3;
              v32 = " types to match operand list";
              v33 = 28;
              v22 = &v31;
              v23 = *(&v35 + 1);
              if (v21 >= v37)
              {
                if (*(&v35 + 1) <= &v31 && *(&v35 + 1) + 24 * v21 > &v31)
                {
                  v28 = &v31 - *(&v35 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v35 + 8, v38, v21 + 1, 24);
                  v23 = *(&v35 + 1);
                  v22 = &v28[*(&v35 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v35 + 8, v38, v21 + 1, 24);
                  v22 = &v31;
                  v23 = *(&v35 + 1);
                }
              }

              v24 = v23 + 24 * v36;
              v25 = *v22;
              *(v24 + 16) = *(v22 + 2);
              *v24 = v25;
              ++v36;
            }
          }

          v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
          if (v34)
          {
            mlir::InFlightDiagnostic::report(&v34);
          }

          if (v38[160] == 1)
          {
            mlir::Diagnostic::~Diagnostic((&v34 + 8));
          }

          v13 = !v26;
        }
      }

      else
      {
        v13 = 1;
      }

      if (v39 != v41)
      {
        free(v39);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return (v13 & 1) == 0 && ((*(*a1 + 296))(a1) & 1) != 0;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalAssignmentList(uint64_t (***a1)(mlir::detail::Parser **), uint64_t a2, uint64_t a3)
{
  if ((*a1)[36](a1))
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v6 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}

BOOL anonymous namespace::OperationParser::parseLocationAlias(_anonymous_namespace_::OperationParser *this, LocationAttr *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v92 = *(v4 + 56);
  v93 = *(v4 + 72);
  v5 = v93;
  *(v4 + 80) = v92;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken(&v98, (*(this + 1) + 8));
  v8 = *(this + 1);
  *(v8 + 56) = v98;
  *(v8 + 72) = v99;
  if (v93)
  {
    v10 = (*(&v92 + 1) + 1);
  }

  else
  {
    v10 = *(&v92 + 1);
  }

  v9 = v93 != 0;
  v11 = (v93 - v9);
  if (v93 >= 2)
  {
    v12 = memchr(v10, 46, v93 - v9);
    if (v12 && v12 - v10 != -1)
    {
      Loc = mlir::Token::getLoc(&v92);
      v91 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v88, &v98);
      if (*(*(this + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v98);
      }

      if (v98)
      {
        LODWORD(v94) = 3;
        v95 = "expected location, but found dialect attribute: '#";
        v96 = 50;
        v65 = &v94;
        v66 = v100;
        if (v101 >= v102)
        {
          if (v100 <= &v94 && v100 + 24 * v101 > &v94)
          {
            v83 = &v94 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v66 = v100;
            v65 = (v100 + v83);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
            v65 = &v94;
            v66 = v100;
          }
        }

        v67 = &v66[24 * v101];
        v68 = *v65;
        *(v67 + 2) = v65[2];
        *v67 = v68;
        ++v101;
        if (v98)
        {
          v97 = 261;
          v94 = v10;
          v95 = v11;
          mlir::Diagnostic::operator<<(&v98 + 8, &v94);
          if (v98)
          {
            LODWORD(v94) = 3;
            v95 = "'";
            v96 = 1;
            v69 = &v94;
            v70 = v100;
            if (v101 >= v102)
            {
              if (v100 <= &v94 && v100 + 24 * v101 > &v94)
              {
                v84 = &v94 - v100;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
                v70 = v100;
                v69 = (v100 + v84);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
                v69 = &v94;
                v70 = v100;
              }
            }

            v71 = &v70[24 * v101];
            v72 = *v69;
            *(v71 + 2) = v69[2];
            *v71 = v72;
            ++v101;
          }
        }
      }

      v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }

      if (v109 == 1)
      {
        if (v108 != &v109)
        {
          free(v108);
        }

        v73 = __p;
        if (__p)
        {
          v74 = v107;
          v75 = __p;
          if (v107 != __p)
          {
            do
            {
              v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
            }

            while (v74 != v73);
            v75 = __p;
          }

          v107 = v73;
          operator delete(v75);
        }

        v44 = v104;
        if (!v104)
        {
          goto LABEL_87;
        }

        v76 = v105;
        v46 = v104;
        if (v105 == v104)
        {
LABEL_86:
          v105 = v44;
          operator delete(v46);
LABEL_87:
          if (v100 != v103)
          {
            free(v100);
          }

          return v40;
        }

        do
        {
          v78 = *--v76;
          v77 = v78;
          *v76 = 0;
          if (v78)
          {
            operator delete[](v77);
          }
        }

        while (v76 != v44);
LABEL_85:
        v46 = v104;
        goto LABEL_86;
      }

      return v40;
    }
  }

  v14 = *(this + 1);
  v15 = *(v14 + 152);
  if (v15)
  {
    LocRange = mlir::Token::getLocRange(&v92);
    mlir::AsmParserState::addAttrAliasUses(v15, v10, v11, LocRange, v17);
    v14 = *(this + 1);
  }

  v18 = *(v14 + 104);
  v19 = llvm::StringMapImpl::hash(v10, v11, v6, v7);
  Key = llvm::StringMapImpl::FindKey(v18, v10, v11, v19);
  if (Key == -1 || Key == *(v18 + 8) || (v22 = *(*v18 + 8 * Key), (v23 = *(v22 + 8)) == 0))
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 46) - *(this + 45)) >> 3);
    v48 = mlir::UnknownLoc::get(***(this + 1), v21);
    v49 = mlir::Token::getLoc(&v92);
    v51 = *(this + 46);
    v50 = *(this + 47);
    if (v51 >= v50)
    {
      v55 = *(this + 45);
      v56 = v51 - v55;
      v57 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v55) >> 3);
      v58 = v57 + 1;
      if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v59 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v55) >> 3);
      if (2 * v59 > v58)
      {
        v58 = 2 * v59;
      }

      if (v59 >= 0x555555555555555)
      {
        v60 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v60 = v58;
      }

      if (v60)
      {
        if (v60 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v61 = v49;
        v62 = operator new(24 * v60);
        v49 = v61;
      }

      else
      {
        v62 = 0;
      }

      v79 = &v62[24 * v57];
      v80 = &v62[24 * v60];
      *v79 = v49;
      v79[1] = v10;
      v79[2] = v11;
      v52 = v79 + 3;
      v81 = v79 - v56;
      memcpy(v79 - v56, v55, v56);
      *(this + 45) = v81;
      *(this + 46) = v52;
      *(this + 47) = v80;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      *v51 = v49;
      v51[1] = v10;
      v52 = v51 + 3;
      v51[2] = v11;
    }

    *(this + 46) = v52;
    return 1;
  }

  if (mlir::LocationAttr::classof(*(v22 + 8)))
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  a2->var0 = v24;
  if (v24)
  {
    return 1;
  }

  v25 = mlir::Token::getLoc(&v92);
  v97 = 257;
  v26 = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v25);
  mlir::emitError(v26, &v94, &v98);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v98);
  }

  if (v98)
  {
    v88 = 3;
    v89 = "expected location, but found '";
    v90 = 30;
    v27 = &v88;
    v28 = v100;
    if (v101 >= v102)
    {
      if (v100 <= &v88 && v100 + 24 * v101 > &v88)
      {
        v85 = &v88 - v100;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
        v28 = v100;
        v27 = (v100 + v85);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
        v27 = &v88;
        v28 = v100;
      }
    }

    v29 = &v28[24 * v101];
    v30 = *v27;
    *(v29 + 2) = *(v27 + 2);
    *v29 = v30;
    ++v101;
    if (v98)
    {
      v31 = &v88;
      mlir::DiagnosticArgument::DiagnosticArgument(&v88, v23);
      v32 = v100;
      if (v101 >= v102)
      {
        if (v100 <= &v88 && v100 + 24 * v101 > &v88)
        {
          v86 = &v88 - v100;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
          v32 = v100;
          v31 = (v100 + v86);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v101 + 1, 24);
          v31 = &v88;
          v32 = v100;
        }
      }

      v33 = &v32[24 * v101];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v101;
      if (v98)
      {
        v88 = 3;
        v89 = "'";
        v90 = 1;
        v36 = &v88;
        v37 = v100;
        if (v35 >= v102)
        {
          if (v100 <= &v88 && v100 + 24 * v35 > &v88)
          {
            v87 = &v88 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v35 + 1, 24);
            v37 = v100;
            v36 = (v100 + v87);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v103, v35 + 1, 24);
            v36 = &v88;
            v37 = v100;
          }
        }

        v38 = &v37[24 * v101];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v101;
      }
    }
  }

  v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
  if (v98)
  {
    mlir::InFlightDiagnostic::report(&v98);
  }

  if (v109 == 1)
  {
    if (v108 != &v109)
    {
      free(v108);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v107;
      v43 = __p;
      if (v107 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v107 = v41;
      operator delete(v43);
    }

    v44 = v104;
    if (!v104)
    {
      goto LABEL_87;
    }

    v45 = v105;
    v46 = v104;
    if (v105 == v104)
    {
      goto LABEL_86;
    }

    do
    {
      v54 = *--v45;
      v53 = v54;
      *v45 = 0;
      if (v54)
      {
        operator delete[](v53);
      }
    }

    while (v45 != v44);
    goto LABEL_85;
  }

  return v40;
}

BOOL anonymous namespace::OperationParser::parseGenericOperationAfterOpName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v126[32] = *MEMORY[0x1E69E9840];
  v104 = a9;
  v105 = a10;
  v124 = v126;
  v125 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v109, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v109, *(&v109 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v109 = "expected '(' to start operand list";
    LOWORD(v111) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 21, &v109))
    {
      goto LABEL_65;
    }

    {
      goto LABEL_65;
    }

    v120 = "expected ')' to end operand list";
    v123 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 28, &v120))
    {
      goto LABEL_65;
    }

    v18 = v124;
    v19 = v125;
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *a3 = v18;
    *(a3 + 8) = v19;
    a4 = v17;
    if (*(v17 + 16))
    {
      goto LABEL_3;
    }
  }

  if (*(*(a1 + 8) + 56) == 22)
  {
    {
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    if (((*(*v20 + 4))(v20, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v120 = "successors in non-terminator";
      v123 = 259;
      mlir::detail::Parser::emitError(a1, &v120, &v109);
      v59 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
      if (v109)
      {
        mlir::InFlightDiagnostic::report(&v109);
      }

      if (v119[0] != 1)
      {
        goto LABEL_66;
      }

      if (v118 != v119)
      {
        free(v118);
      }

      v94 = __p;
      if (__p)
      {
        v95 = v117;
        v96 = __p;
        if (v117 != __p)
        {
          do
          {
            v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
          }

          while (v95 != v94);
          v96 = __p;
        }

        v117 = v94;
        operator delete(v96);
      }

      v89 = v114;
      if (v114)
      {
        v97 = v115;
        v91 = v114;
        if (v115 == v114)
        {
          goto LABEL_115;
        }

        do
        {
          v99 = *--v97;
          v98 = v99;
          *v97 = 0;
          if (v99)
          {
            operator delete[](v98);
          }
        }

        while (v97 != v89);
        goto LABEL_114;
      }

LABEL_116:
      if (v110[1] != v113)
      {
        free(v110[1]);
      }

      goto LABEL_66;
    }

LABEL_14:
    v120 = v122;
    v121 = 0x200000000;
    *&v109 = "expected '['";
    LOWORD(v111) = 259;
    {
      mlir::BlockRange::BlockRange(&v109, v120, v121);
      mlir::OperationState::addSuccessors(a2, v109, *(&v109 + 1));
      v21 = 0;
      v22 = v120;
      if (v120 == v122)
      {
LABEL_20:
        if (v21)
        {
          goto LABEL_65;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v21 = 1;
      v22 = v120;
      if (v120 == v122)
      {
        goto LABEL_20;
      }
    }

    free(v22);
    goto LABEL_20;
  }

LABEL_21:
  if (a8)
  {
    *(a2 + 248) = a7;
  }

  else
  {
    v23 = *(a1 + 8);
    if (*(v23 + 56) == 23)
    {
      *(v23 + 80) = *(v23 + 56);
      *(v23 + 96) = *(v23 + 72);
      mlir::Lexer::lexToken(&v109, (*(a1 + 8) + 8));
      v24 = *(a1 + 8);
      *(v24 + 56) = v109;
      *(v24 + 72) = v110[0];
      v27 = mlir::detail::Parser::parseAttribute(a1, 0, v25, v26);
      *(a2 + 248) = v27;
      if (!v27)
      {
        goto LABEL_65;
      }

      *&v109 = "expected '>' to close properties";
      LOWORD(v111) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 19, &v109))
      {
        goto LABEL_65;
      }
    }
  }

  if (*(a5 + 16))
  {
    mlir::OperationState::addRegions(a2, *a5, *(a5 + 8));
  }

  else
  {
    v28 = *(a1 + 8);
    v29 = v28 + 56;
    if (*(v28 + 56) == 21)
    {
      while (1)
      {
        *(v28 + 80) = *v29;
        *(v28 + 96) = *(v29 + 16);
        mlir::Lexer::lexToken(&v109, (*(a1 + 8) + 8));
        v30 = *(a1 + 8);
        *(v30 + 56) = v109;
        *(v30 + 72) = v110[0];
        v31 = operator new(0x18uLL);
        v32 = mlir::Region::Region(v31, *(a1 + 416));
        *&v109 = v32;
        v33 = *(a2 + 232);
        if (v33 >= *(a2 + 236))
        {
          llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<mlir::Region*>(a2 + 224, &v109);
          v34 = *(a2 + 224);
          v35 = *(a2 + 232);
        }

        else
        {
          v34 = *(a2 + 224);
          *(v34 + 8 * v33) = v32;
          v35 = v33 + 1;
          *(a2 + 232) = v35;
        }

        {
          goto LABEL_65;
        }

        v28 = *(a1 + 8);
        v29 = v28 + 56;
        if (*(v28 + 56) != 16)
        {
          *&v109 = "expected ')' to end region list";
          LOWORD(v111) = 259;
          if (!mlir::detail::Parser::parseToken(a1, 28, &v109))
          {
            goto LABEL_65;
          }

          break;
        }
      }
    }
  }

  if (*(a6 + 16))
  {
    v37 = *a6;
    v36 = *(a6 + 8);
    *(a2 + 192) = 0;
    v38 = *(a2 + 120);
    if (v36 + v38 > *(a2 + 124))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v36 + v38, 16);
      LODWORD(v38) = *(a2 + 120);
    }

    if (v36)
    {
      memcpy((*(a2 + 112) + 16 * v38), v37, 16 * v36);
      LODWORD(v38) = *(a2 + 120);
    }

    *(a2 + 120) = v38 + v36;
  }

  else if (*(*(a1 + 8) + 56) == 20 && !mlir::detail::Parser::parseAttributeDict(a1, (a2 + 112)))
  {
    goto LABEL_65;
  }

  if (v105)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_46;
  }

  *&v109 = "expected ':' followed by operation type";
  LOWORD(v111) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, &v109) || (Loc = mlir::Token::getLoc((*(a1 + 8) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc), (v62 = mlir::detail::Parser::parseType(a1)) == 0))
  {
LABEL_65:
    v59 = 0;
    goto LABEL_66;
  }

  if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v120 = "expected function type";
    v123 = 259;
    mlir::emitError(EncodedSourceLocation, &v120, &v109);
    v59 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
    if (v109)
    {
      mlir::InFlightDiagnostic::report(&v109);
    }

    if (v119[0] == 1)
    {
      mlir::Diagnostic::~Diagnostic((&v109 + 8));
    }

    goto LABEL_66;
  }

  if ((v105 & 1) == 0)
  {
    LOBYTE(v105) = 1;
  }

  v104 = v62;
LABEL_46:
  Results = mlir::FunctionType::getResults(&v104);
  v42 = v41;
  v43 = 8 * v41;
  v44 = *(a2 + 72);
  v45 = v44 + ((8 * v41) >> 3);
  if (v45 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v45, 8);
    LODWORD(v44) = *(a2 + 72);
  }

  if (v42)
  {
    memcpy((*(a2 + 64) + 8 * v44), Results, v43);
    LODWORD(v44) = *(a2 + 72);
  }

  *(a2 + 72) = v44 + (v43 >> 3);
  Inputs = mlir::FunctionType::getInputs(&v104);
  v49 = v47;
  v50 = *(a3 + 8);
  if (v47 != v50)
  {
    v64 = v50 == 1;
    v65 = "s";
    if (v64)
    {
      v65 = "";
    }

    v66 = *v65;
    v120 = "expected ";
    v123 = 259;
    mlir::emitError(EncodedSourceLocation, &v120, &v109);
    if (v109)
    {
      v67 = *(a3 + 8);
      v106 = 5;
      v107 = v67;
      v68 = &v106;
      v69 = v110[1];
      if (v111 >= v112)
      {
        if (v110[1] <= &v106 && v110[1] + 24 * v111 > &v106)
        {
          v100 = &v106 - v110[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v111 + 1, 24);
          v69 = v110[1];
          v68 = (v110[1] + v100);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v111 + 1, 24);
          v68 = &v106;
          v69 = v110[1];
        }
      }

      v70 = &v69[24 * v111];
      v71 = *v68;
      *(v70 + 2) = *(v68 + 2);
      *v70 = v71;
      v72 = ++v111;
      if (v109)
      {
        v106 = 3;
        v107 = " operand type";
        v108 = 13;
        v73 = &v106;
        v74 = v110[1];
        if (v72 >= v112)
        {
          if (v110[1] <= &v106 && v110[1] + 24 * v72 > &v106)
          {
            v101 = &v106 - v110[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v72 + 1, 24);
            v74 = v110[1];
            v73 = (v110[1] + v101);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v72 + 1, 24);
            v73 = &v106;
            v74 = v110[1];
          }
        }

        v75 = &v74[24 * v111];
        v76 = *v73;
        *(v75 + 2) = *(v73 + 2);
        *v75 = v76;
        ++v111;
        if (v109)
        {
          mlir::Diagnostic::operator<<(&v109 + 8, v66);
          if (v109)
          {
            v106 = 3;
            v107 = " but had ";
            v108 = 9;
            v77 = &v106;
            v78 = v110[1];
            if (v111 >= v112)
            {
              if (v110[1] <= &v106 && v110[1] + 24 * v111 > &v106)
              {
                v102 = &v106 - v110[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v111 + 1, 24);
                v78 = v110[1];
                v77 = (v110[1] + v102);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v111 + 1, 24);
                v77 = &v106;
                v78 = v110[1];
              }
            }

            v79 = &v78[24 * v111];
            v80 = *v77;
            *(v79 + 2) = *(v77 + 2);
            *v79 = v80;
            v81 = ++v111;
            if (v109)
            {
              v106 = 5;
              v107 = v49;
              v82 = &v106;
              v83 = v110[1];
              if (v81 >= v112)
              {
                if (v110[1] <= &v106 && v110[1] + 24 * v81 > &v106)
                {
                  v103 = &v106 - v110[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v81 + 1, 24);
                  v83 = v110[1];
                  v82 = (v110[1] + v103);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v110[1], v113, v81 + 1, 24);
                  v82 = &v106;
                  v83 = v110[1];
                }
              }

              v84 = &v83[24 * v111];
              v85 = *v82;
              *(v84 + 2) = *(v82 + 2);
              *v84 = v85;
              ++v111;
            }
          }
        }
      }
    }

    v59 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
    if (v109)
    {
      mlir::InFlightDiagnostic::report(&v109);
    }

    if (v119[0] != 1)
    {
      goto LABEL_66;
    }

    if (v118 != v119)
    {
      free(v118);
    }

    v86 = __p;
    if (__p)
    {
      v87 = v117;
      v88 = __p;
      if (v117 != __p)
      {
        do
        {
          v87 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v87 - 1);
        }

        while (v87 != v86);
        v88 = __p;
      }

      v117 = v86;
      operator delete(v88);
    }

    v89 = v114;
    if (v114)
    {
      v90 = v115;
      v91 = v114;
      if (v115 == v114)
      {
        goto LABEL_115;
      }

      do
      {
        v93 = *--v90;
        v92 = v93;
        *v90 = 0;
        if (v93)
        {
          operator delete[](v92);
        }
      }

      while (v90 != v89);
LABEL_114:
      v91 = v114;
LABEL_115:
      v115 = v89;
      operator delete(v91);
      goto LABEL_116;
    }

    goto LABEL_116;
  }

  if (v47)
  {
    v51 = Inputs;
    v52 = 0;
    v53 = 32 * v47;
    while (1)
    {
      v54 = (*a3 + v52);
      v55 = v54[1];
      v109 = *v54;
      *v110 = v55;
      v57 = *(a2 + 24);
      if (v57 >= *(a2 + 28))
      {
        v60 = v56;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, (a2 + 32), v57 + 1, 8);
        v56 = v60;
        v57 = *(a2 + 24);
      }

      *(*(a2 + 16) + 8 * v57) = v56;
      v58 = *(a2 + 24) + 1;
      *(a2 + 24) = v58;
      if (!*(*(a2 + 16) + 8 * v58 - 8))
      {
        goto LABEL_65;
      }

      v52 += 32;
      ++v51;
      v59 = 1;
      if (v53 == v52)
      {
        goto LABEL_66;
      }
    }
  }

  v59 = 1;
LABEL_66:
  if (v124 != v126)
  {
    free(v124);
  }

  return v59;
}

uint64_t anonymous namespace::OperationParser::parseOptionalSSAUseList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v6 = *(v4 + 56);
  v5 = v4 + 56;
  if (v6 != 6 && !mlir::Token::isCodeCompletionFor(v5, 6))
  {
    return 1;
  }

  v24 = 0uLL;
  v25 = 0;
  {
    v7 = *(a2 + 8);
    v8 = *a2;
    v9 = &v24;
    if (v7 >= *(a2 + 12))
    {
      if (v8 <= &v24 && v8 + 32 * v7 > &v24)
      {
        v23 = &v24 - v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 32);
        v8 = *a2;
        v9 = &v23[*a2];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 32);
        v8 = *a2;
        v9 = &v24;
      }
    }

    v10 = (v8 + 32 * *(a2 + 8));
    v11 = *(v9 + 1);
    *v10 = *v9;
    v10[1] = v11;
    ++*(a2 + 8);
    v12 = *(a1 + 8);
    v13 = (v12 + 56);
    if (*(v12 + 56) == 16)
    {
      while (1)
      {
        v14 = *v13;
        *(v12 + 96) = *(v13 + 2);
        *(v12 + 80) = v14;
        mlir::Lexer::lexToken(&v24, (*(a1 + 8) + 8));
        v15 = *(a1 + 8);
        *(v15 + 56) = v24;
        *(v15 + 72) = v25;
        v24 = 0uLL;
        v25 = 0;
        {
          return 0;
        }

        v16 = *(a2 + 8);
        v17 = *a2;
        if (v16 >= *(a2 + 12))
        {
          if (v17 <= &v24 && v17 + 32 * v16 > &v24)
          {
            v21 = &v24 - v17;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 32);
            v17 = *a2;
            v18 = &v21[*a2];
            goto LABEL_9;
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 32);
          v17 = *a2;
        }

        v18 = &v24;
LABEL_9:
        v19 = (v17 + 32 * *(a2 + 8));
        v20 = *(v18 + 1);
        *v19 = *v18;
        v19[1] = v20;
        ++*(a2 + 8);
        v12 = *(a1 + 8);
        v13 = (v12 + 56);
        if (*(v12 + 56) != 16)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t anonymous namespace::OperationParser::parseRegion(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 1);
  v16 = *(v8 + 56);
  v17 = *(v8 + 72);
  v18[0] = "expected '{' to begin a region";
  v20 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 20, v18))
  {
    return 0;
  }

  v9 = *(*(a1 + 1) + 152);
  if (v9)
  {
    mlir::AsmParserState::startRegionDefinition(v9);
  }

  if (a4 || (v10 = *(a1 + 1), *(v10 + 56) != 27))
  {
    mlir::Token::getLoc(&v16);
  }

  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken(v18, (*(a1 + 1) + 8));
  v14 = *(a1 + 1);
  *(v14 + 56) = *v18;
  *(v14 + 72) = v19[0];
  v15 = *(*(a1 + 1) + 152);
  if (v15)
  {
    mlir::AsmParserState::finalizeRegionDefinition(v15);
  }

  return 1;
}

uint64_t anonymous namespace::OperationParser::resolveSSAUse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v93[2] = *MEMORY[0x1E69E9840];
  v63 = a3;
  v8 = v7;
  v9 = *(a2 + 24);
  v10 = *(v7 + 8);
  if (v10 <= v9)
  {
    v30 = (v9 + 1);
    if (v10 != v30)
    {
      if (v10 <= v30)
      {
        if (*(v7 + 12) < v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v30, 16);
          v10 = *(v8 + 8);
        }

        if (v10 != v30)
        {
          bzero((*v8 + 16 * v10), 16 * (v30 - v10));
        }
      }

      *(v8 + 8) = v30;
    }

LABEL_32:
    v31 = **v8;
    if (v31)
    {
      v32 = *(a1 + 352);
      if (v32)
      {
        v33 = *(a1 + 336);
        v34 = 0x9DDFEA08EB382D69 * ((8 * **v8 - 0xAE502812AA7333) ^ HIDWORD(**v8));
        v35 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ (v34 >> 47) ^ v34);
        v36 = v32 - 1;
        v37 = v36 & (-348639895 * ((v35 >> 47) ^ v35));
        v38 = *(v33 + 16 * v37);
        if (v38 == v31)
        {
          goto LABEL_35;
        }

        v48 = 1;
        while (v38 != -4096)
        {
          v49 = v37 + v48++;
          v37 = v49 & v36;
          v38 = *(v33 + 16 * v37);
          if (v38 == v31)
          {
            goto LABEL_35;
          }
        }
      }

      v50 = *a2;
      v77 = "reference to invalid result number";
      v81 = 259;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v50);
      mlir::emitError(EncodedSourceLocation, &v77, v66);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v66);
      }

      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v74 != 1)
      {
        return 0;
      }

      if (v73 != &v74)
      {
        free(v73);
      }

      v52 = v71;
      if (v71)
      {
        v53 = v72;
        v54 = v71;
        if (v72 != v71)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = v71;
        }

        v72 = v52;
        operator delete(v54);
      }

      v55 = v69;
      if (v69)
      {
        v56 = v70;
        v57 = v69;
        if (v70 != v69)
        {
          do
          {
            v59 = *--v56;
            v58 = v59;
            *v56 = 0;
            if (v59)
            {
              operator delete[](v58);
            }
          }

          while (v56 != v55);
          v57 = v69;
        }

        v70 = v55;
        operator delete(v57);
      }

      v47 = v67;
      if (v67 == &v68)
      {
        return 0;
      }

LABEL_70:
      free(v47);
      return 0;
    }

LABEL_35:
    v39 = *a2;
    v65 = a3;
    mlir::OperationName::OperationName(&v64, "builtin.unrealized_conversion_cast", 34, ***(a1 + 8));
    v40 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v39);
    v41 = v64;
    mlir::ValueRange::ValueRange(&v89, &v65, 1uLL);
    mlir::ValueRange::ValueRange(v75, 0, 0);
    v77 = &v79;
    v78 = 0x400000000;
    v82[5] = 4;
    mlir::BlockRange::BlockRange(v93, 0, 0);
    v42 = mlir::Operation::create(v40, v41, v89, v90, v75[0], v75[1], &v77, 0, v93[0], v93[1], 0);
    if (v77 != &v79)
    {
      free(v77);
    }

    v11 = (v42 - 16);
    v77 = v42 - 16;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](a1 + 336, &v77) = v39;
    v43 = *a2;
    v44 = (*v8 + 16 * *(a2 + 24));
    *v44 = v42 - 16;
    v44[1] = v43;
    goto LABEL_38;
  }

  v11 = *(*v7 + 16 * v9);
  if (!v11)
  {
    goto LABEL_32;
  }

  if ((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
  {
    v12 = *a2;
    v75[0] = "use of value '";
    v76 = 259;
    v13 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v12);
    mlir::emitError(v13, v75, &v77);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v77);
    }

    v93[0] = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v77)
    {
      v92 = 261;
      v14 = *(a2 + 16);
      v89 = *(a2 + 8);
      v90 = v14;
      mlir::Diagnostic::operator<<(&v78, &v89);
      mlir::Diagnostic::append<char const(&)[43],mlir::Type &,char const(&)[5],mlir::Type>(&v78, "' expects different type than prior uses: ", &v63, " vs ", v93);
    }

    v15 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v8 + 16 * *(a2 + 24) + 8));
    v16 = mlir::Diagnostic::attachNote(&v78, v15, 1);
    v17 = *(v16 + 16);
    LODWORD(v89) = 3;
    v90 = "prior use here";
    v91 = 14;
    v18 = *(v16 + 24);
    v19 = &v89;
    if (v18 >= *(v16 + 28))
    {
      if (v17 <= &v89 && v17 + 24 * v18 > &v89)
      {
        v61 = &v89 - v17;
        v62 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 16, (v16 + 32), v18 + 1, 24);
        v16 = v62;
        v17 = *(v62 + 16);
        v19 = &v61[v17];
      }

      else
      {
        v60 = v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 16, (v16 + 32), v18 + 1, 24);
        v16 = v60;
        v17 = *(v60 + 16);
        v19 = &v89;
      }
    }

    v20 = v17 + 24 * *(v16 + 24);
    v21 = *v19;
    *(v20 + 16) = v19[2];
    *v20 = v21;
    ++*(v16 + 24);
    if (v77)
    {
      mlir::InFlightDiagnostic::report(&v77);
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v86;
      v24 = __p;
      if (v86 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v86 = v22;
      operator delete(v24);
    }

    v25 = v83;
    if (v83)
    {
      v26 = v84;
      v27 = v83;
      if (v84 != v83)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v83;
      }

      v84 = v25;
      operator delete(v27);
    }

    v47 = v80;
    if (v80 == v82)
    {
      return 0;
    }

    goto LABEL_70;
  }

LABEL_38:
  v45 = *(*(a1 + 8) + 152);
  if (v45)
  {
    mlir::AsmParserState::addUses(v45, v11, a2, 1);
  }

  return v11;
}

BOOL anonymous namespace::OperationParser::parseSSAUse(uint64_t a1, uint64_t a2, char a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = mlir::Token::getLoc((v4 + 56));
    *&v64 = "expected SSA operand";
    LOWORD(v67) = 259;
    v38 = mlir::detail::Parser::parseToken(a1, 6, &v64);
    result = 0;
    if (!v38)
    {
      return result;
    }

    v40 = *(a1 + 8);
    v42 = *(v40 + 56);
    v41 = (v40 + 56);
    if (v42 == 5)
    {
      if ((a3 & 1) == 0)
      {
        v58[0] = "result number not allowed in argument list";
        v60 = 259;
        mlir::detail::Parser::emitError(a1, v58, &v64);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
        v46 = result;
        if (v64)
        {
          mlir::InFlightDiagnostic::report(&v64);
          result = v46;
        }

        if (v76 == 1)
        {
          if (v75 != &v76)
          {
            free(v75);
            result = v46;
          }

          v47 = v73;
          if (v73)
          {
            v48 = v74;
            v49 = v73;
            if (v74 != v73)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = v73;
            }

            v74 = v47;
            operator delete(v49);
            result = v46;
          }

          v50 = v71;
          if (v71)
          {
            v51 = v72;
            v52 = v71;
            if (v72 != v71)
            {
              do
              {
                v54 = *--v51;
                v53 = v54;
                *v51 = 0;
                if (v54)
                {
                  operator delete[](v53);
                }
              }

              while (v51 != v50);
              v52 = v71;
            }

            v72 = v50;
            operator delete(v52);
            result = v46;
          }

          if (v66 != &v68)
          {
            free(v66);
            return v46;
          }
        }

        return result;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber(v41);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v58[0] = "invalid SSA value result number";
        v60 = 259;
        mlir::detail::Parser::emitError(a1, v58, &v64);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
        if (v64)
        {
          v44 = result;
          mlir::InFlightDiagnostic::report(&v64);
          result = v44;
        }

        if (v76 == 1)
        {
          v45 = result;
          mlir::Diagnostic::~Diagnostic((&v64 + 8));
          return v45;
        }

        return result;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v55 = *(a1 + 8);
      *(v55 + 80) = *(v55 + 56);
      *(v55 + 96) = *(v55 + 72);
      mlir::Lexer::lexToken(&v64, (*(a1 + 8) + 8));
      v56 = *(a1 + 8);
      *(v56 + 56) = v64;
      *(v56 + 72) = v65;
    }

    return 1;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v57 = v6 + 88 * v5;
    while (1)
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8)
      {
        break;
      }

      v9 = *v6;
      v14 = &v7[v8];
      if (v7 != v14)
      {
        goto LABEL_18;
      }

LABEL_4:
      v6 += 88;
      if (v6 == v57)
      {
        return 0;
      }
    }

    v9 = *v6;
    if (*v7)
    {
      v10 = *v7 + 1 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      do
      {
        v12 = v9[1];
        ++v9;
        v11 = v12;
        if (v12)
        {
          v13 = v11 + 1 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    v14 = &v7[v8];
    if (v9 == v14)
    {
      goto LABEL_4;
    }

LABEL_18:
    v15 = *v9;
    while (1)
    {
      if (!*(v15 + 4))
      {
        goto LABEL_48;
      }

      v16 = *v15[1];
      v58[0] = 0;
      v58[1] = 0;
      v59 = 0;
      DWORD2(v64) = 0;
      v68 = 0;
      v69 = 1;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      *&v64 = &unk_1F5B3FB30;
      v70 = v58;
      llvm::raw_ostream::SetBufferAndMode(&v64, 0, 0, 0);
      if ((~*(v16 + 2) & 7) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = *(a1 + 352);
        if (v18)
        {
          v19 = *(a1 + 336);
          v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ (v17 >> 32));
          v21 = 0x9DDFEA08EB382D69 * ((v17 >> 32) ^ (v20 >> 47) ^ v20);
          v22 = v18 - 1;
          v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
          v24 = *(v19 + 16 * v23);
          if (v24 == v17)
          {
            goto LABEL_39;
          }

          v25 = 1;
          while (v24 != -4096)
          {
            v26 = v23 + v25++;
            v23 = v26 & v22;
            v24 = *(v19 + 16 * v23);
            if (v24 == v17)
            {
              goto LABEL_39;
            }
          }
        }

        v63 = *(mlir::detail::OpResultImpl::getOwner(v17) + 48);
        mlir::OperationName::print(&v63, &v64);
        if (v66 - v67 <= 1)
        {
          v29 = &v64;
LABEL_36:
          llvm::raw_ostream::write(v29, ": ", 2uLL);
          goto LABEL_39;
        }

        *v67 = 8250;
        v67 += 2;
      }

      else
      {
        v27 = v67;
        if (v66 - v67 > 4)
        {
          *(v67 + 4) = 35;
          *v27 = 543650401;
          v67 += 5;
          v29 = llvm::raw_ostream::operator<<(&v64, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = llvm::raw_ostream::write(&v64, "arg #", 5uLL);
          v29 = llvm::raw_ostream::operator<<(v28, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        *v30 = 8250;
        *(v29 + 4) += 2;
      }

LABEL_39:
      v63 = *(v16 + 1) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&v63, &v64);
      if (*(v15 + 4) >= 2u)
      {
        v31 = v67;
        if (v66 - v67 > 4)
        {
          *(v67 + 4) = 46;
          *v31 = 774774828;
          v67 += 5;
        }

        else
        {
          llvm::raw_ostream::write(&v64, ", ...", 5uLL);
        }
      }

      v32 = *v15;
      v33 = *(*(a1 + 8) + 160);
      *__p = *v58;
      v62 = v59;
      v58[0] = 0;
      v58[1] = 0;
      v59 = 0;
      (*(*v33 + 32))(v33, v15 + 5, v32, __p);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
        llvm::raw_ostream::~raw_ostream(&v64);
        if (SHIBYTE(v59) < 0)
        {
LABEL_47:
          operator delete(v58[0]);
          goto LABEL_48;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v64);
        if (SHIBYTE(v59) < 0)
        {
          goto LABEL_47;
        }
      }

      do
      {
LABEL_48:
        v34 = v9[1];
        ++v9;
        v15 = v34;
        if (v34)
        {
          v35 = v15 + 1 == 0;
        }

        else
        {
          v35 = 1;
        }
      }

      while (v35);
      if (v9 == v14)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseSuccessors(llvm::SmallVectorImpl<mlir::Block *> &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v8 = 0;
  v4 = *(a1 + 8);
  v5 = v8;
  v6 = *(v4 + 8);
  if (v6 >= *(v4 + 12))
  {
    v7 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v6 + 1, 8);
    result = v7;
    LODWORD(v6) = *(v4 + 8);
  }

  *(*v4 + 8 * v6) = v5;
  ++*(v4 + 8);
  return result;
}

BOOL anonymous namespace::OperationParser::parseSuccessor(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    Loc = mlir::Token::getLoc((v3 + 7));
    v38 = Loc;
    v17 = *BlockInfoByName;
    if (!*BlockInfoByName)
    {
      v18 = operator new(0x48uLL);
      *v18 = 0u;
      v18[1] = 0u;
      *(v18 + 4) = v18 + 2;
      *(v18 + 5) = v18 + 2;
      *(v18 + 7) = 0;
      *(v18 + 8) = 0;
      *(v18 + 6) = 0;
      *BlockInfoByName = v18;
      BlockInfoByName[1] = Loc;
      v19 = *(this + 34);
      v20 = *(this + 70);
      v36[0] = Loc;
      v39 = v18;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((v19 + 24 * v20 - 24), &v39, v36, &v40);
      v17 = *BlockInfoByName;
    }

    v21 = *(this + 1);
    v22 = *(v21 + 152);
    if (v22)
    {
      mlir::AsmParserState::addUses(v22, v17, &v38, 1);
      v17 = *BlockInfoByName;
      v21 = *(this + 1);
    }

    *a2 = v17;
    *(v21 + 80) = *(v21 + 56);
    *(v21 + 96) = *(v21 + 72);
    mlir::Lexer::lexToken(&v40, (*(this + 1) + 8));
    v23 = *(this + 1);
    *(v23 + 56) = v40;
    *(v23 + 72) = v41;
    return 1;
  }

  else if (v4 == 2)
  {
    v5 = v3[9];
    if (!v5 || v5 == 1 && *v3[8] == 94)
    {
      v6 = *(this + 26) + 24 * *(this + 54);
      if (*(v6 - 16))
      {
        v7 = *(v6 - 24);
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = 32 * v8;
          for (i = v7; *i >= 0xFFFFFFFFFFFFFFFELL; i += 4)
          {
            v9 -= 32;
            if (!v9)
            {
              return 0;
            }
          }
        }

        else
        {
          i = v7;
        }

        v32 = &v7[4 * v8];
        if (i == v32)
        {
          return 0;
        }

        while (1)
        {
          v33 = *i;
          v34 = i[1];
          i += 4;
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v33, v34);
          if (i == v32)
          {
            break;
          }

          while (*i >= 0xFFFFFFFFFFFFFFFELL)
          {
            i += 4;
            if (i == v32)
            {
              return 0;
            }
          }

          v11 = 0;
          if (i == v32)
          {
            return v11;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v36[0] = "expected block name";
    v37 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, v36, &v40);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
    if (v40)
    {
      mlir::InFlightDiagnostic::report(&v40);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v47;
        v26 = __p;
        if (v47 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v47 = v24;
        operator delete(v26);
      }

      v27 = v44;
      if (v44)
      {
        v28 = v45;
        v29 = v44;
        if (v45 != v44)
        {
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
          v29 = v44;
        }

        v45 = v27;
        operator delete(v29);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v11;
}

char **anonymous namespace::OperationParser::getBlockInfoByName(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v13 = v12;
    v8 = *(v4 - 16);
    v9 = *(v4 - 8);
    if (4 * v8 + 4 >= 3 * v9)
    {
      v9 *= 2;
    }

    else if (v9 + ~v8 - *(v4 - 12) > v9 >> 3)
    {
      *(v4 - 16) = v8 + 1;
      if (*v7 == -1)
      {
LABEL_6:
        *v7 = v11;
        v7[2] = 0;
        v7[3] = 0;
        return v7 + 2;
      }

LABEL_5:
      --*(v4 - 12);
      goto LABEL_6;
    }

    v7 = v13;
    ++*(v4 - 16);
    if (*v7 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v7 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, llvm::hashing::detail **a3, char ***a4)
{
  if (!a2)
  {
    v14 = 0;
    result = 0;
    goto LABEL_44;
  }

  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a3, a3[1]);
  v9 = a2 - 1;
  v10 = *a3;
  v11 = a3[1];
  if (!v11)
  {
    if (v10 != -2)
    {
      v22 = 0;
      v30 = 1;
      v31 = HashValue & v9;
      v14 = (a1 + 32 * v31);
      v32 = *v14;
      if (*v14 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v22)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v22 = v14;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v9;
          v14 = (a1 + 32 * v31);
          v32 = *v14;
        }

        while (*v14 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v14[1])
        {
          goto LABEL_43;
        }
      }
    }

    v18 = 1;
    v19 = HashValue & v9;
    v14 = (a1 + 32 * v19);
    v20 = *v14;
    if (*v14 != -2)
    {
      while (v20 != -1)
      {
        if (v14[1])
        {
          v21 = v18 + v19;
          ++v18;
          v19 = v21 & v9;
          v14 = (a1 + 32 * v19);
          v20 = *v14;
          if (*v14 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v10 != -2)
  {
    v22 = 0;
    v23 = 1;
    v24 = HashValue & v9;
    v14 = (a1 + 32 * v24);
    v25 = *v14;
    if (*v14 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25 + 2 == 0;
        }

        if (v26)
        {
          v22 = v14;
        }

        v27 = v23 + v24;
        ++v23;
        v24 = v27 & v9;
        v14 = (a1 + 32 * v24);
        v25 = *v14;
      }

      while (*v14 == -2);
LABEL_30:
      if (v25 == -1)
      {
        goto LABEL_18;
      }

      if (v11 == v14[1])
      {
        v36 = v25;
        v28 = v22;
        v35 = v23;
        v29 = memcmp(v10, v25, v11);
        v23 = v35;
        v22 = v28;
        v25 = v36;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v12 = 1;
  v13 = HashValue & v9;
  v14 = (a1 + 32 * v13);
  v15 = *v14;
  if (*v14 == -2)
  {
    goto LABEL_43;
  }

  while (v15 != -1)
  {
    if (v11 != v14[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v15, v11))
    {
      v16 = v12 + v13;
      ++v12;
      v13 = v16 & v9;
      v14 = (a1 + 32 * v13);
      v15 = *v14;
      if (*v14 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v22 = 0;
LABEL_18:
  if (!v22)
  {
    v22 = v14;
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v14 = v22;
    result = 0;
  }

LABEL_44:
  *a4 = v14;
  return result;
}

_OWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_1E096FB70;
        *v13 = xmmword_1E096FB70;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = xmmword_1E096FB70;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    v16 = (32 * v3);
    if (v3)
    {
      v17 = 32 * v3;
      v18 = v4;
      do
      {
        if (*v18 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = 0;
          v19 = v25;
          *v25 = *v18;
          *(v19 + 1) = *(v18 + 1);
          ++*(a1 + 8);
        }

        v18 = (v18 + 32);
        v17 -= 32;
      }

      while (v17);
    }

    llvm::deallocate_buffer(v4, v16);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    if (((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_25;
    }

    v21 = ((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result + 2;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 2) = xmmword_1E096FB70;
      *v22 = xmmword_1E096FB70;
      v22 += 4;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_25:
      v24 = &result[2 * v20];
      do
      {
        *v10 = xmmword_1E096FB70;
        v10 += 2;
      }

      while (v10 != v24);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v14 = 0;
    v15 = 1;
    while (v10 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v10 == -8192;
      }

      if (v16)
      {
        v14 = v9;
      }

      v17 = v8 + v15++;
      v8 = v17 & v7;
      v9 = (v6 + 16 * (v17 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v9 = v14;
    }

LABEL_5:
    v21 = v9;
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
        v13 = *a3;
        *v9 = *a2;
        v9[1] = v13;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a4;
    v20 = a3;
    llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v18, a2, &v21);
    a3 = v20;
    result = v18;
    a4 = v19;
    v9 = v21;
    ++*(v18 + 2);
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

char *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<mlir::Region*>(uint64_t a1, void *a2)
{
  v27 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v27);
  v6 = *(a1 + 8);
  v7 = 8 * v6;
  *&v5[8 * v6] = *a2;
  v8 = *a1;
  v9 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  v10 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v10 < 0xB)
  {
    v11 = v5;
    do
    {
LABEL_12:
      v20 = *v9;
      *v9 = 0;
      v9 += 8;
      *v11 = v20;
      v11 += 8;
    }

    while (v9 != &v8[v7]);
    goto LABEL_13;
  }

  v12 = v8 >= &v5[v7] || v5 >= &v8[v7];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v10 + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = &v5[v14];
  v9 = &v8[v14];
  v15 = (v8 + 16);
  v16 = v5 + 16;
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  v21 = v8 - 8;
  do
  {
    v22 = *&v21[v7];
    *&v21[v7] = 0;
    if (v22)
    {
      mlir::Region::~Region(v22);
      operator delete(v23);
    }

    v7 -= 8;
  }

  while (v7);
  v9 = *a1;
LABEL_18:
  v24 = v27;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v5;
  v25 = *(a1 + 8) + 1;
  *(a1 + 8) = v25;
  *(a1 + 12) = v24;
  return &v5[8 * v25 - 8];
}

BOOL anonymous namespace::OperationParser::parseBlock(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(this + 1);
  if (*a2 && *(v5 + 56) != 7)
  {
    *(this + 50) = v4;
    *(this + 51) = v4 + 32;
    while (1)
    {
      v28 = *(*(this + 1) + 56);
      if (v28 == 7 || v28 == 27)
      {
        break;
      }

      {
        return 0;
      }
    }

    return 1;
  }

  Loc = mlir::Token::getLoc((v5 + 56));
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v54 = "expected block name";
  LOWORD(v57) = 259;
  if (!mlir::detail::Parser::parseToken(this, 7, &v54))
  {
    return 0;
  }

  v11 = BlockInfoByName;
  BlockInfoByName[1] = Loc;
  v12 = *BlockInfoByName;
  if (!*BlockInfoByName)
  {
    v19 = *a2;
    if (*a2)
    {
      v20 = 0;
      *BlockInfoByName = v19;
      v21 = *(this + 1);
      v22 = *(v21 + 152);
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v19 = operator new(0x48uLL);
      *v19 = 0u;
      *(v19 + 1) = 0u;
      *(v19 + 4) = v19 + 32;
      *(v19 + 5) = v19 + 32;
      *(v19 + 7) = 0;
      *(v19 + 8) = 0;
      *(v19 + 6) = 0;
      v20 = v19;
      *v11 = v19;
      v21 = *(this + 1);
      v22 = *(v21 + 152);
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v13 = *(this + 34) + 24 * *(this + 70);
  v14 = *(v13 - 8);
  if (v14)
  {
    v15 = *(v13 - 24);
    v16 = v14 - 1;
    v17 = (v14 - 1) & ((v12 >> 4) ^ (v12 >> 9));
    v18 = *(v15 + 16 * v17);
    if (v18 == v12)
    {
LABEL_7:
      *(v15 + 16 * v17) = -8192;
      *(v13 - 16) = vadd_s32(*(v13 - 16), 0x1FFFFFFFFLL);
      v19 = *BlockInfoByName;
      v20 = *BlockInfoByName;
      v21 = *(this + 1);
      v22 = *(v21 + 152);
      if (!v22)
      {
LABEL_9:
        *a2 = v19;
        {
          v54 = "expected ':' after block name";
          LOWORD(v57) = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v54))
          {
            v23 = *a2 + 32;
            *(this + 50) = *a2;
            *(this + 51) = v23;
            do
            {
              v24 = *(*(this + 1) + 56);
              if (v24 == 7 || v24 == 27)
              {
                return 1;
              }
            }
          }
        }

        if (v20)
        {
          mlir::Block::dropAllDefinedValueUses(v20);
          mlir::Block::~Block(v20);
          operator delete(v26);
          return 0;
        }

        return 0;
      }

LABEL_8:
      mlir::AsmParserState::addDefinition(v22, v19, Loc);
      v19 = *v11;
      v21 = *(this + 1);
      goto LABEL_9;
    }

    v30 = 1;
    while (v18 != -4096)
    {
      v31 = v17 + v30++;
      v17 = v31 & v16;
      v18 = *(v15 + 16 * v17);
      if (v18 == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v47[0] = "redefinition of block '";
  v48 = 259;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, v47, &v54);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v54);
  }

  if (v54)
  {
    v52 = 261;
    v49 = v8;
    v50 = v9;
    mlir::Diagnostic::operator<<(v55, &v49);
    if (v54)
    {
      LODWORD(v49) = 3;
      v50 = "'";
      v51 = 1;
      v33 = &v49;
      v34 = v56;
      if (v57 >= v58)
      {
        if (v56 <= &v49 && v56 + 24 * v57 > &v49)
        {
          v46 = &v49 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v34 = v56;
          v33 = (v56 + v46);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v33 = &v49;
          v34 = v56;
        }
      }

      v35 = &v34[24 * v57];
      v36 = *v33;
      *(v35 + 2) = v33[2];
      *v35 = v36;
      ++v57;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
  v37 = result;
  if (v54)
  {
    mlir::InFlightDiagnostic::report(&v54);
    result = v37;
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
      result = v37;
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
      result = v37;
    }

    v41 = v60;
    if (v60)
    {
      v42 = v61;
      v43 = v60;
      if (v61 != v60)
      {
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
        v43 = v60;
      }

      v61 = v41;
      operator delete(v43);
      result = v37;
    }

    if (v56 != v59)
    {
      free(v56);
      return v37;
    }
  }

  return result;
}

void anonymous namespace::OperationParser::popSSANameScope(_anonymous_namespace_::OperationParser *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(this + 34);
  v5 = v4 + 24 * *(this + 70);
  *(v5 - 24) = 0;
  *(v5 - 16) = 0;
  *(v5 - 8) = 0;
  LODWORD(v5) = *(this + 70) - 1;
  *(this + 70) = v5;
  llvm::deallocate_buffer(*(v4 + 24 * v5), (16 * *(v4 + 24 * v5 + 16)));
}

uint64_t llvm::StringMap<llvm::SmallVector<anonymous namespace::OperationParser::ValueDefinition,1u>,llvm::MallocAllocator>::operator[](llvm::StringMapImpl *a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  v8 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, v7);
  v9 = *a1;
  v10 = v8;
  v11 = *(*a1 + 8 * v8);
  if (v11 == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    return v11 + 8;
  }

  buffer = llvm::allocate_buffer((a3 + 41), 8uLL);
  v14 = buffer;
  v15 = (buffer + 5);
  if (a3)
  {
    memcpy(buffer + 5, a2, a3);
  }

  a3[v15] = 0;
  *v14 = a3;
  v14[1] = (v14 + 3);
  v14[2] = 0x100000000;
  *(v9 + 8 * v10) = v14;
  ++*(a1 + 3);
  v16 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v10));
  v11 = *v16;
  if (*v16)
  {
    v17 = v11 == -8;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    do
    {
      v18 = v16[1];
      ++v16;
      v11 = v18;
      if (v18)
      {
        v19 = v11 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v11 + 8;
}

uint64_t *llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = v1;
  v8 = 0uLL;
  *&v9 = 0;
  {
    return 0;
  }

  *&v6[0] = "expected ':' and type for SSA operand";
  v7 = 259;
  if (!mlir::detail::Parser::parseToken(v1, 15, v6))
  {
    return 0;
  }

  result = mlir::detail::Parser::parseType(v1);
  if (result)
  {
    v6[0] = v8;
    v6[1] = v9;
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser::UnresolvedOperand,mlir::Type)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0::operator() const(void)::{lambda(mlir::OpAsmParser::UnresolvedOperand,mlir::Type)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v30 = *(a2 + 8);
  v31 = *(a2 + 24);
  v6 = *(a1 + 24);
  if (**a1 != 1)
  {
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v6 + 1) + 8, v5);
    v10 = mlir::Block::addArgument(**(a1 + 16), a3, EncodedSourceLocation);
    goto LABEL_21;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = *(**(a1 + 16) + 48);
  if (v8 < ((*(**(a1 + 16) + 56) - v9) >> 3))
  {
    *v7 = v8 + 1;
    v10 = *(v9 + 8 * v8);
    if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
    {
      v32[0] = "argument and block argument type mismatch";
      v33 = 259;
      mlir::detail::Parser::emitError(v6, v32, &v34);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
      if (v34)
      {
        mlir::InFlightDiagnostic::report(&v34);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v12 = __p;
        if (__p)
        {
          v13 = v41;
          v14 = __p;
          if (v41 != __p)
          {
            do
            {
              v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
            }

            while (v13 != v12);
            v14 = __p;
          }

          v41 = v12;
          operator delete(v14);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_44;
        }

        v16 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_43:
          v39 = v15;
          operator delete(v17);
LABEL_44:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
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
LABEL_42:
        v17 = v38;
        goto LABEL_43;
      }

      return v11;
    }

LABEL_21:
    {
      return 0;
    }

    v22 = *(*(v6 + 1) + 152);
    if (v22)
    {
      mlir::AsmParserState::addDefinition(v22, v10, v5);
    }

    v34 = v5;
    v35 = v30;
    v36 = v31;
  }

  v32[0] = "too many arguments specified in argument list";
  v33 = 259;
  mlir::detail::Parser::emitError(v6, v32, &v34);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
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

    v15 = v38;
    if (!v38)
    {
      goto LABEL_44;
    }

    v26 = v39;
    v17 = v38;
    if (v39 == v38)
    {
      goto LABEL_43;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        operator delete[](v27);
      }
    }

    while (v26 != v15);
    goto LABEL_42;
  }

  return v11;
}

uint64_t llvm::array_pod_sort_comparator<std::pair<char const*,mlir::Block *>>(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  return v4 < v3;
}

uint64_t mlir::Diagnostic::append<char const(&)[43],mlir::Type &,char const(&)[5],mlir::Type>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  v25 = 3;
  v26 = __s;
  v27 = v10;
  v12 = *(a1 + 24);
  v13 = &v25;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v25 && v11 + 24 * v12 > &v25)
    {
      v23 = &v25 - v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v11 = *(a1 + 16);
      v13 = &v23[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v11 = *(a1 + 16);
      v13 = &v25;
    }
  }

  v14 = v11 + 24 * *(a1 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(a1 + 24);
  v16 = *a3;
  v17 = &v25;
  mlir::DiagnosticArgument::DiagnosticArgument(&v25, v16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 16);
  if (v18 >= *(a1 + 28))
  {
    if (v19 <= &v25 && v19 + 24 * v18 > &v25)
    {
      v24 = &v25 - v19;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v18 + 1, 24);
      v19 = *(a1 + 16);
      v17 = &v24[v19];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v18 + 1, 24);
      v19 = *(a1 + 16);
      v17 = &v25;
    }
  }

  v20 = v19 + 24 * *(a1 + 24);
  v21 = *v17;
  *(v20 + 16) = *(v17 + 2);
  *v20 = v21;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[5],mlir::Type>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[5],mlir::Type>(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  v12 = *a3;
  v13 = &v21;
  mlir::DiagnosticArgument::DiagnosticArgument(&v21, v12);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  if (v14 >= *(a1 + 28))
  {
    if (v15 <= &v21 && v15 + 24 * v14 > &v21)
    {
      v20 = &v21 - v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v20[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v21;
    }
  }

  v16 = v15 + 24 * *(a1 + 24);
  v17 = *v13;
  *(v16 + 16) = *(v13 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOperandList(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AsmParser::Delimiter,BOOL,int)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v8 = v2;
    llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(a1[1]);
    v2 = v8;
  }

  else
  {
    v5 = (*v3 + 32 * v4);
    *v5 = 0u;
    v5[1] = 0u;
    ++*(v3 + 8);
  }

  v6 = *(*v2 + 704);

  return v6();
}

unint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(unint64_t *a1)
{
  memset(v11, 0, sizeof(v11));
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v11;
  if (v1 >= *(a1 + 3))
  {
    if (v2 <= v11 && v2 + 32 * v1 > v11)
    {
      v9 = v11 - v2;
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v1 + 1, 32);
      a1 = v10;
      v2 = *v10;
      v3 = &v9[*v10];
    }

    else
    {
      v8 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v1 + 1, 32);
      a1 = v8;
      v2 = *v8;
      v3 = v11;
    }
  }

  v4 = (v2 + 32 * *(a1 + 2));
  v5 = *(v3 + 1);
  *v4 = *v3;
  v4[1] = v5;
  v6 = (*(a1 + 2) + 1);
  *(a1 + 2) = v6;
  return *a1 + 32 * v6 - 32;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::Attribute &,llvm::StringRef,mlir::NamedAttrList &,mlir::AsmParser::Delimiter)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v14, 0, 24);
  if (((*(*v4 + 704))(v4, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a1[2];
  }

  v8 = (v5 + 8);
  v7 = *(v5 + 8);
  v9 = *v5;
  v10 = v14;
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= v14 && v9 + 32 * v7 > v14)
    {
      v13 = v14 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = &v13[*v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = v14;
    }
  }

  v11 = (v9 + 32 * *v8);
  v12 = *(v10 + 1);
  *v11 = *v10;
  v11[1] = v12;
  ++*v8;
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AffineExpr &)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v14, 0, 24);
  if (((*(*v4 + 704))(v4, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a1[2];
  }

  v8 = (v5 + 8);
  v7 = *(v5 + 8);
  v9 = *v5;
  v10 = v14;
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= v14 && v9 + 32 * v7 > v14)
    {
      v13 = v14 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = &v13[*v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = v14;
    }
  }

  v11 = (v9 + 32 * *v8);
  v12 = *(v10 + 1);
  *v11 = *v10;
  v11[1] = v12;
  ++*v8;
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseArgumentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,mlir::AsmParser::Delimiter,BOOL,BOOL)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v8 = v2;
    llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(a1[1]);
    v2 = v8;
  }

  else
  {
    v5 = (*v3 + (v4 << 6));
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    ++*(v3 + 8);
  }

  v6 = *(*v2 + 752);

  return v6();
}

unint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(unint64_t *a1)
{
  memset(v13, 0, sizeof(v13));
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v13;
  if (v1 >= *(a1 + 3))
  {
    if (v2 <= v13 && v2 + (v1 << 6) > v13)
    {
      v11 = v13 - v2;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v1 + 1, 64);
      a1 = v12;
      v2 = *v12;
      v3 = &v11[*v12];
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v1 + 1, 64);
      a1 = v10;
      v2 = *v10;
      v3 = v13;
    }
  }

  v4 = (v2 + (*(a1 + 2) << 6));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v4[2] = *(v3 + 2);
  v4[3] = v7;
  *v4 = v5;
  v4[1] = v6;
  v8 = (*(a1 + 2) + 1);
  *(a1 + 2) = v8;
  return *a1 + (v8 << 6) - 64;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOptionalAssignmentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &)::{lambda(void)#1}>(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    v7 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(v2);
  }

  else
  {
    v5 = (*v2 + (v4 << 6));
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    v6 = (*(v2 + 8) + 1);
    *(v2 + 8) = v6;
    v7 = *v2 + (v6 << 6) - 64;
  }

  if (((*(*v3 + 752))(v3, v7, 0, 0) & 1) == 0 || ((*(*v3 + 136))(v3) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = *(v8 + 8);
  if (v9 >= *(v8 + 12))
  {
    v12 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(v8);
  }

  else
  {
    v10 = (*v8 + 32 * v9);
    *v10 = 0u;
    v10[1] = 0u;
    v11 = (*(v8 + 8) + 1);
    *(v8 + 8) = v11;
    v12 = *v8 + 32 * v11 - 32;
  }

  return (*(*v3 + 704))(v3, v12, 1) & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseCustomOperation(llvm::ArrayRef<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>>)::$_2>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  v31 = "invalid properties ";
  v32 = 259;
  mlir::emitError(v4, &v31, &v37);
  if (v37)
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, *a1[1]);
    v6 = v39;
    if (v40 >= v41)
    {
      if (v39 <= &v33 && v39 + 24 * v40 > &v33)
      {
        v28 = &v33 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v6 = v39;
        v5 = (v39 + v28);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v5 = &v33;
        v6 = v39;
      }
    }

    v7 = &v6[24 * v40];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    v9 = ++v40;
    if (v37)
    {
      LODWORD(v33) = 3;
      v34 = " for op ";
      v35 = 8;
      v10 = &v33;
      v11 = v39;
      if (v9 >= v41)
      {
        if (v39 <= &v33 && v39 + 24 * v9 > &v33)
        {
          v29 = &v33 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v9 + 1, 24);
          v11 = v39;
          v10 = (v39 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v9 + 1, 24);
          v10 = &v33;
          v11 = v39;
        }
      }

      v12 = &v11[24 * v40];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v40;
    }
  }

  v33 = *(*(*a1[2] + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v33);
  if (v37)
  {
    v36 = 261;
    v33 = AttrData;
    v34 = v15;
    mlir::Diagnostic::operator<<(&v38, &v33);
    if (v37)
    {
      LODWORD(v33) = 3;
      v34 = ": ";
      v35 = 2;
      v16 = &v33;
      v17 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v33 && v39 + 24 * v40 > &v33)
        {
          v30 = &v33 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v17 = v39;
          v16 = (v39 + v30);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v16 = &v33;
          v17 = v39;
        }
      }

      v18 = &v17[24 * v40];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v40;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v37);
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

    v20 = __p;
    if (__p)
    {
      v21 = v46;
      v22 = __p;
      if (v46 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v46 = v20;
      operator delete(v22);
    }

    v23 = v43;
    if (v43)
    {
      v24 = v44;
      v25 = v43;
      if (v44 != v43)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            operator delete[](v26);
          }
        }

        while (v24 != v23);
        v25 = v43;
      }

      v44 = v23;
      operator delete(v25);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_0>(uint64_t a1@<X0>, Location a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v28, **a1, a2);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v5 = &v24;
    v6 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = v30;
        v5 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = &v24;
        v6 = v30;
      }
    }

    v7 = &v6[24 * v31];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    ++v31;
    if (v28)
    {
      v9 = *(a1 + 8);
      v27 = 260;
      v24 = v9;
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
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v28);
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
            operator delete[](v20);
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_1>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = **a1;
  v30 = "invalid properties ";
  v31 = 259;
  mlir::emitError(v4, &v30, &v36);
  if (v36)
  {
    v5 = &v32;
    mlir::DiagnosticArgument::DiagnosticArgument(&v32, *a1[1]);
    v6 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = v38;
        v5 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v5 = &v32;
        v6 = v38;
      }
    }

    v7 = &v6[24 * v39];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    v9 = ++v39;
    if (v36)
    {
      LODWORD(v32) = 3;
      v33 = " for op ";
      v34 = 8;
      v10 = &v32;
      v11 = v38;
      if (v9 >= v40)
      {
        if (v38 <= &v32 && v38 + 24 * v9 > &v32)
        {
          v28 = &v32 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v11 = v38;
          v10 = (v38 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v10 = &v32;
          v11 = v38;
        }
      }

      v12 = &v11[24 * v39];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v39;
      if (v36)
      {
        v14 = a1[2];
        v35 = 260;
        v32 = v14;
        mlir::Diagnostic::operator<<(&v37, &v32);
        if (v36)
        {
          LODWORD(v32) = 3;
          v33 = ": ";
          v34 = 2;
          v15 = &v32;
          v16 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v16 = v38;
              v15 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = &v32;
              v16 = v38;
            }
          }

          v17 = &v16[24 * v39];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v39;
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
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
            operator delete[](v25);
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
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

double mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(uint64_t a1, char *__s, const void ***a3, const char *a4)
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
  *&result = mlir::Diagnostic::append<llvm::StringRef &,char const(&)[2]>(v9, a3, a4).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<llvm::StringRef &,char const(&)[2]>(uint64_t a1, const void ***a2, const char *a3)
{
  v19 = 261;
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  mlir::Diagnostic::operator<<(a1, &v16);
  v6 = strlen(a3);
  v7 = a1;
  v8 = a1 + 16;
  v9 = *(a1 + 16);
  LODWORD(v16) = 3;
  v17 = a3;
  v18 = v6;
  v10 = *(a1 + 24);
  v11 = &v16;
  if (v10 >= *(a1 + 28))
  {
    if (v9 <= &v16 && v9 + 24 * v10 > &v16)
    {
      v14 = &v16 - v9;
      v15 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v7 + 32), v10 + 1, 24);
      v7 = v15;
      v9 = *(v15 + 16);
      v11 = &v14[v9];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v10 + 1, 24);
      v7 = a1;
      v9 = *(a1 + 16);
      v11 = &v16;
    }
  }

  v12 = (v9 + 24 * *(v7 + 24));
  result = *v11;
  v12[1].n128_u64[0] = v11[1].n128_u64[0];
  *v12 = result;
  ++*(v7 + 24);
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, const void ***a3, char *a4, unsigned int *a5, char *a6, uint64_t *a7)
{
  v14 = strlen(__s);
  v15 = a1 + 16;
  v16 = *(a1 + 16);
  LODWORD(v24) = 3;
  v25 = __s;
  v26 = v14;
  v17 = *(a1 + 24);
  v18 = &v24;
  if (v17 >= *(a1 + 28))
  {
    if (v16 <= &v24 && v16 + 24 * v17 > &v24)
    {
      v23 = &v24 - v16;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (a1 + 32), v17 + 1, 24);
      v16 = *(a1 + 16);
      v18 = &v23[v16];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (a1 + 32), v17 + 1, 24);
      v16 = *(a1 + 16);
      v18 = &v24;
    }
  }

  v19 = v16 + 24 * *(a1 + 24);
  v20 = *v18;
  *(v19 + 16) = v18[2];
  *v19 = v20;
  ++*(a1 + 24);
  v27 = 261;
  v21 = a3[1];
  v24 = *a3;
  v25 = v21;
  mlir::Diagnostic::operator<<(a1, &v24);
  return mlir::Diagnostic::append<char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(a1, a4, a5, a6, a7);
}

uint64_t mlir::Diagnostic::append<char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, unsigned int *a3, char *a4, uint64_t *a5)
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
  return mlir::Diagnostic::append<char const(&)[5],mlir::Type>(v11, a4, a5);
}

uint64_t *llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 9, 8uLL);
    v11 = buffer + 1;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 9, 8uLL);
    v11 = buffer + 1;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t llvm::array_pod_sort_comparator<char const*>(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::OperationParser::finalize(void)::$_1>(uint64_t **a1, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = **a1;
  v6 = *(a2 + 24);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v6 = 0;
  }

  v121 = v6;
  if (!v6 || *v4[1] != mlir::AffineBinaryOpExpr::getLHS(&v121))
  {
    goto LABEL_61;
  }

  v7 = *(v5 + 360) + 24 * mlir::AffineMapAttr::getValue(&v121);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v4[2];
  v14 = llvm::StringMapImpl::hash(v9, v10, v12, v13);
  Key = llvm::StringMapImpl::FindKey(v11, v9, v10, v14);
  if (Key == -1 || Key == *(v11 + 8) || (v16 = *(*v11 + 8 * Key), (v17 = *(v16 + 8)) == 0))
  {
    v120 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(EncodedSourceLocation, v119, v125);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v125);
    }

    if (v125[0])
    {
      v122 = 3;
      v123 = "operation location alias was never defined";
      v124 = 42;
      v19 = &v122;
      v20 = v126;
      if (v127 >= v128)
      {
        if (v126 <= &v122 && v126 + 24 * v127 > &v122)
        {
          v113 = &v122 - v126;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v20 = v126;
          v19 = (v126 + v113);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v19 = &v122;
          v20 = v126;
        }
      }

      v21 = &v20[24 * v127];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      ++v127;
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v135 == 1)
    {
      if (v134 != &v135)
      {
        free(v134);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v133;
        v26 = __p;
        if (v133 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v133 = v24;
        operator delete(v26);
      }

      v27 = v130;
      if (!v130)
      {
        goto LABEL_58;
      }

      v28 = v131;
      v29 = v130;
      if (v131 == v130)
      {
        goto LABEL_57;
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
      goto LABEL_56;
    }
  }

  else
  {
    if (mlir::LocationAttr::classof(*(v16 + 8)))
    {
      *(a2 + 24) = v17;
      goto LABEL_61;
    }

    v120 = 257;
    v32 = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(v32, v119, v125);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v125);
    }

    if (v125[0])
    {
      v122 = 3;
      v123 = "expected location, but found '";
      v124 = 30;
      v33 = &v122;
      v34 = v126;
      if (v127 >= v128)
      {
        if (v126 <= &v122 && v126 + 24 * v127 > &v122)
        {
          v114 = &v122 - v126;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v34 = v126;
          v33 = (v126 + v114);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v33 = &v122;
          v34 = v126;
        }
      }

      v35 = &v34[24 * v127];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      ++v127;
      if (v125[0])
      {
        v37 = &v122;
        mlir::DiagnosticArgument::DiagnosticArgument(&v122, v17);
        v38 = v126;
        if (v127 >= v128)
        {
          if (v126 <= &v122 && v126 + 24 * v127 > &v122)
          {
            v115 = &v122 - v126;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
            v38 = v126;
            v37 = (v126 + v115);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
            v37 = &v122;
            v38 = v126;
          }
        }

        v39 = &v38[24 * v127];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        v41 = ++v127;
        if (v125[0])
        {
          v122 = 3;
          v123 = "'";
          v124 = 1;
          v42 = &v122;
          v43 = v126;
          if (v41 >= v128)
          {
            if (v126 <= &v122 && v126 + 24 * v41 > &v122)
            {
              v116 = &v122 - v126;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v41 + 1, 24);
              v43 = v126;
              v42 = (v126 + v116);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v41 + 1, 24);
              v42 = &v122;
              v43 = v126;
            }
          }

          v44 = &v43[24 * v127];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v127;
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v135 == 1)
    {
      if (v134 != &v135)
      {
        free(v134);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v133;
        v48 = __p;
        if (v133 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v133 = v46;
        operator delete(v48);
      }

      v27 = v130;
      if (!v130)
      {
        goto LABEL_58;
      }

      v49 = v131;
      v29 = v130;
      if (v131 == v130)
      {
LABEL_57:
        v131 = v27;
        operator delete(v29);
LABEL_58:
        if (v126 != v129)
        {
          free(v126);
        }

        goto LABEL_60;
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

      while (v49 != v27);
LABEL_56:
      v29 = v130;
      goto LABEL_57;
    }
  }

LABEL_60:
  if (!v23)
  {
    return 0;
  }

LABEL_61:
  v52 = *(a2 + 44);
  v53 = v52 & 0x7FFFFF;
  if ((v52 & 0x7FFFFF) != 0)
  {
    v54 = ((a2 + 16 * ((v52 >> 23) & 1) + ((v52 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v117 = v54 + 24 * v53;
    while (1)
    {
      v55 = *(v54 + 8);
      if (v55 != v54)
      {
        break;
      }

LABEL_150:
      v54 += 24;
      if (v54 == v117)
      {
        return 1;
      }
    }

    v118 = v54;
LABEL_66:
    v56 = v55 - 8;
    if (!v55)
    {
      v56 = 0;
    }

    v57 = *(v56 + 48);
    v58 = *(v56 + 56);
    while (1)
    {
      if (v57 == v58)
      {
        v55 = *(v55 + 8);
        v54 = v118;
        if (v55 == v118)
        {
          goto LABEL_150;
        }

        goto LABEL_66;
      }

      v59 = *v57;
      v60 = *a1;
      v61 = **a1;
      v62 = *(*v57 + 32);
      if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
      {
        v62 = 0;
      }

      v121 = v62;
      if (v62)
      {
        if (*v60[1] == mlir::AffineBinaryOpExpr::getLHS(&v121))
        {
          break;
        }
      }

LABEL_70:
      ++v57;
    }

    v63 = *(v61 + 360) + 24 * mlir::AffineMapAttr::getValue(&v121);
    v64 = *v63;
    v65 = *(v63 + 8);
    v66 = *(v63 + 16);
    v67 = v60[2];
    v70 = llvm::StringMapImpl::hash(v65, v66, v68, v69);
    v71 = llvm::StringMapImpl::FindKey(v67, v65, v66, v70);
    if (v71 == -1 || v71 == *(v67 + 8) || (v72 = *(*v67 + 8 * v71), (v73 = *(v72 + 8)) == 0))
    {
      v120 = 257;
      v74 = mlir::Lexer::getEncodedSourceLocation(*(v61 + 8) + 8, v64);
      mlir::emitError(v74, v119, v125);
      if (*(*(v61 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v125);
      }

      if (v125[0])
      {
        v122 = 3;
        v123 = "operation location alias was never defined";
        v124 = 42;
        v75 = v126;
        if (v127 >= v128)
        {
          if (v126 <= &v122 && v126 + 24 * v127 > &v122)
          {
            v108 = &v122 - v126;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
            v75 = v126;
            v76 = (v126 + v108);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
            v76 = &v122;
            v75 = v126;
          }
        }

        else
        {
          v76 = &v122;
        }

        v77 = &v75[24 * v127];
        v78 = *v76;
        *(v77 + 2) = *(v76 + 2);
        *v77 = v78;
        ++v127;
      }

      v79 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
      if (v125[0])
      {
        mlir::InFlightDiagnostic::report(v125);
      }

      if (v135 != 1)
      {
LABEL_69:
        if (!v79)
        {
          return 0;
        }

        goto LABEL_70;
      }

      if (v134 != &v135)
      {
        free(v134);
      }

      v80 = __p;
      if (__p)
      {
        v81 = v133;
        v82 = __p;
        if (v133 != __p)
        {
          do
          {
            v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
          }

          while (v81 != v80);
          v82 = __p;
        }

        v133 = v80;
        operator delete(v82);
      }

      v83 = v130;
      if (!v130)
      {
LABEL_132:
        if (v126 != v129)
        {
          free(v126);
        }

        goto LABEL_69;
      }

      v84 = v131;
      v85 = v130;
      if (v131 == v130)
      {
LABEL_131:
        v131 = v83;
        operator delete(v85);
        goto LABEL_132;
      }

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
    }

    else
    {
      if (mlir::LocationAttr::classof(*(v72 + 8)))
      {
        *(v59 + 32) = v73;
        goto LABEL_70;
      }

      v120 = 257;
      v88 = mlir::Lexer::getEncodedSourceLocation(*(v61 + 8) + 8, v64);
      mlir::emitError(v88, v119, v125);
      if (*(*(v61 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v125);
      }

      if (v125[0])
      {
        v122 = 3;
        v123 = "expected location, but found '";
        v124 = 30;
        v89 = v126;
        if (v127 >= v128)
        {
          if (v126 <= &v122 && v126 + 24 * v127 > &v122)
          {
            v109 = &v122 - v126;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
            v89 = v126;
            v90 = (v126 + v109);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
            v90 = &v122;
            v89 = v126;
          }
        }

        else
        {
          v90 = &v122;
        }

        v91 = &v89[24 * v127];
        v92 = *v90;
        *(v91 + 2) = *(v90 + 2);
        *v91 = v92;
        ++v127;
        if (v125[0])
        {
          v93 = &v122;
          mlir::DiagnosticArgument::DiagnosticArgument(&v122, v73);
          v94 = v126;
          if (v127 >= v128)
          {
            if (v126 <= &v122 && v126 + 24 * v127 > &v122)
            {
              v110 = &v122 - v126;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
              v94 = v126;
              v93 = (v126 + v110);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
              v93 = &v122;
              v94 = v126;
            }
          }

          v95 = &v94[24 * v127];
          v96 = *v93;
          *(v95 + 2) = *(v93 + 2);
          *v95 = v96;
          v97 = ++v127;
          if (v125[0])
          {
            v122 = 3;
            v123 = "'";
            v124 = 1;
            v98 = v126;
            if (v97 >= v128)
            {
              if (v126 <= &v122 && v126 + 24 * v97 > &v122)
              {
                v111 = &v122 - v126;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v97 + 1, 24);
                v98 = v126;
                v99 = (v126 + v111);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v97 + 1, 24);
                v99 = &v122;
                v98 = v126;
              }
            }

            else
            {
              v99 = &v122;
            }

            v100 = &v98[24 * v127];
            v101 = *v99;
            *(v100 + 2) = *(v99 + 2);
            *v100 = v101;
            ++v127;
          }
        }
      }

      v79 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
      if (v125[0])
      {
        mlir::InFlightDiagnostic::report(v125);
      }

      if (v135 != 1)
      {
        goto LABEL_69;
      }

      if (v134 != &v135)
      {
        free(v134);
      }

      v102 = __p;
      if (__p)
      {
        v103 = v133;
        v104 = __p;
        if (v133 != __p)
        {
          do
          {
            v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
          }

          while (v103 != v102);
          v104 = __p;
        }

        v133 = v102;
        operator delete(v104);
      }

      v83 = v130;
      if (!v130)
      {
        goto LABEL_132;
      }

      v105 = v131;
      v85 = v130;
      if (v131 == v130)
      {
        goto LABEL_131;
      }

      do
      {
        v107 = *--v105;
        v106 = v107;
        *v105 = 0;
        if (v107)
        {
          operator delete[](v106);
        }
      }

      while (v105 != v83);
    }

    v85 = v130;
    goto LABEL_131;
  }

  return 1;
}

uint64_t *llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t *llvm::StringMap<mlir::Type,llvm::MallocAllocator>::try_emplace_with_hash<mlir::Type&>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v19 = v10[1];
        ++v10;
        v11 = v19;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  v14 = *a5;
  *buffer = a3;
  buffer[1] = v14;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v15 = *v10 == -8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    do
    {
      v17 = v10[1];
      ++v10;
      v16 = v17;
      if (v17)
      {
        v18 = v16 == -8;
      }

      else
      {
        v18 = 1;
      }
    }

    while (v18);
  }

  return v10;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseFileMetadataDictionary(void)::$_0>(mlir::detail::Parser **a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v3 = *(v1 + 1);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
LABEL_6:
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v7;
    mlir::Lexer::lexToken(&v36, (*(v1 + 1) + 8));
    v8 = *(v1 + 1);
    *(v8 + 56) = v36;
    *(v8 + 72) = v37;
    *&v36 = "expected ':'";
    v39 = 259;
    if (mlir::detail::Parser::parseToken(v1, 15, &v36))
    {
      if (v7 == 18)
      {
        if (*v6 != 0x6C616E7265747865 || *(v6 + 8) != 0x6372756F7365725FLL || *(v6 + 16) != 29541)
        {
LABEL_43:
          v33 = 1283;
          v32[0] = "unknown key '";
          v32[2] = v6;
          v32[3] = v7;
          v34[0] = v32;
          v34[2] = "' in file metadata dictionary";
          v35 = 770;
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v1 + 1) + 8, Loc);
          mlir::emitError(EncodedSourceLocation, v34, &v36);
          if (*(*(v1 + 1) + 56) == 1)
          {
            mlir::InFlightDiagnostic::abandon(&v36);
          }

          v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
          if (v36)
          {
            mlir::InFlightDiagnostic::report(&v36);
          }

          if (v46 == 1)
          {
            if (v45 != &v46)
            {
              free(v45);
            }

            v25 = __p;
            if (__p)
            {
              v26 = v44;
              v27 = __p;
              if (v44 != __p)
              {
                do
                {
                  v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
                }

                while (v26 != v25);
                v27 = __p;
              }

              v44 = v25;
              operator delete(v27);
            }

            v17 = v41;
            if (!v41)
            {
              goto LABEL_63;
            }

            v28 = v42;
            v19 = v41;
            if (v42 == v41)
            {
LABEL_62:
              v42 = v17;
              operator delete(v19);
LABEL_63:
              if (v38 != &v40)
              {
                free(v38);
              }

              return v13;
            }

            do
            {
              v30 = *--v28;
              v29 = v30;
              *v28 = 0;
              if (v30)
              {
                operator delete[](v29);
              }
            }

            while (v28 != v17);
LABEL_61:
            v19 = v41;
            goto LABEL_62;
          }

          return v13;
        }

        v32[0] = v1;
      }

      else
      {
        if (v7 != 17)
        {
          goto LABEL_43;
        }

        v9 = *v6 == 0x5F7463656C616964 && *(v6 + 8) == 0x656372756F736572;
        if (!v9 || *(v6 + 16) != 115)
        {
          goto LABEL_43;
        }

        v32[0] = v1;
      }

      v34[0] = v11;
      v34[1] = v32;
      *&v36 = "expected '{'";
      v39 = 259;
      if (mlir::detail::Parser::parseToken(v1, 20, &v36))
      {
        *&v36 = v1;
        *(&v36 + 1) = v34;
      }
    }

    return 0;
  }

  if (mlir::Token::isKeyword((v3 + 56)))
  {
    v3 = *(v1 + 1);
    goto LABEL_6;
  }

  v34[0] = "expected identifier key in file metadata dictionary";
  v35 = 259;
  mlir::detail::Parser::emitError(v1, v34, &v36);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v44;
      v16 = __p;
      if (v44 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v44 = v14;
      operator delete(v16);
    }

    v17 = v41;
    if (!v41)
    {
      goto LABEL_63;
    }

    v18 = v42;
    v19 = v41;
    if (v42 == v41)
    {
      goto LABEL_62;
    }

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
    goto LABEL_61;
  }

  return v13;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseResourceFileMetadata(llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>)::$_0>(mlir::detail::Parser **a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v4 = *(v2 + 1);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
LABEL_6:
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v8;
    mlir::Lexer::lexToken(&v23, (*(v2 + 1) + 8));
    v9 = *(v2 + 1);
    *(v9 + 56) = v23;
    *(v9 + 72) = v24;
    *&v23 = "expected ':'";
    v26 = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, &v23) && (v21[0] = "expected '{'", v22 = 259, mlir::detail::Parser::parseToken(v2, 20, v21)))
    {
      return (*a1[1])(*(a1[1] + 1), v7, v8, Loc);
    }

    else
    {
      return 0;
    }
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(v2 + 1);
    goto LABEL_6;
  }

  v21[0] = "expected identifier key for 'resource' entry";
  v22 = 259;
  mlir::detail::Parser::emitError(v2, v21, &v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v23);
  v12 = result;
  if (v23)
  {
    mlir::InFlightDiagnostic::report(&v23);
    result = v12;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v31;
      v15 = __p;
      if (v31 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v31 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v28;
    if (v28)
    {
      v17 = v29;
      v18 = v28;
      if (v29 != v28)
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
        v18 = v28;
      }

      v29 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v25 != &v27)
    {
      free(v25);
      return v12;
    }
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3, const char *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(***(*a1 + 1), a2, a3);
  if (Dialect)
  {
    v9 = Dialect;
    if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(Dialect))
    {
      v39 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v9);
      v46 = v7;
      v47 = &v39;
    }

    v39 = 0;
    v41 = 257;
    mlir::detail::Parser::emitError(v7, v40, &v46);
    if (v46)
    {
      LODWORD(v42) = 3;
      v43 = "unexpected 'resource' section for dialect '";
      v44 = 43;
      v20 = &v42;
      v21 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v42 && v48 + 24 * v49 > &v42)
        {
          v37 = &v42 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v21 = v48;
          v20 = (v48 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v20 = &v42;
          v21 = v48;
        }
      }

      v22 = &v21[24 * v49];
      v23 = *v20;
      *(v22 + 2) = v20[2];
      *v22 = v23;
      ++v49;
      if (v46)
      {
        v24 = *(v9 + 8);
        v25 = *(v9 + 16);
        v45 = 261;
        v42 = v24;
        v43 = v25;
        mlir::Diagnostic::operator<<(&v47, &v42);
        if (v46)
        {
          LODWORD(v42) = 3;
          v43 = "'";
          v44 = 1;
          v26 = &v42;
          v27 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v42 && v48 + 24 * v49 > &v42)
            {
              v38 = &v42 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v27 = v48;
              v26 = (v48 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v26 = &v42;
              v27 = v48;
            }
          }

          v28 = &v27[24 * v49];
          v29 = *v26;
          *(v28 + 2) = v26[2];
          *v28 = v29;
          ++v49;
        }
      }
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v55;
        v32 = __p;
        if (v55 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v55 = v30;
        operator delete(v32);
      }

      v15 = v52;
      if (!v52)
      {
        goto LABEL_46;
      }

      v33 = v53;
      v17 = v52;
      if (v53 == v52)
      {
LABEL_45:
        v53 = v15;
        operator delete(v17);
LABEL_46:
        if (v48 != v51)
        {
          free(v48);
        }

        return v10;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          operator delete[](v34);
        }
      }

      while (v33 != v15);
LABEL_44:
      v17 = v52;
      goto LABEL_45;
    }
  }

  else
  {
    v41 = 1283;
    v40[0] = "dialect '";
    v40[2] = a2;
    v40[3] = a3;
    v42 = v40;
    v44 = "' is unknown";
    v45 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v7 + 1) + 8, a4);
    mlir::emitError(EncodedSourceLocation, &v42, &v46);
    if (*(*(v7 + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v46);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v55;
        v14 = __p;
        if (v55 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v55 = v12;
        operator delete(v14);
      }

      v15 = v52;
      if (!v52)
      {
        goto LABEL_46;
      }

      v16 = v53;
      v17 = v52;
      if (v53 == v52)
      {
        goto LABEL_45;
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
      goto LABEL_44;
    }
  }

  return v10;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(const mlir::OpAsmDialectInterface ***a1)
{
  v2 = *a1;
  Loc = mlir::Token::getLoc(((*a1)[1] + 56));
  v17 = 0uLL;
  mlir::detail::Parser::parseResourceHandle(v2, *a1[1], &v17, &v14);
  if (v16 != 1)
  {
    return 0;
  }

  *v9 = "expected ':'";
  LOWORD(v11) = 259;
  if (!mlir::detail::Parser::parseToken(v2, 15, v9))
  {
    return 0;
  }

  v4 = *(v2 + 1);
  v14 = *(v4 + 56);
  v15 = *(v4 + 72);
  v5 = v15;
  *(v4 + 80) = v14;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken(v9, (*(v2 + 1) + 8));
  v6 = *(v2 + 1);
  *(v6 + 56) = *v9;
  *(v6 + 72) = *&v9[16];
  *v9 = &unk_1F5AF2148;
  *&v9[8] = v17;
  v10 = Loc;
  v11 = v14;
  v12 = v15;
  v13 = v2;
  v7 = (*(**a1[1] + 48))(*a1[1], v9);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return v7;
}

void anonymous namespace::ParsedResourceEntry::~ParsedResourceEntry(_anonymous_namespace_::ParsedResourceEntry *this)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

uint64_t anonymous namespace::ParsedResourceEntry::getKey(_anonymous_namespace_::ParsedResourceEntry *this)
{
  return *(this + 1);
}

{
  return *(this + 1);
}

void anonymous namespace::ParsedResourceEntry::emitError(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, mlir::InFlightDiagnostic *a2@<X8>)
{
  v3 = *(this + 7);
  v4 = *(this + 3);
  v7 = 257;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v3 + 8) + 8, v4);
  mlir::emitError(EncodedSourceLocation, v6, a2);
  if (*(*(v3 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a2);
  }
}

uint64_t anonymous namespace::ParsedResourceEntry::getKind(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v2 = *(this + 8);
  result = 1;
  if (v2 != 59 && v2 != 79)
  {
    if (*(this + 6) >= 3uLL)
    {
      v4 = bswap32(**(this + 5) | (*(*(this + 5) + 2) << 16));
      v5 = v4 >= 0x22307800;
      v6 = v4 > 0x22307800;
      v7 = !v5;
      return 2 * (v6 != v7);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

{
  return *(this + 6);
}

uint64_t anonymous namespace::ParsedResourceEntry::parseAsBool(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (v1 == 59)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 79)
  {
    v2 = 1;
LABEL_5:
    v3 = 1;
    return v2 | (v3 << 8);
  }

  v5 = *(this + 7);
  Loc = mlir::Token::getLoc((this + 32));
  v20 = 1283;
  v8 = *(this + 1);
  v9 = *(this + 2);
  v19[0] = "expected 'true' or 'false' value for key '";
  v19[2] = v8;
  v19[3] = v9;
  v21[0] = v19;
  v21[2] = "'";
  v22 = 770;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, v21, v23);
  if (*(*(v5 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(v23);
  }

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
            operator delete[](v17);
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

  v2 = 0;
  v3 = 0;
  return v2 | (v3 << 8);
}

void anonymous namespace::ParsedResourceEntry::parseAsString(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, std::string *a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(this + 8);
  v4 = (this + 32);
  if (v5 == 11)
  {
    mlir::Token::getStringValue(v4, &v24);
    *a2 = v24;
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v6 = *(this + 7);
    v7 = this;
    Loc = mlir::Token::getLoc(v4);
    v21 = 1283;
    v9 = *(v7 + 1);
    v10 = *(v7 + 2);
    v20[0] = "expected string value for key '";
    v20[2] = v9;
    v20[3] = v10;
    v22[0] = v20;
    v22[2] = "'";
    v23 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v6 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v22, &v24);
    if (*(*(v6 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v24);
    }

    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    if (v24.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v24);
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
              operator delete[](v18);
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
  }
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(mlir::Token *this@<X0>, void (*a2)(void **__return_ptr, uint64_t, size_t, unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = (this + 32);
  if (*(this + 8) != 11)
  {
    LOBYTE(v59) = 0;
    v62 = 0;
LABEL_11:
    v13 = *(this + 7);
    Loc = mlir::Token::getLoc(v6);
    v55 = 1283;
    v15 = *(this + 1);
    v16 = *(this + 2);
    v52[0] = "expected hex string blob for key '";
    v53 = v15;
    v54 = v16;
    v56[0] = v52;
    v57 = "'";
    v58 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v13 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v56, __dst);
    if (*(*(v13 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(__dst);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v73 == 1)
    {
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
        goto LABEL_69;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_68;
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
      goto LABEL_67;
    }

    goto LABEL_71;
  }

  mlir::Token::getHexStringValue(&v59, (this + 32));
  if ((v62 & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((v61 & 0x8000000000000000) == 0)
  {
    if (v61 > 3)
    {
      v9 = a3;
      v10 = v59;
      if ((v59 & (v59 - 1)) == 0)
      {
        goto LABEL_6;
      }

LABEL_49:
      v37 = *(this + 7);
      v38 = mlir::Token::getLoc(v6);
      v51 = 1283;
      v39 = *(this + 1);
      v40 = *(this + 2);
      v50[0] = "expected hex string blob for key '";
      v50[2] = v39;
      v50[3] = v40;
      v52[0] = v50;
      v53 = "' to encode alignment in first 4 bytes, but got non-power-of-2 value: ";
      v55 = 770;
      v56[0] = v52;
      v57 = v10;
      v58 = 2306;
      v41 = mlir::Lexer::getEncodedSourceLocation(*(v37 + 8) + 8, v38);
      mlir::emitError(v41, v56, __dst);
      if (*(*(v37 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(__dst);
      }

      *a4 = 0;
      *(a4 + 64) = 0;
      if (__dst[0])
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v71;
          v44 = __p;
          if (v71 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v71 = v42;
          operator delete(v44);
        }

        v21 = v68;
        if (!v68)
        {
          goto LABEL_69;
        }

        v45 = v69;
        v23 = v68;
        if (v69 == v68)
        {
LABEL_68:
          v69 = v21;
          operator delete(v23);
LABEL_69:
          if (v65 != v66)
          {
            free(v65);
          }

          goto LABEL_71;
        }

        do
        {
          v47 = *--v45;
          v46 = v47;
          *v45 = 0;
          if (v47)
          {
            operator delete[](v46);
          }
        }

        while (v45 != v21);
LABEL_67:
        v23 = v68;
        goto LABEL_68;
      }

      goto LABEL_71;
    }

LABEL_30:
    v26 = *(this + 7);
    v27 = mlir::Token::getLoc(v6);
    v55 = 1283;
    v28 = *(this + 1);
    v29 = *(this + 2);
    v52[0] = "expected hex string blob for key '";
    v53 = v28;
    v54 = v29;
    v56[0] = v52;
    v57 = "' to encode alignment in first 4 bytes";
    v58 = 770;
    v30 = mlir::Lexer::getEncodedSourceLocation(*(v26 + 8) + 8, v27);
    mlir::emitError(v30, v56, __dst);
    if (*(*(v26 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(__dst);
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v71;
        v33 = __p;
        if (v71 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v71 = v31;
        operator delete(v33);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_69;
      }

      v34 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_68;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          operator delete[](v35);
        }
      }

      while (v34 != v21);
      goto LABEL_67;
    }

LABEL_71:
    if (v62 != 1)
    {
      return;
    }

    goto LABEL_72;
  }

  if (v60 < 4)
  {
    goto LABEL_30;
  }

  v9 = a3;
  v10 = *v59;
  if ((v10 & (v10 - 1)) != 0)
  {
    goto LABEL_49;
  }

LABEL_6:
  v11 = v60;
  if (v61 >= 0)
  {
    v11 = v61;
  }

  v12 = v11 - 4;
  if (v11 > 4)
  {
    if (v61 >= 0)
    {
      v48 = &v59;
    }

    else
    {
      v48 = v59;
    }

    a2(__dst, v9, v12, v10);
    memcpy(__dst[0], v48 + 4, v12);
    *a4 = *__dst;
    v49 = v66[1];
    *(a4 + 16) = v64;
    *(a4 + 48) = v49;
    if (v49 >= 8)
    {
      if ((v49 & 2) != 0 && (v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v65);
        (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v65);
      }

      else
      {
        *(a4 + 24) = v65;
        *(a4 + 40) = v66[0];
      }
    }

    *(a4 + 56) = v67;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
  }

  *(a4 + 64) = 1;
  if (v62 == 1)
  {
LABEL_72:
    if (v61 < 0)
    {
      operator delete(v59);
    }
  }
}

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, llvm::hashing::detail *a2, uint64_t *a3, const char *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = **(*a1 + 1);
  v38 = a2;
  p_ParserFor = a3;
  v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v8 + 16), &v38);
  if (v9)
  {
    v11 = v9 == *(v8 + 16) + 24 * *(v8 + 32);
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v12, v38, p_ParserFor, v10);
      goto LABEL_36;
    }

    ParserFor = 0;
  }

  else
  {
    ParserFor = *(v9 + 16);
    if (ParserFor)
    {
      goto LABEL_36;
    }
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v7 + 1) + 8, a4);
  mlir::emitWarning(&v38, EncodedSourceLocation, v51);
  if (v38)
  {
    LODWORD(v34) = 3;
    v35 = "ignoring unknown external resources for '";
    v36 = 41;
    v14 = &v34;
    v15 = v40;
    if (v41 >= v42)
    {
      if (v40 <= &v34 && v40 + 24 * v41 > &v34)
      {
        v31 = &v34 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v15 = v40;
        v14 = (v40 + v31);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v14 = &v34;
        v15 = v40;
      }
    }

    v16 = &v15[24 * v41];
    v17 = *v14;
    *(v16 + 2) = v14[2];
    *v16 = v17;
    ++v41;
    if (v38)
    {
      v37 = 261;
      v34 = a2;
      v35 = a3;
      mlir::Diagnostic::operator<<(&p_ParserFor, &v34);
      if (v38)
      {
        LODWORD(v34) = 3;
        v35 = "'";
        v36 = 1;
        v18 = &v34;
        v19 = v40;
        if (v41 >= v42)
        {
          if (v40 <= &v34 && v40 + 24 * v41 > &v34)
          {
            v32 = &v34 - v40;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
            v19 = v40;
            v18 = (v40 + v32);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
            v18 = &v34;
            v19 = v40;
          }
        }

        v20 = &v19[24 * v41];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v41;
        if (v38)
        {
          mlir::InFlightDiagnostic::report(&v38);
        }
      }
    }
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v25 = v44;
    if (v44)
    {
      v26 = v45;
      v27 = v44;
      if (v45 != v44)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v44;
      }

      v45 = v25;
      operator delete(v27);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

LABEL_36:
  v38 = v7;
  p_ParserFor = &ParserFor;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v6 = v2 - 1;
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 24 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 24 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 24 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 24 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }
  }

  else if (v7 == -2)
  {
    v16 = 1;
    v17 = HashValue & v6;
    result = v3 + 24 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 24 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    v28 = 1;
    v29 = HashValue & v6;
    result = v3 + 24 * (HashValue & v6);
    v30 = *result;
    if (*result == -2)
    {
      goto LABEL_27;
    }

    while (v30 != -1)
    {
      if (!*(result + 8))
      {
        return result;
      }

      do
      {
LABEL_27:
        v31 = v28 + v29;
        ++v28;
        v29 = v31 & v6;
        result = v3 + 24 * (v31 & v6);
        v30 = *result;
      }

      while (*result == -2);
    }
  }

  if (v7 != -1)
  {
    return 0;
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v4 = *(v2 + 1);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
    goto LABEL_6;
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(v2 + 1);
LABEL_6:
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v8;
    mlir::Lexer::lexToken(&v28, (*(v2 + 1) + 8));
    v9 = *(v2 + 1);
    *(v9 + 56) = v28;
    *(v9 + 72) = v29;
    *&v28 = "expected ':'";
    LOWORD(v31) = 259;
    if (!mlir::detail::Parser::parseToken(v2, 15, &v28))
    {
      return 0;
    }

    v10 = *(v2 + 1);
    v25 = *(v10 + 56);
    v26 = *(v10 + 72);
    v11 = v26;
    *(v10 + 80) = v25;
    *(v10 + 96) = v11;
    mlir::Lexer::lexToken(&v28, (*(v2 + 1) + 8));
    v12 = *(v2 + 1);
    *(v12 + 56) = v28;
    *(v12 + 72) = v29;
    v13 = *a1[1];
    if (!v13)
    {
      return 1;
    }

    v32 = v26;
    v33 = v2;
    v31 = v25;
    *&v28 = &unk_1F5AF2148;
    *(&v28 + 1) = v7;
    v29 = v8;
    v30 = Loc;
    v14 = (*(*v13 + 16))(v13, &v28);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    return v14;
  }

  *&v25 = "expected identifier key for 'external_resources' entry";
  v27 = 259;
  mlir::detail::Parser::emitError(v2, &v25, &v28);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
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

    v16 = __p;
    if (__p)
    {
      v17 = v37;
      v18 = __p;
      if (v37 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v37 = v16;
      operator delete(v18);
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
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v34;
      }

      v35 = v19;
      operator delete(v21);
    }

    if (v30 != &v31 + 8)
    {
      free(v30);
    }
  }

  return v14;
}