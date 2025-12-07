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
  if (*(*(a1[11] + 8) + 56) == 20)
  {
    operator new();
  }

  return 0;
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

BOOL anonymous namespace::OperationParser::parseLocationAlias(uint64_t a1, uint64_t *a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v87 = *(v4 + 56);
  v88 = *(v4 + 72);
  v5 = v88;
  *(v4 + 80) = v87;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken(&v93, (*(a1 + 8) + 8));
  v8 = *(a1 + 8);
  *(v8 + 56) = v93;
  *(v8 + 72) = v94;
  if (v88)
  {
    v10 = (*(&v87 + 1) + 1);
  }

  else
  {
    v10 = *(&v87 + 1);
  }

  v9 = v88 != 0;
  v11 = (v88 - v9);
  if (v88 >= 2)
  {
    v12 = memchr(v10, 46, v88 - v9);
    if (v12 && v12 - v10 != -1)
    {
      SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v87);
      v86 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, SrcSymbol);
      mlir::emitError(EncodedSourceLocation, &v83, &v93);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v93);
      }

      if (v93)
      {
        LODWORD(v89) = 3;
        v90 = "expected location, but found dialect attribute: '#";
        v91 = 50;
        v61 = &v89;
        v62 = v95;
        if (v96 >= v97)
        {
          if (v95 <= &v89 && v95 + 24 * v96 > &v89)
          {
            v78 = &v89 - v95;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
            v62 = v95;
            v61 = (v95 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
            v61 = &v89;
            v62 = v95;
          }
        }

        v63 = &v62[24 * v96];
        v64 = *v61;
        *(v63 + 2) = v61[2];
        *v63 = v64;
        ++v96;
        if (v93)
        {
          v92 = 261;
          v89 = v10;
          v90 = v11;
          mlir::Diagnostic::operator<<(&v93 + 8, &v89);
          if (v93)
          {
            LODWORD(v89) = 3;
            v90 = "'";
            v91 = 1;
            v65 = &v89;
            v66 = v95;
            if (v96 >= v97)
            {
              if (v95 <= &v89 && v95 + 24 * v96 > &v89)
              {
                v79 = &v89 - v95;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                v66 = v95;
                v65 = (v95 + v79);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                v65 = &v89;
                v66 = v95;
              }
            }

            v67 = &v66[24 * v96];
            v68 = *v65;
            *(v67 + 2) = v65[2];
            *v67 = v68;
            ++v96;
          }
        }
      }

      v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
      if (v93)
      {
        mlir::InFlightDiagnostic::report(&v93);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v69 = __p;
        if (__p)
        {
          v70 = v102;
          v71 = __p;
          if (v102 != __p)
          {
            do
            {
              v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
            }

            while (v70 != v69);
            v71 = __p;
          }

          v102 = v69;
          operator delete(v71);
        }

        v44 = v99;
        if (!v99)
        {
          goto LABEL_86;
        }

        v72 = v100;
        v46 = v99;
        if (v100 == v99)
        {
LABEL_85:
          v100 = v44;
          operator delete(v46);
LABEL_86:
          if (v95 != v98)
          {
            free(v95);
          }

          return v40;
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

        while (v72 != v44);
LABEL_84:
        v46 = v99;
        goto LABEL_85;
      }

      return v40;
    }
  }

  v14 = *(a1 + 8);
  v15 = *(v14 + 152);
  if (v15)
  {
    LocRange = mlir::Token::getLocRange(&v87);
    mlir::AsmParserState::addAttrAliasUses(v15, v10, v11, LocRange, v17);
    v14 = *(a1 + 8);
  }

  v18 = *(v14 + 104);
  v19 = llvm::StringMapImpl::hash(v10, v11, v6, v7);
  Key = llvm::StringMapImpl::FindKey(v18, v10, v11, v19);
  if (Key == -1 || Key == *(v18 + 8) || (v22 = *(*v18 + 8 * Key), (v23 = *(v22 + 8)) == 0))
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - *(a1 + 360)) >> 3);
    v48 = mlir::UnknownLoc::get(***(a1 + 8), v21);
    v49 = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v87);
    v50 = *(a1 + 368);
    v51 = *(a1 + 376);
    if (v50 >= v51)
    {
      v55 = *(a1 + 360);
      v56 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v55) >> 3) + 1;
      if (v56 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      v57 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v55) >> 3);
      if (2 * v57 > v56)
      {
        v56 = 2 * v57;
      }

      if (v57 >= 0x555555555555555)
      {
        v58 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v58 = v56;
      }

      if (v58)
      {
        if (v58 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      v75 = (8 * ((v50 - v55) >> 3));
      *v75 = v49;
      v75[1] = v10;
      v75[2] = v11;
      v52 = v75 + 3;
      v76 = v75 - (v50 - v55);
      memcpy(v76, v55, v50 - v55);
      *(a1 + 360) = v76;
      *(a1 + 368) = v52;
      *(a1 + 376) = 0;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      *v50 = v49;
      v50[1] = v10;
      v52 = v50 + 3;
      v50[2] = v11;
    }

    *(a1 + 368) = v52;
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

  *a2 = v24;
  if (v24)
  {
    return 1;
  }

  v25 = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v87);
  v92 = 257;
  v26 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v25);
  mlir::emitError(v26, &v89, &v93);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v93);
  }

  if (v93)
  {
    v83 = 3;
    v84 = "expected location, but found '";
    v85 = 30;
    v27 = &v83;
    v28 = v95;
    if (v96 >= v97)
    {
      if (v95 <= &v83 && v95 + 24 * v96 > &v83)
      {
        v80 = &v83 - v95;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v28 = v95;
        v27 = (v95 + v80);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v27 = &v83;
        v28 = v95;
      }
    }

    v29 = &v28[24 * v96];
    v30 = *v27;
    *(v29 + 2) = *(v27 + 2);
    *v29 = v30;
    ++v96;
    if (v93)
    {
      v31 = &v83;
      mlir::DiagnosticArgument::DiagnosticArgument(&v83, v23);
      v32 = v95;
      if (v96 >= v97)
      {
        if (v95 <= &v83 && v95 + 24 * v96 > &v83)
        {
          v81 = &v83 - v95;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
          v32 = v95;
          v31 = (v95 + v81);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
          v31 = &v83;
          v32 = v95;
        }
      }

      v33 = &v32[24 * v96];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v96;
      if (v93)
      {
        v83 = 3;
        v84 = "'";
        v85 = 1;
        v36 = &v83;
        v37 = v95;
        if (v35 >= v97)
        {
          if (v95 <= &v83 && v95 + 24 * v35 > &v83)
          {
            v82 = &v83 - v95;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v35 + 1, 24);
            v37 = v95;
            v36 = (v95 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v35 + 1, 24);
            v36 = &v83;
            v37 = v95;
          }
        }

        v38 = &v37[24 * v96];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v96;
      }
    }
  }

  v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
  if (v93)
  {
    mlir::InFlightDiagnostic::report(&v93);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v102;
      v43 = __p;
      if (v102 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v102 = v41;
      operator delete(v43);
    }

    v44 = v99;
    if (!v99)
    {
      goto LABEL_86;
    }

    v45 = v100;
    v46 = v99;
    if (v100 == v99)
    {
      goto LABEL_85;
    }

    do
    {
      v54 = *--v45;
      v53 = v54;
      *v45 = 0;
      if (v54)
      {
        MEMORY[0x1AC55A040](v53, 0x1000C8077774924);
      }
    }

    while (v45 != v44);
    goto LABEL_84;
  }

  return v40;
}

BOOL anonymous namespace::OperationParser::parseGenericOperationAfterOpName(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v120[32] = *MEMORY[0x1E69E9840];
  v98 = a9;
  v99 = a10;
  v118 = v120;
  v119 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v103, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v103, *(&v103 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v103 = "expected '(' to start operand list";
    LOWORD(v105) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 21, &v103))
    {
      goto LABEL_59;
    }

    {
      goto LABEL_59;
    }

    v114 = "expected ')' to end operand list";
    v117 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 28, &v114))
    {
      goto LABEL_59;
    }

    v18 = v118;
    v19 = v119;
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
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    if (((*(*v20 + 4))(v20, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v114 = "successors in non-terminator";
      v117 = 259;
      mlir::detail::Parser::emitError(a1, &v114, &v103);
      v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
      if (v103)
      {
        mlir::InFlightDiagnostic::report(&v103);
      }

      if (v113[0] != 1)
      {
        goto LABEL_60;
      }

      if (v112 != v113)
      {
        free(v112);
      }

      v88 = __p;
      if (__p)
      {
        v89 = v111;
        v90 = __p;
        if (v111 != __p)
        {
          do
          {
            v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
          }

          while (v89 != v88);
          v90 = __p;
        }

        v111 = v88;
        operator delete(v90);
      }

      v83 = v108;
      if (v108)
      {
        v91 = v109;
        v85 = v108;
        if (v109 != v108)
        {
          do
          {
            v93 = *--v91;
            v92 = v93;
            *v91 = 0;
            if (v93)
            {
              MEMORY[0x1AC55A040](v92, 0x1000C8077774924);
            }
          }

          while (v91 != v83);
          goto LABEL_108;
        }

LABEL_109:
        v109 = v83;
        operator delete(v85);
      }

LABEL_110:
      if (v104[1] != v107)
      {
        free(v104[1]);
      }

      goto LABEL_60;
    }

LABEL_14:
    v114 = v116;
    v115 = 0x200000000;
    *&v103 = "expected '['";
    LOWORD(v105) = 259;
    {
      mlir::BlockRange::BlockRange(&v103, v114, v115);
      mlir::OperationState::addSuccessors(a2, v103, *(&v103 + 1));
      v21 = 0;
      v22 = v114;
      if (v114 == v116)
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
      v22 = v114;
      if (v114 == v116)
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
      mlir::Lexer::lexToken(&v103, (*(a1 + 1) + 8));
      v24 = *(a1 + 1);
      *(v24 + 56) = v103;
      *(v24 + 72) = v104[0];
      v27 = mlir::detail::Parser::parseAttribute(a1, 0, v25, v26);
      *(a2 + 248) = v27;
      if (!v27)
      {
        goto LABEL_59;
      }

      *&v103 = "expected '>' to close properties";
      LOWORD(v105) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 19, &v103))
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
      mlir::Lexer::lexToken(&v103, (*(a1 + 1) + 8));
      v29 = *(a1 + 1);
      *(v29 + 56) = v103;
      *(v29 + 72) = v104[0];
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

  if (v99)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_40;
  }

  *&v103 = "expected ':' followed by operation type";
  LOWORD(v105) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, &v103) || (SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 1) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, SrcSymbol), (v56 = mlir::detail::Parser::parseType(a1)) == 0))
  {
LABEL_59:
    v53 = 0;
    goto LABEL_60;
  }

  if (*(*v56 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v114 = "expected function type";
    v117 = 259;
    mlir::emitError(EncodedSourceLocation, &v114, &v103);
    v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
    if (v103)
    {
      mlir::InFlightDiagnostic::report(&v103);
    }

    if (v113[0] == 1)
    {
      mlir::Diagnostic::~Diagnostic((&v103 + 8));
    }

    goto LABEL_60;
  }

  if ((v99 & 1) == 0)
  {
    LOBYTE(v99) = 1;
  }

  v98 = v56;
LABEL_40:
  Results = mlir::FunctionType::getResults(&v98);
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
  Inputs = mlir::FunctionType::getInputs(&v98);
  v43 = v41;
  v44 = *(a3 + 8);
  if (v41 != v44)
  {
    v58 = v44 == 1;
    v59 = "s";
    if (v58)
    {
      v59 = "";
    }

    v60 = *v59;
    v114 = "expected ";
    v117 = 259;
    mlir::emitError(EncodedSourceLocation, &v114, &v103);
    if (v103)
    {
      v61 = *(a3 + 8);
      v100 = 5;
      v101 = v61;
      v62 = &v100;
      v63 = v104[1];
      if (v105 >= v106)
      {
        if (v104[1] <= &v100 && v104[1] + 24 * v105 > &v100)
        {
          v94 = &v100 - v104[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v105 + 1, 24);
          v63 = v104[1];
          v62 = (v104[1] + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v105 + 1, 24);
          v62 = &v100;
          v63 = v104[1];
        }
      }

      v64 = &v63[24 * v105];
      v65 = *v62;
      *(v64 + 2) = *(v62 + 2);
      *v64 = v65;
      v66 = ++v105;
      if (v103)
      {
        v100 = 3;
        v101 = " operand type";
        v102 = 13;
        v67 = &v100;
        v68 = v104[1];
        if (v66 >= v106)
        {
          if (v104[1] <= &v100 && v104[1] + 24 * v66 > &v100)
          {
            v95 = &v100 - v104[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v66 + 1, 24);
            v68 = v104[1];
            v67 = (v104[1] + v95);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v66 + 1, 24);
            v67 = &v100;
            v68 = v104[1];
          }
        }

        v69 = &v68[24 * v105];
        v70 = *v67;
        *(v69 + 2) = *(v67 + 2);
        *v69 = v70;
        ++v105;
        if (v103)
        {
          mlir::Diagnostic::operator<<(&v103 + 8, v60);
          if (v103)
          {
            v100 = 3;
            v101 = " but had ";
            v102 = 9;
            v71 = &v100;
            v72 = v104[1];
            if (v105 >= v106)
            {
              if (v104[1] <= &v100 && v104[1] + 24 * v105 > &v100)
              {
                v96 = &v100 - v104[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v105 + 1, 24);
                v72 = v104[1];
                v71 = (v104[1] + v96);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v105 + 1, 24);
                v71 = &v100;
                v72 = v104[1];
              }
            }

            v73 = &v72[24 * v105];
            v74 = *v71;
            *(v73 + 2) = *(v71 + 2);
            *v73 = v74;
            v75 = ++v105;
            if (v103)
            {
              v100 = 5;
              v101 = v43;
              v76 = &v100;
              v77 = v104[1];
              if (v75 >= v106)
              {
                if (v104[1] <= &v100 && v104[1] + 24 * v75 > &v100)
                {
                  v97 = &v100 - v104[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v75 + 1, 24);
                  v77 = v104[1];
                  v76 = (v104[1] + v97);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v104[1], v107, v75 + 1, 24);
                  v76 = &v100;
                  v77 = v104[1];
                }
              }

              v78 = &v77[24 * v105];
              v79 = *v76;
              *(v78 + 2) = *(v76 + 2);
              *v78 = v79;
              ++v105;
            }
          }
        }
      }
    }

    v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v103);
    if (v103)
    {
      mlir::InFlightDiagnostic::report(&v103);
    }

    if (v113[0] != 1)
    {
      goto LABEL_60;
    }

    if (v112 != v113)
    {
      free(v112);
    }

    v80 = __p;
    if (__p)
    {
      v81 = v111;
      v82 = __p;
      if (v111 != __p)
      {
        do
        {
          v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
        }

        while (v81 != v80);
        v82 = __p;
      }

      v111 = v80;
      operator delete(v82);
    }

    v83 = v108;
    if (v108)
    {
      v84 = v109;
      v85 = v108;
      if (v109 != v108)
      {
        do
        {
          v87 = *--v84;
          v86 = v87;
          *v84 = 0;
          if (v87)
          {
            MEMORY[0x1AC55A040](v86, 0x1000C8077774924);
          }
        }

        while (v84 != v83);
LABEL_108:
        v85 = v108;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v41)
  {
    v45 = Inputs;
    v46 = 0;
    v47 = 32 * v41;
    while (1)
    {
      v48 = (*a3 + v46);
      v49 = v48[1];
      v103 = *v48;
      *v104 = v49;
      v51 = *(a2 + 24);
      if (v51 >= *(a2 + 28))
      {
        v54 = v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, (a2 + 32), v51 + 1, 8);
        v50 = v54;
        v51 = *(a2 + 24);
      }

      *(*(a2 + 16) + 8 * v51) = v50;
      v52 = *(a2 + 24) + 1;
      *(a2 + 24) = v52;
      if (!*(*(a2 + 16) + 8 * v52 - 8))
      {
        goto LABEL_59;
      }

      v46 += 32;
      ++v45;
      v53 = 1;
      if (v47 == v46)
      {
        goto LABEL_60;
      }
    }
  }

  v53 = 1;
LABEL_60:
  if (v118 != v120)
  {
    free(v118);
  }

  return v53;
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

uint64_t anonymous namespace::OperationParser::parseRegion(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1);
  v12 = *(v6 + 56);
  v13 = *(v6 + 72);
  v14[0] = "expected '{' to begin a region";
  v16 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 20, v14))
  {
    return 0;
  }

  v7 = *(*(a1 + 1) + 152);
  if (v7)
  {
    mlir::AsmParserState::startRegionDefinition(v7);
  }

  if (a4 || (v8 = *(a1 + 1), *(v8 + 56) != 27))
  {
    ZinCcdmaLayerMirInfo::GetSrcSymbol(&v12);
  }

  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(v14, (*(a1 + 1) + 8));
  v10 = *(a1 + 1);
  *(v10 + 56) = *v14;
  *(v10 + 72) = v15[0];
  v11 = *(*(a1 + 1) + 152);
  if (v11)
  {
    mlir::AsmParserState::finalizeRegionDefinition(v11);
  }

  return 1;
}

uint64_t anonymous namespace::OperationParser::resolveSSAUse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v66[2] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v8 = v7;
  v9 = *(a2 + 24);
  v10 = *(v7 + 8);
  if (v10 <= v9)
  {
    v16 = (v9 + 1);
    if (v10 != v16)
    {
      if (v10 <= v16)
      {
        if (*(v7 + 12) < v16)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v16, 16);
          v10 = *(v8 + 8);
        }

        if (v10 != v16)
        {
          bzero((*v8 + 16 * v10), 16 * (v16 - v10));
        }
      }

      *(v8 + 8) = v16;
    }
  }

  else
  {
    v11 = *(*v7 + 16 * v9);
    if (v11)
    {
      if ((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
      {
        v12 = *a2;
        v57[0] = "use of value '";
        v58 = 259;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v12);
        mlir::emitError(EncodedSourceLocation, v57, &v59);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v59);
        }

        v66[0] = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v59)
        {
          v65 = 261;
          v14 = *(a2 + 16);
          v63 = *(a2 + 8);
          v64 = v14;
          mlir::Diagnostic::operator<<(&v60, &v63);
          mlir::Diagnostic::append<char const(&)[43],mlir::Type &,char const(&)[5],mlir::Type>(&v60, "' expects different type than prior uses: ", &v45, " vs ", v66);
        }

        v15 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v8 + 16 * *(a2 + 24) + 8));
        mlir::Diagnostic::attachNote(&v60, v15, 1);
      }

LABEL_22:
      v31 = *(*(a1 + 8) + 152);
      if (v31)
      {
        mlir::AsmParserState::addUses(v31, v11, a2, 1);
      }

      return v11;
    }
  }

  v17 = **v8;
  if (!v17)
  {
LABEL_19:
    v25 = *a2;
    v47 = a3;
    mlir::OperationName::OperationName(&v46, "builtin.unrealized_conversion_cast", 34, ***(a1 + 8));
    v26 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v25);
    v27 = v46;
    mlir::ValueRange::ValueRange(&v63, &v47, 1uLL);
    mlir::ValueRange::ValueRange(v57, 0, 0);
    v59 = v61;
    v60 = 0x400000000;
    v62 = 4;
    mlir::BlockRange::BlockRange(v66, 0, 0);
    v28 = mlir::Operation::create(v26, v27, v63, v64, v57[0], v57[1], &v59, 0, v66[0], v66[1], 0);
    if (v59 != v61)
    {
      free(v59);
    }

    v11 = (v28 - 16);
    v59 = v28 - 16;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](a1 + 336, &v59) = v25;
    v29 = *a2;
    v30 = (*v8 + 16 * *(a2 + 24));
    *v30 = v28 - 16;
    v30[1] = v29;
    goto LABEL_22;
  }

  v18 = *(a1 + 352);
  if (v18)
  {
    v19 = *(a1 + 336);
    v20 = 0x9DDFEA08EB382D69 * ((8 * **v8 - 0xAE502812AA7333) ^ HIDWORD(**v8));
    v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
    v22 = v18 - 1;
    v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
    v24 = *(v19 + 16 * v23);
    if (v24 == v17)
    {
      goto LABEL_19;
    }

    v33 = 1;
    while (v24 != -4096)
    {
      v34 = v23 + v33++;
      v23 = v34 & v22;
      v24 = *(v19 + 16 * v23);
      if (v24 == v17)
      {
        goto LABEL_19;
      }
    }
  }

  v35 = *a2;
  v59 = "reference to invalid result number";
  v61[8] = 259;
  v36 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v35);
  mlir::emitError(v36, &v59, v48);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(v48);
  }

  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v37 = v53;
    if (v53)
    {
      v38 = v54;
      v39 = v53;
      if (v54 != v53)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = v53;
      }

      v54 = v37;
      operator delete(v39);
    }

    v40 = v51;
    if (v51)
    {
      v41 = v52;
      v42 = v51;
      if (v52 != v51)
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
        v42 = v51;
      }

      v52 = v40;
      operator delete(v42);
    }

    if (v49 != &v50)
    {
      free(v49);
    }
  }

  return 0;
}

BOOL anonymous namespace::OperationParser::parseSSAUse(uint64_t a1, uint64_t a2, char a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = ZinCcdmaLayerMirInfo::GetSrcSymbol((v4 + 56));
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
                  MEMORY[0x1AC55A040](v53, 0x1000C8077774924);
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
      *&v64 = &unk_1F1A362A8;
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
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((v3 + 7));
    v16 = *BlockInfoByName;
    if (!*BlockInfoByName)
    {
      operator new();
    }

    v17 = *(this + 1);
    v18 = *(v17 + 152);
    if (v18)
    {
      mlir::AsmParserState::addUses(v18, v16, &SrcSymbol, 1);
      v16 = *BlockInfoByName;
      v17 = *(this + 1);
    }

    *a2 = v16;
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken(&v35, (*(this + 1) + 8));
    v19 = *(this + 1);
    *(v19 + 56) = v35;
    *(v19 + 72) = v36;
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

        v28 = &v7[4 * v8];
        if (i == v28)
        {
          return 0;
        }

        while (1)
        {
          v29 = *i;
          v30 = i[1];
          i += 4;
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v29, v30);
          if (i == v28)
          {
            break;
          }

          while (*i >= 0xFFFFFFFFFFFFFFFELL)
          {
            i += 4;
            if (i == v28)
            {
              return 0;
            }
          }

          v11 = 0;
          if (i == v28)
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
    v32 = "expected block name";
    v33 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v32, &v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v42;
        v22 = __p;
        if (v42 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v42 = v20;
        operator delete(v22);
      }

      v23 = v39;
      if (v39)
      {
        v24 = v40;
        v25 = v39;
        if (v40 != v39)
        {
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
          v25 = v39;
        }

        v40 = v23;
        operator delete(v25);
      }

      if (v37 != &v38)
      {
        free(v37);
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
        *(v13 - 2) = xmmword_1A75AD9C0;
        *v13 = xmmword_1A75AD9C0;
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
          *v10 = xmmword_1A75AD9C0;
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
      *(v22 - 2) = xmmword_1A75AD9C0;
      *v22 = xmmword_1A75AD9C0;
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
        *v10 = xmmword_1A75AD9C0;
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
    llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v18, a2, &v21);
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

void *llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::grow(uint64_t a1, int a2)
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
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = ((v25 >> 4) ^ (v25 >> 9)) & v16;
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = &result[2 * (v31 & v16)];
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
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

char *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<mlir::Region*>(uint64_t a1, void *a2)
{
  v26 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v26);
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
      MEMORY[0x1AC55A070]();
    }

    v7 -= 8;
  }

  while (v7);
  v9 = *a1;
LABEL_18:
  v23 = v26;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v5;
  v24 = *(a1 + 8) + 1;
  *(a1 + 8) = v24;
  *(a1 + 12) = v23;
  return &v5[8 * v24 - 8];
}

BOOL anonymous namespace::OperationParser::parseBlock(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(this + 1);
  if (*a2 && *(v5 + 56) != 7)
  {
    *(this + 50) = v4;
    *(this + 51) = v4 + 32;
    while (1)
    {
      v27 = *(*(this + 1) + 56);
      if (v27 == 7 || v27 == 27)
      {
        break;
      }

      {
        return 0;
      }
    }

    return 1;
  }

  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((v5 + 56));
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v53 = "expected block name";
  LOWORD(v56) = 259;
  if (!mlir::detail::Parser::parseToken(this, 7, &v53))
  {
    return 0;
  }

  v11 = BlockInfoByName;
  BlockInfoByName[1] = SrcSymbol;
  v12 = *BlockInfoByName;
  if (!*BlockInfoByName)
  {
    v19 = *a2;
    if (!*a2)
    {
      operator new();
    }

    v20 = 0;
    *BlockInfoByName = v19;
    v21 = *(this + 1);
    v22 = *(v21 + 152);
    if (!v22)
    {
      goto LABEL_9;
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
          v53 = "expected ':' after block name";
          LOWORD(v56) = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v53))
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
          MEMORY[0x1AC55A070]();
          return 0;
        }

        return 0;
      }

LABEL_8:
      mlir::AsmParserState::addDefinition(v22, v19, SrcSymbol);
      v19 = *v11;
      v21 = *(this + 1);
      goto LABEL_9;
    }

    v29 = 1;
    while (v18 != -4096)
    {
      v30 = v17 + v29++;
      v17 = v30 & v16;
      v18 = *(v15 + 16 * v17);
      if (v18 == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v46[0] = "redefinition of block '";
  v47 = 259;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, SrcSymbol);
  mlir::emitError(EncodedSourceLocation, v46, &v53);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v53);
  }

  if (v53)
  {
    v51 = 261;
    v48 = v8;
    v49 = v9;
    mlir::Diagnostic::operator<<(v54, &v48);
    if (v53)
    {
      LODWORD(v48) = 3;
      v49 = "'";
      v50 = 1;
      v32 = &v48;
      v33 = v55;
      if (v56 >= v57)
      {
        if (v55 <= &v48 && v55 + 24 * v56 > &v48)
        {
          v45 = &v48 - v55;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v33 = v55;
          v32 = (v55 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v32 = &v48;
          v33 = v55;
        }
      }

      v34 = &v33[24 * v56];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++v56;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  v36 = result;
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
    result = v36;
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
      result = v36;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v62;
      v39 = __p;
      if (v62 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v62 = v37;
      operator delete(v39);
      result = v36;
    }

    v40 = v59;
    if (v59)
    {
      v41 = v60;
      v42 = v59;
      if (v60 != v59)
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
        v42 = v59;
      }

      v60 = v40;
      operator delete(v42);
      result = v36;
    }

    if (v55 != v58)
    {
      free(v55);
      return v36;
    }
  }

  return result;
}

void anonymous namespace::OperationParser::popSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v1 = *(this + 34);
  v2 = v1 + 24 * *(this + 70);
  *(v2 - 24) = 0;
  *(v2 - 16) = 0;
  *(v2 - 8) = 0;
  LODWORD(v2) = *(this + 70) - 1;
  *(this + 70) = v2;
  llvm::deallocate_buffer(*(v1 + 24 * v2), (16 * *(v1 + 24 * v2 + 16)));
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
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&v6[1] + 8, v5);
    mlir::Block::addArgument(**(a1 + 16), a3, EncodedSourceLocation);
  }

  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = *(**(a1 + 16) + 48);
  if (v8 >= ((*(**(a1 + 16) + 56) - v9) >> 3))
  {
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
          MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
        }
      }

      while (v26 != v15);
      goto LABEL_42;
    }
  }

  else
  {
    *v7 = v8 + 1;
    v10 = *(v9 + 8 * v8);
    if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      {
        v22 = *(*&v6[1] + 152);
        if (v22)
        {
          mlir::AsmParserState::addDefinition(v22, v10, v5);
        }

        v34 = v5;
        v35 = v30;
        v36 = v31;
      }

      else
      {
        return 0;
      }
    }

    else
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
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
LABEL_42:
        v17 = v38;
        goto LABEL_43;
      }
    }
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
            MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  mlir::emitError(**a1, &v27);
  if (v27)
  {
    LODWORD(v23) = 3;
    v24 = "'";
    v25 = 1;
    v4 = &v23;
    v5 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v23 && v29 + 24 * v30 > &v23)
      {
        v21 = &v23 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = v29;
        v4 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v4 = &v23;
        v5 = v29;
      }
    }

    v6 = &v5[24 * v30];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v30;
    if (v27)
    {
      v8 = *(a1 + 8);
      v26 = 260;
      v23 = v8;
      mlir::Diagnostic::operator<<(&v28, &v23);
      if (v27)
      {
        LODWORD(v23) = 3;
        v24 = "' op ";
        v25 = 5;
        v9 = &v23;
        v10 = v29;
        if (v30 >= v31)
        {
          if (v29 <= &v23 && v29 + 24 * v30 > &v23)
          {
            v22 = &v23 - v29;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
            v10 = v29;
            v9 = (v29 + v22);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
            v9 = &v23;
            v10 = v29;
          }
        }

        v11 = &v10[24 * v30];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        ++v30;
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 != v33)
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
        v18 = v33;
      }

      v34 = v16;
      operator delete(v18);
    }

    if (v29 != v32)
    {
      free(v29);
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

double mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(uint64_t a1, char *__s, const char **a3, const char *a4)
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

__n128 mlir::Diagnostic::append<llvm::StringRef &,char const(&)[2]>(uint64_t a1, const char **a2, const char *a3)
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

uint64_t mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, const char **a3, char *a4, unsigned int *a5, char *a6, uint64_t *a7)
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

uint64_t *llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
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
  v3 = a1;
  v140 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = **a1;
  v6 = *(a2 + 24);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v6 = 0;
  }

  v125 = v6;
  if (!v6 || *v4[1] != mlir::AffineBinaryOpExpr::getLHS(&v125))
  {
    goto LABEL_61;
  }

  v7 = *(v5 + 360) + 24 * mlir::AffineMapAttr::getValue(&v125);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v4[2];
  v14 = llvm::StringMapImpl::hash(v9, v10, v12, v13);
  Key = llvm::StringMapImpl::FindKey(v11, v9, v10, v14);
  if (Key == -1 || Key == *(v11 + 8) || (v16 = *(*v11 + 8 * Key), (v17 = *(v16 + 8)) == 0))
  {
    v124 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(EncodedSourceLocation, v123, v129);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v129);
    }

    if (v129[0])
    {
      v126 = 3;
      v127 = "operation location alias was never defined";
      v128 = 42;
      v19 = &v126;
      v20 = v130;
      if (v131 >= v132)
      {
        if (v130 <= &v126 && v130 + 24 * v131 > &v126)
        {
          v116 = &v126 - v130;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v20 = v130;
          v19 = (v130 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v19 = &v126;
          v20 = v130;
        }
      }

      v21 = &v20[24 * v131];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      ++v131;
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v129);
    if (v129[0])
    {
      mlir::InFlightDiagnostic::report(v129);
    }

    if (v139 == 1)
    {
      if (v138 != &v139)
      {
        free(v138);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v137;
        v26 = __p;
        if (v137 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v137 = v24;
        operator delete(v26);
      }

      v27 = v134;
      if (!v134)
      {
        goto LABEL_58;
      }

      v28 = v135;
      v29 = v134;
      if (v135 == v134)
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
          MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
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

    v124 = 257;
    v32 = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(v32, v123, v129);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v129);
    }

    if (v129[0])
    {
      v126 = 3;
      v127 = "expected location, but found '";
      v128 = 30;
      v33 = &v126;
      v34 = v130;
      if (v131 >= v132)
      {
        if (v130 <= &v126 && v130 + 24 * v131 > &v126)
        {
          v117 = &v126 - v130;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v34 = v130;
          v33 = (v130 + v117);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v33 = &v126;
          v34 = v130;
        }
      }

      v35 = &v34[24 * v131];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      ++v131;
      if (v129[0])
      {
        v37 = &v126;
        mlir::DiagnosticArgument::DiagnosticArgument(&v126, v17);
        v38 = v130;
        if (v131 >= v132)
        {
          if (v130 <= &v126 && v130 + 24 * v131 > &v126)
          {
            v118 = &v126 - v130;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v38 = v130;
            v37 = (v130 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v37 = &v126;
            v38 = v130;
          }
        }

        v39 = &v38[24 * v131];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        v41 = ++v131;
        if (v129[0])
        {
          v126 = 3;
          v127 = "'";
          v128 = 1;
          v42 = &v126;
          v43 = v130;
          if (v41 >= v132)
          {
            if (v130 <= &v126 && v130 + 24 * v41 > &v126)
            {
              v119 = &v126 - v130;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v41 + 1, 24);
              v43 = v130;
              v42 = (v130 + v119);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v41 + 1, 24);
              v42 = &v126;
              v43 = v130;
            }
          }

          v44 = &v43[24 * v131];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v131;
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v129);
    if (v129[0])
    {
      mlir::InFlightDiagnostic::report(v129);
    }

    if (v139 == 1)
    {
      if (v138 != &v139)
      {
        free(v138);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v137;
        v48 = __p;
        if (v137 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v137 = v46;
        operator delete(v48);
      }

      v27 = v134;
      if (!v134)
      {
        goto LABEL_58;
      }

      v49 = v135;
      v29 = v134;
      if (v135 == v134)
      {
LABEL_57:
        v135 = v27;
        operator delete(v29);
LABEL_58:
        if (v130 != v133)
        {
          free(v130);
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
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v27);
LABEL_56:
      v29 = v134;
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
    v54 = 0x1000C8077774924;
    v55 = ((a2 + 16 * ((v52 >> 23) & 1) + ((v52 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v120 = v55 + 24 * v53;
    while (1)
    {
      v56 = *(v55 + 8);
      if (v56 != v55)
      {
        break;
      }

LABEL_150:
      v55 += 24;
      if (v55 == v120)
      {
        return 1;
      }
    }

    v121 = v55;
LABEL_66:
    v57 = v56 - 8;
    v122 = v56;
    if (!v56)
    {
      v57 = 0;
    }

    v58 = *(v57 + 48);
    v59 = *(v57 + 56);
    while (1)
    {
      if (v58 == v59)
      {
        v56 = *(v122 + 8);
        v55 = v121;
        if (v56 == v121)
        {
          goto LABEL_150;
        }

        goto LABEL_66;
      }

      v60 = *v58;
      v61 = *v3;
      v62 = **v3;
      v63 = *(*v58 + 32);
      if (*(*v63 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
      {
        v63 = 0;
      }

      v125 = v63;
      if (v63)
      {
        if (*v61[1] == mlir::AffineBinaryOpExpr::getLHS(&v125))
        {
          break;
        }
      }

LABEL_70:
      ++v58;
    }

    v64 = v3;
    v65 = v54;
    v66 = *(v62 + 360) + 24 * mlir::AffineMapAttr::getValue(&v125);
    v67 = *v66;
    v68 = *(v66 + 8);
    v69 = *(v66 + 16);
    v70 = v61[2];
    v73 = llvm::StringMapImpl::hash(v68, v69, v71, v72);
    v74 = llvm::StringMapImpl::FindKey(v70, v68, v69, v73);
    if (v74 == -1 || v74 == *(v70 + 8) || (v75 = *(*v70 + 8 * v74), (v76 = *(v75 + 8)) == 0))
    {
      v124 = 257;
      v77 = mlir::Lexer::getEncodedSourceLocation(*(v62 + 8) + 8, v67);
      mlir::emitError(v77, v123, v129);
      if (*(*(v62 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v129);
      }

      v54 = v65;
      v3 = v64;
      if (v129[0])
      {
        v126 = 3;
        v127 = "operation location alias was never defined";
        v128 = 42;
        v78 = v130;
        if (v131 >= v132)
        {
          if (v130 <= &v126 && v130 + 24 * v131 > &v126)
          {
            v111 = &v126 - v130;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v78 = v130;
            v79 = (v130 + v111);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v79 = &v126;
            v78 = v130;
          }
        }

        else
        {
          v79 = &v126;
        }

        v80 = &v78[24 * v131];
        v81 = *v79;
        *(v80 + 2) = *(v79 + 2);
        *v80 = v81;
        ++v131;
      }

      v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v129);
      if (v129[0])
      {
        mlir::InFlightDiagnostic::report(v129);
      }

      if (v139 != 1)
      {
LABEL_69:
        if (!v82)
        {
          return 0;
        }

        goto LABEL_70;
      }

      if (v138 != &v139)
      {
        free(v138);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v137;
        v85 = __p;
        if (v137 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v137 = v83;
        operator delete(v85);
      }

      v86 = v134;
      if (!v134)
      {
LABEL_132:
        if (v130 != v133)
        {
          free(v130);
        }

        goto LABEL_69;
      }

      v87 = v135;
      v88 = v134;
      if (v135 == v134)
      {
LABEL_131:
        v135 = v86;
        operator delete(v88);
        goto LABEL_132;
      }

      do
      {
        v90 = *--v87;
        v89 = v90;
        *v87 = 0;
        if (v90)
        {
          MEMORY[0x1AC55A040](v89, v54);
        }
      }

      while (v87 != v86);
    }

    else
    {
      if (mlir::LocationAttr::classof(*(v75 + 8)))
      {
        *(v60 + 32) = v76;
        v54 = v65;
        v3 = v64;
        goto LABEL_70;
      }

      v124 = 257;
      v91 = mlir::Lexer::getEncodedSourceLocation(*(v62 + 8) + 8, v67);
      mlir::emitError(v91, v123, v129);
      v54 = v65;
      if (*(*(v62 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v129);
      }

      v3 = v64;
      if (v129[0])
      {
        v126 = 3;
        v127 = "expected location, but found '";
        v128 = 30;
        v92 = v130;
        if (v131 >= v132)
        {
          if (v130 <= &v126 && v130 + 24 * v131 > &v126)
          {
            v112 = &v126 - v130;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v92 = v130;
            v93 = (v130 + v112);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v93 = &v126;
            v92 = v130;
          }
        }

        else
        {
          v93 = &v126;
        }

        v94 = &v92[24 * v131];
        v95 = *v93;
        *(v94 + 2) = *(v93 + 2);
        *v94 = v95;
        ++v131;
        if (v129[0])
        {
          v96 = &v126;
          mlir::DiagnosticArgument::DiagnosticArgument(&v126, v76);
          v97 = v130;
          if (v131 >= v132)
          {
            if (v130 <= &v126 && v130 + 24 * v131 > &v126)
            {
              v113 = &v126 - v130;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
              v97 = v130;
              v96 = (v130 + v113);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
              v96 = &v126;
              v97 = v130;
            }
          }

          v98 = &v97[24 * v131];
          v99 = *v96;
          *(v98 + 2) = *(v96 + 2);
          *v98 = v99;
          v100 = ++v131;
          if (v129[0])
          {
            v126 = 3;
            v127 = "'";
            v128 = 1;
            v101 = v130;
            if (v100 >= v132)
            {
              if (v130 <= &v126 && v130 + 24 * v100 > &v126)
              {
                v114 = &v126 - v130;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v100 + 1, 24);
                v101 = v130;
                v102 = (v130 + v114);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v100 + 1, 24);
                v102 = &v126;
                v101 = v130;
              }
            }

            else
            {
              v102 = &v126;
            }

            v103 = &v101[24 * v131];
            v104 = *v102;
            *(v103 + 2) = *(v102 + 2);
            *v103 = v104;
            ++v131;
          }
        }
      }

      v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v129);
      if (v129[0])
      {
        mlir::InFlightDiagnostic::report(v129);
      }

      if (v139 != 1)
      {
        goto LABEL_69;
      }

      if (v138 != &v139)
      {
        free(v138);
      }

      v105 = __p;
      if (__p)
      {
        v106 = v137;
        v107 = __p;
        if (v137 != __p)
        {
          do
          {
            v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
          }

          while (v106 != v105);
          v107 = __p;
        }

        v137 = v105;
        operator delete(v107);
      }

      v86 = v134;
      if (!v134)
      {
        goto LABEL_132;
      }

      v108 = v135;
      v88 = v134;
      if (v135 == v134)
      {
        goto LABEL_131;
      }

      do
      {
        v110 = *--v108;
        v109 = v110;
        *v108 = 0;
        if (v110)
        {
          MEMORY[0x1AC55A040](v109, v54);
        }
      }

      while (v108 != v86);
    }

    v88 = v134;
    goto LABEL_131;
  }

  return 1;
}

uint64_t *llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
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

uint64_t *llvm::StringMap<mlir::Type,llvm::MallocAllocator>::try_emplace_with_hash<mlir::Type&>(llvm::StringMapImpl *a1, void *a2, size_t a3, uint64_t a4, uint64_t *a5)
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
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(*a1 + 1) + 56));
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
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v1 + 1) + 8, SrcSymbol);
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
                MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
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
        MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
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
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(*a1 + 1) + 56));
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
      return (*a1[1])(*(a1[1] + 1), v7, v8, SrcSymbol);
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
            MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
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
          MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
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
          MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
      goto LABEL_44;
    }
  }

  return v10;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v2 = *a1;
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(*a1 + 1) + 56));
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
  *v9 = &unk_1F19F9C60;
  *&v9[8] = v17;
  v10 = SrcSymbol;
  v11 = v14;
  v12 = v15;
  v13 = v2;
  v7 = (*(**a1[1] + 48))(*a1[1], v9);
  ZinIrHalH13g::~ZinIrHalH13g(v9);
  return v7;
}

void anonymous namespace::ParsedResourceEntry::~ParsedResourceEntry(_anonymous_namespace_::ParsedResourceEntry *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
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
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((this + 32));
  v20 = 1283;
  v8 = *(this + 1);
  v9 = *(this + 2);
  v19[0] = "expected 'true' or 'false' value for key '";
  v19[2] = v8;
  v19[3] = v9;
  v21[0] = v19;
  v21[2] = "'";
  v22 = 770;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, SrcSymbol);
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

  v2 = 0;
  v3 = 0;
  return v2 | (v3 << 8);
}

{
  v41 = *MEMORY[0x1E69E9840];
  if (*(this + 6) == 1)
  {
    LOBYTE(v29) = 0;
    if (v2)
    {
      v3 = v29;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    mlir::emitError(*(*(this + 4) + 24), &v29);
    if (v29)
    {
      LODWORD(v25) = 3;
      v26 = "expected a BOOL resource entry, but found a ";
      v27 = 44;
      v4 = &v25;
      v5 = v31;
      if (v32 >= v33)
      {
        if (v31 <= &v25 && v31 + 24 * v32 > &v25)
        {
          v23 = &v25 - v31;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
          v5 = v31;
          v4 = (v31 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
          v4 = &v25;
          v5 = v31;
        }
      }

      v6 = &v5[24 * v32];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      ++v32;
    }

    v8 = mlir::toString(*(this + 6));
    if (v29)
    {
      v28 = 261;
      v25 = v8;
      v26 = v9;
      mlir::Diagnostic::operator<<(&v30, &v25);
      if (v29)
      {
        LODWORD(v25) = 3;
        v26 = " entry instead";
        v27 = 14;
        v10 = &v25;
        v11 = v31;
        if (v32 >= v33)
        {
          if (v31 <= &v25 && v31 + 24 * v32 > &v25)
          {
            v24 = &v25 - v31;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
            v11 = v31;
            v10 = (v31 + v24);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v34, v32 + 1, 24);
            v10 = &v25;
            v11 = v31;
          }
        }

        v12 = &v11[24 * v32];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v32;
        if (v29)
        {
          mlir::InFlightDiagnostic::report(&v29);
        }
      }
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v38;
        v16 = __p;
        if (v38 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v38 = v14;
        operator delete(v16);
      }

      v17 = v35;
      if (v35)
      {
        v18 = v36;
        v19 = v35;
        if (v36 != v35)
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
          v19 = v35;
        }

        v36 = v17;
        operator delete(v19);
      }

      if (v31 != v34)
      {
        free(v31);
      }
    }

    v3 = 0;
    v2 = 0;
  }

  return v3 | (v2 << 8);
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
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(v4);
    v21 = 1283;
    v9 = *(v7 + 1);
    v10 = *(v7 + 2);
    v20[0] = "expected string value for key '";
    v20[2] = v9;
    v20[3] = v10;
    v22[0] = v20;
    v22[2] = "'";
    v23 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v6 + 8) + 8, SrcSymbol);
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
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(v6);
    v55 = 1283;
    v15 = *(this + 1);
    v16 = *(this + 2);
    v52[0] = "expected hex string blob for key '";
    v53 = v15;
    v54 = v16;
    v56[0] = v52;
    v57 = "'";
    v58 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v13 + 8) + 8, SrcSymbol);
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
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
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
      v38 = ZinCcdmaLayerMirInfo::GetSrcSymbol(v6);
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
            MEMORY[0x1AC55A040](v46, 0x1000C8077774924);
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
    v27 = ZinCcdmaLayerMirInfo::GetSrcSymbol(v6);
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
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
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

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, mlir::detail::Parser *a2, uint64_t *a3, const char *a4)
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
  mlir::emitWarning(EncodedSourceLocation, &v38);
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
            MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
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
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(*a1 + 1) + 56));
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
    *&v28 = &unk_1F19F9C60;
    *(&v28 + 1) = v7;
    v29 = v8;
    v30 = SrcSymbol;
    v14 = (*(*v13 + 16))(v13, &v28);
    ZinIrHalH13g::~ZinIrHalH13g(&v28);
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
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
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
        v7 = (v4 + 32 * v6);
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

void *llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(uint64_t a1, int a2)
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
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = *a1 + 32 * v26;
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 32 * v26;
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *v22 = v24;
          *(v22 + 8) = v23;
          *(v22 + 16) = *(v16 + 1);
          *(v16 + 1) = 0;
          *(v16 + 2) = 0;
          *(v16 + 6) = 0;
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t *llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
    v11 = buffer + 56;
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

    buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
    v11 = buffer + 56;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  *(buffer + 40) = 0u;
  *(buffer + 8) = 0u;
  *(buffer + 24) = 0u;
  *(buffer + 5) = &mlir::detail::TypeIDResolver<void,void>::id;
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

unint64_t mlir::Token::getUnsignedIntegerValue(mlir::Token *this)
{
  v3 = *(this + 2);
  if (v3 <= 1)
  {
    v4 = *(this + 1);
    v5 = 10;
  }

  else
  {
    v4 = *(this + 1);
    if (v4[1] == 120)
    {
      v5 = 0;
    }

    else
    {
      v5 = 10;
    }
  }

  v7[1] = v1;
  v7[2] = v2;
  v7[0] = 0;
  if ((llvm::getAsUnsignedInteger(v4, v3, v5, v7) & 1) != 0 || HIDWORD(v7[0]))
  {
    return 0;
  }

  else
  {
    return v7[0] | 0x100000000;
  }
}

unint64_t mlir::Token::getUInt64IntegerValue(unsigned __int8 *a1, unint64_t a2)
{
  v4 = 10;
  if (a2 >= 2)
  {
    if (a1[1] == 120)
    {
      v4 = 0;
    }

    else
    {
      v4 = 10;
    }
  }

  v6[1] = v2;
  v6[2] = v3;
  v6[0] = 0;
  if (llvm::getAsUnsignedInteger(a1, a2, v4, v6))
  {
    return 0;
  }

  else
  {
    return v6[0];
  }
}

uint64_t mlir::Token::getFloatingPointValue(mlir::Token *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = 0.0;
  if (llvm::StringRef::getAsDouble((this + 8), &v5, 1, a4))
  {
    return 0;
  }

  else
  {
    return *&v5;
  }
}

unint64_t mlir::Token::getIntTypeBitwidth(mlir::Token *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = 1;
  if (*v1 != 105)
  {
    v3 = 2;
  }

  if (v2 < v3)
  {
    v3 = *(this + 2);
  }

  v5 = 0;
  if ((llvm::getAsUnsignedInteger(&v1[v3], v2 - v3, 0xAu, &v5) & 1) != 0 || HIDWORD(v5))
  {
    return 0;
  }

  else
  {
    return v5 | 0x100000000;
  }
}

uint64_t mlir::Token::getIntTypeSignedness(mlir::Token *this)
{
  v1 = **(this + 1);
  if (v1 == 105)
  {
    return 0;
  }

  if (v1 == 115)
  {
    return 257;
  }

  return 256;
}

void mlir::Token::getStringValue(mlir::Token *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 1) + 1;
  }

  else
  {
    v4 = *(this + 1);
  }

  v5 = v3 - (v3 != 0);
  if (*this != 2)
  {
    if (v5 >= v5 - 1)
    {
      --v5;
    }

    if (*this == 4)
    {
      if (v5)
      {
        ++v4;
      }

      v5 -= v5 != 0;
    }
  }

  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, v5);
  if (v5)
  {
    v6 = 0;
    do
    {
      v8 = v6 + 1;
      LODWORD(v9) = *(v4 + v6);
      if (v9 == 92)
      {
        v7 = v6 + 2;
        v9 = *(v4 + v8);
        if (*(v4 + v8) <= 0x6Du)
        {
          if (v9 == 34 || v9 == 92)
          {
            goto LABEL_14;
          }

LABEL_23:
          v10 = *(v4 + v7);
          v7 = v6 + 3;
          LOWORD(v9) = llvm::hexDigitValue(char)::LUT[v10] | (16 * llvm::hexDigitValue(char)::LUT[v9]);
          goto LABEL_14;
        }

        if (v9 == 116)
        {
          LOBYTE(v9) = 9;
          goto LABEL_14;
        }

        if (v9 != 110)
        {
          goto LABEL_23;
        }

        LOBYTE(v9) = 10;
      }

      else
      {
        v7 = v6 + 1;
      }

LABEL_14:
      std::string::push_back(a2, v9);
      v6 = v7;
    }

    while (v7 != v5);
  }
}

void mlir::Token::getHexStringValue(uint64_t *__return_ptr a1@<X8>, mlir::Token *this@<X0>)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = v2 != 0;
  v5 = v2 - v4;
  if (v5 >= v5 - 1)
  {
    --v5;
  }

  memset(&v16, 0, sizeof(v16));
  v6 = v5 - 2;
  if (v5 < 2 || *(v3 + v4) != 30768 || (v5 & 1) != 0)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else if (v5 == 2 || ((v7 = a1, std::string::resize(&v16, (v5 - 1) >> 1, 0), a1 = v7, (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v8 = &v16) : (v8 = v16.__r_.__value_.__r.__words[0]), v6 == 1))
  {
LABEL_18:
    *a1 = v16;
    *(a1 + 24) = 1;
  }

  else
  {
    v9 = -(v6 >> 1);
    v10 = (v4 + v3 + 3);
    while (1)
    {
      v11 = llvm::hexDigitValue(char)::LUT[*(v10 - 1)];
      v12 = llvm::hexDigitValue(char)::LUT[*v10];
      if (v11 == 0xFFFF || v12 == 0xFFFF)
      {
        break;
      }

      v10 += 2;
      v8->__r_.__value_.__s.__data_[0] = v12 | (16 * v11);
      v8 = (v8 + 1);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_18;
      }
    }

    v15 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    *v7 = 0;
    *(v7 + 24) = 0;
    if (v15 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void mlir::Token::getSymbolReference(mlir::Token *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = (*(this + 1) + 1);
  }

  else
  {
    v4 = *(this + 1);
  }

  if (*v4 == 34)
  {

    mlir::Token::getStringValue(this, a2);
  }

  else
  {
    v5 = v3 - (v3 != 0);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v5;
    if (v3 >= 2)
    {
      memmove(a2, v4, v5);
    }

    *(a2 + v5) = 0;
  }
}

unint64_t mlir::Token::getHashIdentifierNumber(mlir::Token *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = (*(this + 1) + 1);
  }

  else
  {
    v2 = *(this + 1);
  }

  v4 = 0;
  if ((llvm::getAsUnsignedInteger(v2, v1 - (v1 != 0), 0xAu, &v4) & 1) != 0 || HIDWORD(v4))
  {
    return 0;
  }

  else
  {
    return v4 | 0x100000000;
  }
}

BOOL mlir::Token::isCodeCompletionFor(uint64_t a1, int a2)
{
  if (*a1 == 2 && *(a1 + 16) && (v2 = a2 - 5, (a2 - 5) <= 6) && ((0x4Fu >> v2) & 1) != 0)
  {
    return **(a1 + 8) == ((0x222222215E2523uLL >> (8 * v2)) & 0x7F);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::Parser::parseOptionalType(mlir::detail::Parser *this, mlir::Type *a2)
{
  v3 = *(*(this + 1) + 56);
  v4 = (v3 - 8);
  if (v4 <= 0x3D)
  {
    if (((1 << (v3 - 8)) & 0x2487FFF140000011) != 0)
    {
LABEL_3:
      v5 = mlir::detail::Parser::parseNonFunctionType(this);
LABEL_4:
      *a2 = v5;
      return (v5 != 0) | 0x100u;
    }

    if (v4 == 13)
    {
      v5 = mlir::detail::Parser::parseFunctionType(this);
      goto LABEL_4;
    }
  }

  v7 = v3 - 76;
  v8 = v7 > 7;
  v9 = (1 << v7) & 0x93;
  if (!v8 && v9 != 0)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t *mlir::detail::Parser::parseType(mlir::detail::Parser *this)
{
  if (*(*(this + 1) + 56) == 21)
  {
    return mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    return mlir::detail::Parser::parseNonFunctionType(this);
  }
}

uint64_t mlir::detail::Parser::parseFunctionType(mlir::detail::Parser *this)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x400000000;
  v11 = v13;
  v12 = 0x400000000;
  if (!mlir::detail::Parser::parseTypeListParens(this, &v14) || (v9[0] = "expected '->' in function type", v10 = 259, !mlir::detail::Parser::parseToken(this, 13, v9)))
  {
LABEL_12:
    FunctionType = 0;
    v5 = v11;
    if (v11 == v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(*(this + 1) + 56) == 21)
  {
    if (!mlir::detail::Parser::parseTypeListParens(this, &v11))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = mlir::detail::Parser::parseNonFunctionType(this);
    if (!v2)
    {
      goto LABEL_12;
    }

    v3 = v12;
    if (v12 >= HIDWORD(v12))
    {
      v7 = v2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v11, v13, v12 + 1, 8);
      v2 = v7;
      v3 = v12;
    }

    *(v11 + v3) = v2;
    LODWORD(v12) = v12 + 1;
  }

  mlir::ValueRange::ValueRange(v9, v14, v15);
  mlir::ValueRange::ValueRange(v8, v11, v12);
  FunctionType = mlir::Builder::getFunctionType(this, v9[0], v9[1], v8[0], v8[1]);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_13:
    free(v5);
  }

LABEL_14:
  if (v14 != v16)
  {
    free(v14);
  }

  return FunctionType;
}

uint64_t *mlir::detail::Parser::parseNonFunctionType(mlir::detail::Parser *this)
{
  v83 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  v2 = (v1 + 56);
  switch(*(v1 + 56))
  {
    case 2:
      v3 = this;
      if (mlir::Token::isCodeCompletionFor(v2, 8))
      {
        this = v3;

        return mlir::detail::Parser::parseExtendedType(this);
      }

      return mlir::detail::Parser::codeCompleteType(v3);
    case 8:

      return mlir::detail::Parser::parseExtendedType(this);
    case 0xC:
      v23 = this;
      IntTypeBitwidth = mlir::Token::getIntTypeBitwidth(v2);
      if ((IntTypeBitwidth & 0x100000000) == 0)
      {
        *&v77 = "invalid integer width";
        v79 = 259;
        mlir::detail::Parser::emitError(v23, &v77, v80);
        v25 = v80;
LABEL_52:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        return 0;
      }

      if (BYTE3(IntTypeBitwidth))
      {
        SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(v23 + 1) + 56));
        v75 = "integer bitwidth is limited to ";
        v76 = 259;
        mlir::detail::Parser::emitError(v23, SrcSymbol, &v75, &v77);
        mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&v77, &mlir::IntegerType::kMaxWidth);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, " bits");
        v25 = &v77;
        goto LABEL_52;
      }

      v67 = *(v23 + 1);
      v68 = v23;
      v69 = IntTypeBitwidth;
      IntTypeSignedness = mlir::Token::getIntTypeSignedness((v67 + 56));
      if (IntTypeSignedness)
      {
        v71 = 1;
      }

      else
      {
        v71 = 2;
      }

      v72 = v71 & (IntTypeSignedness << 23 >> 31);
      v73 = *(v68 + 1);
      *(v73 + 96) = *(v73 + 72);
      *(v73 + 80) = *(v73 + 56);
      mlir::Lexer::lexToken(&v77, (*(v68 + 1) + 8));
      v74 = *(v68 + 1);
      *(v74 + 56) = v77;
      *(v74 + 72) = v78;
      return mlir::IntegerType::get(***(v68 + 1), v69, v72);
    case 0x26:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v47 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v48 = *(v47 + 1);
      *(v48 + 56) = v77;
      *(v48 + 72) = v78;
      return mlir::Builder::getBF16Type(v47, v49);
    case 0x28:

      return mlir::detail::Parser::parseComplexType(this);
    case 0x2C:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v26 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v27 = *(v26 + 1);
      *(v27 + 56) = v77;
      *(v27 + 72) = v78;
      return mlir::Builder::getF16Type(v26, v28);
    case 0x2D:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v35 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v36 = *(v35 + 1);
      *(v36 + 56) = v77;
      *(v36 + 72) = v78;
      return mlir::Builder::getF32Type(v35, v37);
    case 0x2E:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v38 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v39 = *(v38 + 1);
      *(v39 + 56) = v77;
      *(v39 + 72) = v78;
      return mlir::Builder::getF64Type(v38, v40);
    case 0x2F:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v53 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v54 = *(v53 + 1);
      *(v54 + 56) = v77;
      *(v54 + 72) = v78;
      return mlir::Builder::getF80Type(v53, v55);
    case 0x30:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v50 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v51 = *(v50 + 1);
      *(v51 + 56) = v77;
      *(v51 + 72) = v78;
      return mlir::Builder::getFloat8E5M2Type(v50, v52);
    case 0x31:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v11 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v12 = *(v11 + 1);
      *(v12 + 56) = v77;
      *(v12 + 72) = v78;
      return mlir::Builder::getFloat8E4M3Type(v11, v13);
    case 0x32:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v29 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v30 = *(v29 + 1);
      *(v30 + 56) = v77;
      *(v30 + 72) = v78;
      return mlir::Builder::getFloat8E4M3FNType(v29, v31);
    case 0x33:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v17 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v18 = *(v17 + 1);
      *(v18 + 56) = v77;
      *(v18 + 72) = v78;
      return mlir::Builder::getFloat8E5M2FNUZType(v17, v19);
    case 0x34:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v8 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v9 = *(v8 + 1);
      *(v9 + 56) = v77;
      *(v9 + 72) = v78;
      return mlir::Builder::getFloat8E4M3FNUZType(v8, v10);
    case 0x35:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v41 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v42 = *(v41 + 1);
      *(v42 + 56) = v77;
      *(v42 + 72) = v78;
      return mlir::Builder::getFloat8E4M3B11FNUZType(v41, v43);
    case 0x36:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v44 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v45 = *(v44 + 1);
      *(v45 + 56) = v77;
      *(v45 + 72) = v78;
      return mlir::Builder::getFloat8E3M4Type(v44, v46);
    case 0x37:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v59 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v60 = *(v59 + 1);
      *(v60 + 56) = v77;
      *(v60 + 72) = v78;
      return mlir::Builder::getFloat4E2M1FNType(v59, v61);
    case 0x38:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v56 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v57 = *(v56 + 1);
      *(v57 + 56) = v77;
      *(v57 + 72) = v78;
      return mlir::Builder::getFloat6E2M3FNType(v56, v58);
    case 0x39:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v5 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v6 = *(v5 + 1);
      *(v6 + 56) = v77;
      *(v6 + 72) = v78;
      return mlir::Builder::getFloat6E3M2FNType(v5, v7);
    case 0x3A:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v20 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v21 = *(v20 + 1);
      *(v21 + 56) = v77;
      *(v21 + 72) = v78;
      return mlir::Builder::getF128Type(v20, v22);
    case 0x3F:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v62 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v63 = *(v62 + 1);
      *(v63 + 56) = v77;
      *(v63 + 72) = v78;
      return mlir::Builder::getIndexType(v62, v64);
    case 0x42:

      return mlir::detail::Parser::parseMemRefType(this);
    case 0x45:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v14 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v15 = *(v14 + 1);
      *(v15 + 56) = v77;
      *(v15 + 72) = v78;
      return mlir::Builder::getNoneType(v14, v16);
    case 0x4C:

      return mlir::detail::Parser::parseTensorType(this);
    case 0x4D:
      *(v1 + 80) = *v2;
      *(v1 + 96) = *(v1 + 72);
      v32 = this;
      mlir::Lexer::lexToken(&v77, (*(this + 1) + 8));
      v33 = *(v32 + 1);
      *(v33 + 56) = v77;
      *(v33 + 72) = v78;
      return mlir::Builder::getTF32Type(v32, v34);
    case 0x50:

      return mlir::detail::Parser::parseTupleType(this);
    case 0x53:

      return mlir::detail::Parser::parseVectorType(this);
    default:
      *&v77 = "expected non-function type";
      v79 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v77, &v81);
      if (v81)
      {
        mlir::InFlightDiagnostic::report(&v81);
      }

      if (v82[192] == 1)
      {
        mlir::Diagnostic::~Diagnostic(v82);
      }

      return 0;
  }
}

uint64_t mlir::detail::Parser::parseFunctionResultTypes(mlir::detail::Parser *a1, unsigned int *a2)
{
  if (*(*(a1 + 1) + 56) == 21)
  {

    return mlir::detail::Parser::parseTypeListParens(a1, a2);
  }

  else
  {
    result = mlir::detail::Parser::parseNonFunctionType(a1);
    if (result)
    {
      v5 = a2;
      v6 = a2[2];
      if (v6 >= a2[3])
      {
        v7 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v6 + 1, 8);
        result = v7;
        v5 = a2;
        LODWORD(v6) = a2[2];
      }

      *(*v5 + 8 * v6) = result;
      ++v5[2];
      return 1;
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseTypeListParens(mlir::detail::Parser *a1, uint64_t a2)
{
  *&v7 = "expected '('";
  v9 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 21, &v7))
  {
    return 0;
  }

  v4 = *(a1 + 1);
  if (*(v4 + 56) == 28)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(&v7, (*(a1 + 1) + 8));
    v5 = *(a1 + 1);
    *(v5 + 56) = v7;
    *(v5 + 72) = v8;
    return 1;
  }

  *&v7 = a1;
  *(&v7 + 1) = a2;
  if (!mlir::detail::Parser::parseCommaSeparatedList(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v7, 0, 0))
  {
    return 0;
  }

  *&v7 = "expected ')'";
  v9 = 259;
  return mlir::detail::Parser::parseToken(a1, 28, &v7);
}

BOOL mlir::detail::Parser::parseTypeListNoParens(mlir::detail::Parser *a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return mlir::detail::Parser::parseCommaSeparatedList(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

uint64_t mlir::detail::Parser::parseComplexType(mlir::detail::Parser *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(&v16, (*(this + 1) + 8));
  v3 = *(this + 1);
  *(v3 + 56) = v16;
  *(v3 + 72) = v17;
  *&v16 = "expected '<' in complex type";
  v18 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, &v16))
  {
    return 0;
  }

  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
  if (*(*(this + 1) + 56) == 21)
  {
    result = mlir::detail::Parser::parseFunctionType(this);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = mlir::detail::Parser::parseNonFunctionType(this);
    if (!result)
    {
      return result;
    }
  }

  v6 = result;
  *&v16 = "expected '>' in complex type";
  v18 = 259;
  if (!mlir::detail::Parser::parseToken(this, 19, &v16))
  {
    return 0;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    *&v16 = "invalid element type for complex";
    v18 = 259;
    mlir::detail::Parser::emitError(this, SrcSymbol, &v16, v19);
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

    return 0;
  }

  return mlir::ComplexType::get(v6);
}

uint64_t *mlir::detail::Parser::parseMemRefType(mlir::detail::Parser *this)
{
  v43 = *MEMORY[0x1E69E9840];
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
  v3 = *(this + 1);
  *(v3 + 96) = *(v3 + 72);
  *(v3 + 80) = *(v3 + 56);
  mlir::Lexer::lexToken(&v40, (*(this + 1) + 8));
  v4 = *(this + 1);
  *(v4 + 56) = v40;
  *(v4 + 72) = v41[0];
  *&v40 = "expected '<' in memref type";
  v42 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, &v40))
  {
    return 0;
  }

  *&v40 = v41;
  *(&v40 + 1) = 0x400000000;
  v5 = *(this + 1);
  if (*(v5 + 56) == 30)
  {
    *(v5 + 80) = *(v5 + 56);
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken(&v25, (*(this + 1) + 8));
    v6 = *(this + 1);
    *(v6 + 56) = v25;
    *(v6 + 72) = v26;
    v29 = 1;
    if (!mlir::detail::Parser::parseXInDimensionList(this))
    {
      goto LABEL_44;
    }

    v7 = *(this + 1);
  }

  else
  {
    v29 = 0;
    LOBYTE(v22[0]) = 1;
    *&v25 = this;
    *(&v25 + 1) = v22;
    v26 = &v40;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(&v25) || !mlir::detail::Parser::parseXInDimensionList(this))
      {
        goto LABEL_44;
      }
    }
  }

  v8 = ZinCcdmaLayerMirInfo::GetSrcSymbol((v7 + 56));
  if (*(*(this + 1) + 56) != 21)
  {
    result = mlir::detail::Parser::parseNonFunctionType(this);
    v28 = result;
    if (!result)
    {
      goto LABEL_45;
    }

LABEL_15:
    v10 = result;
    if (mlir::BaseMemRefType::isValidElementType(result))
    {
      v24[0] = 0;
      v24[1] = 0;
      v22[0] = this;
      v22[1] = v24;
      v22[2] = &v23;
      v22[3] = &v29;
      v23 = 0;
      v11 = *(this + 1);
      if (*(v11 + 56) == 19)
      {
        *(v11 + 80) = *(v11 + 56);
        *(v11 + 96) = *(v11 + 72);
        mlir::Lexer::lexToken(&v25, (*(this + 1) + 8));
        v12 = *(this + 1);
        *(v12 + 56) = v25;
        *(v12 + 72) = v26;
LABEL_18:
        if (v29 == 1)
        {
          v30 = SrcSymbol;
          *&v25 = this;
          *(&v25 + 1) = &v30;
          result = mlir::UnrankedMemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>, &v25, v10, v23);
        }

        else
        {
          result = mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(this, SrcSymbol, &v40, &v28, v24, &v23);
        }

        goto LABEL_45;
      }

      *&v25 = "expected ',' or '>' in memref type";
      v27 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v25) && mlir::detail::Parser::parseCommaSeparatedListUntil(this, 19, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>, v22, 0))
      {
        goto LABEL_18;
      }
    }

    else
    {
      *&v25 = "invalid memref element type";
      v27 = 259;
      mlir::detail::Parser::emitError(this, v8, &v25, v31);
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
                MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
              }
            }

            while (v17 != v16);
            v18 = v34;
          }

          v35 = v16;
          operator delete(v18);
        }

        if (v32 != &v33)
        {
          free(v32);
        }
      }
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

  result = mlir::detail::Parser::parseFunctionType(this);
  v28 = result;
  if (result)
  {
    goto LABEL_15;
  }

LABEL_45:
  if (v40 != v41)
  {
    v21 = result;
    free(v40);
    return v21;
  }

  return result;
}

BOOL mlir::detail::Parser::parseXInDimensionList(mlir::detail::Parser *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (*(v1 + 56) == 3 && (v2 = *(v1 + 64), *v2 == 120))
  {
    if (*(v1 + 72) != 1)
    {
      *(v1 + 40) = v2 + 1;
    }

    *(v1 + 80) = *(v1 + 56);
    *(v1 + 96) = *(v1 + 72);
    mlir::Lexer::lexToken(&v17, (*(this + 1) + 8));
    v4 = *(this + 1);
    *(v4 + 56) = v17;
    *(v4 + 72) = v18;
    return 1;
  }

  else
  {
    v15 = "expected 'x' in dimension list";
    v16 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v15, &v17);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v17);
    if (v17)
    {
      mlir::InFlightDiagnostic::report(&v17);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v24;
        v8 = __p;
        if (v24 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v24 = v6;
        operator delete(v8);
      }

      v9 = v21;
      if (v21)
      {
        v10 = v22;
        v11 = v21;
        if (v22 != v21)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v21;
        }

        v22 = v9;
        operator delete(v11);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseDimensionListRanked(mlir::detail::Parser *a1, uint64_t a2, char a3, int a4)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (a4)
  {
    while ((*(*(a1 + 1) + 56) | 0x10) == 0x1A)
    {
      if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7) || !mlir::detail::Parser::parseXInDimensionList(a1))
      {
        return 0;
      }
    }

    return 1;
  }

  if ((*(*(a1 + 1) + 56) | 0x10) != 0x1A)
  {
    return 1;
  }

  do
  {
    if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7))
    {
      break;
    }

    v6 = *(a1 + 1);
    if (*(v6 + 56) != 3 || **(v6 + 64) != 120)
    {
      return 1;
    }
  }

  while (mlir::detail::Parser::parseXInDimensionList(a1));
  return 0;
}

BOOL mlir::BaseMemRefType::isValidElementType(uint64_t *a1)
{
  v16 = a1;
  if (mlir::Type::isIntOrIndexOrFloat(&v16))
  {
    return 1;
  }

  v2 = *v16;
  v3 = *(*v16 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    return 1;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    return 1;
  }

  {
    v15 = v2;
    mlir::BaseMemRefType::isValidElementType();
    v6 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID(void)::id;
    v7 = *(v15 + 8);
    v8 = *(v15 + 16);
    if (v8)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID(void)::id;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (!v8)
  {
    return 0;
  }

LABEL_17:
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
  if (v9 == &v7[2 * v8])
  {
    return 0;
  }

  return *v9 == v6 && v9[1] != 0;
}

uint64_t mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5, uint64_t *a6)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  return mlir::MemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>, v7, *a3, *(a3 + 8), *a4, *a5, a5[1], *a6);
}

uint64_t mlir::detail::Parser::parseTensorType(mlir::detail::Parser *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(&v28, (*(this + 1) + 8));
  v3 = *(this + 1);
  *(v3 + 56) = v28;
  *(v3 + 72) = v29[0];
  *&v28 = "expected '<' in tensor type";
  v30 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, &v28))
  {
    return 0;
  }

  *&v28 = v29;
  *(&v28 + 1) = 0x400000000;
  v4 = *(this + 1);
  v5 = *(v4 + 56);
  if (v5 == 30)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(&v20, (*(this + 1) + 8));
    v6 = *(this + 1);
    *(v6 + 56) = v20;
    *(v6 + 72) = v21;
    if (!mlir::detail::Parser::parseXInDimensionList(this))
    {
      goto LABEL_36;
    }

    v7 = *(this + 1);
  }

  else
  {
    LOBYTE(v24) = 1;
    *&v20 = this;
    *(&v20 + 1) = &v24;
    v21 = &v28;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(&v20) || !mlir::detail::Parser::parseXInDimensionList(this))
      {
        goto LABEL_36;
      }
    }
  }

  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((v7 + 56));
  if (*(*(this + 1) + 56) == 21)
  {
    v9 = mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    v9 = mlir::detail::Parser::parseNonFunctionType(this);
  }

  v11 = v9;
  v24 = 0;
  v12 = *(this + 1);
  if (*(v12 + 56) == 16)
  {
    *(v12 + 80) = *(v12 + 56);
    *(v12 + 96) = *(v12 + 72);
    mlir::Lexer::lexToken(&v20, (*(this + 1) + 8));
    v13 = *(this + 1);
    *(v13 + 56) = v20;
    *(v13 + 72) = v21;
    v15 = mlir::detail::Parser::parseOptionalAttribute(this, &v24, 0, v14);
    if ((v15 & 0x100) != 0)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_36;
      }

      v17 = v24;
      if (v24)
      {
        v17 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(v24);
      }

      else
      {
        v18 = 0;
      }

      *&v20 = v17;
      *(&v20 + 1) = v18;
      if (v17)
      {
        v23 = this;
        if ((mlir::VerifiableTensorEncoding::verifyEncoding(&v20, v28, DWORD2(v28), v11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>, &v23) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }
  }

  if (!v11)
  {
    goto LABEL_36;
  }

  *&v20 = "expected '>' in tensor type";
  v22 = 259;
  if (!mlir::detail::Parser::parseToken(this, 19, &v20))
  {
    goto LABEL_36;
  }

  if (mlir::TensorType::isValidElementType(v11))
  {
    if (v5 == 30)
    {
      if (v24)
      {
        *&v20 = "cannot apply encoding to unranked tensor";
        v22 = 259;
        mlir::detail::Parser::emitError(this, &v20, v25);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        result = 0;
        v16 = v28;
        if (v28 == v29)
        {
          return result;
        }
      }

      else
      {
        result = mlir::UnrankedTensorType::get(v11);
        v16 = v28;
        if (v28 == v29)
        {
          return result;
        }
      }
    }

    else
    {
      result = mlir::RankedTensorType::get(v28, DWORD2(v28), v11, v24);
      v16 = v28;
      if (v28 == v29)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  *&v20 = "invalid tensor element type";
  v22 = 259;
  mlir::detail::Parser::emitError(this, SrcSymbol, &v20, &v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v27[192] != 1)
  {
LABEL_36:
    result = 0;
    v16 = v28;
    if (v28 == v29)
    {
      return result;
    }

    goto LABEL_37;
  }

  mlir::Diagnostic::~Diagnostic(v27);
  result = 0;
  v16 = v28;
  if (v28 == v29)
  {
    return result;
  }

LABEL_37:
  v19 = result;
  free(v16);
  return v19;
}

uint64_t mlir::detail::Parser::parseTupleType(mlir::detail::Parser *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(v14, (*(this + 1) + 8));
  v3 = *(this + 1);
  *(v3 + 56) = *v14;
  *(v3 + 72) = v15[0];
  v14[0] = "expected '<' in tuple type";
  v16 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, v14))
  {
    return 0;
  }

  v4 = *(this + 1);
  if (*(v4 + 56) == 19)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(v14, (*(this + 1) + 8));
    v5 = *(this + 1);
    *(v5 + 56) = *v14;
    *(v5 + 72) = v15[0];
    return mlir::TupleType::get(***(this + 1), v6);
  }

  v14[0] = v15;
  v14[1] = 0x400000000;
  v11 = this;
  v12 = v14;
  if (!mlir::detail::Parser::parseCommaSeparatedList(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v11, 0, 0) || (v11 = "expected '>' in tuple type", v13 = 259, !mlir::detail::Parser::parseToken(this, 19, &v11)))
  {
    result = 0;
    v9 = v14[0];
    if (v14[0] == v15)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = ***(this + 1);
  mlir::ValueRange::ValueRange(&v11, v14[0], LODWORD(v14[1]));
  result = mlir::TupleType::get(v8, v11, v12);
  v9 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    v10 = result;
    free(v9);
    return v10;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseVectorType(mlir::detail::Parser *this)
{
  v18 = *MEMORY[0x1E69E9840];
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
  v3 = *(this + 1);
  *(v3 + 96) = *(v3 + 72);
  *(v3 + 80) = *(v3 + 56);
  mlir::Lexer::lexToken(v15, (*(this + 1) + 8));
  v4 = *(this + 1);
  *(v4 + 56) = *v15;
  *(v4 + 72) = v16[0];
  v15[0] = "expected '<' in vector type";
  v17 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, v15))
  {
    return 0;
  }

  v15[0] = v16;
  v15[1] = 0x400000000;
  v11 = &v13;
  v12 = xmmword_1A7598A10;
  if (!mlir::detail::Parser::parseVectorDimensionList(this, v15, &v11))
  {
LABEL_11:
    Checked = 0;
    v7 = v11;
    if (v11 == &v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(*(this + 1) + 56) == 21)
  {
    v5 = mlir::detail::Parser::parseFunctionType(this);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = mlir::detail::Parser::parseNonFunctionType(this);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v9[0] = "expected '>' in vector type";
  v10 = 259;
  if (!mlir::detail::Parser::parseToken(this, 19, v9))
  {
    goto LABEL_11;
  }

  v14 = SrcSymbol;
  v9[0] = this;
  v9[1] = &v14;
  Checked = mlir::VectorType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>, v9, v15[0], LODWORD(v15[1]), v5, v11, v12);
  v7 = v11;
  if (v11 != &v13)
  {
LABEL_12:
    free(v7);
  }

LABEL_13:
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  return Checked;
}

__n128 mlir::InFlightDiagnostic::operator<<<unsigned int const&>(uint64_t a1, unsigned int *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 5;
    v12 = v3;
    v4 = *(a1 + 32);
    v5 = &v11;
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v11 && v2 + 24 * v4 > &v11)
      {
        v9 = &v11 - v2;
        v10 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v4 + 1, 24);
        a1 = v10;
        v2 = *(v10 + 24);
        v5 = &v9[v2];
      }

      else
      {
        v8 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v4 + 1, 24);
        a1 = v8;
        v2 = *(v8 + 24);
        v5 = &v11;
      }
    }

    v6 = (v2 + 24 * *(a1 + 32));
    result = *v5;
    v6[1].n128_u64[0] = v5[1].n128_u64[0];
    *v6 = result;
    ++*(a1 + 32);
  }

  return result;
}