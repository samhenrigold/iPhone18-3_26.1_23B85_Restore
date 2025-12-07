BOOL mlir::detail::Parser::parseFloatFromLiteral(uint64_t a1, llvm::detail::IEEEFloat *a2, mlir::Token *this, unsigned int a4, void *a5)
{
  if (*this != 10)
  {
    if (*this == 9)
    {
      v10 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue(this, a2, this, a4));
      if (v13)
      {
        v14 = v10;
        if (a4)
        {
          v14 = -v10;
        }

        v48[0] = v14;
        sub_10006A230(a2, v48, v11, v12);
        LOBYTE(v48[0]) = 0;
        v15 = 1;
        llvm::APFloat::convert(a2, a5, 1, v48);
        return v15;
      }

      Loc = mlir::Token::getLoc(this);
      v44 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, v43, v48);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v48);
      }

      if (*&v48[0])
      {
        v45 = 3;
        v46 = "floating point value too large";
        v47 = 30;
        v32 = &v45;
        v33 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v45 && v49 + 24 * v50 > &v45)
          {
            v42 = &v45 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v33 = v49;
            v32 = (v49 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v32 = &v45;
            v33 = v49;
          }
        }

        v34 = &v33[24 * v50];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        ++v50;
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (*&v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v58 != 1)
      {
        return v15;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v56;
        v38 = __p;
        if (v56 != __p)
        {
          do
          {
            v37 = sub_100052FFC(v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v56 = v36;
        operator delete(v38);
      }

      v26 = v53;
      if (!v53)
      {
LABEL_54:
        if (v49 != v52)
        {
          free(v49);
        }

        return v15;
      }

      v39 = v54;
      v28 = v53;
      if (v54 == v53)
      {
LABEL_53:
        v54 = v26;
        operator delete(v28);
        goto LABEL_54;
      }

      do
      {
        v40 = *--v39;
        *v39 = 0;
        if (v40)
        {
          operator delete[]();
        }
      }

      while (v39 != v26);
    }

    else
    {
      v17 = mlir::Token::getLoc(this);
      v44 = 257;
      v18 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v17);
      mlir::emitError(v18, v43, v48);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v48);
      }

      if (*&v48[0])
      {
        v45 = 3;
        v46 = "expected floating point literal";
        v47 = 31;
        v19 = &v45;
        v20 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v45 && v49 + 24 * v50 > &v45)
          {
            v41 = &v45 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v20 = v49;
            v19 = (v49 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v19 = &v45;
            v20 = v49;
          }
        }

        v21 = &v20[24 * v50];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v50;
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (*&v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
      }

      if (v58 != 1)
      {
        return v15;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v56;
        v25 = __p;
        if (v56 != __p)
        {
          do
          {
            v24 = sub_100052FFC(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v56 = v23;
        operator delete(v25);
      }

      v26 = v53;
      if (!v53)
      {
        goto LABEL_54;
      }

      v27 = v54;
      v28 = v53;
      if (v54 == v53)
      {
        goto LABEL_53;
      }

      do
      {
        v29 = *--v27;
        *v27 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v27 != v26);
    }

    v28 = v53;
    goto LABEL_53;
  }

  return mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, a2, this, a4, a5);
}

llvm::detail::IEEEFloat *sub_10006A230(llvm::detail::IEEEFloat *a1, double *a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 24) == 1)
  {
    v6 = *a1;
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v6)
    {
      sub_100029F40(a1);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(a1);
    }

    *(a1 + 24) = 0;
  }

  v7 = llvm::detail::IEEEFloat::IEEEFloat(v10, *a2, a2, a3, a4);
  v8 = llvm::APFloatBase::IEEEdouble(v7);
  llvm::APFloat::Storage::Storage(a1, v10, v8);
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  *(a1 + 24) = 1;
  return a1;
}

BOOL mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, llvm::detail::IEEEFloat *a2, mlir::Token *this, int a4, uint64_t a5)
{
  v6 = *(this + 2);
  if (v6 < 2 || (v7 = *(this + 1), *(v7 + 1) != 120))
  {
    Loc = mlir::Token::getLoc(this);
    v44[0] = "unexpected decimal integer literal for a floating point value";
    v45 = 259;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
    mlir::emitError(EncodedSourceLocation, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    mlir::Diagnostic::attachNote(&v49, 0, 0);
  }

  if (a4)
  {
    v8 = mlir::Token::getLoc(this);
    v44[0] = "hexadecimal float literal should not have a leading minus";
    v45 = 259;
    v9 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v8);
    mlir::emitError(v9, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v55;
        v13 = __p;
        if (v55 != __p)
        {
          do
          {
            v12 = sub_100052FFC(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v55 = v11;
        operator delete(v13);
      }

      v14 = v52;
      if (v52)
      {
        v15 = v53;
        v16 = v52;
        if (v53 != v52)
        {
          do
          {
            v17 = *--v15;
            *v15 = 0;
            if (v17)
            {
              operator delete[]();
            }
          }

          while (v15 != v14);
          v16 = v52;
        }

        v53 = v14;
        operator delete(v16);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    return v10;
  }

  LODWORD(v47) = 1;
  v46 = 0;
  v48 = v7;
  v49 = v6;
  llvm::StringRef::getAsInteger(&v48, 0, &v46);
  v24 = a5;
  v25 = llvm::APFloatBase::semanticsSizeInBits(a5);
  v26 = v25;
  v27 = v47;
  if (v47 <= 0x40)
  {
    if (64 - __clz(v46) <= v25)
    {
      v28 = llvm::APInt::APInt(&v48, v25, (v47 + 63) >> 6, &v46);
      if ((*(a2 + 24) & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_56:
      v42 = *a2;
      v43 = llvm::APFloatBase::PPCDoubleDouble(v28);
      if (v43 == v42)
      {
        sub_100029F40(a2);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(a2);
      }

      *(a2 + 24) = 0;
      v31 = v24;
      v32 = a2;
      if (v43 != v24)
      {
        goto LABEL_34;
      }

LABEL_64:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v32, v31, &v48);
    }

LABEL_37:
    v33 = mlir::Token::getLoc(this);
    v44[0] = "hexadecimal float constant out of range for type";
    v45 = 259;
    v34 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v33);
    mlir::emitError(v34, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
    if (v48)
    {
      mlir::InFlightDiagnostic::report(&v48);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v55;
        v37 = __p;
        if (v55 != __p)
        {
          do
          {
            v36 = sub_100052FFC(v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v55 = v35;
        operator delete(v37);
      }

      v38 = v52;
      if (v52)
      {
        v39 = v53;
        v40 = v52;
        if (v53 != v52)
        {
          do
          {
            v41 = *--v39;
            *v39 = 0;
            if (v41)
            {
              operator delete[]();
            }
          }

          while (v39 != v38);
          v40 = v52;
        }

        v53 = v38;
        operator delete(v40);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    goto LABEL_68;
  }

  if (v27 - llvm::APInt::countLeadingZerosSlowCase(&v46) > v25)
  {
    goto LABEL_37;
  }

  v28 = llvm::APInt::APInt(&v48, v26, (v27 + 63) >> 6, v46);
  if (*(a2 + 24))
  {
    goto LABEL_56;
  }

LABEL_33:
  v30 = llvm::APFloatBase::PPCDoubleDouble(v28);
  v31 = v24;
  v32 = a2;
  if (v30 == v24)
  {
    goto LABEL_64;
  }

LABEL_34:
  llvm::detail::IEEEFloat::IEEEFloat(v32, v31, &v48, v29);
  *(a2 + 24) = 1;
  if (v49 >= 0x41 && v48)
  {
    operator delete[]();
  }

  v10 = 1;
LABEL_68:
  if (v47 >= 0x41 && v46)
  {
    operator delete[]();
  }

  return v10;
}

BOOL mlir::detail::Parser::parseOptionalKeyword(mlir::detail::Parser *this, llvm::StringRef *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v7 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v3 = *(this + 1);
    a2 = v7;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v9, (*(this + 1) + 8));
    v6 = *(this + 1);
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  v6 = v5 == 3 || v5 == 12;
  if (v6 || (isKeyword = mlir::Token::isKeyword((v4 + 56)), v4 = *(a1 + 8), isKeyword))
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v7;
    mlir::Lexer::lexToken(&__dst, (*(a1 + 8) + 8));
    *(*(a1 + 8) + 56) = __dst;
    if (v8)
    {
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memmove(&__dst, v8, v7);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_24:
        *a2 = __dst;
        return 1;
      }
    }

    operator delete(*a2);
    goto LABEL_24;
  }

  if (*(v4 + 56) == 11)
  {
    if (a2)
    {
      mlir::Token::getStringValue((v4 + 56), &__dst);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __dst;
      v4 = *(a1 + 8);
    }

    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(&__dst, (*(a1 + 8) + 8));
    *(*(a1 + 8) + 56) = __dst;
    return 1;
  }

  return 0;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *a1@<X0>, void *a2@<X1>, int8x16_t *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  if (mlir::detail::Parser::parseOptionalKeywordOrString(a1, a3))
  {
    v8 = sub_10006B258(*(*(a1 + 1) + 104) + 48, &v52);
    v9 = a3[1].i8[7];
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = a3->i64[0];
    }

    if (v9 >= 0)
    {
      v11 = a3[1].i8[7];
    }

    else
    {
      v11 = a3->u64[1];
    }

    v12 = llvm::StringMapImpl::hash(v10, v11);
    v13 = sub_10007F5CC(v8, v10, v11, v12);
    v14 = *v13;
    if ((*(*v13 + 31) & 0x8000000000000000) != 0)
    {
      if (!*(v14 + 16))
      {
        goto LABEL_28;
      }
    }

    else if (!*(*v13 + 31))
    {
LABEL_28:
      (*(*v52 + 32))(&v49);
      if (v51)
      {
        (*(*v52 + 40))(&v57);
        if (*(v14 + 31) < 0)
        {
          operator delete(*(v14 + 8));
        }

        v22 = v57;
        *(v14 + 24) = v58;
        *(v14 + 8) = v22;
        *(v14 + 32) = v49;
        *(v14 + 48) = v50;
        goto LABEL_32;
      }

      v48[16] = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, v48, &v57);
      if (*(*(a1 + 1) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v57);
      }

      if (!v57)
      {
        goto LABEL_45;
      }

      LODWORD(v53) = 3;
      v54 = "unknown 'resource' key '";
      v55 = 24;
      v24 = &v53;
      v25 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v53 && v59 + 24 * v60 > &v53)
        {
          v45 = &v53 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v25 = v59;
          v24 = (v59 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v24 = &v53;
          v25 = v59;
        }
      }

      v26 = &v25[24 * v60];
      v27 = *v24;
      *(v26 + 2) = v24[2];
      *v26 = v27;
      ++v60;
      if (!v57)
      {
        goto LABEL_45;
      }

      v56 = 260;
      v53 = a3;
      mlir::Diagnostic::operator<<(&v57 + 8, &v53);
      if (!v57)
      {
        goto LABEL_45;
      }

      LODWORD(v53) = 3;
      v54 = "' for dialect '";
      v55 = 15;
      v28 = &v53;
      v29 = v59;
      if (v60 >= v61)
      {
        if (v59 <= &v53 && v59 + 24 * v60 > &v53)
        {
          v46 = &v53 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v29 = v59;
          v28 = (v59 + v46);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
          v28 = &v53;
          v29 = v59;
        }
      }

      v30 = &v29[24 * v60];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v60;
      if (v57 && (v32 = v52[1], v34 = *(v32 + 8), v33 = *(v32 + 16), v56 = 261, v53 = v34, v54 = v33, mlir::Diagnostic::operator<<(&v57 + 8, &v53), v57))
      {
        LODWORD(v53) = 3;
        v54 = "'";
        v55 = 1;
        v35 = &v53;
        v36 = v59;
        if (v60 >= v61)
        {
          if (v59 <= &v53 && v59 + 24 * v60 > &v53)
          {
            v47 = &v53 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v36 = v59;
            v35 = (v59 + v47);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v62, v60 + 1, 24);
            v35 = &v53;
            v36 = v59;
          }
        }

        v37 = &v36[24 * v60];
        v38 = *v35;
        *(v37 + 2) = v35[2];
        *v37 = v38;
        ++v60;
        v39 = v57;
        *a4 = 0;
        *(a4 + 24) = 0;
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }

      else
      {
LABEL_45:
        *a4 = 0;
        *(a4 + 24) = 0;
      }

      if (v68)
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
              v41 = sub_100052FFC(v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v66 = v40;
          operator delete(v42);
        }

        v18 = v63;
        if (!v63)
        {
          goto LABEL_62;
        }

        v43 = v64;
        v20 = v63;
        if (v64 == v63)
        {
LABEL_61:
          v64 = v18;
          operator delete(v20);
LABEL_62:
          if (v59 != v62)
          {
            free(v59);
          }

          return;
        }

        do
        {
          v44 = *--v43;
          *v43 = 0;
          if (v44)
          {
            operator delete[]();
          }
        }

        while (v43 != v18);
LABEL_60:
        v20 = v63;
        goto LABEL_61;
      }

      return;
    }

LABEL_32:
    std::string::operator=(a3, (v14 + 8));
    *a4 = *(v14 + 32);
    *(a4 + 16) = *(v14 + 48);
    *(a4 + 24) = 1;
    return;
  }

  v53 = "expected identifier key for 'resource' entry";
  v56 = 259;
  mlir::detail::Parser::emitError(&v57, a1, &v53);
  *a4 = 0;
  *(a4 + 24) = 0;
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

    v15 = __p;
    if (__p)
    {
      v16 = v66;
      v17 = __p;
      if (v66 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v66 = v15;
      operator delete(v17);
    }

    v18 = v63;
    if (!v63)
    {
      goto LABEL_62;
    }

    v19 = v64;
    v20 = v63;
    if (v64 == v63)
    {
      goto LABEL_61;
    }

    do
    {
      v21 = *--v19;
      *v19 = 0;
      if (v21)
      {
        operator delete[]();
      }
    }

    while (v19 != v18);
    goto LABEL_60;
  }
}

void *sub_10006B258(uint64_t a1, void *a2)
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
    sub_10007F3B0(a1, v2);
    sub_10007F30C(v13, v12, &v14);
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
  if (sub_10006575C(a3))
  {
    v6 = sub_10006575C(a3);
    __p = 0uLL;
    v34 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &__p, a1);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p.i64[0]);
    }
  }

  else
  {
    v28 = 257;
    mlir::detail::Parser::emitError(&__p, this, v27);
    if (!__p.i64[0])
    {
      goto LABEL_11;
    }

    LODWORD(v29) = 3;
    v30 = "dialect '";
    v31 = 9;
    v7 = &v29;
    v8 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v25 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v8 = v35;
        v7 = (v35 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v7 = &v29;
        v8 = v35;
      }
    }

    v9 = &v8[24 * v36];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v36;
    if (__p.i64[0] && (v11 = *(a3 + 1), v12 = *(a3 + 2), v32 = 261, v29 = v11, v30 = v12, mlir::Diagnostic::operator<<(&__p.i64[1], &v29), __p.i64[0]))
    {
      LODWORD(v29) = 3;
      v30 = "' does not expect resource handles";
      v31 = 34;
      v13 = &v29;
      v14 = v35;
      if (v36 >= v37)
      {
        if (v35 <= &v29 && v35 + 24 * v36 > &v29)
        {
          v26 = &v29 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
          v14 = v35;
          v13 = (v35 + v26);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
          v13 = &v29;
          v14 = v35;
        }
      }

      v15 = &v14[24 * v36];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v36;
      v17 = __p.i64[0];
      *a1 = 0;
      *(a1 + 24) = 0;
      if (v17)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a1 = 0;
      *(a1 + 24) = 0;
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v18 = v41;
      if (v41)
      {
        v19 = v42;
        v20 = v41;
        if (v42 != v41)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = v41;
        }

        v42 = v18;
        operator delete(v20);
      }

      v21 = v39;
      if (v39)
      {
        v22 = v40;
        v23 = v39;
        if (v40 != v39)
        {
          do
          {
            v24 = *--v22;
            *v22 = 0;
            if (v24)
            {
              operator delete[]();
            }
          }

          while (v22 != v21);
          v23 = v39;
        }

        v40 = v21;
        operator delete(v23);
      }

      if (v35 != v38)
      {
        free(v35);
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
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColLoc::get(v9, v10, v11, 0, 0);
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = 0x1000000000;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = 0x1000000000;
  v13[6] = 0;
  v13[7] = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a3;
  mlir::Lexer::Lexer(v19, a1, *a3, a5);
  mlir::Lexer::lexToken(v20, v19);
  v21 = 1;
  v22 = "";
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = v13;
  v27 = 0;
  v28 = v30;
  v29 = 0;
  v30[0] = a4;
  v30[1] = a5;
  v31[0] = "builtin";
  v31[1] = 7;
  v30[2] = v31;
  v30[3] = 0x300000001;
  LOBYTE(v32) = 0;
  LOBYTE(v33) = 0;
  mlir::ModuleOp::create(v12, &v32);
}

uint64_t sub_10006CBA0(mlir::MLIRContext ****a1)
{
  Loc = mlir::Token::getLoc((a1[1] + 7));
  v3 = v243;
  v241 = v243;
  v242 = &_mh_execute_header;
  v216 = 0;
  v4 = a1[1];
  if (*(v4 + 14) == 6)
  {
    v265 = a1;
    v266 = &v241;
    v267 = &v216;
    if (!sub_100070ADC(&v265))
    {
      goto LABEL_277;
    }

    while (1)
    {
      v5 = a1[1];
      if (*(v5 + 14) != 16)
      {
        break;
      }

      *(v5 + 5) = *(v5 + 7);
      v5[12] = v5[9];
      mlir::Lexer::lexToken(&v244, (a1[1] + 1));
      *(a1[1] + 7) = v244;
      if (!sub_100070ADC(&v265))
      {
        goto LABEL_277;
      }
    }

    v244.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v246) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 18, &v244))
    {
      goto LABEL_277;
    }

    v4 = a1[1];
  }

  v214 = *(v4 + 7);
  v215 = v4[9];
  if (v214 != 3)
  {
    if (!mlir::Token::isKeyword(&v214))
    {
      if (v214 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v214, 11))
        {
          if (v214 == 2)
          {
            v38 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(a1, Loc);
          }

          else
          {
            v265 = "expected operation name in quotes";
            LOWORD(v269) = 259;
            mlir::detail::Parser::emitWrongTokenError(&v244, a1, &v265);
            v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v244);
            sub_100059A74(&v244);
          }

          goto LABEL_278;
        }

        v34 = &v244;
        mlir::Token::getStringValue(&v214, &v244);
        size = SHIBYTE(v244.__r_.__value_.__r.__words[2]);
        if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v244.__r_.__value_.__r.__words[0];
        }

        if ((v244.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v244.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v34->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v36 = size - 1;
            if (size != 1)
            {
              v37 = memchr(v34, 46, size - 1);
              if (!v37 || v37 - v34 == -1)
              {
                (*(*a1[1][20] + 3))(a1[1][20], v34, v36);
              }
            }
          }
        }

        else
        {
          (*(*a1[1][20] + 2))(a1[1][20], "", 0);
        }

        if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v244.__r_.__value_.__l.__data_);
        }

LABEL_277:
        v38 = 0;
        goto LABEL_278;
      }

      v29 = sub_10006FD50(a1);
      goto LABEL_269;
    }

    v4 = a1[1];
  }

  v6 = v241;
  v7 = v242;
  v8 = mlir::Token::getLoc((v4 + 7));
  v9 = a1[1];
  v11 = v9[8];
  v10 = v9[9];
  v12 = sub_100070FB4(a1);
  v230 = v12;
  v231 = v13;
  if ((v13 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_269;
  }

  v244.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __s2 = mlir::StringAttr::getValue(&v244);
  v15 = v14;
  v264 = 0;
  v16 = v230;
  if (*(v230 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v244.__r_.__value_.__r.__words[0] = *(v230 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v244);
    if (!ReferencedDialect)
    {
      LOWORD(v221) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), v8);
      mlir::emitError(EncodedSourceLocation, &v217, &v265);
      if (*(a1[1] + 14) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v265);
      }

      if (v265)
      {
        LODWORD(v244.__r_.__value_.__l.__data_) = 3;
        v244.__r_.__value_.__r.__words[2] = 9;
        v40 = &v244;
        v41 = v268;
        if (v269 >= v270)
        {
          if (v268 <= &v244 && v268 + 24 * v269 > &v244)
          {
            v199 = &v244 - v268;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v41 = v268;
            v40 = (v268 + v199);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v40 = &v244;
            v41 = v268;
          }
        }

        v42 = &v41[24 * v269];
        v43 = *&v40->__r_.__value_.__l.__data_;
        *(v42 + 2) = *(&v40->__r_.__value_.__l + 2);
        *v42 = v43;
        ++v269;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v230);
      if (v265)
      {
        LOWORD(v246) = 261;
        v244.__r_.__value_.__r.__words[0] = DialectNamespace;
        v244.__r_.__value_.__l.__size_ = v45;
        mlir::Diagnostic::operator<<(&v266, &v244.__r_.__value_.__l.__data_);
        if (v265)
        {
          LODWORD(v244.__r_.__value_.__l.__data_) = 3;
          v244.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v244.__r_.__value_.__r.__words[2] = 27;
          v46 = &v244;
          v47 = v268;
          if (v269 >= v270)
          {
            if (v268 <= &v244 && v268 + 24 * v269 > &v244)
            {
              v204 = &v244 - v268;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v47 = v268;
              v46 = (v268 + v204);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v46 = &v244;
              v47 = v268;
            }
          }

          v48 = &v47[24 * v269];
          v49 = *&v46->__r_.__value_.__l.__data_;
          *(v48 + 2) = *(&v46->__r_.__value_.__l + 2);
          *v48 = v49;
          ++v269;
          if (v265)
          {
            LOWORD(v246) = 261;
            v244.__r_.__value_.__r.__words[0] = v11;
            v244.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v266, &v244.__r_.__value_.__l.__data_);
            if (v265)
            {
              LODWORD(v244.__r_.__value_.__l.__data_) = 3;
              v244.__r_.__value_.__l.__size_ = "' ";
              v244.__r_.__value_.__r.__words[2] = 2;
              v50 = &v244;
              v51 = v268;
              if (v269 >= v270)
              {
                if (v268 <= &v244 && v268 + 24 * v269 > &v244)
                {
                  v209 = &v244 - v268;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
                  v51 = v268;
                  v50 = (v268 + v209);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
                  v50 = &v244;
                  v51 = v268;
                }
              }

              v52 = &v51[24 * v269];
              v53 = *&v50->__r_.__value_.__l.__data_;
              *(v52 + 2) = *(&v50->__r_.__value_.__l + 2);
              *v52 = v53;
              ++v269;
            }
          }
        }
      }

      sub_100062C04(&v244, &v265);
      if (v265)
      {
        mlir::InFlightDiagnostic::report(&v265);
      }

      if (v277 == 1)
      {
        if (v276 != &v277)
        {
          free(v276);
        }

        v54 = __p;
        if (__p)
        {
          v55 = v275;
          v56 = __p;
          if (v275 != __p)
          {
            do
            {
              v55 = sub_100052FFC(v55 - 1);
            }

            while (v55 != v54);
            v56 = __p;
          }

          v275 = v54;
          operator delete(v56);
        }

        v57 = v272;
        if (v272)
        {
          v58 = v273;
          v59 = v272;
          if (v273 != v272)
          {
            do
            {
              v60 = *--v58;
              *v58 = 0;
              if (v60)
              {
                operator delete[]();
              }
            }

            while (v58 != v57);
            v59 = v272;
          }

          v273 = v57;
          operator delete(v59);
        }

        if (v268 != v271)
        {
          free(v268);
        }
      }

      if ((v10 != v15 || v10 && memcmp(v11, __s2, v10)) && v244.__r_.__value_.__r.__words[0])
      {
        LODWORD(v265) = 3;
        v266 = " (tried '";
        v267 = 9;
        v77 = &v265;
        v78 = v245;
        if (v246 >= v247)
        {
          if (v245 <= &v265 && v245 + 24 * v246 > &v265)
          {
            v203 = &v265 - v245;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
            v78 = v245;
            v77 = (v245 + v203);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
            v77 = &v265;
            v78 = v245;
          }
        }

        v79 = &v78[24 * v246];
        v80 = *v77;
        *(v79 + 2) = v77[2];
        *v79 = v80;
        ++v246;
        if (v244.__r_.__value_.__r.__words[0])
        {
          LOWORD(v269) = 261;
          v265 = __s2;
          v266 = v15;
          mlir::Diagnostic::operator<<(&v244.__r_.__value_.__l.__size_, &v265);
          if (v244.__r_.__value_.__r.__words[0])
          {
            LODWORD(v265) = 3;
            v266 = "' as well)";
            v267 = 10;
            v81 = &v265;
            v82 = v245;
            if (v246 >= v247)
            {
              if (v245 <= &v265 && v245 + 24 * v246 > &v265)
              {
                v208 = &v265 - v245;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
                v82 = v245;
                v81 = (v245 + v208);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
                v81 = &v265;
                v82 = v245;
              }
            }

            v83 = &v82[24 * v246];
            v84 = *v81;
            *(v83 + 2) = v81[2];
            *v83 = v84;
            ++v246;
          }
        }
      }

      mlir::Diagnostic::attachNote(&v244.__r_.__value_.__l.__size_, 0, 0);
    }

    (*(*ReferencedDialect + 64))(&v244);
    if (v244.__r_.__value_.__s.__data_[16])
    {
      v31 = &llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v245 = &llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v32 = v264;
      if (v264 >= 8)
      {
        if ((v264 & 4) != 0)
        {
          if ((v264 & 2) != 0)
          {
            v33 = v262;
          }

          else
          {
            v33 = v262[0];
          }

          (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(v33);
        }

        if ((v32 & 2) == 0)
        {
          llvm::deallocate_buffer(v262[0], v262[1], v263);
        }

        v31 = v245;
      }

      v264 = v31;
      if (v31 >= 8)
      {
        if ((v31 & 2) != 0 && (v31 & 4) != 0)
        {
          (*((v31 & 0xFFFFFFFFFFFFFFF8) + 8))(v262, &v244);
          (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(&v244);
        }

        else
        {
          *v262 = *&v244.__r_.__value_.__l.__data_;
          v263 = v244.__r_.__value_.__r.__words[2];
        }
      }

      v101 = 0;
      v19 = 0;
      goto LABEL_206;
    }

    LOWORD(v221) = 257;
    v61 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), v8);
    mlir::emitError(v61, &v217, &v265);
    if (*(a1[1] + 14) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v265);
    }

    if (v265)
    {
      LODWORD(v244.__r_.__value_.__l.__data_) = 3;
      v244.__r_.__value_.__l.__size_ = "custom op '";
      v244.__r_.__value_.__r.__words[2] = 11;
      v62 = &v244;
      v63 = v268;
      if (v269 >= v270)
      {
        if (v268 <= &v244 && v268 + 24 * v269 > &v244)
        {
          v200 = &v244 - v268;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
          v63 = v268;
          v62 = (v268 + v200);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
          v62 = &v244;
          v63 = v268;
        }
      }

      v64 = &v63[24 * v269];
      v65 = *&v62->__r_.__value_.__l.__data_;
      *(v64 + 2) = *(&v62->__r_.__value_.__l + 2);
      *v64 = v65;
      ++v269;
      if (v265)
      {
        LOWORD(v246) = 261;
        v244.__r_.__value_.__r.__words[0] = v11;
        v244.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v266, &v244.__r_.__value_.__l.__data_);
        if (v265)
        {
          LODWORD(v244.__r_.__value_.__l.__data_) = 3;
          v244.__r_.__value_.__l.__size_ = "' is unknown";
          v244.__r_.__value_.__r.__words[2] = 12;
          v66 = &v244;
          v67 = v268;
          if (v269 >= v270)
          {
            if (v268 <= &v244 && v268 + 24 * v269 > &v244)
            {
              v207 = &v244 - v268;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v67 = v268;
              v66 = (v268 + v207);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
              v66 = &v244;
              v67 = v268;
            }
          }

          v68 = &v67[24 * v269];
          v69 = *&v66->__r_.__value_.__l.__data_;
          *(v68 + 2) = *(&v66->__r_.__value_.__l + 2);
          *v68 = v69;
          ++v269;
        }
      }
    }

    sub_100062C04(&v244, &v265);
    if (v265)
    {
      mlir::InFlightDiagnostic::report(&v265);
    }

    if (v277 == 1)
    {
      if (v276 != &v277)
      {
        free(v276);
      }

      v70 = __p;
      if (__p)
      {
        v71 = v275;
        v72 = __p;
        if (v275 != __p)
        {
          do
          {
            v71 = sub_100052FFC(v71 - 1);
          }

          while (v71 != v70);
          v72 = __p;
        }

        v275 = v70;
        operator delete(v72);
      }

      v73 = v272;
      if (v272)
      {
        v74 = v273;
        v75 = v272;
        if (v273 != v272)
        {
          do
          {
            v76 = *--v74;
            *v74 = 0;
            if (v76)
            {
              operator delete[]();
            }
          }

          while (v74 != v73);
          v75 = v272;
        }

        v273 = v73;
        operator delete(v75);
      }

      if (v268 != v271)
      {
        free(v268);
      }
    }

    if (v10 != v15 || v10 && memcmp(v11, __s2, v10))
    {
      if (!v244.__r_.__value_.__r.__words[0])
      {
        goto LABEL_153;
      }

      LODWORD(v265) = 3;
      v266 = " (tried '";
      v267 = 9;
      v85 = &v265;
      v86 = v245;
      if (v246 >= v247)
      {
        if (v245 <= &v265 && v245 + 24 * v246 > &v265)
        {
          v205 = &v265 - v245;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v86 = v245;
          v85 = (v245 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v85 = &v265;
          v86 = v245;
        }
      }

      v87 = &v86[24 * v246];
      v88 = *v85;
      *(v87 + 2) = v85[2];
      *v87 = v88;
      ++v246;
      if (!v244.__r_.__value_.__r.__words[0] || (LOWORD(v269) = 261, v265 = __s2, v266 = v15, mlir::Diagnostic::operator<<(&v244.__r_.__value_.__l.__size_, &v265), !v244.__r_.__value_.__r.__words[0]))
      {
LABEL_153:
        if (v255[0] == 1)
        {
          if (v254 != v255)
          {
            free(v254);
          }

          v93 = v252;
          if (v252)
          {
            v94 = v253;
            v95 = v252;
            if (v253 != v252)
            {
              do
              {
                v94 = sub_100052FFC(v94 - 1);
              }

              while (v94 != v93);
              v95 = v252;
            }

            v253 = v93;
            operator delete(v95);
          }

          v96 = v250;
          if (v250)
          {
            v97 = v251;
            v98 = v250;
            if (v251 != v250)
            {
              do
              {
                v99 = *--v97;
                *v97 = 0;
                if (v99)
                {
                  operator delete[]();
                }
              }

              while (v97 != v96);
              v98 = v250;
            }

            v251 = v96;
            operator delete(v98);
          }

          if (v245 != v248)
          {
            free(v245);
          }
        }

        v29 = 0;
        v100 = v264;
        if (v264 >= 8)
        {
          goto LABEL_262;
        }

        goto LABEL_269;
      }

      LODWORD(v265) = 3;
      v266 = "' as well)";
      v267 = 10;
      v89 = &v265;
      v90 = v245;
      if (v246 >= v247)
      {
        if (v245 <= &v265 && v245 + 24 * v246 > &v265)
        {
          v210 = &v265 - v245;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v90 = v245;
          v89 = (v245 + v210);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v89 = &v265;
          v90 = v245;
        }
      }

      v91 = &v90[24 * v246];
      v92 = *v89;
      *(v91 + 2) = v89[2];
      *v91 = v92;
      ++v246;
    }

    if (v244.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v244);
    }

    goto LABEL_153;
  }

  (*(*v230 + 40))(&v244, v230);
  v17 = v264;
  if (v264 >= 8)
  {
    if ((v264 & 4) != 0)
    {
      if ((v264 & 2) != 0)
      {
        v18 = v262;
      }

      else
      {
        v18 = v262[0];
      }

      (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
    }

    if ((v17 & 2) == 0)
    {
      llvm::deallocate_buffer(v262[0], v262[1], v263);
    }
  }

  v264 = v245;
  if (v245 >= 8)
  {
    if ((v245 & 2) != 0 && (v245 & 4) != 0)
    {
      (*((v245 & 0xFFFFFFFFFFFFFFF8) + 8))(v262, &v244);
      (*((v264 & 0xFFFFFFFFFFFFFFF8) + 16))(&v244);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v262 = *&v244.__r_.__value_.__l.__data_;
    v263 = v244.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
  sub_10027926C();
LABEL_26:
  v19 = (*(*v16 + 32))(v16, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    sub_1002792AC();
    v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_205:
    v101 = 0;
    goto LABEL_206;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if (!v22)
  {
    goto LABEL_205;
  }

LABEL_28:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = (v26 + 2);
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22])
  {
    goto LABEL_205;
  }

  if (*v23 != v20)
  {
    goto LABEL_205;
  }

  v125 = v23[1];
  if (!v125)
  {
    goto LABEL_205;
  }

  v126 = v125[3]();
  if (v101)
  {
    v102 = (v125[3])(v126);
    v103 = a1[1];
    v104 = *(v103 + 44);
    if (v104 < *(v103 + 45))
    {
      goto LABEL_207;
    }

    goto LABEL_237;
  }

LABEL_206:
  v102 = "";
  v103 = a1[1];
  v104 = *(v103 + 44);
  if (v104 < *(v103 + 45))
  {
    goto LABEL_207;
  }

LABEL_237:
  v211 = v102;
  v127 = v101;
  llvm::SmallVectorBase<unsigned int>::grow_pod((v103 + 21), v103 + 23, v104 + 1, 16);
  v102 = v211;
  v101 = v127;
  v3 = v243;
  LODWORD(v104) = *(v103 + 44);
LABEL_207:
  v105 = &v103[21][2 * v104];
  *v105 = v102;
  v105[1] = v101;
  ++*(v103 + 44);
  v244.__r_.__value_.__r.__words[0] = *(v230 + 8);
  Value = mlir::StringAttr::getValue(&v244);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v259, "MLIR Parser: custom op parser '%s'", Value);
  v229 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), v8);
  v107.n128_f64[0] = mlir::OperationState::OperationState(&v244, v229, v230);
  v108 = a1[1][19];
  if (v108)
  {
    mlir::AsmParserState::startOperationDefinition(v108, &v244.__r_.__value_.__r.__words[1]);
  }

  v218 = v8;
  v219 = a1;
  v220 = 0;
  v217 = &off_1002B53A0;
  v221 = v6;
  v222 = v7;
  v223 = sub_100071678;
  v224 = v262;
  v225 = v19;
  v226 = __s2;
  v227 = v15;
  v228 = a1;
  if ((v264 & 2) != 0)
  {
    v109 = v262;
  }

  else
  {
    v109 = v262[0];
  }

  if (((*(v264 & 0xFFFFFFFFFFFFFFF8))(v109, &v217, &v244, v107) & 1) == 0)
  {
    goto LABEL_244;
  }

  mlir::NamedAttrList::findDuplicate(v235, &v249);
  if (v236)
  {
    v110 = (*(v217 + 2))(&v217);
    v233[0] = "attribute '";
    v234 = 259;
    (*(v217 + 3))(&v265, &v217, v110, v233);
    Name = mlir::NamedAttribute::getName(v235);
    v111 = mlir::StringAttr::getValue(&Name);
    if (v265)
    {
      v240 = 261;
      v237 = v111;
      v238 = v112;
      mlir::Diagnostic::operator<<(&v266, &v237);
      if (v265)
      {
        LODWORD(v237) = 3;
        v238 = "' occurs more than once in the attribute list";
        v239 = 45;
        v113 = &v237;
        v114 = v268;
        if (v269 >= v270)
        {
          if (v268 <= &v237 && v268 + 24 * v269 > &v237)
          {
            v201 = &v237 - v268;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v114 = v268;
            v113 = (v268 + v201);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, v271, v269 + 1, 24);
            v113 = &v237;
            v114 = v268;
          }
        }

        v115 = &v114[24 * v269];
        v116 = *v113;
        *(v115 + 2) = v113[2];
        *v115 = v116;
        ++v269;
      }
    }

    v117 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
    if (v265)
    {
      mlir::InFlightDiagnostic::report(&v265);
    }

    if (v277 == 1)
    {
      if (v276 != &v277)
      {
        free(v276);
      }

      v118 = __p;
      if (__p)
      {
        v119 = v275;
        v120 = __p;
        if (v275 != __p)
        {
          do
          {
            v119 = sub_100052FFC(v119 - 1);
          }

          while (v119 != v118);
          v120 = __p;
        }

        v275 = v118;
        operator delete(v120);
      }

      v121 = v272;
      if (v272)
      {
        v122 = v273;
        v123 = v272;
        if (v273 != v272)
        {
          do
          {
            v124 = *--v122;
            *v122 = 0;
            if (v124)
            {
              operator delete[]();
            }
          }

          while (v122 != v121);
          v123 = v272;
        }

        v273 = v121;
        operator delete(v123);
      }

      if (v268 != v271)
      {
        free(v268);
      }
    }

    if (!v117)
    {
      goto LABEL_244;
    }
  }

  if ((v220 & 1) == 0)
  {
    v178 = v258;
    v237 = v258;
    v258 = 0;
    v179 = mlir::OpBuilder::create(a1 + 48, &v244);
    v233[0] = v179;
    v29 = 0;
    if (sub_100071374(a1, v179 & 0xFFFFFFFFFFFFFFFBLL))
    {
      if (v178)
      {
        v265 = &v229;
        v266 = &v237;
        v267 = v233;
        if (mlir::Operation::setPropertiesFromAttribute(v179, v178, sub_10007B058, &v265))
        {
          v29 = v233[0];
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = v179;
      }
    }
  }

  else
  {
LABEL_244:
    v29 = 0;
  }

  mlir::OpAsmParser::~OpAsmParser(&v217);
  v265 = &v267;
  v266 = 0x400000000;
  v128 = v257;
  if (v257 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v265, &v267, v257, 8);
    v128 = v257;
  }

  if (v128)
  {
    v129 = v256;
    v130 = &v256[v128];
    do
    {
      v131 = *v129;
      if (*v129)
      {
        for (i = *(v131 + 8); i != v131; i = *(i + 8))
        {
          if (i)
          {
            v133 = (i - 8);
          }

          else
          {
            v133 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v133);
        }
      }

      ++v129;
    }

    while (v129 != v130);
  }

  if (v265 != &v267)
  {
    free(v265);
  }

  mlir::OperationState::~OperationState(&v244);
  v259[0] = off_1002B4430;
  if (v260 != &v261)
  {
    free(v260);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v259);
  --*(a1[1] + 44);
  v100 = v264;
  if (v264 >= 8)
  {
LABEL_262:
    if ((v100 & 4) != 0)
    {
      if ((v100 & 2) != 0)
      {
        v134 = v262;
      }

      else
      {
        v134 = v262[0];
      }

      (*((v100 & 0xFFFFFFFFFFFFFFF8) + 16))(v134);
    }

    if ((v100 & 2) == 0)
    {
      llvm::deallocate_buffer(v262[0], v262[1], v263);
    }
  }

LABEL_269:
  if (!v29)
  {
    goto LABEL_277;
  }

  if (!v242)
  {
    v139 = a1[1][19];
    if (v139)
    {
      LocRange = mlir::Token::getLocRange(&v214);
      v142 = v141;
      EndLoc = mlir::Token::getEndLoc((a1[1] + 10));
      mlir::AsmParserState::finalizeOperationDefinition(v139, v29, LocRange, v142, EndLoc, 0, 0);
    }

    v38 = 1;
    goto LABEL_278;
  }

  v135 = *(v29 + 36);
  if (!v135)
  {
    v265 = "cannot name an operation with no results";
    LOWORD(v269) = 259;
    v144 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), Loc);
    mlir::emitError(v144, &v265, &v244);
    if (*(a1[1] + 14) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v244);
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v244);
    if (v244.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v244);
    }

    if (v255[0] != 1)
    {
      goto LABEL_278;
    }

    if (v254 != v255)
    {
      free(v254);
    }

    v145 = v252;
    if (v252)
    {
      v146 = v253;
      v147 = v252;
      if (v253 != v252)
      {
        do
        {
          v146 = sub_100052FFC(v146 - 1);
        }

        while (v146 != v145);
        v147 = v252;
      }

      v253 = v145;
      operator delete(v147);
    }

    v148 = v250;
    if (v250)
    {
      v149 = v251;
      v150 = v250;
      if (v251 != v250)
      {
        do
        {
          v151 = *--v149;
          *v149 = 0;
          if (v151)
          {
            operator delete[]();
          }
        }

        while (v149 != v148);
        goto LABEL_334;
      }

LABEL_335:
      v251 = v148;
      operator delete(v150);
    }

LABEL_336:
    if (v245 != v248)
    {
      free(v245);
    }

    goto LABEL_278;
  }

  if (v216 != v135)
  {
    v265 = "operation defines ";
    LOWORD(v269) = 259;
    v152 = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), Loc);
    mlir::emitError(v152, &v265, &v244);
    if (*(a1[1] + 14) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v244);
    }

    if (v244.__r_.__value_.__r.__words[0])
    {
      v153 = *(v29 + 36);
      LODWORD(v217) = 5;
      v218 = v153;
      v154 = &v217;
      v155 = v245;
      if (v246 >= v247)
      {
        if (v245 <= &v217 && v245 + 24 * v246 > &v217)
        {
          v197 = &v217 - v245;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v155 = v245;
          v154 = (v245 + v197);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v246 + 1, 24);
          v154 = &v217;
          v155 = v245;
        }
      }

      v156 = &v155[24 * v246];
      v157 = *v154;
      *(v156 + 2) = v154[2];
      *v156 = v157;
      v158 = ++v246;
      if (v244.__r_.__value_.__r.__words[0])
      {
        LODWORD(v217) = 3;
        v218 = " results but was provided ";
        v219 = 26;
        v159 = &v217;
        v160 = v245;
        if (v158 >= v247)
        {
          if (v245 <= &v217 && v245 + 24 * v158 > &v217)
          {
            v198 = &v217 - v245;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v158 + 1, 24);
            v160 = v245;
            v159 = (v245 + v198);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v158 + 1, 24);
            v159 = &v217;
            v160 = v245;
          }
        }

        v161 = &v160[24 * v246];
        v162 = *v159;
        *(v161 + 2) = v159[2];
        *v161 = v162;
        v163 = ++v246;
        if (v244.__r_.__value_.__r.__words[0])
        {
          LODWORD(v217) = 5;
          v218 = v216;
          v164 = &v217;
          v165 = v245;
          if (v163 >= v247)
          {
            if (v245 <= &v217 && v245 + 24 * v163 > &v217)
            {
              v202 = &v217 - v245;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v163 + 1, 24);
              v165 = v245;
              v164 = (v245 + v202);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v163 + 1, 24);
              v164 = &v217;
              v165 = v245;
            }
          }

          v166 = &v165[24 * v246];
          v167 = *v164;
          *(v166 + 2) = v164[2];
          *v166 = v167;
          v168 = ++v246;
          if (v244.__r_.__value_.__r.__words[0])
          {
            LODWORD(v217) = 3;
            v218 = " to bind";
            v219 = 8;
            v169 = &v217;
            v170 = v245;
            if (v168 >= v247)
            {
              if (v245 <= &v217 && v245 + 24 * v168 > &v217)
              {
                v206 = &v217 - v245;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v168 + 1, 24);
                v170 = v245;
                v169 = (v245 + v206);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v245, v248, v168 + 1, 24);
                v169 = &v217;
                v170 = v245;
              }
            }

            v171 = &v170[24 * v246];
            v172 = *v169;
            *(v171 + 2) = v169[2];
            *v171 = v172;
            ++v246;
          }
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v244);
    if (v244.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v244);
    }

    if (v255[0] != 1)
    {
      goto LABEL_278;
    }

    if (v254 != v255)
    {
      free(v254);
    }

    v173 = v252;
    if (v252)
    {
      v174 = v253;
      v175 = v252;
      if (v253 != v252)
      {
        do
        {
          v174 = sub_100052FFC(v174 - 1);
        }

        while (v174 != v173);
        v175 = v252;
      }

      v253 = v173;
      operator delete(v175);
    }

    v148 = v250;
    if (v250)
    {
      v176 = v251;
      v150 = v250;
      if (v251 != v250)
      {
        do
        {
          v177 = *--v176;
          *v176 = 0;
          if (v177)
          {
            operator delete[]();
          }
        }

        while (v176 != v148);
LABEL_334:
        v150 = v250;
        goto LABEL_335;
      }

      goto LABEL_335;
    }

    goto LABEL_336;
  }

  if (a1[1][19])
  {
    LODWORD(v265) = 0;
    v244.__r_.__value_.__r.__words[0] = &v244.__r_.__value_.__r.__words[2];
    v244.__r_.__value_.__l.__size_ = 0x300000000;
    if (v242 <= 3)
    {
      v136 = v241;
      v137 = v241 + 32 * v242;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v244, &v244.__r_.__value_.__r.__words[2], v242, 16);
      if (!v242)
      {
        goto LABEL_346;
      }

      v136 = v241;
      v137 = v241 + 32 * v242;
    }

    v181 = 0;
    v182 = (v136 + 24);
    do
    {
      v183 = v244.__r_.__value_.__r.__words[1];
      if (LODWORD(v244.__r_.__value_.__r.__words[1]) >= HIDWORD(v244.__r_.__value_.__r.__words[1]))
      {
        sub_10007BB74(&v244, &v265, v182);
      }

      else
      {
        v184 = v244.__r_.__value_.__r.__words[0] + 16 * LODWORD(v244.__r_.__value_.__r.__words[1]);
        *v184 = v181;
        *(v184 + 8) = *v182;
        LODWORD(v244.__r_.__value_.__r.__words[1]) = v183 + 1;
      }

      v181 = v265 + *(v182 - 2);
      LODWORD(v265) = v181;
      v185 = (v182 + 1);
      v182 += 4;
    }

    while (v185 != v137);
LABEL_346:
    v186 = a1[1][19];
    v187 = mlir::Token::getLocRange(&v214);
    v189 = v188;
    v190 = mlir::Token::getEndLoc((a1[1] + 10));
    mlir::AsmParserState::finalizeOperationDefinition(v186, v29, v187, v189, v190, v244.__r_.__value_.__l.__data_, LODWORD(v244.__r_.__value_.__r.__words[1]));
  }

  v180 = v241;
  __s2a = v241 + 32 * v242;
  v191 = 0;
  while (1)
  {
    v192 = v3;
    v193 = *(v180 + 4);
    if (v193)
    {
      break;
    }

    v195 = v191;
LABEL_356:
    v180 += 32;
    v38 = 1;
    v191 = v195;
    v3 = v192;
    if (v180 == __s2a)
    {
      goto LABEL_278;
    }
  }

  v194 = 0;
  while (1)
  {
    v244.__r_.__value_.__r.__words[0] = *(v180 + 3);
    *&v244.__r_.__value_.__r.__words[1] = *v180;
    LODWORD(v245) = v194;
    v195 = (v191 + 1);
    v196 = (v191 >= 6 ? v29 - 96 - 24 * (v191 - 5) : v29 - 16 * v195);
    if ((sub_1000703B0(a1, &v244, v196) & 1) == 0)
    {
      break;
    }

    ++v194;
    LODWORD(v191) = v195;
    if (v193 == v194)
    {
      goto LABEL_356;
    }
  }

  v38 = 0;
  v3 = v192;
LABEL_278:
  if (v241 != v3)
  {
    free(v241);
  }

  return v38;
}

void sub_10006EDA4(uint64_t a1, int a2)
{
  v5 = (a1 + 208);
  v4 = *(a1 + 208);
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  v6 = *(a1 + 216);
  v7 = v37;
  if (v6 >= *(a1 + 220))
  {
    if (v4 <= v37 && v4 + 24 * v6 > v37)
    {
      v33 = v37 - v4;
      sub_10006F300(a1 + 208, v6 + 1);
      v4 = *v5;
      v7 = &v33[*v5];
    }

    else
    {
      sub_10006F300(a1 + 208, v6 + 1);
      v4 = *v5;
      v7 = v37;
    }
  }

  v8 = v4 + 24 * *(a1 + 216);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *v7;
  *v7 = 0;
  *(v8 + 8) = *(v7 + 2);
  *(v7 + 2) = 0;
  v9 = *(v8 + 12);
  *(v8 + 12) = *(v7 + 3);
  *(v7 + 3) = v9;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(v7 + 4);
  *(v7 + 4) = v10;
  ++*(a1 + 216);
  llvm::deallocate_buffer(v37[0], (32 * v38), 8uLL);
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  v11 = *(a1 + 280);
  v12 = *(a1 + 272);
  v13 = v37;
  if (v11 >= *(a1 + 284))
  {
    if (v12 <= v37 && v12 + 24 * v11 > v37)
    {
      v34 = v37 - v12;
      sub_10006F418(a1 + 272, v11 + 1);
      v12 = *(a1 + 272);
      v13 = &v34[v12];
    }

    else
    {
      sub_10006F418(a1 + 272, v11 + 1);
      v12 = *(a1 + 272);
      v13 = v37;
    }
  }

  v14 = v12 + 24 * *(a1 + 280);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v13;
  *v13 = 0;
  *(v14 + 8) = *(v13 + 2);
  *(v13 + 2) = 0;
  v15 = *(v14 + 12);
  *(v14 + 12) = *(v13 + 3);
  *(v13 + 3) = v15;
  v16 = *(v14 + 16);
  *(v14 + 16) = *(v13 + 4);
  *(v13 + 4) = v16;
  ++*(a1 + 280);
  llvm::deallocate_buffer(v37[0], (16 * v38), 8uLL);
  if (a2)
  {
    v18 = (a1 + 16);
    v17 = *(a1 + 16);
    *v37 = 0u;
    v19 = v37;
    v38 = 0x2800000000;
    v39 = &v41;
    v40 = 0x200000000;
    v20 = *(a1 + 24);
    if (v20 >= *(a1 + 28))
    {
      if (v17 <= v37 && v17 + 88 * v20 > v37)
      {
        v36 = v37 - v17;
        sub_10006F530((a1 + 16), v20 + 1);
        v17 = *v18;
        v19 = &v36[*v18];
      }

      else
      {
        sub_10006F530((a1 + 16), v20 + 1);
        v17 = *v18;
        v19 = v37;
      }
    }

    v21 = v17 + 88 * *(a1 + 24);
    *v21 = *v19;
    *(v21 + 8) = *(v19 + 1);
    *v19 = 0;
    v19[1] = 0;
    *(v19 + 4) = 0;
    *(v21 + 24) = v21 + 40;
    v22 = v21 + 24;
    *(v22 + 8) = 0x200000000;
    if (*(v19 + 8))
    {
      sub_10006F65C(v22, (v19 + 3));
    }

    ++*(a1 + 24);
    sub_10006F1C8(v37);
  }

  v23 = *(a1 + 16) + 88 * *(a1 + 24);
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v25 = (v23 - 64);
  v24 = *(v23 - 64);
  HIDWORD(v38) = 8;
  v26 = *(v23 - 56);
  v27 = v37;
  if (v26 >= *(v23 - 52))
  {
    if (v24 <= v37 && v24 + 24 * v26 > v37)
    {
      v35 = v37 - v24;
      sub_10006FBF4(v23 - 64, v26 + 1);
      v24 = *v25;
      v27 = &v35[*v25];
    }

    else
    {
      sub_10006FBF4(v23 - 64, v26 + 1);
      v24 = *v25;
      v27 = v37;
    }
  }

  v28 = v24 + 24 * *(v23 - 56);
  *v28 = *v27;
  *(v28 + 8) = *(v27 + 1);
  *v27 = 0;
  v27[1] = 0;
  *(v27 + 4) = 0;
  ++*(v23 - 56);
  if (HIDWORD(v37[1]) && LODWORD(v37[1]))
  {
    v29 = 0;
    v30 = 8 * LODWORD(v37[1]);
    do
    {
      v31 = *(v37[0] + v29);
      if (v31 != -8 && v31 != 0)
      {
        llvm::deallocate_buffer(v31, (*v31 + 9), 8uLL);
      }

      v29 += 8;
    }

    while (v30 != v29);
  }

  free(v37[0]);
}

uint64_t sub_10006F1C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = &v2[3 * v3];
    do
    {
      v5 = v4;
      v4 -= 3;
      if (*(v5 - 3))
      {
        v6 = *(v5 - 4);
        if (v6)
        {
          v7 = 0;
          v8 = 8 * v6;
          do
          {
            v9 = *(*v4 + v7);
            if (v9 != -8 && v9 != 0)
            {
              llvm::deallocate_buffer(v9, (*v9 + 9), 8uLL);
            }

            v7 += 8;
          }

          while (v8 != v7);
        }
      }

      free(*v4);
    }

    while (v4 != v2);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  if (*(a1 + 12))
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 0;
      v13 = 8 * v11;
      do
      {
        v14 = *(*a1 + v12);
        if (v14 != -8 && v14 != 0)
        {
          v17 = *v14;
          v16 = *(v14 + 1);
          if (v16 != (v14 + 24))
          {
            free(v16);
          }

          llvm::deallocate_buffer(v14, (v17 + 41), 8uLL);
        }

        v12 += 8;
      }

      while (v13 != v12);
    }
  }

  free(*a1);
  return a1;
}

void sub_10006F300(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
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
      v12 = &v5[24 * v11 - 8];
      v13 = -24 * v11;
      do
      {
        v14 = *(v12 - 2);
        v15 = *v12;
        v12 -= 24;
        llvm::deallocate_buffer(v14, (32 * v15), 8uLL);
        v13 += 24;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void sub_10006F418(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v17);
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
      v12 = &v5[24 * v11 - 8];
      v13 = -24 * v11;
      do
      {
        v14 = *(v12 - 2);
        v15 = *v12;
        v12 -= 24;
        llvm::deallocate_buffer(v14, (16 * v15), 8uLL);
        v13 += 24;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void sub_10006F530(uint64_t *a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 88, &v15);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = &v5[11 * v6];
    do
    {
      v9 = &v5[v7];
      v10 = &v4[v7 * 8];
      *v10 = v5[v7];
      *(v10 + 8) = *&v5[v7 + 1];
      *v9 = 0;
      v9[1] = 0;
      *(v9 + 4) = 0;
      *(v10 + 3) = &v4[v7 * 8 + 40];
      *&v4[v7 * 8 + 32] = 0x200000000;
      if (LODWORD(v5[v7 + 4]))
      {
        sub_10006F65C(&v4[v7 * 8 + 24], (v9 + 3));
      }

      v7 += 11;
    }

    while (v9 + 11 != v8);
    v5 = *a1;
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = -88 * v11;
      v13 = &v5[11 * v11 - 11];
      do
      {
        v13 = sub_10006F1C8(v13) - 88;
        v12 += 88;
      }

      while (v12);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v14;
}

unsigned int **sub_10006F65C(unsigned int **a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = *a2;
  if (*a2 != a2 + 16)
  {
    sub_10006FB10(a1, a2);
    return a1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 2);
  if (v5 < v4)
  {
    if (*(a1 + 3) >= v4)
    {
      v27 = *a1;
      if (v5)
      {
        v28 = a2;
        v29 = &v3[6 * v5];
        do
        {
          v30 = *v3;
          v31 = v3[4];
          v32 = *(v3 + 1);
          *v3 = 0;
          *(v3 + 1) = 0;
          v3[4] = 0;
          v33 = *v27;
          *v27 = v30;
          v34 = v27[2];
          LODWORD(v30) = v27[3];
          *(v27 + 1) = v32;
          v27[4] = v31;
          if (v30 && v34)
          {
            v35 = v33;
            do
            {
              v36 = *v35;
              if (*v35 != -8 && v36 != 0)
              {
                llvm::deallocate_buffer(v36, (*v36 + 9), 8uLL);
              }

              ++v35;
              --v34;
            }

            while (v34);
          }

          free(v33);
          v3 += 6;
          v27 += 6;
        }

        while (v3 != v29);
        v27 = *a1;
        a2 = v28;
        v39 = *v28;
        v40 = *(v28 + 8);
        if (v5 == v40)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v5 = 0;
        v39 = *a2;
        LODWORD(v40) = *(a2 + 8);
        if (!v40)
        {
LABEL_79:
          *(a1 + 2) = v4;
          v60 = a2;
          v61 = *(a2 + 8);
          if (v61)
          {
            v62 = &v39[6 * v61];
            do
            {
              v63 = v62;
              v62 -= 3;
              if (*(v63 - 3))
              {
                v64 = *(v63 - 4);
                if (v64)
                {
                  v65 = 0;
                  v66 = 8 * v64;
                  do
                  {
                    v67 = *(*v62 + v65);
                    if (v67 != -8 && v67 != 0)
                    {
                      llvm::deallocate_buffer(v67, (*v67 + 9), 8uLL);
                    }

                    v65 += 8;
                  }

                  while (v66 != v65);
                }
              }

              free(*v62);
            }

            while (v62 != v39);
          }

          *(v60 + 8) = 0;
          return a1;
        }
      }
    }

    else
    {
      v6 = a2;
      if (v5)
      {
        v7 = *a1;
        v8 = &(*a1)[6 * v5];
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
              v12 = 8 * v10;
              do
              {
                v13 = *(*v8 + v11);
                if (v13 != -8 && v13 != 0)
                {
                  llvm::deallocate_buffer(v13, (*v13 + 9), 8uLL);
                }

                v11 += 8;
              }

              while (v12 != v11);
            }
          }

          free(*v8);
        }

        while (v8 != v7);
      }

      *(a1 + 2) = 0;
      v70 = 0;
      v27 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, v4, 24, &v70);
      sub_10006FC6C(a1, v27);
      v38 = v70;
      if (*a1 != (a1 + 2))
      {
        free(*a1);
      }

      v5 = 0;
      *a1 = v27;
      *(a1 + 3) = v38;
      a2 = v6;
      v39 = *v6;
      LODWORD(v40) = *(v6 + 8);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v57 = &v39[6 * v40];
    v58 = &v27[6 * v5];
    v59 = &v39[6 * v5];
    do
    {
      *v58 = *v59;
      *(v58 + 2) = *(v59 + 2);
      *v59 = 0;
      *(v59 + 1) = 0;
      v59[4] = 0;
      v58 += 6;
      v59 += 6;
    }

    while (v59 != v57);
    v39 = *a2;
    goto LABEL_79;
  }

  v15 = *a1;
  v16 = a2;
  if (v4)
  {
    v17 = &v3[6 * v4];
    do
    {
      v18 = *v3;
      v19 = v3[4];
      v20 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      v3[4] = 0;
      v21 = *v15;
      *v15 = v18;
      v22 = v15[2];
      LODWORD(v18) = v15[3];
      *(v15 + 1) = v20;
      v15[4] = v19;
      if (v18 && v22)
      {
        v23 = v21;
        do
        {
          v24 = *v23;
          if (*v23 != -8 && v24 != 0)
          {
            llvm::deallocate_buffer(v24, (*v24 + 9), 8uLL);
          }

          ++v23;
          --v22;
        }

        while (v22);
      }

      free(v21);
      v3 += 6;
      v15 += 6;
    }

    while (v3 != v17);
    v26 = *a1;
    LODWORD(v5) = *(a1 + 2);
  }

  else
  {
    v26 = *a1;
  }

  for (i = &v26[6 * v5]; i != v15; free(*i))
  {
    v42 = i;
    i -= 3;
    if (*(v42 - 3))
    {
      v43 = *(v42 - 4);
      if (v43)
      {
        v44 = 0;
        v45 = 8 * v43;
        do
        {
          v46 = *(*i + v44);
          if (v46 != -8 && v46 != 0)
          {
            llvm::deallocate_buffer(v46, (*v46 + 9), 8uLL);
          }

          v44 += 8;
        }

        while (v45 != v44);
      }
    }
  }

  *(a1 + 2) = v4;
  v48 = *(v16 + 8);
  if (v48)
  {
    v49 = *v16;
    v50 = (*v16 + 24 * v48);
    do
    {
      v51 = v50;
      v50 -= 3;
      if (*(v51 - 3))
      {
        v52 = *(v51 - 4);
        if (v52)
        {
          v53 = 0;
          v54 = 8 * v52;
          do
          {
            v55 = *(*v50 + v53);
            if (v55 != -8 && v55 != 0)
            {
              llvm::deallocate_buffer(v55, (*v55 + 9), 8uLL);
            }

            v53 += 8;
          }

          while (v54 != v53);
        }
      }

      free(*v50);
    }

    while (v50 != v49);
  }

  *(v16 + 8) = 0;
  return a1;
}

double sub_10006FB10(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    do
    {
      v7 = v6;
      v6 -= 3;
      if (*(v7 - 3))
      {
        v8 = *(v7 - 4);
        if (v8)
        {
          v9 = 0;
          v10 = 8 * v8;
          do
          {
            v11 = *(*v6 + v9);
            if (v11 != -8 && v11 != 0)
            {
              llvm::deallocate_buffer(v11, (*v11 + 9), 8uLL);
            }

            v9 += 8;
          }

          while (v10 != v9);
        }
      }

      free(*v6);
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void sub_10006FBF4(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  sub_10006FC6C(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void sub_10006FC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
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
            v11 = 8 * v9;
            do
            {
              v12 = *(*v7 + v10);
              if (v12 != -8 && v12 != 0)
              {
                llvm::deallocate_buffer(v12, (*v12 + 9), 8uLL);
              }

              v10 += 8;
            }

            while (v11 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

uint64_t sub_10006FD50(mlir::MLIRContext ****a1)
{
  Loc = mlir::Token::getLoc((a1[1] + 7));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation((a1[1] + 1), Loc);
  v46 = EncodedSourceLocation;
  mlir::Token::getStringValue((a1[1] + 7), &v45);
  size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v45.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v48 = "empty operation name is invalid";
    v50 = 259;
    mlir::detail::Parser::emitError(v65, a1, &v48);
    if (v65[0])
    {
      mlir::InFlightDiagnostic::report(v65);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v12 = v70;
      if (v70)
      {
        v13 = v71;
        v14 = v70;
        if (v71 != v70)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = v70;
        }

        v71 = v12;
        operator delete(v14);
      }

      v15 = v68;
      if (v68)
      {
        v16 = v69;
        v17 = v68;
        if (v69 != v68)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v68;
        }

        v69 = v15;
        operator delete(v17);
      }

      v28 = v66;
      if (v66 != &v67)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v45, 0, 0) == -1)
  {
    v19 = a1[1];
    *(v19 + 5) = *(v19 + 7);
    v19[12] = v19[9];
    mlir::Lexer::lexToken(&v48, (a1[1] + 1));
    v20 = a1[1];
    *(v20 + 7) = v48;
    v20[9] = v49;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v45;
    }

    else
    {
      v21 = v45.__r_.__value_.__r.__words[0];
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v45.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v48, EncodedSourceLocation, v21, v22);
    if (*(*(&v48 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v23 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
      v24 = &v45;
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v45.__r_.__value_.__l.__size_;
      }

      v74 = v24;
      v75 = v23;
      LOBYTE(v43) = 46;
      v25 = llvm::StringRef::find(&v74, &v43, 1uLL, 0);
      if (v25 == -1)
      {
        v26 = v74;
        v27 = v75;
      }

      else
      {
        v26 = v74;
        if (v25 >= v75)
        {
          v27 = v75;
        }

        else
        {
          v27 = v25;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(**a1[1], v26, v27) || mlir::MLIRContext::getOrLoadDialect(**a1[1], v26, v27))
      {
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v45;
        }

        else
        {
          v31 = v45.__r_.__value_.__r.__words[0];
        }

        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v45.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v74, v31, v32, **a1[1]);
        *(&v48 + 1) = v74;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(**a1[1]) & 1) == 0)
      {
        v74 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v77 = 259;
        mlir::detail::Parser::emitError(v47, a1, &v74);
        sub_100059A74(v47);
        goto LABEL_86;
      }
    }

    v33 = a1[1][19];
    if (v33)
    {
      mlir::AsmParserState::startOperationDefinition(v33, (&v48 + 8));
    }

    LOBYTE(v74) = 0;
    LOBYTE(v76[0]) = 0;
    LOBYTE(v43) = 0;
    v44 = 0;
    v42[0] = 0;
    v42[16] = 0;
    v41[0] = 0;
    v41[16] = 0;
    v29 = 0;
    if (!sub_100075E24(a1, &v48, &v74, &v43, v42, v41, 0, 0, 0, 0) || ((v34 = v54, v43 = v54, v54 = 0, v43) || v55 || *(*(&v48 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || (v74 = &v46, v75 = &v45, ((*(**(&v48 + 1) + 104))(*(&v48 + 1), *(&v48 + 1), &v51, sub_10007B464, &v74) & 1) != 0)) && (v29 = mlir::OpBuilder::create(a1 + 48, &v48), (sub_100071374(a1, v29 & 0xFFFFFFFFFFFFFFFBLL) & 1) != 0) && (!v34 || (v74 = &v46, v75 = &v43, v76[0] = &v45, (mlir::Operation::setPropertiesFromAttribute(v29, v34, sub_10007B780, &v74) & 1) != 0)))
    {
LABEL_87:
      v74 = v76;
      v75 = 0x400000000;
      v35 = v53;
      if (v53 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v76, v53, 8);
        v35 = v53;
      }

      if (v35)
      {
        v36 = v52;
        v37 = &v52[v35];
        do
        {
          v38 = *v36;
          if (*v36)
          {
            for (i = *(v38 + 8); i != v38; i = *(i + 8))
            {
              if (i)
              {
                v40 = (i - 8);
              }

              else
              {
                v40 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v40);
            }
          }

          ++v36;
        }

        while (v36 != v37);
      }

      if (v74 != v76)
      {
        free(v74);
      }

      mlir::OperationState::~OperationState(&v48);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v29;
    }

LABEL_86:
    v29 = 0;
    goto LABEL_87;
  }

  *&v48 = "null character not allowed in operation name";
  v50 = 259;
  mlir::detail::Parser::emitError(v56, a1, &v48);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v62;
      v7 = __p;
      if (v62 != __p)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v62 = v5;
      operator delete(v7);
    }

    v8 = v59;
    if (v59)
    {
      v9 = v60;
      v10 = v59;
      if (v60 != v59)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v59;
      }

      v60 = v8;
      operator delete(v10);
    }

    v28 = v57;
    if (v57 != &v58)
    {
LABEL_55:
      free(v28);
    }
  }

LABEL_56:
  v29 = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  return v29;
}

uint64_t sub_1000703B0(int32x2_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a2 + 8);
  v7 = sub_100079B94((*&a1[2] + 88 * a1[3].u32[0] - 88), *(a2 + 8), *(a2 + 16));
  v8 = v7;
  v9 = *(v7 + 8);
  v11 = (a2 + 24);
  v10 = *(a2 + 24);
  v12 = v10 + 1;
  if (v9 > v10 || v9 == v12)
  {
    v14 = *(*v7 + 16 * *(a2 + 24));
    v56 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v9 <= v12)
    {
      if (*(v7 + 12) < v12)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v12, 16);
        v9 = *(v8 + 8);
      }

      if (v9 != v12)
      {
        bzero((*v8 + 16 * v9), 16 * (v12 - v9));
      }
    }

    *(v8 + 8) = v12;
    v14 = *(*v8 + 16 * *v11);
    v56 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  v15 = a1[44].i32[0];
  if (!v15)
  {
LABEL_39:
    v49 = *a2;
    v55 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v49);
    mlir::emitError(EncodedSourceLocation, v54, &v58);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v58);
    }

    if (v58)
    {
      sub_10007BBF0(v59, "redefinition of SSA value '", v6, "'");
    }

    v51 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v8 + 16 * *v11 + 8));
    mlir::Diagnostic::attachNote(v59, v51, 1);
  }

  v16 = a1[42];
  v17 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v17 >> 47) ^ v17);
  v19 = v15 - 1;
  v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
  v21 = *(*&v16 + 16 * v20);
  if (v21 != v14)
  {
    v47 = 1;
    while (v21 != -4096)
    {
      v48 = v20 + v47++;
      v20 = v48 & v19;
      v21 = *(*&v16 + 16 * v20);
      if (v21 == v14)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((a3[1] ^ *(v14 + 8)) >= 8)
  {
    v22 = *a2;
    v55 = 257;
    v23 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v22);
    mlir::emitError(v23, v54, &v58);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v58);
    }

    v57 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    if (v58)
    {
      sub_10007BE1C(v59, "definition of SSA value '", v6, "#", (a2 + 24), "' has type ", &v57);
    }

    v24 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v8 + 16 * *v11 + 8));
    mlir::Diagnostic::attachNote(v59, v24, 1);
  }

  while (1)
  {
    v25 = *v14;
    if (!*v14)
    {
      break;
    }

    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      *v26 = *v25;
      if (v27)
      {
        *(v27 + 8) = v26;
      }
    }

    v25[3] = a3;
    v25[1] = a3;
    v28 = *a3;
    *v25 = *a3;
    if (v28)
    {
      *(v28 + 8) = v25;
    }

    *a3 = v25;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v56);
  mlir::Operation::destroy(DefiningOp, v30);
  v31 = a1[44].i32[0];
  if (v31)
  {
    v32 = a1[42];
    v33 = 0x9DDFEA08EB382D69 * ((8 * v56 - 0xAE502812AA7333) ^ HIDWORD(v56));
    v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v56) ^ (v33 >> 47) ^ v33);
    LODWORD(v33) = -348639895 * ((v34 >> 47) ^ v34);
    v35 = v31 - 1;
    v36 = v33 & (v31 - 1);
    v37 = *(*&v32 + 16 * v36);
    if (v56 == v37)
    {
LABEL_31:
      *(*&v32 + 16 * v36) = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    else
    {
      v52 = 1;
      while (v37 != -4096)
      {
        v53 = v36 + v52++;
        v36 = v53 & v35;
        v37 = *(*&v32 + 16 * v36);
        if (v56 == v37)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v38 = *(*&a1[1] + 152);
  if (v38)
  {
    mlir::AsmParserState::refineDefinition(v38, v56, a3);
  }

LABEL_34:
  v39 = *a2;
  v40 = (*v8 + 16 * *(a2 + 24));
  *v40 = a3;
  v40[1] = v39;
  v41 = *(a2 + 8);
  v42 = *(a2 + 16);
  v43 = *&a1[2] + 88 * a1[3].u32[0];
  v44 = (*(v43 - 64) + 24 * *(v43 - 56) - 24);
  v45 = llvm::StringMapImpl::hash(v41, v42);
  sub_10003E8E4(v44, v41, v42, v45);
  return 1;
}

BOOL sub_100070ADC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v33 = *(v3 + 56);
  *&v33[16] = *(v3 + 72);
  *&v34 = "expected valid ssa identifier";
  v37 = 259;
  if (!mlir::detail::Parser::parseToken(v2, 6, &v34))
  {
    return 0;
  }

  v4 = 1;
  v32 = 1;
  v5 = *(v2 + 1);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken(&v34, (*(v2 + 1) + 8));
  v6 = *(v2 + 1);
  *(v6 + 56) = v34;
  *(v6 + 72) = v35;
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
        mlir::Lexer::lexToken(&v34, (*(v2 + 1) + 8));
        v11 = *(v2 + 1);
        *(v11 + 56) = v34;
        *(v11 + 72) = v35;
        v32 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v34 = *&v33[8];
        Loc = mlir::Token::getLoc(v33);
        v30[0] = Loc;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          sub_100070ED4(v12, &v34, &v32, v30);
          v4 = v32;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v34;
          *(v15 + 16) = v4;
          *(v15 + 24) = Loc;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v30[0] = "expected named operation to have at least 1 result";
    v31 = 259;
    mlir::detail::Parser::emitError(&v34, v2, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v17 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v17;
    }

    if (v44[0] == 1)
    {
      if (v43 != v44)
      {
        free(v43);
        result = v17;
      }

      v25 = __p;
      if (__p)
      {
        v26 = v42;
        v27 = __p;
        if (v42 != __p)
        {
          do
          {
            v26 = sub_100052FFC(v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v42 = v25;
        operator delete(v27);
        result = v17;
      }

      v21 = v39;
      if (!v39)
      {
        goto LABEL_46;
      }

      v28 = v40;
      v23 = v39;
      if (v40 == v39)
      {
LABEL_45:
        v40 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v36 != &v38)
        {
          free(v36);
          return v17;
        }

        return result;
      }

      do
      {
        v29 = *--v28;
        *v28 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v28 != v21);
LABEL_44:
      v23 = v39;
      goto LABEL_45;
    }
  }

  else
  {
    v30[0] = "expected integer number of results";
    v31 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v34, v2, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v17 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v17;
    }

    if (v44[0] == 1)
    {
      if (v43 != v44)
      {
        free(v43);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v42;
        v20 = __p;
        if (v42 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v42 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v39;
      if (!v39)
      {
        goto LABEL_46;
      }

      v22 = v40;
      v23 = v39;
      if (v40 == v39)
      {
        goto LABEL_45;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
      goto LABEL_44;
    }
  }

  return result;
}

unint64_t sub_100070ED4(unint64_t *a1, __int128 *a2, void *a3, uint64_t *a4)
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

unint64_t sub_100070FB4(mlir::detail::Parser *this)
{
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
    v6 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1));
    if (v7)
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF00;
      return v8 | v6;
    }

    LOBYTE(v35) = 46;
    v16 = llvm::StringRef::find(&v39, &v35, 1uLL, 0);
    if (v16 == -1)
    {
      v17 = v39;
      v18 = v40;
      v19 = v40;
      v20 = *(this + 1);
      if (*(v20 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = v39;
      v18 = v40;
      if (v16 >= v40)
      {
        v19 = v40;
      }

      else
      {
        v19 = v16;
      }

      v33[0] = 0;
      v33[1] = 0;
      v34 = 0;
      if (v40 > v16 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v17, v19);
        mlir::OperationName::OperationName(&v35, v39, v40, ***(this + 1));
        LOBYTE(v6) = v35;
        v8 = v35 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v34) < 0)
        {
          v27 = v35;
          operator delete(v33[0]);
          LOBYTE(v6) = v27;
        }

        return v8 | v6;
      }

      v20 = *(this + 1);
      if (*(v20 + 56) != 2)
      {
LABEL_34:
        v23 = *(v20 + 168) + 16 * *(v20 + 176);
        v24 = *(v23 - 16);
        v19 = *(v23 - 8);
        v30 = 773;
        v29[0] = v24;
        v29[1] = v19;
        v29[2] = ".";
        *&v35 = v29;
        v36 = v17;
        v37 = v18;
        v38 = 1282;
        llvm::Twine::str(&v31, &v35);
        v34 = v32;
        *v33 = v31;
        v25 = SHIBYTE(v32);
        v26 = v33;
        if (v32 < 0)
        {
          v26 = v31;
        }

        if (v32 < 0)
        {
          v25 = *(&v31 + 1);
        }

        v39 = v26;
        v40 = v25;
        v17 = v24;
        goto LABEL_39;
      }
    }

    if (v17[v18 - 1] != 46)
    {
      goto LABEL_34;
    }

    if (v19)
    {
      v21 = v17;
      v22 = memchr(v17, 46, v19);
      if (!v22 || v22 - v21 == -1)
      {
        (*(**(v20 + 160) + 24))(*(v20 + 160), v21, v19);
      }
    }

    v8 = 0;
    LOBYTE(v6) = 0;
  }

  else
  {
    *&v35 = "empty operation name is invalid";
    v38 = 259;
    mlir::detail::Parser::emitError(v41, this, &v35);
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

      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v47 = v9;
        operator delete(v11);
      }

      v12 = v44;
      if (v44)
      {
        v13 = v45;
        v14 = v44;
        if (v45 != v44)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v44;
        }

        v45 = v12;
        operator delete(v14);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }

    LOBYTE(v6) = 0;
    v8 = 0;
  }

  return v8 | v6;
}

uint64_t sub_100071374(mlir::detail::Parser *a1, unint64_t a2)
{
  v2 = *(a1 + 1);
  if (*(v2 + 56) != 65)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(&v16, (*(a1 + 1) + 8));
  v5 = *(a1 + 1);
  *(v5 + 56) = v16;
  *(v5 + 72) = v17;
  *&v16 = "expected '(' in location";
  v18 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v16))
  {
    v6 = *(a1 + 1);
    v7 = *(v6 + 56);
    v9 = *(v6 + 64);
    v8 = *(v6 + 72);
    v15 = 0;
    if (v7 == 5 && (!v8 || (v10 = memchr(v9, 46, v8)) == 0 || v10 - v9 == -1))
    {
      if (!sub_1000757E8(a1, &v15))
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v15) & 1) == 0)
    {
      return 0;
    }

    *&v16 = "expected ')' in location";
    v18 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v16))
    {
      v11 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v11) = 1;
      }

      v12 = v11 == 0;
      v13 = 24;
      if (!v12)
      {
        v13 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v13) = v15;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000714E0(uint64_t a1, uint64_t a2)
{
  {
    sub_1002792EC();
  }

  return llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name;
}

const char *sub_100071528()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
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

uint64_t sub_1000715A8(uint64_t a1, uint64_t a2)
{
  {
    sub_100279340();
  }

  return llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name;
}

const char *sub_1000715F0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmOpInterface]";
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

uint64_t sub_100071678(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void sub_100071690(mlir::OpAsmParser *a1)
{
  mlir::OpAsmParser::~OpAsmParser(a1);

  operator delete();
}

void sub_1000716D0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t **a3@<X2>, mlir::InFlightDiagnostic *a4@<X8>)
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

BOOL sub_1000717F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL sub_100071834(uint64_t a1)
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

BOOL sub_1000718AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL sub_1000718EC(uint64_t a1)
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

BOOL sub_100071964(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL sub_1000719A4(uint64_t a1)
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

BOOL sub_100071A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL sub_100071A5C(uint64_t a1)
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

BOOL sub_100071AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL sub_100071B14(uint64_t a1)
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

BOOL sub_100071B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL sub_100071BCC(uint64_t a1)
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

BOOL sub_100071C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL sub_100071C84(uint64_t a1)
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

BOOL sub_100071CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL sub_100071D3C(uint64_t a1)
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

BOOL sub_100071DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL sub_100071DF4(uint64_t a1)
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

BOOL sub_100071E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL sub_100071EAC(uint64_t a1)
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

BOOL sub_100071F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL sub_100071F64(uint64_t a1)
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

BOOL sub_100071FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL sub_10007201C(uint64_t a1)
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

BOOL sub_100072094(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL sub_1000720D4(uint64_t a1)
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

uint64_t sub_10007214C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v6);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v6, (*(v2 + 8) + 8));
  *(*(v2 + 8) + 56) = v6;
  return 1;
}

BOOL sub_100072208(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v7 = *(v6 + 72);
      v35 = *(v6 + 64);
      v36 = v7;
      first_not_of = llvm::StringRef::find_first_not_of(&v35, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = first_not_of;
      }

      if (v36 < v9)
      {
        v9 = v36;
      }

      v10 = v36 - v9;
      *&v39 = v35 + v9;
      *(&v39 + 1) = v36 - v9;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v10 - (last_not_of + 1);
      if (v10 < last_not_of + 1)
      {
        v12 = 0;
      }

      v13 = *(&v39 + 1) - v12;
      if (*(&v39 + 1) >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v14, a2, &v34);
      if (v34)
      {
        v32 = v34;
        v34 = 0;
        llvm::toString(&v32, &v33);
        v38 = 260;
        v37[0] = &v33;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
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

          v16 = __p;
          if (__p)
          {
            v17 = v46;
            v18 = __p;
            if (v46 != __p)
            {
              do
              {
                v17 = sub_100052FFC(v17 - 1);
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
                v22 = *--v20;
                *v20 = 0;
                if (v22)
                {
                  operator delete[]();
                }
              }

              while (v20 != v19);
              v21 = v43;
            }

            v44 = v19;
            operator delete(v21);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        return v15;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v39, (*(v5 + 8) + 8));
    v30 = *(v5 + 8);
    *(v30 + 56) = v39;
    *(v30 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
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
          v24 = sub_100052FFC(v24 - 1);
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
          v29 = *--v27;
          *v27 = 0;
          if (v29)
          {
            operator delete[]();
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

  return v15;
}

BOOL sub_10007265C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL sub_10007269C(uint64_t a1)
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

BOOL sub_100072714(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL sub_100072754(uint64_t a1)
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

BOOL sub_1000727CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL sub_10007280C(uint64_t a1)
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

BOOL sub_100072884(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL sub_1000728C4(uint64_t a1)
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

BOOL sub_10007293C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL sub_10007297C(uint64_t a1)
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

uint64_t sub_1000729F4(uint64_t a1, double *a2, uint64_t a3, unsigned int a4)
{
  v6 = llvm::detail::IEEEFloat::IEEEFloat(v17, 0.0, a2, a3, a4);
  v7 = llvm::APFloatBase::IEEEdouble(v6);
  llvm::APFloat::Storage::Storage(v18, v17, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(v17);
  v8 = (*(*a1 + 368))(a1, v7, v18);
  if ((v8 & 1) == 0)
  {
    v12 = 0;
    v16 = v18[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v8) != v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100029F40(v18);
    return v12;
  }

  *a2 = llvm::APFloat::convertToDouble(v18, v9, v10, v11);
  v12 = 1;
  v13 = v18[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v14) == v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v18);
  return v12;
}

uint64_t sub_100072B28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    v9 = v6;
    mlir::Lexer::lexToken(&v22, (*(v6 + 8) + 8));
    v10 = *(v9 + 8);
    *(v10 + 56) = v22;
    *(v10 + 72) = v23;
    v6 = *(a1 + 16);
    v7 = *(v6 + 8);
  }

  v18 = *(v7 + 56);
  v19 = *(v7 + 72);
  LOBYTE(v22) = 0;
  v24 = 0;
  v11 = mlir::detail::Parser::parseFloatFromLiteral(v6, &v22, &v18, v8 == 24, a2);
  v12 = 0;
  if (v11)
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 8);
    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken(&v20, (*(v14 + 8) + 8));
    v16 = *(v14 + 8);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    v11 = sub_10006565C(a3, &v22);
    v12 = 1;
    if (v24 != 1)
    {
      return v12;
    }
  }

  else if (v24 != 1)
  {
    return v12;
  }

  v17 = v22;
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v17)
  {
    sub_100029F40(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return v12;
}

BOOL sub_100072CF8(void *a1, const char *a2, const char *a3, const char **a4)
{
  v26[0] = a2;
  v26[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v26, 1, 0);
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
      v24 = "expected '";
      v25 = 259;
      (*(*a1 + 24))(&v31, a1, v10, &v24);
      if (v31)
      {
        v30 = 261;
        v27 = a2;
        v28 = a3;
        mlir::Diagnostic::operator<<(v32, &v27);
        if (v31)
        {
          LODWORD(v27) = 3;
          v28 = "'";
          v29 = 1;
          v11 = &v27;
          v12 = v33;
          if (v34 >= v35)
          {
            if (v33 <= &v27 && v33 + 24 * v34 > &v27)
            {
              v23 = &v27 - v33;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v12 = v33;
              v11 = (v33 + v23);
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
          if (v31)
          {
            mlir::Diagnostic::operator<<(v32, a4);
          }
        }
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
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

        v15 = __p;
        if (__p)
        {
          v16 = v40;
          v17 = __p;
          if (v40 != __p)
          {
            do
            {
              v16 = sub_100052FFC(v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v40 = v15;
          operator delete(v17);
        }

        v18 = v37;
        if (v37)
        {
          v19 = v38;
          v20 = v37;
          if (v38 != v37)
          {
            do
            {
              v21 = *--v19;
              *v19 = 0;
              if (v21)
              {
                operator delete[]();
              }
            }

            while (v19 != v18);
            v20 = v37;
          }

          v38 = v18;
          operator delete(v20);
        }

        if (v33 != v36)
        {
          free(v33);
        }
      }
    }
  }

  return v5;
}

BOOL sub_100073068(uint64_t a1, const void *a2, size_t a3)
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

BOOL sub_1000731C0(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v7 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v3 = *(v2 + 8);
    a2 = v7;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v9, (*(v2 + 8) + 8));
    v6 = *(v2 + 8);
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    return 1;
  }

  return result;
}

BOOL sub_100073258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

BOOL sub_1000733E4(uint64_t a1, mlir::detail::Parser **a2, uint64_t *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t sub_10007341C(uint64_t a1, mlir::detail::Parser **a2, uint64_t *a3, uint64_t (*a4)(uint64_t, mlir::detail::Parser **, uint64_t *), uint64_t a5)
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

BOOL sub_1000734B8(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t sub_100073558(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v19 = *(v2 + 56);
  v20 = *(v2 + 72);
  if (v19 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v19, __p);
  v18 = 260;
  *&v16 = __p;
  *a2 = mlir::Builder::getStringAttr(v5, &v16, v6);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[2];
  v8 = *(v7 + 8);
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v16, (*(v7 + 8) + 8));
  v9 = *(v7 + 8);
  *(v9 + 56) = v16;
  *(v9 + 72) = v17;
  v10 = *(*(a1[2] + 8) + 152);
  if (v10)
  {
    v11 = mlir::SymbolRefAttr::get(*a2);
    *&v16 = mlir::Token::getLocRange(&v19);
    *(&v16 + 1) = v12;
    mlir::AsmParserState::addUses(v10, v11, &v16, 1);
  }

  return 1;
}

BOOL sub_1000736CC(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_100073700(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t, uint64_t **), uint64_t a4)
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

uint64_t sub_100073760(void *a1, unsigned int *a2)
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

uint64_t sub_1000737CC(uint64_t a1, unsigned int *a2)
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

BOOL sub_100073870(uint64_t a1, uint64_t **a2)
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

BOOL sub_1000738EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL sub_100073960(uint64_t a1, uint64_t a2)
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

void sub_100073A14(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (sub_10006575C(a2))
  {
    v6 = sub_10006575C(a2);
    __p = 0uLL;
    v35 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &__p, a3);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p.i64[0]);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v29 = 257;
    mlir::detail::Parser::emitError(&__p, v7, v28);
    if (!__p.i64[0])
    {
      goto LABEL_11;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v8 = &v30;
    v9 = v36;
    if (v37 >= v38)
    {
      if (v36 <= &v30 && v36 + 24 * v37 > &v30)
      {
        v26 = &v30 - v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v9 = v36;
        v8 = (v36 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
        v8 = &v30;
        v9 = v36;
      }
    }

    v10 = &v9[24 * v37];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v37;
    if (__p.i64[0] && (v12 = *(a2 + 8), v13 = *(a2 + 16), v33 = 261, v30 = v12, v31 = v13, mlir::Diagnostic::operator<<(&__p.i64[1], &v30), __p.i64[0]))
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v14 = &v30;
      v15 = v36;
      if (v37 >= v38)
      {
        if (v36 <= &v30 && v36 + 24 * v37 > &v30)
        {
          v27 = &v30 - v36;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v37 + 1, 24);
          v15 = v36;
          v14 = (v36 + v27);
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
      v18 = __p.i64[0];
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v19 = v42;
      if (v42)
      {
        v20 = v43;
        v21 = v42;
        if (v43 != v42)
        {
          do
          {
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = v42;
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
            v25 = *--v23;
            *v23 = 0;
            if (v25)
            {
              operator delete[]();
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
  }
}

uint64_t sub_100073D88(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  sub_1000658E8((v2 + 112), &v7, v8);
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

uint64_t sub_100073E20(uint64_t result)
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

BOOL sub_100073EC0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 16) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return sub_100065D14(a1, a2);
  }

  *a2 = "";
  a2[1] = 0;
  return 1;
}

uint64_t sub_100073EF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t sub_100073F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 65)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v18, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v18;
  *(v6 + 72) = v19;
  v21 = 0;
  v7 = *(a1 + 88);
  *&v18 = "expected '(' in location";
  v20 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v18))
  {
    v8 = *(a1 + 88);
    v9 = *(v8 + 1);
    if (*(v9 + 56) == 5 && ((v10 = *(v9 + 72)) == 0 || ((v11 = *(v9 + 64), v12 = *(a1 + 88), v13 = memchr(v11, 46, v10), v8 = v12, v13) ? (v14 = v13 - v11 == -1) : (v14 = 1), v14)))
    {
      if (!sub_1000757E8(v8, &v21))
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v21) & 1) == 0)
    {
      return 0;
    }

    v15 = *(a1 + 88);
    *&v18 = "expected ')' in location";
    v20 = 259;
    if (mlir::detail::Parser::parseToken(v15, 28, &v18))
    {
      v16 = v21;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v16;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000740AC@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = (*(result + 32) + 16);
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
        return result;
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

  return result;
}

uint64_t sub_100074134(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
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

uint64_t sub_1000741BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  v15 = *(v4 + 72);
  v13 = *(v3 + 400);
  v14 = v5;
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  v6 = sub_10006FD50(v3);
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

BOOL sub_1000742A4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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
  return sub_100075E24(v10, a2, &v18, &v16, &v14, &v12, a7, a8, a9, a10);
}

uint64_t sub_100074320(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0uLL;
  if (!sub_100077A2C(*(a1 + 88), &v6, a3))
  {
    return 0;
  }

  v4 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return 1;
}

uint64_t sub_100074390(void *a1, uint64_t a2, uint64_t a3)
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

BOOL sub_100074448(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v46 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v47 = *(v9 + 56), v48 = *(v9 + 72), v47 == 6) || mlir::Token::isCodeCompletionFor(&v47, 6))
  {
    v43[0] = a1;
    v43[1] = a2;
    v43[2] = &v46;
    Loc = mlir::Token::getLoc((*(a1[11] + 8) + 56));
    if (((*(*a1 + 392))(a1, a3, sub_10007A960, v43, " in operand list", 16) & 1) == 0)
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v44[0] = "expected ";
      v45 = 259;
      (*(*a1 + 24))(v49, a1, Loc, v44);
      if (v49[0])
      {
        LODWORD(v47) = 2;
        *(&v47 + 1) = a5;
        v11 = &v47;
        v12 = v50;
        if (v51 >= v52)
        {
          if (v50 <= &v47 && v50 + 24 * v51 > &v47)
          {
            v41 = &v47 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v12 = v50;
            v11 = v50 + v41;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v11 = &v47;
            v12 = v50;
          }
        }

        v13 = &v12[24 * v51];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        v15 = ++v51;
        if (v49[0])
        {
          LODWORD(v47) = 3;
          *(&v47 + 1) = " operands";
          v48 = 9;
          v16 = &v47;
          v17 = v50;
          if (v15 >= v52)
          {
            if (v50 <= &v47 && v50 + 24 * v15 > &v47)
            {
              v42 = &v47 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v15 + 1, 24);
              v17 = v50;
              v16 = v50 + v42;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v15 + 1, 24);
              v16 = &v47;
              v17 = v50;
            }
          }

          v18 = &v17[24 * v51];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v51;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      v21 = result;
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
        result = v21;
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v57;
          v24 = __p;
          if (v57 != __p)
          {
            do
            {
              v23 = sub_100052FFC(v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v57 = v22;
          operator delete(v24);
        }

        v25 = v54;
        result = v21;
        if (!v54)
        {
          goto LABEL_67;
        }

        v26 = v55;
        v27 = v54;
        if (v55 == v54)
        {
LABEL_66:
          v55 = v25;
          operator delete(v27);
          result = v21;
LABEL_67:
          if (v50 != v53)
          {
            free(v50);
            return v21;
          }

          return result;
        }

        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
LABEL_65:
        v27 = v54;
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

  if ((v47 - 21) > 1)
  {
    v35 = a1[11];
    v44[0] = "expected operand";
    v45 = 259;
    mlir::detail::Parser::emitWrongTokenError(v49, v35, v44);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    v21 = result;
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
      result = v21;
    }

    if (v59)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v21;
      }

      v36 = __p;
      if (__p)
      {
        v37 = v57;
        v38 = __p;
        if (v57 != __p)
        {
          do
          {
            v37 = sub_100052FFC(v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
        result = v21;
      }

      v25 = v54;
      if (!v54)
      {
        goto LABEL_67;
      }

      v39 = v55;
      v27 = v54;
      if (v55 == v54)
      {
        goto LABEL_66;
      }

      do
      {
        v40 = *--v39;
        *v39 = 0;
        if (v40)
        {
          operator delete[]();
        }
      }

      while (v39 != v25);
      goto LABEL_65;
    }
  }

  else
  {
    v29 = a1[11];
    v44[0] = "unexpected delimiter";
    v45 = 259;
    mlir::detail::Parser::emitError(v49, v29, v44);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    v21 = result;
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
      result = v21;
    }

    if (v59)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v21;
      }

      v30 = __p;
      if (__p)
      {
        v31 = v57;
        v32 = __p;
        if (v57 != __p)
        {
          do
          {
            v31 = sub_100052FFC(v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v57 = v30;
        operator delete(v32);
        result = v21;
      }

      v25 = v54;
      if (!v54)
      {
        goto LABEL_67;
      }

      v33 = v55;
      v27 = v54;
      if (v55 == v54)
      {
        goto LABEL_66;
      }

      do
      {
        v34 = *--v33;
        *v33 = 0;
        if (v34)
        {
          operator delete[]();
        }
      }

      while (v33 != v25);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t sub_100074A70(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  result = sub_100077394(v5, v10, a3);
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

uint64_t sub_100074AF8(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, const llvm::Twine *a5, uint64_t a6, uint64_t a7)
{
  v32 = v34;
  v33 = 0x200000000;
  v28[2] = &v32;
  __src = v31;
  v30 = &_mh_execute_header;
  v28[0] = a1;
  v28[1] = &__src;
  v27 = 0;
  if (mlir::detail::Parser::parseAffineMapOfSSAIds(*(a1 + 88), &v27, sub_10007AAEC, v28, a7))
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

BOOL sub_100074D10(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext ***a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
  return mlir::detail::Parser::parseAffineExprOfSSAIds(*(a1 + 88), a4, sub_10007AC28, v5);
}

uint64_t sub_100074D58(mlir::AsmParser *a1, uint64_t a2, int a3, int a4)
{
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

uint64_t sub_100074F10(void *a1)
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

uint64_t sub_100074F88(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
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
  return (*(*a1 + 392))(a1, a3, sub_10007AD64, v6, " in argument list", 17);
}

uint64_t sub_100075058(void *a1)
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

uint64_t sub_1000750D0(void *a1, mlir::Region **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(a1[11] + 8) + 56) == 20)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1000751F0(void *a1, uint64_t a2)
{
  v2 = *(a1[11] + 8);
  v4 = *(v2 + 56);
  v3 = v2 + 56;
  if (v4 == 7)
  {
    return (*(*a1 + 800))(a1, a2) | 0x100u;
  }

  v5 = a1;
  v6 = a2;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v3, 7);
  a2 = v6;
  v8 = isCodeCompletionFor;
  a1 = v5;
  if (v8)
  {
    return (*(*a1 + 800))(a1, a2) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100075294(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 800))(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v41 = v43;
  v42 = 0x400000000;
  if (sub_100076A78(v5, &v41))
  {
    if (v42)
    {
      v38 = v40;
      v39 = 0x400000000;
      *&v33 = "expected ':' in operand list";
      LOWORD(v35) = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, &v33) && mlir::detail::Parser::parseTypeListNoParens(v5, &v38))
      {
        v6 = v42;
        if (v42 == v39)
        {
          if (*(a3 + 12) < v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v42, 8);
            v6 = v42;
          }

          if (v6)
          {
            v7 = 0;
            v8 = 0;
            v9 = 32 * v6;
            while (1)
            {
              v10 = *&v41[v8 + 16];
              v33 = *&v41[v8];
              v34 = v10;
              v11 = sub_100077394(v5, &v33, *(v38 + v7));
              v12 = v11 == 0;
              if (!v11)
              {
                break;
              }

              v13 = *(a3 + 8);
              if (v13 >= *(a3 + 12))
              {
                v14 = v11;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v13 + 1, 8);
                v11 = v14;
                v13 = *(a3 + 8);
              }

              *(*a3 + 8 * v13) = v11;
              ++*(a3 + 8);
              v8 += 32;
              v7 += 8;
              if (v9 == v8)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v12 = 0;
          }
        }

        else
        {
          v28 = "expected ";
          v29 = 259;
          mlir::detail::Parser::emitError(&v33, v5, &v28);
          if (v33)
          {
            v30 = 5;
            v31 = v42;
            v16 = &v30;
            v17 = *(&v34 + 1);
            if (v35 >= v36)
            {
              if (*(&v34 + 1) <= &v30 && *(&v34 + 1) + 24 * v35 > &v30)
              {
                v26 = &v30 - *(&v34 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v35 + 1, 24);
                v17 = *(&v34 + 1);
                v16 = &v26[*(&v34 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v35 + 1, 24);
                v16 = &v30;
                v17 = *(&v34 + 1);
              }
            }

            v18 = v17 + 24 * v35;
            v19 = *v16;
            *(v18 + 16) = *(v16 + 2);
            *v18 = v19;
            v20 = ++v35;
            if (v33)
            {
              v30 = 3;
              v31 = " types to match operand list";
              v32 = 28;
              v21 = &v30;
              v22 = *(&v34 + 1);
              if (v20 >= v36)
              {
                if (*(&v34 + 1) <= &v30 && *(&v34 + 1) + 24 * v20 > &v30)
                {
                  v27 = &v30 - *(&v34 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v20 + 1, 24);
                  v22 = *(&v34 + 1);
                  v21 = &v27[*(&v34 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v20 + 1, 24);
                  v21 = &v30;
                  v22 = *(&v34 + 1);
                }
              }

              v23 = v22 + 24 * v35;
              v24 = *v21;
              *(v23 + 16) = *(v21 + 2);
              *v23 = v24;
              ++v35;
            }
          }

          v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
          if (v33)
          {
            mlir::InFlightDiagnostic::report(&v33);
          }

          if (v37[160] == 1)
          {
            sub_100052F18(&v33 + 1);
          }

          v12 = !v25;
        }
      }

      else
      {
        v12 = 1;
      }

      if (v38 != v40)
      {
        free(v38);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return (v12 & 1) == 0 && ((*(*a1 + 296))(a1) & 1) != 0;
}

uint64_t sub_10007573C(uint64_t (***a1)(mlir::detail::Parser **), uint64_t a2, uint64_t a3)
{
  if ((*a1)[36](a1))
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v6 = 1;
    v7 = mlir::detail::Parser::parseCommaSeparatedListUntil(a1[11], 28, sub_10007AEFC, v9, 1);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}

BOOL sub_1000757E8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v61 = *(v4 + 56);
  v62 = *(v4 + 72);
  v5 = v62;
  *(v4 + 80) = v61;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken(&v66, (*(a1 + 8) + 8));
  v6 = *(a1 + 8);
  *(v6 + 56) = v66;
  *(v6 + 72) = v67;
  if (v62)
  {
    v7 = (*(&v61 + 1) + 1);
  }

  else
  {
    v7 = *(&v61 + 1);
  }

  v8 = v62 - (v62 != 0);
  v9 = *(a1 + 8);
  v10 = *(v9 + 152);
  if (v10)
  {
    LocRange = mlir::Token::getLocRange(&v61);
    mlir::AsmParserState::addAttrAliasUses(v10, v7, v8, LocRange, v12);
    v9 = *(a1 + 8);
  }

  v13 = *(v9 + 104);
  v14 = llvm::StringMapImpl::hash(v7, v8);
  Key = llvm::StringMapImpl::FindKey(v13, v7, v8, v14);
  if (Key == -1 || Key == *(v13 + 8) || (v17 = *(*v13 + 8 * Key), (v18 = *(v17 + 8)) == 0))
  {
    v43 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - *(a1 + 360)) >> 3);
    v44 = mlir::UnknownLoc::get(***(a1 + 8), v16);
    *a2 = mlir::OpaqueLoc::get(v43, &unk_1002C5068, v44);
    Loc = mlir::Token::getLoc(&v61);
    v46 = *(a1 + 368);
    v47 = *(a1 + 376);
    if (v46 >= v47)
    {
      v50 = *(a1 + 360);
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v50) >> 3) + 1;
      if (v51 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10002BC08();
      }

      v52 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v52 > v51)
      {
        v51 = 2 * v52;
      }

      if (v52 >= 0x555555555555555)
      {
        v53 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (v53 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10002BC08();
      }

      v54 = (8 * ((v46 - v50) >> 3));
      *v54 = Loc;
      v54[1] = v7;
      v54[2] = v8;
      v48 = v54 + 3;
      v55 = v54 - (v46 - v50);
      memcpy(v55, v50, v46 - v50);
      *(a1 + 360) = v55;
      *(a1 + 368) = v48;
      *(a1 + 376) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v46 = Loc;
      v46[1] = v7;
      v48 = v46 + 3;
      v46[2] = v8;
    }

    *(a1 + 368) = v48;
    return 1;
  }

  if (mlir::LocationAttr::classof(*(v17 + 8)))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  if (v19)
  {
    return 1;
  }

  v20 = mlir::Token::getLoc(&v61);
  v60 = 257;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v20);
  mlir::emitError(EncodedSourceLocation, v59, &v66);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v66);
  }

  if (v66)
  {
    v63 = 3;
    v64 = "expected location, but found '";
    v65 = 30;
    v22 = &v63;
    v23 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v63 && v68 + 24 * v69 > &v63)
      {
        v56 = &v63 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v23 = v68;
        v22 = (v68 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v22 = &v63;
        v23 = v68;
      }
    }

    v24 = &v23[24 * v69];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v69;
    if (v66)
    {
      v26 = &v63;
      mlir::DiagnosticArgument::DiagnosticArgument(&v63, v18);
      v27 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v63 && v68 + 24 * v69 > &v63)
        {
          v57 = &v63 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v27 = v68;
          v26 = (v68 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v26 = &v63;
          v27 = v68;
        }
      }

      v28 = &v27[24 * v69];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      v30 = ++v69;
      if (v66)
      {
        v63 = 3;
        v64 = "'";
        v65 = 1;
        v31 = &v63;
        v32 = v68;
        if (v30 >= v70)
        {
          if (v68 <= &v63 && v68 + 24 * v30 > &v63)
          {
            v58 = &v63 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
            v32 = v68;
            v31 = (v68 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
            v31 = &v63;
            v32 = v68;
          }
        }

        v33 = &v32[24 * v69];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v69;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  v36 = result;
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
    result = v36;
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
      result = v36;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v75;
      v39 = __p;
      if (v75 != __p)
      {
        do
        {
          v38 = sub_100052FFC(v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v75 = v37;
      operator delete(v39);
      result = v36;
    }

    v40 = v72;
    if (v72)
    {
      v41 = v73;
      v42 = v72;
      if (v73 != v72)
      {
        do
        {
          v49 = *--v41;
          *v41 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v41 != v40);
        v42 = v72;
      }

      v73 = v40;
      operator delete(v42);
      result = v36;
    }

    if (v68 != v71)
    {
      free(v68);
      return v36;
    }
  }

  return result;
}

BOOL sub_100075E24(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v95 = a9;
  v96 = a10;
  v115 = v117;
  v116 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v100, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v100, *(&v100 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v100 = "expected '(' to start operand list";
    LOWORD(v102) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 21, &v100))
    {
      goto LABEL_59;
    }

    if ((sub_100076A78(a1, &v115) & 1) == 0)
    {
      goto LABEL_59;
    }

    v111 = "expected ')' to end operand list";
    v114 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 28, &v111))
    {
      goto LABEL_59;
    }

    v18 = v115;
    v19 = v116;
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

  if (*(*(a1 + 1) + 56) == 22)
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
      sub_100279394();
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    if (((*(*v20 + 4))(v20, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v111 = "successors in non-terminator";
      v114 = 259;
      mlir::detail::Parser::emitError(&v100, a1, &v111);
      v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
      if (v100)
      {
        mlir::InFlightDiagnostic::report(&v100);
      }

      if (v110[0] != 1)
      {
        goto LABEL_60;
      }

      if (v109 != v110)
      {
        free(v109);
      }

      v86 = __p;
      if (__p)
      {
        v87 = v108;
        v88 = __p;
        if (v108 != __p)
        {
          do
          {
            v87 = sub_100052FFC(v87 - 1);
          }

          while (v87 != v86);
          v88 = __p;
        }

        v108 = v86;
        operator delete(v88);
      }

      v82 = v105;
      if (v105)
      {
        v89 = v106;
        v84 = v105;
        if (v106 != v105)
        {
          do
          {
            v90 = *--v89;
            *v89 = 0;
            if (v90)
            {
              operator delete[]();
            }
          }

          while (v89 != v82);
          goto LABEL_108;
        }

LABEL_109:
        v106 = v82;
        operator delete(v84);
      }

LABEL_110:
      if (v101[1] != v104)
      {
        free(v101[1]);
      }

      goto LABEL_60;
    }

LABEL_14:
    v111 = v113;
    v112 = 0x200000000;
    *&v100 = "expected '['";
    LOWORD(v102) = 259;
    if (mlir::detail::Parser::parseToken(a1, 22, &v100) && (*&v100 = a1, *(&v100 + 1) = &v111, mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, sub_100078164, &v100, 0)))
    {
      mlir::BlockRange::BlockRange(&v100, v111, v112);
      mlir::OperationState::addSuccessors(a2, v100, *(&v100 + 1));
      v21 = 0;
      v22 = v111;
      if (v111 == v113)
      {
LABEL_20:
        if (v21)
        {
          goto LABEL_59;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v21 = 1;
      v22 = v111;
      if (v111 == v113)
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
    v23 = *(a1 + 1);
    if (*(v23 + 56) == 23)
    {
      *(v23 + 80) = *(v23 + 56);
      *(v23 + 96) = *(v23 + 72);
      mlir::Lexer::lexToken(&v100, (*(a1 + 1) + 8));
      v24 = *(a1 + 1);
      *(v24 + 56) = v100;
      *(v24 + 72) = v101[0];
      v27 = mlir::detail::Parser::parseAttribute(a1, 0, v25, v26);
      *(a2 + 248) = v27;
      if (!v27)
      {
        goto LABEL_59;
      }

      *&v100 = "expected '>' to close properties";
      LOWORD(v102) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 19, &v100))
      {
        goto LABEL_59;
      }
    }
  }

  if (*(a5 + 16))
  {
    mlir::OperationState::addRegions(a2, *a5, *(a5 + 8));
  }

  else
  {
    v28 = *(a1 + 1);
    if (*(v28 + 56) == 21)
    {
      *(v28 + 80) = *(v28 + 56);
      *(v28 + 96) = *(v28 + 72);
      mlir::Lexer::lexToken(&v100, (*(a1 + 1) + 8));
      v29 = *(a1 + 1);
      *(v29 + 56) = v100;
      *(v29 + 72) = v101[0];
      operator new();
    }
  }

  if (*(a6 + 16))
  {
    v31 = *a6;
    v30 = *(a6 + 8);
    *(a2 + 192) = 0;
    v32 = *(a2 + 120);
    if (v30 + v32 > *(a2 + 124))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v30 + v32, 16);
      LODWORD(v32) = *(a2 + 120);
    }

    if (v30)
    {
      memcpy((*(a2 + 112) + 16 * v32), v31, 16 * v30);
      LODWORD(v32) = *(a2 + 120);
    }

    *(a2 + 120) = v32 + v30;
  }

  else if (*(*(a1 + 1) + 56) == 20 && !mlir::detail::Parser::parseAttributeDict(a1, (a2 + 112)))
  {
    goto LABEL_59;
  }

  if (v96)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_40;
  }

  *&v100 = "expected ':' followed by operation type";
  LOWORD(v102) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, &v100) || (Loc = mlir::Token::getLoc((*(a1 + 1) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc), (v55 = mlir::detail::Parser::parseType(a1)) == 0))
  {
LABEL_59:
    v52 = 0;
    goto LABEL_60;
  }

  if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v111 = "expected function type";
    v114 = 259;
    mlir::emitError(EncodedSourceLocation, &v111, &v100);
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
    if (v100)
    {
      mlir::InFlightDiagnostic::report(&v100);
    }

    if (v110[0] == 1)
    {
      sub_100052F18(&v100 + 1);
    }

    goto LABEL_60;
  }

  if ((v96 & 1) == 0)
  {
    LOBYTE(v96) = 1;
  }

  v95 = v55;
LABEL_40:
  Results = mlir::FunctionType::getResults(&v95);
  v36 = v35;
  v37 = 8 * v35;
  v38 = *(a2 + 72);
  v39 = v38 + ((8 * v35) >> 3);
  if (v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v39, 8);
    LODWORD(v38) = *(a2 + 72);
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v38), Results, v37);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + (v37 >> 3);
  Inputs = mlir::FunctionType::getInputs(&v95);
  v42 = v41;
  v43 = *(a3 + 8);
  if (v41 != v43)
  {
    v57 = v43 == 1;
    v58 = "s";
    if (v57)
    {
      v58 = "";
    }

    v59 = *v58;
    v111 = "expected ";
    v114 = 259;
    mlir::emitError(EncodedSourceLocation, &v111, &v100);
    if (v100)
    {
      v60 = *(a3 + 8);
      v97 = 5;
      v98 = v60;
      v61 = &v97;
      v62 = v101[1];
      if (v102 >= v103)
      {
        if (v101[1] <= &v97 && v101[1] + 24 * v102 > &v97)
        {
          v91 = &v97 - v101[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v102 + 1, 24);
          v62 = v101[1];
          v61 = (v101[1] + v91);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v102 + 1, 24);
          v61 = &v97;
          v62 = v101[1];
        }
      }

      v63 = &v62[24 * v102];
      v64 = *v61;
      *(v63 + 2) = *(v61 + 2);
      *v63 = v64;
      v65 = ++v102;
      if (v100)
      {
        v97 = 3;
        v98 = " operand type";
        v99 = 13;
        v66 = &v97;
        v67 = v101[1];
        if (v65 >= v103)
        {
          if (v101[1] <= &v97 && v101[1] + 24 * v65 > &v97)
          {
            v92 = &v97 - v101[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v65 + 1, 24);
            v67 = v101[1];
            v66 = (v101[1] + v92);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v65 + 1, 24);
            v66 = &v97;
            v67 = v101[1];
          }
        }

        v68 = &v67[24 * v102];
        v69 = *v66;
        *(v68 + 2) = *(v66 + 2);
        *v68 = v69;
        ++v102;
        if (v100)
        {
          mlir::Diagnostic::operator<<(&v100 + 8, v59);
          if (v100)
          {
            v97 = 3;
            v98 = " but had ";
            v99 = 9;
            v70 = &v97;
            v71 = v101[1];
            if (v102 >= v103)
            {
              if (v101[1] <= &v97 && v101[1] + 24 * v102 > &v97)
              {
                v93 = &v97 - v101[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v102 + 1, 24);
                v71 = v101[1];
                v70 = (v101[1] + v93);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v102 + 1, 24);
                v70 = &v97;
                v71 = v101[1];
              }
            }

            v72 = &v71[24 * v102];
            v73 = *v70;
            *(v72 + 2) = *(v70 + 2);
            *v72 = v73;
            v74 = ++v102;
            if (v100)
            {
              v97 = 5;
              v98 = v42;
              v75 = &v97;
              v76 = v101[1];
              if (v74 >= v103)
              {
                if (v101[1] <= &v97 && v101[1] + 24 * v74 > &v97)
                {
                  v94 = &v97 - v101[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v74 + 1, 24);
                  v76 = v101[1];
                  v75 = (v101[1] + v94);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v101[1], v104, v74 + 1, 24);
                  v75 = &v97;
                  v76 = v101[1];
                }
              }

              v77 = &v76[24 * v102];
              v78 = *v75;
              *(v77 + 2) = *(v75 + 2);
              *v77 = v78;
              ++v102;
            }
          }
        }
      }
    }

    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
    if (v100)
    {
      mlir::InFlightDiagnostic::report(&v100);
    }

    if (v110[0] != 1)
    {
      goto LABEL_60;
    }

    if (v109 != v110)
    {
      free(v109);
    }

    v79 = __p;
    if (__p)
    {
      v80 = v108;
      v81 = __p;
      if (v108 != __p)
      {
        do
        {
          v80 = sub_100052FFC(v80 - 1);
        }

        while (v80 != v79);
        v81 = __p;
      }

      v108 = v79;
      operator delete(v81);
    }

    v82 = v105;
    if (v105)
    {
      v83 = v106;
      v84 = v105;
      if (v106 != v105)
      {
        do
        {
          v85 = *--v83;
          *v83 = 0;
          if (v85)
          {
            operator delete[]();
          }
        }

        while (v83 != v82);
LABEL_108:
        v84 = v105;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v41)
  {
    v44 = Inputs;
    v45 = 0;
    v46 = 32 * v41;
    while (1)
    {
      v47 = (*a3 + v45);
      v48 = v47[1];
      v100 = *v47;
      *v101 = v48;
      v49 = sub_100077394(a1, &v100, *v44);
      v50 = *(a2 + 24);
      if (v50 >= *(a2 + 28))
      {
        v53 = v49;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, (a2 + 32), v50 + 1, 8);
        v49 = v53;
        v50 = *(a2 + 24);
      }

      *(*(a2 + 16) + 8 * v50) = v49;
      v51 = *(a2 + 24) + 1;
      *(a2 + 24) = v51;
      if (!*(*(a2 + 16) + 8 * v51 - 8))
      {
        goto LABEL_59;
      }

      v45 += 32;
      ++v44;
      v52 = 1;
      if (v46 == v45)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = 1;
LABEL_60:
  if (v115 != v117)
  {
    free(v115);
  }

  return v52;
}

uint64_t sub_100076A78(uint64_t a1, uint64_t a2)
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
  if (sub_100077A2C(a1, &v24, 1))
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
        if (!sub_100077A2C(a1, &v24, 1))
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

uint64_t sub_100076C98(mlir::detail::Parser *a1, uint64_t *a2, const char **a3, unint64_t a4, int a5)
{
  v8 = *(a1 + 1);
  v14 = *(v8 + 56);
  v15 = *(v8 + 72);
  *&v16 = "expected '{' to begin a region";
  v18 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 20, &v16))
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
    mlir::Token::getLoc(&v14);
    sub_10006EDA4(a1, a5);
    operator new();
  }

  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken(&v16, (*(a1 + 1) + 8));
  v12 = *(a1 + 1);
  *(v12 + 56) = v16;
  *(v12 + 72) = v17[0];
  v13 = *(*(a1 + 1) + 152);
  if (v13)
  {
    mlir::AsmParserState::finalizeRegionDefinition(v13);
  }

  return 1;
}

uint64_t sub_100077394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = sub_100079B94((*(a1 + 16) + 88 * *(a1 + 24) - 88), *(a2 + 8), *(a2 + 16));
  v7 = v6;
  v8 = *(a2 + 24);
  v9 = *(v6 + 8);
  if (v9 <= v8)
  {
    v15 = (v8 + 1);
    if (v9 != v15)
    {
      if (v9 <= v15)
      {
        if (*(v6 + 12) < v15)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v15, 16);
          v9 = *(v7 + 8);
        }

        if (v9 != v15)
        {
          bzero((*v7 + 16 * v9), 16 * (v15 - v9));
        }
      }

      *(v7 + 8) = v15;
    }
  }

  else
  {
    v10 = *(*v6 + 16 * v8);
    if (v10)
    {
      if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
      {
        v11 = *a2;
        v55[0] = "use of value '";
        v56 = 259;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v11);
        mlir::emitError(EncodedSourceLocation, v55, &v57);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v57);
        }

        v64[0] = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v57)
        {
          v63 = 261;
          v13 = *(a2 + 16);
          v61 = *(a2 + 8);
          v62 = v13;
          mlir::Diagnostic::operator<<(&v58, &v61);
          sub_10007A10C(&v58, "' expects different type than prior uses: ", &v43, " vs ", v64);
        }

        v14 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v7 + 16 * *(a2 + 24) + 8));
        mlir::Diagnostic::attachNote(&v58, v14, 1);
      }

LABEL_22:
      v30 = *(*(a1 + 8) + 152);
      if (v30)
      {
        mlir::AsmParserState::addUses(v30, v10, a2, 1);
      }

      return v10;
    }
  }

  v16 = **v7;
  if (!v16)
  {
LABEL_19:
    v24 = *a2;
    v45 = a3;
    mlir::OperationName::OperationName(&v44, "builtin.unrealized_conversion_cast", 0x22uLL, ***(a1 + 8));
    v25 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v24);
    v26 = v44;
    mlir::TypeRange::TypeRange(&v61, &v45, 1uLL);
    mlir::ValueRange::ValueRange(v55, 0, 0);
    v57 = v59;
    v58 = 0x400000000;
    v60 = 4;
    mlir::BlockRange::BlockRange(v64, 0, 0);
    v27 = mlir::Operation::create(v25, v26, v61, v62, v55[0], v55[1], &v57, 0, v64[0], v64[1], 0);
    if (v57 != v59)
    {
      free(v57);
    }

    v10 = (v27 - 16);
    v57 = v27 - 16;
    *sub_10007A468(a1 + 336, &v57) = v24;
    v28 = *a2;
    v29 = (*v7 + 16 * *(a2 + 24));
    *v29 = v27 - 16;
    v29[1] = v28;
    goto LABEL_22;
  }

  v17 = *(a1 + 352);
  if (v17)
  {
    v18 = *(a1 + 336);
    v19 = 0x9DDFEA08EB382D69 * ((8 * **v7 - 0xAE502812AA7333) ^ HIDWORD(**v7));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v19 >> 47) ^ v19);
    v21 = v17 - 1;
    v22 = v21 & (-348639895 * ((v20 >> 47) ^ v20));
    v23 = *(v18 + 16 * v22);
    if (v23 == v16)
    {
      goto LABEL_19;
    }

    v32 = 1;
    while (v23 != -4096)
    {
      v33 = v22 + v32++;
      v22 = v33 & v21;
      v23 = *(v18 + 16 * v22);
      if (v23 == v16)
      {
        goto LABEL_19;
      }
    }
  }

  v34 = *a2;
  v57 = "reference to invalid result number";
  v59[8] = 259;
  v35 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v34);
  mlir::emitError(v35, &v57, v46);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(v46);
  }

  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v36 = v51;
    if (v51)
    {
      v37 = v52;
      v38 = v51;
      if (v52 != v51)
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = v51;
      }

      v52 = v36;
      operator delete(v38);
    }

    v39 = v49;
    if (v49)
    {
      v40 = v50;
      v41 = v49;
      if (v50 != v49)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v49;
      }

      v50 = v39;
      operator delete(v41);
    }

    if (v47 != &v48)
    {
      free(v47);
    }
  }

  return 0;
}

BOOL sub_100077A2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = mlir::Token::getLoc((v4 + 56));
    *&v63 = "expected SSA operand";
    LOWORD(v66) = 259;
    v38 = mlir::detail::Parser::parseToken(a1, 6, &v63);
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
        v57[0] = "result number not allowed in argument list";
        v59 = 259;
        mlir::detail::Parser::emitError(&v63, a1, v57);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        v46 = result;
        if (v63)
        {
          mlir::InFlightDiagnostic::report(&v63);
          result = v46;
        }

        if (v75 == 1)
        {
          if (v74 != &v75)
          {
            free(v74);
            result = v46;
          }

          v47 = v72;
          if (v72)
          {
            v48 = v73;
            v49 = v72;
            if (v73 != v72)
            {
              do
              {
                v48 = sub_100052FFC(v48 - 1);
              }

              while (v48 != v47);
              v49 = v72;
            }

            v73 = v47;
            operator delete(v49);
            result = v46;
          }

          v50 = v70;
          if (v70)
          {
            v51 = v71;
            v52 = v70;
            if (v71 != v70)
            {
              do
              {
                v53 = *--v51;
                *v51 = 0;
                if (v53)
                {
                  operator delete[]();
                }
              }

              while (v51 != v50);
              v52 = v70;
            }

            v71 = v50;
            operator delete(v52);
            result = v46;
          }

          if (v65 != &v67)
          {
            free(v65);
            return v46;
          }
        }

        return result;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber(v41);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v57[0] = "invalid SSA value result number";
        v59 = 259;
        mlir::detail::Parser::emitError(&v63, a1, v57);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        if (v63)
        {
          v44 = result;
          mlir::InFlightDiagnostic::report(&v63);
          result = v44;
        }

        if (v75 == 1)
        {
          v45 = result;
          sub_100052F18(&v63 + 1);
          return v45;
        }

        return result;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v54 = *(a1 + 8);
      *(v54 + 80) = *(v54 + 56);
      *(v54 + 96) = *(v54 + 72);
      mlir::Lexer::lexToken(&v63, (*(a1 + 8) + 8));
      v55 = *(a1 + 8);
      *(v55 + 56) = v63;
      *(v55 + 72) = v64;
    }

    return 1;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v56 = v6 + 88 * v5;
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
      if (v6 == v56)
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
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0;
      DWORD2(v63) = 0;
      v67 = 0;
      v68 = 1;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      *&v63 = &off_1002B45C0;
      v69 = v57;
      llvm::raw_ostream::SetBufferAndMode(&v63, 0, 0, 0);
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

        v62 = *(mlir::detail::OpResultImpl::getOwner(v17) + 48);
        mlir::OperationName::print(&v62, &v63);
        if (v65 - v66 <= 1)
        {
          v29 = &v63;
LABEL_36:
          llvm::raw_ostream::write(v29, ": ", 2uLL);
          goto LABEL_39;
        }

        *v66 = 8250;
        v66 += 2;
      }

      else
      {
        v27 = v66;
        if (v65 - v66 > 4)
        {
          *(v66 + 4) = 35;
          *v27 = 543650401;
          v66 += 5;
          v29 = llvm::raw_ostream::operator<<(&v63, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = llvm::raw_ostream::write(&v63, "arg #", 5uLL);
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
      v62 = *(v16 + 1) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&v62, &v63);
      if (*(v15 + 4) >= 2u)
      {
        v31 = v66;
        if (v65 - v66 > 4)
        {
          *(v66 + 4) = 46;
          *v31 = 774774828;
          v66 += 5;
        }

        else
        {
          llvm::raw_ostream::write(&v63, ", ...", 5uLL);
        }
      }

      v32 = *v15;
      v33 = *(*(a1 + 8) + 160);
      *__p = *v57;
      v61 = v58;
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0;
      (*(*v33 + 32))(v33, v15 + 5, v32, __p);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
        llvm::raw_ostream::~raw_ostream(&v63);
        if (SHIBYTE(v58) < 0)
        {
LABEL_47:
          operator delete(v57[0]);
          goto LABEL_48;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v63);
        if (SHIBYTE(v58) < 0)
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

uint64_t sub_10007809C(uint64_t a1, uint64_t a2)
{
  {
    sub_1002793D4();
  }

  return llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name;
}

const char *sub_1000780E4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
  v6 = 96;
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

BOOL sub_100078164(uint64_t a1)
{
  v2 = *a1;
  v8 = 0;
  result = sub_1000781F0(v2, &v8);
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

BOOL sub_1000781F0(mlir::detail::Parser *this, uint64_t *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    Loc = mlir::Token::getLoc((v3 + 7));
    v15 = sub_1000785A4(*(this + 26), *(this + 54), v13, v14);
    v16 = *v15;
    if (!*v15)
    {
      operator new();
    }

    v17 = *(this + 1);
    v18 = *(v17 + 152);
    if (v18)
    {
      mlir::AsmParserState::addUses(v18, v16, &Loc, 1);
      v16 = *v15;
      v17 = *(this + 1);
    }

    *a2 = v16;
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken(&v34, (*(this + 1) + 8));
    v19 = *(this + 1);
    *(v19 + 56) = v34;
    *(v19 + 72) = v35;
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

        v27 = &v7[4 * v8];
        if (i == v27)
        {
          return 0;
        }

        while (1)
        {
          v28 = *i;
          v29 = i[1];
          i += 4;
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v28, v29);
          if (i == v27)
          {
            break;
          }

          while (*i >= 0xFFFFFFFFFFFFFFFELL)
          {
            i += 4;
            if (i == v27)
            {
              return 0;
            }
          }

          v11 = 0;
          if (i == v27)
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
    v31 = "expected block name";
    v32 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v34, this, &v31);
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

      v20 = __p;
      if (__p)
      {
        v21 = v41;
        v22 = __p;
        if (v41 != __p)
        {
          do
          {
            v21 = sub_100052FFC(v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v41 = v20;
        operator delete(v22);
      }

      v23 = v38;
      if (v38)
      {
        v24 = v39;
        v25 = v38;
        if (v39 != v38)
        {
          do
          {
            v26 = *--v24;
            *v24 = 0;
            if (v26)
            {
              operator delete[]();
            }
          }

          while (v24 != v23);
          v25 = v38;
        }

        v39 = v23;
        operator delete(v25);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }
  }

  return v11;
}

char **sub_1000785A4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
  v6 = sub_1000786A0(v5, *(v4 - 8), &v11, &v12);
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

    sub_1000788C8(v4 - 24, v9);
    sub_1000786A0(*(v4 - 24), *(v4 - 8), &v11, &v13);
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

uint64_t sub_1000786A0(uint64_t a1, int a2, uint64_t a3, char ***a4)
{
  if (!a2)
  {
    v14 = 0;
    result = 0;
    goto LABEL_44;
  }

  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a3, *(a3 + 8));
  v9 = a2 - 1;
  v10 = *a3;
  v11 = *(a3 + 8);
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

void sub_1000788C8(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
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
      v10 = &buffer[2 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_10028F1D0;
        *v13 = xmmword_10028F1D0;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = xmmword_10028F1D0;
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
          sub_1000786A0(*a1, *(a1 + 16), v18, &v25);
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

    llvm::deallocate_buffer(v4, v16, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      if (((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_25;
      }

      v21 = ((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v21 & 0xFFFFFFFFFFFFFFELL)];
      v22 = buffer + 2;
      v23 = v21 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v22 - 2) = xmmword_10028F1D0;
        *v22 = xmmword_10028F1D0;
        v22 += 4;
        v23 -= 2;
      }

      while (v23);
      if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_25:
        v24 = &buffer[2 * v20];
        do
        {
          *v10 = xmmword_10028F1D0;
          v10 += 2;
        }

        while (v10 != v24);
      }
    }
  }
}