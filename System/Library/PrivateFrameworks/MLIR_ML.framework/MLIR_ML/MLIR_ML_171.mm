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
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v13, v12, &v14);
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
  v39 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3);
    v27 = 0;
    v28 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &v27, a1);
  }

  else
  {
    v23 = 257;
    mlir::detail::Parser::emitError(&v27, this, v22);
    if (!v27)
    {
      goto LABEL_10;
    }

    LODWORD(v24) = 3;
    *(&v24 + 1) = "dialect '";
    v25 = 9;
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v29 + 24 * v30;
    v8 = v24;
    *(v7 + 2) = v25;
    *v7 = v8;
    ++v30;
    if (v27 && (v9 = *(a3 + 1), v10 = *(a3 + 2), v26 = 261, *&v24 = v9, *(&v24 + 1) = v10, mlir::Diagnostic::operator<<(&v28, &v24), v27))
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = "' does not expect resource handles";
      v25 = 34;
      if (v30 >= v31)
      {
        if (v29 > &v24 || v29 + 24 * v30 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v29 + 24 * v30;
      v12 = v24;
      *(v11 + 2) = v25;
      *v11 = v12;
      ++v30;
      v13 = v27;
      *a1 = 0;
      *(a1 + 24) = 0;
      if (v13)
      {
        mlir::InFlightDiagnostic::report(&v27);
      }
    }

    else
    {
LABEL_10:
      *a1 = 0;
      *(a1 + 24) = 0;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v36;
        v16 = __p;
        if (v36 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v36 = v14;
        operator delete(v16);
      }

      v17 = v33;
      if (v33)
      {
        v18 = v34;
        v19 = v33;
        if (v34 != v33)
        {
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
          v19 = v33;
        }

        v34 = v17;
        operator delete(v19);
      }

      if (v29 != &v32)
      {
        free(v29);
      }
    }
  }
}

uint64_t mlir::detail::Parser::codeCompleteOperationName(uint64_t a1, void *__s, size_t a3)
{
  if (a3)
  {
    v6 = memchr(__s, 46, a3);
    if (!v6 || v6 - __s == -1)
    {
      (*(**(*(a1 + 8) + 160) + 24))(*(*(a1 + 8) + 160), __s, a3);
    }
  }

  return 0;
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

uint64_t mlir::detail::Parser::codeCompleteStringDialectOrOperationName(uint64_t a1, char *__s, uint64_t a3)
{
  if (a3)
  {
    if (__s[a3 - 1] == 46 && (v3 = a3 - 1, a3 != 1) && ((v6 = memchr(__s, 46, a3 - 1)) == 0 || v6 - __s == -1))
    {
      (*(**(*(a1 + 8) + 160) + 24))(*(*(a1 + 8) + 160), __s, v3);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(**(*(a1 + 8) + 160) + 16))(*(*(a1 + 8) + 160), "");
    return 0;
  }
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

void mlir::parseAsmSourceFile(uint64_t **this, const llvm::SourceMgr *a2, uint64_t ***a3, const mlir::ParserConfig *a4, mlir::AsmParserState *a5, mlir::AsmParserCodeCompleteContext *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = *a3;
  v11 = (*(***this + 16))(**this);
  v13 = mlir::FileLineColLoc::get(v10, v11, v12, 0, 0);
  v14[0] = 0;
  v14[1] = 0;
  v14[2] = 0x1000000000;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0x1000000000;
  v14[6] = 0;
  v14[7] = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a3;
  mlir::Lexer::Lexer(v20, this, *a3, a5);
  mlir::Lexer::lexToken(v21, v20);
  v22 = 1;
  v23 = "";
  v24 = 0;
  v26 = 0;
  v27 = 0;
  v25 = v14;
  v28 = 0;
  v29 = v31;
  v30 = 0;
  v31[0] = a4;
  v31[1] = a5;
  v32[0] = "builtin";
  v32[1] = 7;
  v31[2] = v32;
  v31[3] = 0x300000001;
  LOBYTE(v33) = 0;
  LOBYTE(v34) = 0;
  mlir::ModuleOp::create(v13, &v33);
}

uint64_t anonymous namespace::OperationParser::parseOperation(int32x2_t *this)
{
  v237 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*&this[1] + 56));
  v3 = v203;
  v201 = v203;
  v202 = 0x100000000;
  v178 = 0;
  v4 = this[1];
  if (*(*&v4 + 56) == 6)
  {
    *&v225 = this;
    *(&v225 + 1) = &v201;
    v226 = &v178;
    {
      goto LABEL_276;
    }

    while (1)
    {
      v5 = this[1];
      if (*(*&v5 + 56) != 16)
      {
        break;
      }

      *(*&v5 + 80) = *(*&v5 + 56);
      *(*&v5 + 96) = *(*&v5 + 72);
      mlir::Lexer::lexToken(&v204, (*&this[1] + 8));
      *(*&this[1] + 56) = v204;
      {
        goto LABEL_276;
      }
    }

    v204.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v206) = 259;
    if (!mlir::detail::Parser::parseToken(this, 18, &v204))
    {
      goto LABEL_276;
    }

    v4 = this[1];
  }

  v176 = *(*&v4 + 56);
  v177 = *(*&v4 + 72);
  if (v176 != 3)
  {
    if (!mlir::Token::isKeyword(&v176))
    {
      if (v176 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v176, 11))
        {
          if (v176 == 2)
          {
            v39 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, Loc);
          }

          else
          {
            *&v225 = "expected operation name in quotes";
            LOWORD(v228) = 259;
            mlir::detail::Parser::emitWrongTokenError(&v204, this, &v225);
            v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v204);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v204);
          }

          goto LABEL_277;
        }

        v35 = &v204;
        mlir::Token::getStringValue(&v176, &v204);
        size = SHIBYTE(v204.__r_.__value_.__r.__words[2]);
        if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v204.__r_.__value_.__r.__words[0];
        }

        if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v204.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v35->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v37 = size - 1;
            if (size != 1)
            {
              v38 = memchr(v35, 46, size - 1);
              if (!v38 || v38 - v35 == -1)
              {
                (*(**(*&this[1] + 160) + 24))(*(*&this[1] + 160), v35, v37);
              }
            }
          }
        }

        else
        {
          (*(**(*&this[1] + 160) + 16))(*(*&this[1] + 160), "", 0);
        }

        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v204.__r_.__value_.__l.__data_);
        }

LABEL_276:
        v39 = 0;
        goto LABEL_277;
      }

      goto LABEL_269;
    }

    v4 = this[1];
  }

  v6 = v201;
  v7 = v202;
  v8 = mlir::Token::getLoc((*&v4 + 56));
  v9 = this[1];
  v11 = *(*&v9 + 64);
  v10 = *(*&v9 + 72);
  v191 = v12;
  v192 = v14;
  if ((v14 & 1) == 0)
  {
    v30 = 0;
    goto LABEL_269;
  }

  v204.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __s2 = mlir::StringAttr::getValue(&v204);
  v16 = v15;
  v224 = 0;
  v17 = v191;
  if (*(v191 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v204.__r_.__value_.__r.__words[0] = *(v191 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v204);
    if (!ReferencedDialect)
    {
      LOWORD(v182) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
      mlir::emitError(EncodedSourceLocation, &v179, &v225);
      if (*(*&this[1] + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v225);
      }

      if (v225)
      {
        LODWORD(v204.__r_.__value_.__l.__data_) = 3;
        v204.__r_.__value_.__r.__words[2] = 9;
        if (v228 >= v229)
        {
          if (v227 > &v204 || v227 + 24 * v228 <= &v204)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v41 = v227 + 24 * v228;
        v42 = *&v204.__r_.__value_.__l.__data_;
        *(v41 + 2) = *(&v204.__r_.__value_.__l + 2);
        *v41 = v42;
        ++v228;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v191);
      if (v225)
      {
        LOWORD(v206) = 261;
        v204.__r_.__value_.__r.__words[0] = DialectNamespace;
        v204.__r_.__value_.__l.__size_ = v44;
        mlir::Diagnostic::operator<<(&v225 + 8, &v204.__r_.__value_.__l.__data_);
        if (v225)
        {
          LODWORD(v204.__r_.__value_.__l.__data_) = 3;
          v204.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v204.__r_.__value_.__r.__words[2] = 27;
          if (v228 >= v229)
          {
            if (v227 > &v204 || v227 + 24 * v228 <= &v204)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v45 = v227 + 24 * v228;
          v46 = *&v204.__r_.__value_.__l.__data_;
          *(v45 + 2) = *(&v204.__r_.__value_.__l + 2);
          *v45 = v46;
          ++v228;
          if (v225)
          {
            LOWORD(v206) = 261;
            v204.__r_.__value_.__r.__words[0] = v11;
            v204.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v225 + 8, &v204.__r_.__value_.__l.__data_);
            if (v225)
            {
              LODWORD(v204.__r_.__value_.__l.__data_) = 3;
              v204.__r_.__value_.__l.__size_ = "' ";
              v204.__r_.__value_.__r.__words[2] = 2;
              if (v228 >= v229)
              {
                if (v227 > &v204 || v227 + 24 * v228 <= &v204)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v47 = v227 + 24 * v228;
              v48 = *&v204.__r_.__value_.__l.__data_;
              *(v47 + 2) = *(&v204.__r_.__value_.__l + 2);
              *v47 = v48;
              ++v228;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v204, &v225);
      if (v225)
      {
        mlir::InFlightDiagnostic::report(&v225);
      }

      if (v236 == 1)
      {
        if (v235 != &v236)
        {
          free(v235);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v234;
          v51 = __p;
          if (v234 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v234 = v49;
          operator delete(v51);
        }

        v52 = v231;
        if (v231)
        {
          v53 = v232;
          v54 = v231;
          if (v232 != v231)
          {
            do
            {
              v56 = *--v53;
              v55 = v56;
              *v53 = 0;
              if (v56)
              {
                MEMORY[0x259C63150](v55, 0x1000C8077774924);
              }
            }

            while (v53 != v52);
            v54 = v231;
          }

          v232 = v52;
          operator delete(v54);
        }

        if (v227 != v230)
        {
          free(v227);
        }
      }

      if ((v10 != v16 || v10 && memcmp(v11, __s2, v10)) && v204.__r_.__value_.__r.__words[0])
      {
        LODWORD(v225) = 3;
        *(&v225 + 1) = " (tried '";
        v226 = 9;
        if (v206 >= v207)
        {
          if (v205 > &v225 || v205 + 24 * v206 <= &v225)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v70 = v205 + 24 * v206;
        v71 = v225;
        *(v70 + 2) = v226;
        *v70 = v71;
        ++v206;
        if (v204.__r_.__value_.__r.__words[0])
        {
          LOWORD(v228) = 261;
          *&v225 = __s2;
          *(&v225 + 1) = v16;
          mlir::Diagnostic::operator<<(&v204.__r_.__value_.__l.__size_, &v225);
          if (v204.__r_.__value_.__r.__words[0])
          {
            LODWORD(v225) = 3;
            *(&v225 + 1) = "' as well)";
            v226 = 10;
            if (v206 >= v207)
            {
              if (v205 > &v225 || v205 + 24 * v206 <= &v225)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v72 = v205 + 24 * v206;
            v73 = v225;
            *(v72 + 2) = v226;
            *v72 = v73;
            ++v206;
          }
        }
      }

      mlir::Diagnostic::attachNote(&v204.__r_.__value_.__l.__size_, 0, 0);
    }

    (*(*ReferencedDialect + 64))(&v204);
    if (v204.__r_.__value_.__s.__data_[16])
    {
      v32 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v205 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v33 = v224;
      if (v224 >= 8)
      {
        if ((v224 & 4) != 0)
        {
          if ((v224 & 2) != 0)
          {
            v34 = v222;
          }

          else
          {
            v34 = v222[0];
          }

          (*((v224 & 0xFFFFFFFFFFFFFFF8) + 16))(v34);
        }

        if ((v33 & 2) == 0)
        {
          llvm::deallocate_buffer(v222[0], v222[1]);
        }

        v32 = v205;
      }

      v224 = v32;
      if (v32 >= 8)
      {
        if ((v32 & 2) != 0 && (v32 & 4) != 0)
        {
          (*((v32 & 0xFFFFFFFFFFFFFFF8) + 8))();
          (*((v224 & 0xFFFFFFFFFFFFFFF8) + 16))(&v204, v87);
        }

        else
        {
          *v222 = *&v204.__r_.__value_.__l.__data_;
          v223 = v204.__r_.__value_.__r.__words[2];
        }
      }

      v88 = 0;
      v20 = 0;
LABEL_206:
      v89 = "";
      v90 = this[1];
      v91 = *(*&v90 + 176);
      if (v91 >= *(*&v90 + 180))
      {
        goto LABEL_237;
      }

      goto LABEL_207;
    }

    LOWORD(v182) = 257;
    v57 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
    mlir::emitError(v57, &v179, &v225);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v225);
    }

    if (v225)
    {
      LODWORD(v204.__r_.__value_.__l.__data_) = 3;
      v204.__r_.__value_.__l.__size_ = "custom op '";
      v204.__r_.__value_.__r.__words[2] = 11;
      if (v228 >= v229)
      {
        if (v227 > &v204 || v227 + 24 * v228 <= &v204)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v58 = v227 + 24 * v228;
      v59 = *&v204.__r_.__value_.__l.__data_;
      *(v58 + 2) = *(&v204.__r_.__value_.__l + 2);
      *v58 = v59;
      ++v228;
      if (v225)
      {
        LOWORD(v206) = 261;
        v204.__r_.__value_.__r.__words[0] = v11;
        v204.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v225 + 8, &v204.__r_.__value_.__l.__data_);
        if (v225)
        {
          LODWORD(v204.__r_.__value_.__l.__data_) = 3;
          v204.__r_.__value_.__l.__size_ = "' is unknown";
          v204.__r_.__value_.__r.__words[2] = 12;
          if (v228 >= v229)
          {
            if (v227 > &v204 || v227 + 24 * v228 <= &v204)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v60 = v227 + 24 * v228;
          v61 = *&v204.__r_.__value_.__l.__data_;
          *(v60 + 2) = *(&v204.__r_.__value_.__l + 2);
          *v60 = v61;
          ++v228;
        }
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v204, &v225);
    if (v225)
    {
      mlir::InFlightDiagnostic::report(&v225);
    }

    if (v236 == 1)
    {
      if (v235 != &v236)
      {
        free(v235);
      }

      v62 = __p;
      if (__p)
      {
        v63 = v234;
        v64 = __p;
        if (v234 != __p)
        {
          do
          {
            v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
          }

          while (v63 != v62);
          v64 = __p;
        }

        v234 = v62;
        operator delete(v64);
      }

      v65 = v231;
      if (v231)
      {
        v66 = v232;
        v67 = v231;
        if (v232 != v231)
        {
          do
          {
            v69 = *--v66;
            v68 = v69;
            *v66 = 0;
            if (v69)
            {
              MEMORY[0x259C63150](v68, 0x1000C8077774924);
            }
          }

          while (v66 != v65);
          v67 = v231;
        }

        v232 = v65;
        operator delete(v67);
      }

      if (v227 != v230)
      {
        free(v227);
      }
    }

    if (v10 != v16 || v10 && memcmp(v11, __s2, v10))
    {
      if (!v204.__r_.__value_.__r.__words[0])
      {
        goto LABEL_153;
      }

      LODWORD(v225) = 3;
      *(&v225 + 1) = " (tried '";
      v226 = 9;
      if (v206 >= v207)
      {
        if (v205 > &v225 || v205 + 24 * v206 <= &v225)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v74 = v205 + 24 * v206;
      v75 = v225;
      *(v74 + 2) = v226;
      *v74 = v75;
      ++v206;
      if (!v204.__r_.__value_.__r.__words[0] || (LOWORD(v228) = 261, *&v225 = __s2, *(&v225 + 1) = v16, mlir::Diagnostic::operator<<(&v204.__r_.__value_.__l.__size_, &v225), !v204.__r_.__value_.__r.__words[0]))
      {
LABEL_153:
        if (v215[0] == 1)
        {
          if (v214 != v215)
          {
            free(v214);
          }

          v78 = v212;
          if (v212)
          {
            v79 = v213;
            v80 = v212;
            if (v213 != v212)
            {
              do
              {
                v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
              }

              while (v79 != v78);
              v80 = v212;
            }

            v213 = v78;
            operator delete(v80);
          }

          v81 = v210;
          if (v210)
          {
            v82 = v211;
            v83 = v210;
            if (v211 != v210)
            {
              do
              {
                v85 = *--v82;
                v84 = v85;
                *v82 = 0;
                if (v85)
                {
                  MEMORY[0x259C63150](v84, 0x1000C8077774924);
                }
              }

              while (v82 != v81);
              v83 = v210;
            }

            v211 = v81;
            operator delete(v83);
          }

          if (v205 != v208)
          {
            free(v205);
          }
        }

        v30 = 0;
        v86 = v224;
        if (v224 >= 8)
        {
          goto LABEL_262;
        }

        goto LABEL_269;
      }

      LODWORD(v225) = 3;
      *(&v225 + 1) = "' as well)";
      v226 = 10;
      if (v206 >= v207)
      {
        if (v205 > &v225 || v205 + 24 * v206 <= &v225)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v76 = v205 + 24 * v206;
      v77 = v225;
      *(v76 + 2) = v226;
      *v76 = v77;
      ++v206;
    }

    if (v204.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v204);
    }

    goto LABEL_153;
  }

  (*(*v191 + 40))(&v204, v191);
  v18 = v224;
  if (v224 >= 8)
  {
    if ((v224 & 4) != 0)
    {
      if ((v224 & 2) != 0)
      {
        v19 = v222;
      }

      else
      {
        v19 = v222[0];
      }

      (*((v224 & 0xFFFFFFFFFFFFFFF8) + 16))(v19);
    }

    if ((v18 & 2) == 0)
    {
      llvm::deallocate_buffer(v222[0], v222[1]);
    }
  }

  v224 = v205;
  if (v205 >= 8)
  {
    if ((v205 & 2) != 0 && (v205 & 4) != 0)
    {
      (*((v205 & 0xFFFFFFFFFFFFFFF8) + 8))(v222, &v204);
      (*((v224 & 0xFFFFFFFFFFFFFFF8) + 16))(&v204);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v222 = *&v204.__r_.__value_.__l.__data_;
    v223 = v204.__r_.__value_.__r.__words[2];
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

LABEL_205:
    v88 = 0;
    goto LABEL_206;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v22 = *(v17 + 32);
  v23 = *(v17 + 40);
  if (!v23)
  {
    goto LABEL_205;
  }

LABEL_28:
  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 == &v22[2 * v23])
  {
    goto LABEL_205;
  }

  if (*v24 != v21)
  {
    goto LABEL_205;
  }

  v111 = v24[1];
  if (!v111)
  {
    goto LABEL_205;
  }

  v112 = (*(v111 + 24))();
  if (!v88)
  {
    goto LABEL_206;
  }

  v89 = (*(v111 + 24))(v112);
  v90 = this[1];
  v91 = *(*&v90 + 176);
  if (v91 >= *(*&v90 + 180))
  {
LABEL_237:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_207:
  v92 = (*(*&v90 + 168) + 16 * v91);
  *v92 = v89;
  v92[1] = v88;
  ++*(*&v90 + 176);
  v204.__r_.__value_.__r.__words[0] = *(v191 + 8);
  Value = mlir::StringAttr::getValue(&v204);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v219, "MLIR Parser: custom op parser '%s'", Value);
  v190 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
  v94.n128_f64[0] = mlir::OperationState::OperationState(&v204, v190, v191);
  v95 = *(*&this[1] + 152);
  if (v95)
  {
    mlir::AsmParserState::startOperationDefinition(v95, &v204.__r_.__value_.__r.__words[1]);
  }

  *(&v179 + 1) = v8;
  v180 = this;
  v181 = 0;
  *&v179 = &unk_286894168;
  v182 = v6;
  v183 = v7;
  v184 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
  v185 = v222;
  v186 = v20;
  v187 = __s2;
  v188 = v16;
  v189 = this;
  if ((v224 & 2) != 0)
  {
    v96 = v222;
  }

  else
  {
    v96 = v222[0];
  }

  if (((*(v224 & 0xFFFFFFFFFFFFFFF8))(v96, &v179, &v204, v94) & 1) == 0)
  {
    goto LABEL_244;
  }

  mlir::NamedAttrList::findDuplicate(v196, &v209);
  if (v197)
  {
    v97 = (*(v179 + 16))(&v179);
    v194[0] = "attribute '";
    v195 = 259;
    (*(v179 + 24))(&v225, &v179, v97, v194);
    Name = mlir::NamedAttribute::getName(v196);
    v98 = mlir::StringAttr::getValue(&Name);
    if (v225)
    {
      v200 = 261;
      *&v198 = v98;
      *(&v198 + 1) = v99;
      mlir::Diagnostic::operator<<(&v225 + 8, &v198);
      if (v225)
      {
        LODWORD(v198) = 3;
        *(&v198 + 1) = "' occurs more than once in the attribute list";
        v199 = 45;
        if (v228 >= v229)
        {
          if (v227 > &v198 || v227 + 24 * v228 <= &v198)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v100 = v227 + 24 * v228;
        v101 = v198;
        *(v100 + 2) = v199;
        *v100 = v101;
        ++v228;
      }
    }

    v102 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v225);
    if (v225)
    {
      mlir::InFlightDiagnostic::report(&v225);
    }

    if (v236 == 1)
    {
      if (v235 != &v236)
      {
        free(v235);
      }

      v103 = __p;
      if (__p)
      {
        v104 = v234;
        v105 = __p;
        if (v234 != __p)
        {
          do
          {
            v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
          }

          while (v104 != v103);
          v105 = __p;
        }

        v234 = v103;
        operator delete(v105);
      }

      v106 = v231;
      if (v231)
      {
        v107 = v232;
        v108 = v231;
        if (v232 != v231)
        {
          do
          {
            v110 = *--v107;
            v109 = v110;
            *v107 = 0;
            if (v110)
            {
              MEMORY[0x259C63150](v109, 0x1000C8077774924);
            }
          }

          while (v107 != v106);
          v108 = v231;
        }

        v232 = v106;
        operator delete(v108);
      }

      if (v227 != v230)
      {
        free(v227);
      }
    }

    if (!v102)
    {
      goto LABEL_244;
    }
  }

  if ((v181 & 1) == 0)
  {
    v154 = v218;
    *&v198 = v218;
    v218 = 0;
    v155 = mlir::OpBuilder::create(&this[48], &v204);
    v194[0] = v155;
    v30 = 0;
    {
      if (v154)
      {
        *&v225 = &v190;
        *(&v225 + 1) = &v198;
        v226 = v194;
        {
          v30 = v194[0];
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = v155;
      }
    }
  }

  else
  {
LABEL_244:
    v30 = 0;
  }

  mlir::OpAsmParser::~OpAsmParser(&v179);
  *&v225 = &v226;
  *(&v225 + 1) = 0x400000000;
  if (v217 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v217)
  {
    v113 = v216;
    v114 = &v216[v217];
    do
    {
      v115 = *v113;
      if (*v113)
      {
        for (i = *(v115 + 8); i != v115; i = *(i + 8))
        {
          if (i)
          {
            v117 = (i - 8);
          }

          else
          {
            v117 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v117);
        }
      }

      ++v113;
    }

    while (v113 != v114);
  }

  if (v225 != &v226)
  {
    free(v225);
  }

  mlir::OperationState::~OperationState(&v204);
  v219[0] = &unk_2868A14C0;
  if (v220 != &v221)
  {
    free(v220);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v219);
  --*(*&this[1] + 176);
  v86 = v224;
  if (v224 >= 8)
  {
LABEL_262:
    if ((v86 & 4) != 0)
    {
      if ((v86 & 2) != 0)
      {
        v118 = v222;
      }

      else
      {
        v118 = v222[0];
      }

      (*((v86 & 0xFFFFFFFFFFFFFFF8) + 16))(v118);
    }

    if ((v86 & 2) == 0)
    {
      llvm::deallocate_buffer(v222[0], v222[1]);
    }
  }

LABEL_269:
  if (!v30)
  {
    goto LABEL_276;
  }

  if (!v202)
  {
    v121 = *(*&this[1] + 152);
    if (v121)
    {
      LocRange = mlir::Token::getLocRange(&v176);
      v124 = v123;
      EndLoc = mlir::Token::getEndLoc((*&this[1] + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v121, v30, LocRange, v124, EndLoc, 0, 0);
    }

    v39 = 1;
    goto LABEL_277;
  }

  v119 = *(v30 + 36);
  if (!v119)
  {
    *&v225 = "cannot name an operation with no results";
    LOWORD(v228) = 259;
    v126 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, Loc);
    mlir::emitError(v126, &v225, &v204);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v204);
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v204);
    if (v204.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v204);
    }

    if (v215[0] != 1)
    {
      goto LABEL_277;
    }

    if (v214 != v215)
    {
      free(v214);
    }

    v127 = v212;
    if (v212)
    {
      v128 = v213;
      v129 = v212;
      if (v213 != v212)
      {
        do
        {
          v128 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v128 - 1);
        }

        while (v128 != v127);
        v129 = v212;
      }

      v213 = v127;
      operator delete(v129);
    }

    v130 = v210;
    if (v210)
    {
      v131 = v211;
      v132 = v210;
      if (v211 != v210)
      {
        do
        {
          v134 = *--v131;
          v133 = v134;
          *v131 = 0;
          if (v134)
          {
            MEMORY[0x259C63150](v133, 0x1000C8077774924);
          }
        }

        while (v131 != v130);
        goto LABEL_333;
      }

LABEL_334:
      v211 = v130;
      operator delete(v132);
    }

LABEL_335:
    if (v205 != v208)
    {
      free(v205);
    }

    goto LABEL_277;
  }

  if (v178 != v119)
  {
    *&v225 = "operation defines ";
    LOWORD(v228) = 259;
    v135 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, Loc);
    mlir::emitError(v135, &v225, &v204);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v204);
    }

    if (v204.__r_.__value_.__r.__words[0])
    {
      v136 = *(v30 + 36);
      LODWORD(v179) = 5;
      *(&v179 + 1) = v136;
      if (v206 >= v207)
      {
        if (v205 > &v179 || v205 + 24 * v206 <= &v179)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v137 = v205 + 24 * v206;
      v138 = v179;
      *(v137 + 2) = v180;
      *v137 = v138;
      v139 = ++v206;
      if (v204.__r_.__value_.__r.__words[0])
      {
        LODWORD(v179) = 3;
        *(&v179 + 1) = " results but was provided ";
        v180 = 26;
        if (v139 >= v207)
        {
          if (v205 > &v179 || v205 + 24 * v139 <= &v179)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v140 = v205 + 24 * v206;
        v141 = v179;
        *(v140 + 2) = v180;
        *v140 = v141;
        v142 = ++v206;
        if (v204.__r_.__value_.__r.__words[0])
        {
          LODWORD(v179) = 5;
          *(&v179 + 1) = v178;
          if (v142 >= v207)
          {
            if (v205 > &v179 || v205 + 24 * v142 <= &v179)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v143 = v205 + 24 * v206;
          v144 = v179;
          *(v143 + 2) = v180;
          *v143 = v144;
          v145 = ++v206;
          if (v204.__r_.__value_.__r.__words[0])
          {
            LODWORD(v179) = 3;
            *(&v179 + 1) = " to bind";
            v180 = 8;
            if (v145 >= v207)
            {
              if (v205 > &v179 || v205 + 24 * v145 <= &v179)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v146 = v205 + 24 * v206;
            v147 = v179;
            *(v146 + 2) = v180;
            *v146 = v147;
            ++v206;
          }
        }
      }
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v204);
    if (v204.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v204);
    }

    if (v215[0] != 1)
    {
      goto LABEL_277;
    }

    if (v214 != v215)
    {
      free(v214);
    }

    v148 = v212;
    if (v212)
    {
      v149 = v213;
      v150 = v212;
      if (v213 != v212)
      {
        do
        {
          v149 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v149 - 1);
        }

        while (v149 != v148);
        v150 = v212;
      }

      v213 = v148;
      operator delete(v150);
    }

    v130 = v210;
    if (v210)
    {
      v151 = v211;
      v132 = v210;
      if (v211 != v210)
      {
        do
        {
          v153 = *--v151;
          v152 = v153;
          *v151 = 0;
          if (v153)
          {
            MEMORY[0x259C63150](v152, 0x1000C8077774924);
          }
        }

        while (v151 != v130);
LABEL_333:
        v132 = v210;
        goto LABEL_334;
      }

      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (*(*&this[1] + 152))
  {
    LODWORD(v225) = 0;
    v204.__r_.__value_.__r.__words[0] = &v204.__r_.__value_.__r.__words[2];
    v204.__r_.__value_.__l.__size_ = 0x300000000;
    if (v202 > 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v157 = v201 + 32 * v202;
    v158 = 0;
    v159 = (v201 + 24);
    do
    {
      v160 = v204.__r_.__value_.__r.__words[1];
      if (LODWORD(v204.__r_.__value_.__r.__words[1]) >= HIDWORD(v204.__r_.__value_.__r.__words[1]))
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(&v204, &v225, v159);
      }

      else
      {
        v161 = v204.__r_.__value_.__r.__words[0] + 16 * LODWORD(v204.__r_.__value_.__r.__words[1]);
        *v161 = v158;
        *(v161 + 8) = *v159;
        LODWORD(v204.__r_.__value_.__r.__words[1]) = v160 + 1;
      }

      v158 = v225 + *(v159 - 2);
      LODWORD(v225) = v158;
      v162 = (v159 + 1);
      v159 += 4;
    }

    while (v162 != v157);
    v163 = *(*&this[1] + 152);
    v164 = mlir::Token::getLocRange(&v176);
    v166 = v165;
    v167 = mlir::Token::getEndLoc((*&this[1] + 80));
    mlir::AsmParserState::finalizeOperationDefinition(v163, v30, v164, v166, v167, v204.__r_.__value_.__l.__data_, LODWORD(v204.__r_.__value_.__r.__words[1]));
  }

  v156 = v201;
  __s2a = v201 + 32 * v202;
  v168 = 0;
  while (1)
  {
    v169 = v3;
    v170 = *(v156 + 4);
    if (v170)
    {
      break;
    }

    v172 = v168;
LABEL_353:
    v156 += 32;
    v39 = 1;
    v168 = v172;
    v3 = v169;
    if (v156 == __s2a)
    {
      goto LABEL_277;
    }
  }

  v171 = 0;
  while (1)
  {
    v204.__r_.__value_.__r.__words[0] = *(v156 + 3);
    *&v204.__r_.__value_.__r.__words[1] = *v156;
    LODWORD(v205) = v171;
    v172 = (v168 + 1);
    v173 = (v168 >= 6 ? v30 - 96 - 24 * (v168 - 5) : v30 - 16 * v172);
    {
      break;
    }

    ++v171;
    LODWORD(v168) = v172;
    if (v170 == v171)
    {
      goto LABEL_353;
    }
  }

  v39 = 0;
  v3 = v169;
LABEL_277:
  if (v201 != v3)
  {
    free(v201);
  }

  return v39;
}

void anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this, BOOL a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(this + 26);
  v9[0] = 0;
  v9[1] = 0;
  LODWORD(v10) = 0;
  v5 = *(this + 54);
  if (v5 < *(this + 55))
  {
    v6 = v4 + 24 * *(this + 54);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = v9[0];
    v9[0] = 0;
    *(v6 + 8) = v9[1];
    LODWORD(v9[1]) = 0;
    v7 = *(v6 + 12);
    *(v6 + 12) = HIDWORD(v9[1]);
    HIDWORD(v9[1]) = v7;
    v8 = *(v6 + 16);
    *(v6 + 16) = v10;
    LODWORD(v10) = v8;
    ++*(this + 54);
    llvm::deallocate_buffer(v9[0], (32 * v10));
  }

  if (v4 <= v9 && v4 + 24 * v5 > v9)
  {
  }
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

void ***llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(void ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
    if (*(a1 + 3) < v6)
    {
      if (v7)
      {
        v8 = *a1;
        v9 = &(*a1)[3 * v7];
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

      *(a1 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    v27 = *a1;
    if (v7)
    {
      v28 = a2;
      v29 = &v5[6 * v7];
      do
      {
        v30 = *v5;
        v31 = v5[4];
        v32 = *(v5 + 1);
        *v5 = 0;
        *(v5 + 1) = 0;
        v5[4] = 0;
        v33 = *v27;
        *v27 = v30;
        v34 = *(v27 + 2);
        LODWORD(v30) = *(v27 + 3);
        v27[1] = v32;
        *(v27 + 4) = v31;
        if (v30 && v34)
        {
          v35 = v33;
          do
          {
            v36 = *v35;
            if (*v35 != -8 && v36 != 0)
            {
              llvm::deallocate_buffer(v36, (*v36 + 9));
            }

            ++v35;
            --v34;
          }

          while (v34);
        }

        free(v33);
        v5 += 6;
        v27 += 3;
      }

      while (v5 != v29);
      v27 = *a1;
      a2 = v28;
      v52 = *v28;
      v53 = *(v28 + 8);
      if (v7 == v53)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v7 = 0;
      v52 = *a2;
      LODWORD(v53) = *(a2 + 8);
      if (!v53)
      {
LABEL_76:
        *(a1 + 2) = v6;
        v57 = a2;
        v58 = *(a2 + 8);
        if (v58)
        {
          v59 = &v52[6 * v58];
          do
          {
            v60 = v59;
            v59 -= 3;
            if (*(v60 - 3))
            {
              v61 = *(v60 - 4);
              if (v61)
              {
                v62 = 0;
                do
                {
                  v63 = *(*v59 + v62);
                  if (v63 != -8 && v63 != 0)
                  {
                    llvm::deallocate_buffer(v63, (*v63 + 9));
                  }

                  v62 += 8;
                }

                while (8 * v61 != v62);
              }
            }

            free(*v59);
          }

          while (v59 != v52);
        }

        *(v57 + 8) = 0;
        return a1;
      }
    }

    v54 = &v52[6 * v53];
    v55 = &v27[3 * v7];
    v56 = &v52[6 * v7];
    do
    {
      *v55 = *v56;
      *(v55 + 1) = *(v56 + 2);
      *v56 = 0;
      *(v56 + 1) = 0;
      v56[4] = 0;
      v55 += 3;
      v56 += 6;
    }

    while (v56 != v54);
    v52 = *a2;
    goto LABEL_76;
  }

  v15 = *a1;
  v16 = a2;
  if (v6)
  {
    v17 = &v5[6 * v6];
    do
    {
      v18 = *v5;
      v19 = v5[4];
      v20 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v5[4] = 0;
      v21 = *v15;
      *v15 = v18;
      v22 = *(v15 + 2);
      LODWORD(v18) = *(v15 + 3);
      v15[1] = v20;
      *(v15 + 4) = v19;
      if (v18 && v22)
      {
        v23 = v21;
        do
        {
          v24 = *v23;
          if (*v23 != -8 && v24 != 0)
          {
            llvm::deallocate_buffer(v24, (*v24 + 9));
          }

          ++v23;
          --v22;
        }

        while (v22);
      }

      free(v21);
      v5 += 6;
      v15 += 3;
    }

    while (v5 != v17);
    v26 = *a1;
    LODWORD(v7) = *(a1 + 2);
  }

  else
  {
    v26 = *a1;
  }

  for (i = &v26[3 * v7]; i != v15; free(*i))
  {
    v39 = i;
    i -= 3;
    if (*(v39 - 3))
    {
      v40 = *(v39 - 4);
      if (v40)
      {
        v41 = 0;
        do
        {
          v42 = *(*i + v41);
          if (v42 != -8 && v42 != 0)
          {
            llvm::deallocate_buffer(v42, (*v42 + 9));
          }

          v41 += 8;
        }

        while (8 * v40 != v41);
      }
    }
  }

  *(a1 + 2) = v6;
  v44 = *(v16 + 8);
  if (v44)
  {
    v45 = *v16;
    v46 = (*v16 + 24 * v44);
    do
    {
      v47 = v46;
      v46 -= 3;
      if (*(v47 - 3))
      {
        v48 = *(v47 - 4);
        if (v48)
        {
          v49 = 0;
          do
          {
            v50 = *(*v46 + v49);
            if (v50 != -8 && v50 != 0)
            {
              llvm::deallocate_buffer(v50, (*v50 + 9));
            }

            v49 += 8;
          }

          while (8 * v48 != v49);
        }
      }

      free(*v46);
    }

    while (v46 != v45);
  }

  *(v16 + 8) = 0;
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
  v79 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  v47 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v46);
  size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v49 = "empty operation name is invalid";
    v51 = 259;
    mlir::detail::Parser::emitError(v66, this, &v49);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v13 = v71;
      if (v71)
      {
        v14 = v72;
        v15 = v71;
        if (v72 != v71)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v71;
        }

        v72 = v13;
        operator delete(v15);
      }

      v16 = v69;
      if (v69)
      {
        v17 = v70;
        v18 = v69;
        if (v70 != v69)
        {
          do
          {
            v20 = *--v17;
            v19 = v20;
            *v17 = 0;
            if (v20)
            {
              MEMORY[0x259C63150](v19, 0x1000C8077774924);
            }
          }

          while (v17 != v16);
          v18 = v69;
        }

        v70 = v16;
        operator delete(v18);
      }

      v30 = v67;
      if (v67 != &v68)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v46, 0, 0) == -1)
  {
    v21 = *(this + 1);
    *(v21 + 80) = *(v21 + 56);
    *(v21 + 96) = *(v21 + 72);
    mlir::Lexer::lexToken(&v49, (*(this + 1) + 8));
    v22 = *(this + 1);
    *(v22 + 56) = v49;
    *(v22 + 72) = v50;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v46;
    }

    else
    {
      v23 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v46.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v49, EncodedSourceLocation, v23, v24);
    if (*(*(&v49 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v25 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
      v26 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v46.__r_.__value_.__l.__size_;
      }

      v75 = v26;
      v76 = v25;
      LOBYTE(v44) = 46;
      v27 = llvm::StringRef::find(&v75, &v44, 1uLL, 0);
      if (v27 == -1)
      {
        v28 = v75;
        v29 = v76;
      }

      else
      {
        v28 = v75;
        if (v27 >= v76)
        {
          v29 = v76;
        }

        else
        {
          v29 = v27;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v28, v29) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v28, v29))
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v46;
        }

        else
        {
          v33 = v46.__r_.__value_.__r.__words[0];
        }

        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v46.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v75, v33, v34, ***(this + 1));
        *(&v49 + 1) = v75;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(***(this + 1)) & 1) == 0)
      {
        v75 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v78 = 259;
        mlir::detail::Parser::emitError(v48, this, &v75);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v48);
        goto LABEL_86;
      }
    }

    v35 = *(*(this + 1) + 152);
    if (v35)
    {
      mlir::AsmParserState::startOperationDefinition(v35, (&v49 + 8));
    }

    LOBYTE(v75) = 0;
    LOBYTE(v77[0]) = 0;
    LOBYTE(v44) = 0;
    v45 = 0;
    v43[0] = 0;
    v43[16] = 0;
    v42[0] = 0;
    v42[16] = 0;
    v31 = 0;
    {
LABEL_87:
      v75 = v77;
      v76 = 0x400000000;
      if (v54 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v54)
      {
        v37 = v53;
        v38 = &v53[v54];
        do
        {
          v39 = *v37;
          if (*v37)
          {
            for (i = *(v39 + 8); i != v39; i = *(i + 8))
            {
              if (i)
              {
                v41 = (i - 8);
              }

              else
              {
                v41 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v41);
            }
          }

          ++v37;
        }

        while (v37 != v38);
      }

      if (v75 != v77)
      {
        free(v75);
      }

      mlir::OperationState::~OperationState(&v49);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v31;
    }

LABEL_86:
    v31 = 0;
    goto LABEL_87;
  }

  *&v49 = "null character not allowed in operation name";
  v51 = 259;
  mlir::detail::Parser::emitError(v57, this, &v49);
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

    v5 = __p;
    if (__p)
    {
      v6 = v63;
      v7 = __p;
      if (v63 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v63 = v5;
      operator delete(v7);
    }

    v8 = v60;
    if (v60)
    {
      v9 = v61;
      v10 = v60;
      if (v61 != v60)
      {
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
        v10 = v60;
      }

      v61 = v8;
      operator delete(v10);
    }

    v30 = v58;
    if (v58 != &v59)
    {
LABEL_55:
      free(v30);
    }
  }

LABEL_56:
  v31 = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return v31;
}

uint64_t anonymous namespace::OperationParser::addDefinition(int32x2_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v62[25] = *MEMORY[0x277D85DE8];
  v7 = (a2 + 8);
  v11 = v8;
  v12 = *(v8 + 8);
  v14 = (a2 + 24);
  v13 = *(a2 + 24);
  v15 = v13 + 1;
  if (v12 > v13 || v12 == v15)
  {
    v17 = *(*v8 + 16 * *(a2 + 24));
    v59 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v12 <= v15)
    {
      if (*(v8 + 12) < v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v12 != v15)
      {
        bzero((*v8 + 16 * v12), 16 * (v15 - v12));
      }
    }

    *(v11 + 8) = v15;
    v17 = *(*v11 + 16 * *v14);
    v59 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  v18 = a1[44].i32[0];
  if (!v18)
  {
LABEL_39:
    v52 = *a2;
    v58 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v52);
    mlir::emitError(EncodedSourceLocation, v57, &v61);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v61);
    }

    if (v61)
    {
      mlir::Diagnostic::append<char const(&)[10],llvm::StringRef &,char const(&)[44]>(v62, "redefinition of SSA value '", v7, "'");
    }

    v54 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v11 + 16 * *v14 + 8));
    mlir::Diagnostic::attachNote(v62, v54, 1);
  }

  v19 = a1[42];
  v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
  v22 = v18 - 1;
  v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
  v24 = *(*&v19 + 16 * v23);
  if (v24 != v17)
  {
    v50 = 1;
    while (v24 != -4096)
    {
      v51 = v23 + v50++;
      v23 = v51 & v22;
      v24 = *(*&v19 + 16 * v23);
      if (v24 == v17)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((a3[1] ^ *(v17 + 8)) >= 8)
  {
    v25 = *a2;
    v58 = 257;
    v26 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v25);
    mlir::emitError(v26, v57, &v61);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v61);
    }

    v60 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    if (v61)
    {
      mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(v62, "definition of SSA value '", v7, "#", (a2 + 24), "' has type ", &v60);
    }

    v27 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v11 + 16 * *v14 + 8));
    mlir::Diagnostic::attachNote(v62, v27, 1);
  }

  while (1)
  {
    v28 = *v17;
    if (!*v17)
    {
      break;
    }

    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      *v29 = *v28;
      if (v30)
      {
        *(v30 + 8) = v29;
      }
    }

    v28[3] = a3;
    v28[1] = a3;
    v31 = *a3;
    *v28 = *a3;
    if (v31)
    {
      *(v31 + 8) = v28;
    }

    *a3 = v28;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v59);
  mlir::Operation::destroy(DefiningOp, v33);
  v34 = a1[44].i32[0];
  if (v34)
  {
    v35 = a1[42];
    v36 = 0x9DDFEA08EB382D69 * ((8 * v59 - 0xAE502812AA7333) ^ HIDWORD(v59));
    v37 = 0x9DDFEA08EB382D69 * (HIDWORD(v59) ^ (v36 >> 47) ^ v36);
    LODWORD(v36) = -348639895 * ((v37 >> 47) ^ v37);
    v38 = v34 - 1;
    v39 = v36 & (v34 - 1);
    v40 = *(*&v35 + 16 * v39);
    if (v59 == v40)
    {
LABEL_31:
      *(*&v35 + 16 * v39) = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    else
    {
      v55 = 1;
      while (v40 != -4096)
      {
        v56 = v39 + v55++;
        v39 = v56 & v38;
        v40 = *(*&v35 + 16 * v39);
        if (v59 == v40)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v41 = *(*&a1[1] + 152);
  if (v41)
  {
    mlir::AsmParserState::refineDefinition(v41, v59, a3);
  }

LABEL_34:
  v42 = *a2;
  v43 = (*v11 + 16 * *(a2 + 24));
  *v43 = a3;
  v43[1] = v42;
  v44 = *(a2 + 8);
  v45 = *(a2 + 16);
  v46 = *&a1[2] + 88 * a1[3].u32[0];
  v47 = (*(v46 - 64) + 24 * *(v46 - 56) - 24);
  v48 = llvm::StringMapImpl::hash(v44, v45, v9, v10);
  llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v47, v44, v45, v48);
  return 1;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
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
    mlir::detail::Parser::emitError(&v36, v2, v32);
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
          MEMORY[0x259C63150](v30, 0x1000C8077774924);
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
    mlir::detail::Parser::emitWrongTokenError(&v36, v2, v32);
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
          MEMORY[0x259C63150](v24, 0x1000C8077774924);
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
  v10 = *a2;
  LODWORD(v11) = *a3;
  *(&v11 + 1) = *a4;
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 > &v10 || v5 + 32 * v4 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 32 * *(a1 + 2));
  v7 = v11;
  *v6 = v10;
  v6[1] = v7;
  v8 = (*(a1 + 2) + 1);
  *(a1 + 2) = v8;
  return *a1 + 32 * v8 - 32;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v41 = v3;
  v42 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v37, (*(this + 1) + 8));
    v5 = *(this + 1);
    *(v5 + 56) = v37;
    *(v5 + 72) = v38;
    v7 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1), v6);
    if (v8)
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF00;
      return v9 | v7;
    }

    LOBYTE(v37) = 46;
    v18 = llvm::StringRef::find(&v41, &v37, 1uLL, 0);
    if (v18 == -1)
    {
      v19 = v41;
      v20 = v42;
      v21 = v42;
      v22 = *(this + 1);
      if (*(v22 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = v41;
      v20 = v42;
      if (v18 >= v42)
      {
        v21 = v42;
      }

      else
      {
        v21 = v18;
      }

      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
      if (v42 > v18 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v19, v21);
        mlir::OperationName::OperationName(&v37, v41, v42, ***(this + 1));
        LOBYTE(v7) = v37;
        v9 = v37 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v36) < 0)
        {
          v29 = v37;
          operator delete(v35[0]);
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
        *&v37 = v31;
        v38 = v19;
        v39 = v20;
        v40 = 1282;
        llvm::Twine::str(&v37, &v33);
        v36 = v34;
        *v35 = v33;
        v27 = SHIBYTE(v34);
        v28 = v35;
        if (v34 < 0)
        {
          v28 = v33;
        }

        if (v34 < 0)
        {
          v27 = *(&v33 + 1);
        }

        v41 = v28;
        v42 = v27;
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
    *&v37 = "empty operation name is invalid";
    v40 = 259;
    mlir::detail::Parser::emitError(v43, this, &v37);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v49;
        v12 = __p;
        if (v49 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v49 = v10;
        operator delete(v12);
      }

      v13 = v46;
      if (v46)
      {
        v14 = v47;
        v15 = v46;
        if (v47 != v46)
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
          v15 = v46;
        }

        v47 = v13;
        operator delete(v15);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }

    LOBYTE(v7) = 0;
    v9 = 0;
  }

  return v9 | v7;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(mlir::detail::Parser *a1, unint64_t a2)
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
    v11 = 0;
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
  mlir::OpAsmParser::~OpAsmParser(this);

  JUMPOUT(0x259C63180);
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
  v49 = *MEMORY[0x277D85DE8];
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
                  MEMORY[0x259C63150](v21, 0x1000C8077774924);
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
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
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
  v19[3] = *MEMORY[0x277D85DE8];
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
  v69 = *MEMORY[0x277D85DE8];
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
        llvm::APFloat::convert(a3, a2, 1u, &v58);
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
            MEMORY[0x259C63150](v50, 0x1000C8077774924);
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
            MEMORY[0x259C63150](v44, 0x1000C8077774924);
          }
        }

        while (v42 != v41);
        goto LABEL_47;
      }
    }
  }

  return v33;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeyword(void *a1, uint64_t a2, const char *a3, const char **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v24[0] = a2;
  v24[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v24, 1, 0);
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
      v22 = "expected '";
      v23 = 259;
      (*(*a1 + 24))(&v28, a1, v10, &v22);
      if (v28)
      {
        v27 = 261;
        *&v25 = a2;
        *(&v25 + 1) = a3;
        mlir::Diagnostic::operator<<(v29, &v25);
        if (v28)
        {
          LODWORD(v25) = 3;
          *(&v25 + 1) = "'";
          v26 = 1;
          if (v31 >= v32)
          {
            if (v30 > &v25 || v30 + 24 * v31 <= &v25)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v30 + 24 * v31;
          v12 = v25;
          *(v11 + 2) = v26;
          *v11 = v12;
          ++v31;
          if (v28)
          {
            mlir::Diagnostic::operator<<(v29, a4);
          }
        }
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
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
                MEMORY[0x259C63150](v19, 0x1000C8077774924);
              }
            }

            while (v17 != v16);
            v18 = v34;
          }

          v35 = v16;
          operator delete(v18);
        }

        if (v30 != &v33)
        {
          free(v30);
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

  if (__src)
  {
    v4 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + v4) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
LABEL_13:
    operator delete(*a2);
  }

LABEL_14:
  *a2 = __dst;
  *(a2 + 16) = v7;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, mlir::detail::Parser **a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

    return (a4)(a5, a2, a3);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseType(uint64_t a1, uint64_t *a2)
{
  mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    mlir::detail::Parser::parseType(v5);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a3(a4, a2);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrowTypeList(void *a1, uint64_t a2)
{
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2);
  return v4 & 1;
}

void mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrowTypeList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) == 13)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v7, (*(v2 + 8) + 8));
    v6 = *(v2 + 8);
    *(v6 + 56) = v7;
    *(v6 + 72) = v8;
    mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2);
  }
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonType(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v7 = "expected ':'";
  v8 = 259;
  if (!mlir::detail::Parser::parseToken(v4, 15, &v7))
  {
    return 0;
  }

  mlir::detail::Parser::parseType(*(a1 + 16));
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
  v40 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v28 = 0;
    v29 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &v28, a3);
  }

  else
  {
    v7 = *(a1 + 16);
    v24 = 257;
    mlir::detail::Parser::emitError(&v28, v7, v23);
    if (!v28)
    {
      goto LABEL_10;
    }

    LODWORD(v25) = 3;
    *(&v25 + 1) = "dialect '";
    v26 = 9;
    if (v31 >= v32)
    {
      if (v30 > &v25 || v30 + 24 * v31 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v30 + 24 * v31;
    v9 = v25;
    *(v8 + 2) = v26;
    *v8 = v9;
    ++v31;
    if (v28 && (v10 = *(a2 + 8), v11 = *(a2 + 16), v27 = 261, *&v25 = v10, *(&v25 + 1) = v11, mlir::Diagnostic::operator<<(&v29, &v25), v28))
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = "' does not expect resource handles";
      v26 = 34;
      if (v31 >= v32)
      {
        if (v30 > &v25 || v30 + 24 * v31 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v30 + 24 * v31;
      v13 = v25;
      *(v12 + 2) = v26;
      *v12 = v13;
      ++v31;
      v14 = v28;
      *a3 = 0;
      a3[24] = 0;
      if (v14)
      {
        mlir::InFlightDiagnostic::report(&v28);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
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

      v18 = v34;
      if (v34)
      {
        v19 = v35;
        v20 = v34;
        if (v35 != v34)
        {
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
          v20 = v34;
        }

        v35 = v18;
        operator delete(v20);
      }

      if (v30 != &v33)
      {
        free(v30);
      }
    }
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(*(a1 + 16) + 8);
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 112), &v5, v6);
  result = v7;
  if (v7 == 1)
  {
    v4 = *(v2 + 144);
    if (v4 >= *(v2 + 148))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 136) + 8 * v4) = v5;
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
  v15 = 0;
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
      v10 = v15;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v10;
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
  v57 = *MEMORY[0x277D85DE8];
  v43 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v44 = *(v9 + 56), v45 = *(v9 + 72), v44 == 6) || mlir::Token::isCodeCompletionFor(&v44, 6))
  {
    v40[0] = a1;
    v40[1] = a2;
    v40[2] = &v43;
    Loc = mlir::Token::getLoc((*(a1[11] + 8) + 56));
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v41[0] = "expected ";
      v42 = 259;
      (*(*a1 + 24))(v46, a1, Loc, v41);
      if (v46[0])
      {
        LODWORD(v44) = 2;
        *(&v44 + 1) = a5;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v47 + 24 * v48;
        v12 = v44;
        *(v11 + 2) = v45;
        *v11 = v12;
        v13 = ++v48;
        if (v46[0])
        {
          LODWORD(v44) = 3;
          *(&v44 + 1) = " operands";
          v45 = 9;
          if (v13 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v13 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v47 + 24 * v48;
          v15 = v44;
          *(v14 + 2) = v45;
          *v14 = v15;
          ++v48;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
      v17 = result;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
        result = v17;
      }

      if (v56 == 1)
      {
        if (v55 != &v56)
        {
          free(v55);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v54;
          v20 = __p;
          if (v54 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v54 = v18;
          operator delete(v20);
        }

        v21 = v51;
        result = v17;
        if (!v51)
        {
          goto LABEL_67;
        }

        v22 = v52;
        v23 = v51;
        if (v52 == v51)
        {
LABEL_66:
          v52 = v21;
          operator delete(v23);
          result = v17;
LABEL_67:
          if (v47 != &v50)
          {
            free(v47);
            return v17;
          }

          return result;
        }

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
LABEL_65:
        v23 = v51;
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

  if ((v44 - 21) > 1)
  {
    v33 = a1[11];
    v41[0] = "expected operand";
    v42 = 259;
    mlir::detail::Parser::emitWrongTokenError(v46, v33, v41);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    v17 = result;
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
      result = v17;
    }

    if (v56)
    {
      if (v55 != &v56)
      {
        free(v55);
        result = v17;
      }

      v34 = __p;
      if (__p)
      {
        v35 = v54;
        v36 = __p;
        if (v54 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v54 = v34;
        operator delete(v36);
        result = v17;
      }

      v21 = v51;
      if (!v51)
      {
        goto LABEL_67;
      }

      v37 = v52;
      v23 = v51;
      if (v52 == v51)
      {
        goto LABEL_66;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          MEMORY[0x259C63150](v38, 0x1000C8077774924);
        }
      }

      while (v37 != v21);
      goto LABEL_65;
    }
  }

  else
  {
    v26 = a1[11];
    v41[0] = "unexpected delimiter";
    v42 = 259;
    mlir::detail::Parser::emitError(v46, v26, v41);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    v17 = result;
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
      result = v17;
    }

    if (v56)
    {
      if (v55 != &v56)
      {
        free(v55);
        result = v17;
      }

      v27 = __p;
      if (__p)
      {
        v28 = v54;
        v29 = __p;
        if (v54 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v54 = v27;
        operator delete(v29);
        result = v17;
      }

      v21 = v51;
      if (!v51)
      {
        goto LABEL_67;
      }

      v30 = v52;
      v23 = v51;
      if (v52 == v51)
      {
        goto LABEL_66;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          MEMORY[0x259C63150](v31, 0x1000C8077774924);
        }
      }

      while (v30 != v21);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::resolveOperand(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  if (result)
  {
    v8 = *(a4 + 8);
    if (v8 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v8) = result;
    ++*(a4 + 8);
    return 1;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, const llvm::Twine *a5, uint64_t a6, uint64_t a7)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x200000000;
  v25[2] = &v29;
  __src = v28;
  v27 = 0x100000000;
  v25[0] = a1;
  v25[1] = &__src;
  v24 = 0;
  {
    if (v24)
    {
      v13 = mlir::AffineMapAttr::get(v24);
      *a3 = v13;
      NamedAttr = mlir::Builder::getNamedAttr(*(a1 + 88), a4, a5, v13);
      mlir::NamedAttrList::push_back(a6, NamedAttr, v15);
    }

    v16 = v29;
    v17 = v30;
    *(a2 + 8) = 0;
    if (v17 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v17)
    {
      memcpy(*a2, v16, 32 * v17);
      v20 = *(a2 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = (v20 + v17);
    *(a2 + 8) = v21;
    v22 = v27;
    if (v27 + v21 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v27)
    {
      memcpy((*a2 + 32 * v21), __src, 32 * v27);
      LODWORD(v21) = *(a2 + 8);
    }

    *(a2 + 8) = v21 + v22;
    v18 = 1;
    v19 = __src;
    if (__src != v28)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
    v19 = __src;
    if (__src != v28)
    {
LABEL_15:
      free(v19);
    }
  }

  if (v29 != v31)
  {
    free(v29);
  }

  return v18;
}

BOOL anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext ***a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseArgument(mlir::AsmParser *a1, uint64_t a2, int a3, int a4)
{
  v13[9] = *MEMORY[0x277D85DE8];
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
  v35[16] = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 800))(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v33 = v35;
  v34 = 0x400000000;
  {
    if (v34)
    {
      v30 = v32;
      v31 = 0x400000000;
      *&v25 = "expected ':' in operand list";
      LOWORD(v27) = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, &v25) && mlir::detail::Parser::parseTypeListNoParens(v5, &v30))
      {
        if (v34 == v31)
        {
          if (*(a3 + 12) < v34)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v34)
          {
            v7 = 0;
            v8 = 0;
            v9 = 32 * v34;
            while (1)
            {
              v10 = *&v33[v8 + 16];
              v25 = *&v33[v8];
              v26 = v10;
              v12 = v11 == 0;
              if (!v11)
              {
                break;
              }

              v13 = *(a3 + 8);
              if (v13 >= *(a3 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
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
          v21 = "expected ";
          v22 = 259;
          mlir::detail::Parser::emitError(&v25, v5, &v21);
          if (v25)
          {
            LODWORD(v23) = 5;
            *(&v23 + 1) = v34;
            if (v27 >= v28)
            {
              if (*(&v26 + 1) > &v23 || *(&v26 + 1) + 24 * v27 <= &v23)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v15 = *(&v26 + 1) + 24 * v27;
            v16 = v23;
            *(v15 + 16) = v24;
            *v15 = v16;
            v17 = ++v27;
            if (v25)
            {
              LODWORD(v23) = 3;
              *(&v23 + 1) = " types to match operand list";
              v24 = 28;
              if (v17 >= v28)
              {
                if (*(&v26 + 1) > &v23 || *(&v26 + 1) + 24 * v17 <= &v23)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v18 = *(&v26 + 1) + 24 * v27;
              v19 = v23;
              *(v18 + 16) = v24;
              *v18 = v19;
              ++v27;
            }
          }

          v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
          if (v25)
          {
            mlir::InFlightDiagnostic::report(&v25);
          }

          if (v29 == 1)
          {
            mlir::Diagnostic::~Diagnostic((&v25 + 8));
          }

          v12 = !v20;
        }
      }

      else
      {
        v12 = 1;
      }

      if (v30 != v32)
      {
        free(v30);
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

  if (v33 != v35)
  {
    free(v33);
  }

  return (v12 & 1) == 0 && ((*(*a1 + 296))(a1) & 1) != 0;
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
  v88 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v71 = *(v4 + 56);
  v72 = *(v4 + 72);
  v5 = v72;
  *(v4 + 80) = v71;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken(&v76, (*(a1 + 8) + 8));
  v8 = *(a1 + 8);
  *(v8 + 56) = v76;
  *(v8 + 72) = v77;
  if (v72)
  {
    v10 = (*(&v71 + 1) + 1);
  }

  else
  {
    v10 = *(&v71 + 1);
  }

  v9 = v72 != 0;
  v11 = (v72 - v9);
  if (v72 >= 2)
  {
    v12 = memchr(v10, 46, v72 - v9);
    if (v12 && v12 - v10 != -1)
    {
      Loc = mlir::Token::getLoc(&v71);
      v70 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v68, &v76);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v76);
      }

      if (v76)
      {
        LODWORD(v73) = 3;
        *(&v73 + 1) = "expected location, but found dialect attribute: '#";
        v74 = 50;
        if (v79 >= v80)
        {
          if (v78 > &v73 || v78 + 24 * v79 <= &v73)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v55 = v78 + 24 * v79;
        v56 = v73;
        *(v55 + 2) = v74;
        *v55 = v56;
        ++v79;
        if (v76)
        {
          v75 = 261;
          *&v73 = v10;
          *(&v73 + 1) = v11;
          mlir::Diagnostic::operator<<(&v76 + 8, &v73);
          if (v76)
          {
            LODWORD(v73) = 3;
            *(&v73 + 1) = "'";
            v74 = 1;
            if (v79 >= v80)
            {
              if (v78 > &v73 || v78 + 24 * v79 <= &v73)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v57 = v78 + 24 * v79;
            v58 = v73;
            *(v57 + 2) = v74;
            *v57 = v58;
            ++v79;
          }
        }
      }

      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }

      if (v87 == 1)
      {
        if (v86 != &v87)
        {
          free(v86);
        }

        v59 = __p;
        if (__p)
        {
          v60 = v85;
          v61 = __p;
          if (v85 != __p)
          {
            do
            {
              v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
            }

            while (v60 != v59);
            v61 = __p;
          }

          v85 = v59;
          operator delete(v61);
        }

        v38 = v82;
        if (!v82)
        {
          goto LABEL_86;
        }

        v62 = v83;
        v40 = v82;
        if (v83 == v82)
        {
LABEL_85:
          v83 = v38;
          operator delete(v40);
LABEL_86:
          if (v78 != &v81)
          {
            free(v78);
          }

          return v34;
        }

        do
        {
          v64 = *--v62;
          v63 = v64;
          *v62 = 0;
          if (v64)
          {
            MEMORY[0x259C63150](v63, 0x1000C8077774924);
          }
        }

        while (v62 != v38);
LABEL_84:
        v40 = v82;
        goto LABEL_85;
      }

      return v34;
    }
  }

  v14 = *(a1 + 8);
  v15 = *(v14 + 152);
  if (v15)
  {
    LocRange = mlir::Token::getLocRange(&v71);
    mlir::AsmParserState::addAttrAliasUses(v15, v10, v11, LocRange, v17);
    v14 = *(a1 + 8);
  }

  v18 = *(v14 + 104);
  v19 = llvm::StringMapImpl::hash(v10, v11, v6, v7);
  Key = llvm::StringMapImpl::FindKey(v18, v10, v11, v19);
  if (Key == -1 || Key == *(v18 + 8) || (v22 = *(*v18 + 8 * Key), (v23 = *(v22 + 8)) == 0))
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - *(a1 + 360)) >> 3);
    v42 = mlir::UnknownLoc::get(***(a1 + 8), v21);
    v43 = mlir::Token::getLoc(&v71);
    v44 = *(a1 + 368);
    v45 = *(a1 + 376);
    if (v44 >= v45)
    {
      v49 = *(a1 + 360);
      v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v49) >> 3) + 1;
      if (v50 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v51 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v49) >> 3);
      if (2 * v51 > v50)
      {
        v50 = 2 * v51;
      }

      if (v51 >= 0x555555555555555)
      {
        v52 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v52 = v50;
      }

      if (v52)
      {
        if (v52 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v65 = (8 * ((v44 - v49) >> 3));
      *v65 = v43;
      v65[1] = v10;
      v65[2] = v11;
      v46 = v65 + 3;
      v66 = v65 - (v44 - v49);
      memcpy(v66, v49, v44 - v49);
      *(a1 + 360) = v66;
      *(a1 + 368) = v46;
      *(a1 + 376) = 0;
      if (v49)
      {
        operator delete(v49);
      }
    }

    else
    {
      *v44 = v43;
      v44[1] = v10;
      v46 = v44 + 3;
      v44[2] = v11;
    }

    *(a1 + 368) = v46;
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

  v25 = mlir::Token::getLoc(&v71);
  v75 = 257;
  v26 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v25);
  mlir::emitError(v26, &v73, &v76);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v76);
  }

  if (v76)
  {
    LODWORD(v68) = 3;
    *(&v68 + 1) = "expected location, but found '";
    v69 = 30;
    if (v79 >= v80)
    {
      if (v78 > &v68 || v78 + 24 * v79 <= &v68)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v27 = v78 + 24 * v79;
    v28 = v68;
    *(v27 + 2) = v69;
    *v27 = v28;
    ++v79;
    if (v76)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v68, v23);
      if (v79 >= v80)
      {
        if (v78 > &v68 || v78 + 24 * v79 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v29 = v78 + 24 * v79;
      v30 = v68;
      *(v29 + 2) = v69;
      *v29 = v30;
      v31 = ++v79;
      if (v76)
      {
        LODWORD(v68) = 3;
        *(&v68 + 1) = "'";
        v69 = 1;
        if (v31 >= v80)
        {
          if (v78 > &v68 || v78 + 24 * v31 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v78 + 24 * v79;
        v33 = v68;
        *(v32 + 2) = v69;
        *v32 = v33;
        ++v79;
      }
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
  if (v76)
  {
    mlir::InFlightDiagnostic::report(&v76);
  }

  if (v87 == 1)
  {
    if (v86 != &v87)
    {
      free(v86);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v85;
      v37 = __p;
      if (v85 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v85 = v35;
      operator delete(v37);
    }

    v38 = v82;
    if (!v82)
    {
      goto LABEL_86;
    }

    v39 = v83;
    v40 = v82;
    if (v83 == v82)
    {
      goto LABEL_85;
    }

    do
    {
      v48 = *--v39;
      v47 = v48;
      *v39 = 0;
      if (v48)
      {
        MEMORY[0x259C63150](v47, 0x1000C8077774924);
      }
    }

    while (v39 != v38);
    goto LABEL_84;
  }

  return v34;
}

BOOL anonymous namespace::OperationParser::parseGenericOperationAfterOpName(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v104[32] = *MEMORY[0x277D85DE8];
  v83 = a9;
  v84 = a10;
  v102 = v104;
  v103 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v87, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v87, *(&v87 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v87 = "expected '(' to start operand list";
    LOWORD(v89) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 21, &v87))
    {
      goto LABEL_59;
    }

    {
      goto LABEL_59;
    }

    v98 = "expected ')' to end operand list";
    v101 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 28, &v98))
    {
      goto LABEL_59;
    }

    v18 = v102;
    v19 = v103;
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
      v98 = "successors in non-terminator";
      v101 = 259;
      mlir::detail::Parser::emitError(&v87, a1, &v98);
      v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v97[0] != 1)
      {
        goto LABEL_60;
      }

      if (v96 != v97)
      {
        free(v96);
      }

      v77 = __p;
      if (__p)
      {
        v78 = v95;
        v79 = __p;
        if (v95 != __p)
        {
          do
          {
            v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
          }

          while (v78 != v77);
          v79 = __p;
        }

        v95 = v77;
        operator delete(v79);
      }

      v72 = v92;
      if (v92)
      {
        v80 = v93;
        v74 = v92;
        if (v93 != v92)
        {
          do
          {
            v82 = *--v80;
            v81 = v82;
            *v80 = 0;
            if (v82)
            {
              MEMORY[0x259C63150](v81, 0x1000C8077774924);
            }
          }

          while (v80 != v72);
          goto LABEL_108;
        }

LABEL_109:
        v93 = v72;
        operator delete(v74);
      }

LABEL_110:
      if (v88[1] != &v91)
      {
        free(v88[1]);
      }

      goto LABEL_60;
    }

LABEL_14:
    v98 = v100;
    v99 = 0x200000000;
    *&v87 = "expected '['";
    LOWORD(v89) = 259;
    {
      mlir::BlockRange::BlockRange(&v87, v98, v99);
      mlir::OperationState::addSuccessors(a2, v87, *(&v87 + 1));
      v21 = 0;
      v22 = v98;
      if (v98 == v100)
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
      v22 = v98;
      if (v98 == v100)
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
      mlir::Lexer::lexToken(&v87, (*(a1 + 1) + 8));
      v24 = *(a1 + 1);
      *(v24 + 56) = v87;
      *(v24 + 72) = v88[0];
      v27 = mlir::detail::Parser::parseAttribute(a1, 0, v25, v26);
      *(a2 + 248) = v27;
      if (!v27)
      {
        goto LABEL_59;
      }

      *&v87 = "expected '>' to close properties";
      LOWORD(v89) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 19, &v87))
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
      mlir::Lexer::lexToken(&v87, (*(a1 + 1) + 8));
      v29 = *(a1 + 1);
      *(v29 + 56) = v87;
      *(v29 + 72) = v88[0];
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
      llvm::SmallVectorBase<unsigned int>::grow_pod();
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

  if (v84)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_40;
  }

  *&v87 = "expected ':' followed by operation type";
  LOWORD(v89) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, &v87) || (Loc = mlir::Token::getLoc((*(a1 + 1) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc), mlir::detail::Parser::parseType(a1), !v53))
  {
LABEL_59:
    v51 = 0;
    goto LABEL_60;
  }

  if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v98 = "expected function type";
    v101 = 259;
    mlir::emitError(EncodedSourceLocation, &v98, &v87);
    v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v97[0] == 1)
    {
      mlir::Diagnostic::~Diagnostic((&v87 + 8));
    }

    goto LABEL_60;
  }

  if ((v84 & 1) == 0)
  {
    LOBYTE(v84) = 1;
  }

  v83 = v53;
LABEL_40:
  Results = mlir::FunctionType::getResults(&v83);
  v36 = 8 * v34;
  v37 = *(a2 + 72);
  if (v37 + ((8 * v34) >> 3) > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v34)
  {
    memcpy((*(a2 + 64) + 8 * v37), Results, v36);
    LODWORD(v37) = *(a2 + 72);
  }

  *(a2 + 72) = v37 + (v36 >> 3);
  Inputs = mlir::FunctionType::getInputs(&v83);
  v41 = v39;
  v42 = *(a3 + 8);
  if (v39 != v42)
  {
    v55 = v42 == 1;
    v56 = "s";
    if (v55)
    {
      v56 = "";
    }

    v57 = *v56;
    v98 = "expected ";
    v101 = 259;
    mlir::emitError(EncodedSourceLocation, &v98, &v87);
    if (v87)
    {
      v58 = *(a3 + 8);
      LODWORD(v85) = 5;
      *(&v85 + 1) = v58;
      if (v89 >= v90)
      {
        if (v88[1] > &v85 || v88[1] + 24 * v89 <= &v85)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v59 = v88[1] + 24 * v89;
      v60 = v85;
      *(v59 + 2) = v86;
      *v59 = v60;
      v61 = ++v89;
      if (v87)
      {
        LODWORD(v85) = 3;
        *(&v85 + 1) = " operand type";
        v86 = 13;
        if (v61 >= v90)
        {
          if (v88[1] > &v85 || v88[1] + 24 * v61 <= &v85)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v62 = v88[1] + 24 * v89;
        v63 = v85;
        *(v62 + 2) = v86;
        *v62 = v63;
        ++v89;
        if (v87)
        {
          mlir::Diagnostic::operator<<(&v87 + 8, v57);
          if (v87)
          {
            LODWORD(v85) = 3;
            *(&v85 + 1) = " but had ";
            v86 = 9;
            if (v89 >= v90)
            {
              if (v88[1] > &v85 || v88[1] + 24 * v89 <= &v85)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v64 = v88[1] + 24 * v89;
            v65 = v85;
            *(v64 + 2) = v86;
            *v64 = v65;
            v66 = ++v89;
            if (v87)
            {
              LODWORD(v85) = 5;
              *(&v85 + 1) = v41;
              if (v66 >= v90)
              {
                if (v88[1] > &v85 || v88[1] + 24 * v66 <= &v85)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v67 = v88[1] + 24 * v89;
              v68 = v85;
              *(v67 + 2) = v86;
              *v67 = v68;
              ++v89;
            }
          }
        }
      }
    }

    v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v97[0] != 1)
    {
      goto LABEL_60;
    }

    if (v96 != v97)
    {
      free(v96);
    }

    v69 = __p;
    if (__p)
    {
      v70 = v95;
      v71 = __p;
      if (v95 != __p)
      {
        do
        {
          v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
        }

        while (v70 != v69);
        v71 = __p;
      }

      v95 = v69;
      operator delete(v71);
    }

    v72 = v92;
    if (v92)
    {
      v73 = v93;
      v74 = v92;
      if (v93 != v92)
      {
        do
        {
          v76 = *--v73;
          v75 = v76;
          *v73 = 0;
          if (v76)
          {
            MEMORY[0x259C63150](v75, 0x1000C8077774924);
          }
        }

        while (v73 != v72);
LABEL_108:
        v74 = v92;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v39)
  {
    v43 = Inputs;
    v44 = 0;
    v45 = 32 * v39;
    while (1)
    {
      v46 = (*a3 + v44);
      v47 = v46[1];
      v87 = *v46;
      *v88 = v47;
      v49 = *(a2 + 24);
      if (v49 >= *(a2 + 28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a2 + 16) + 8 * v49) = v48;
      v50 = *(a2 + 24) + 1;
      *(a2 + 24) = v50;
      if (!*(*(a2 + 16) + 8 * v50 - 8))
      {
        goto LABEL_59;
      }

      v44 += 32;
      ++v43;
      v51 = 1;
      if (v45 == v44)
      {
        goto LABEL_60;
      }
    }
  }

  v51 = 1;
LABEL_60:
  if (v102 != v104)
  {
    free(v102);
  }

  return v51;
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

  v20 = 0uLL;
  *&v21 = 0;
  {
    v7 = *(a2 + 8);
    v8 = *a2;
    if (v7 >= *(a2 + 12))
    {
      if (v8 > &v20 || v8 + 32 * v7 <= &v20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v8 + 32 * *(a2 + 8));
    v10 = v21;
    *v9 = v20;
    v9[1] = v10;
    ++*(a2 + 8);
    v11 = *(a1 + 8);
    v12 = (v11 + 56);
    if (*(v11 + 56) == 16)
    {
      while (1)
      {
        v13 = *v12;
        *(v11 + 96) = *(v12 + 2);
        *(v11 + 80) = v13;
        mlir::Lexer::lexToken(&v20, (*(a1 + 8) + 8));
        v14 = *(a1 + 8);
        *(v14 + 56) = v20;
        *(v14 + 72) = v21;
        v20 = 0uLL;
        *&v21 = 0;
        {
          break;
        }

        v15 = *(a2 + 8);
        v16 = *a2;
        if (v15 >= *(a2 + 12))
        {
          if (v16 <= &v20 && v16 + 32 * v15 > &v20)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = (v16 + 32 * *(a2 + 8));
        v18 = v21;
        *v17 = v20;
        v17[1] = v18;
        ++*(a2 + 8);
        v11 = *(a1 + 8);
        v12 = (v11 + 56);
        if (*(v11 + 56) != 16)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t anonymous namespace::OperationParser::parseRegion(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5)
{
  v21 = *MEMORY[0x277D85DE8];
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
  v66[2] = *MEMORY[0x277D85DE8];
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
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v10 != v16)
        {
          bzero((*v7 + 16 * v10), 16 * (v16 - v10));
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
    mlir::OperationName::OperationName(&v46, "builtin.unrealized_conversion_cast", 0x22uLL, ***(a1 + 8));
    v26 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v25);
    v27 = v46;
    mlir::TypeRange::TypeRange(&v63, &v47, 1uLL);
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
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](a1 + 336, &v59) = v25;
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
            MEMORY[0x259C63150](v43, 0x1000C8077774924);
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
  v77 = *MEMORY[0x277D85DE8];
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
        mlir::detail::Parser::emitError(&v64, a1, v58);
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
                  MEMORY[0x259C63150](v53, 0x1000C8077774924);
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
        mlir::detail::Parser::emitError(&v64, a1, v58);
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
      *&v64 = &unk_2868A3EF8;
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
  v6 = 0;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v6;
  ++*(v4 + 8);
  return result;
}

BOOL anonymous namespace::OperationParser::parseSuccessor(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    Loc = mlir::Token::getLoc((v3 + 7));
    v16 = *BlockInfoByName;
    if (!*BlockInfoByName)
    {
      operator new();
    }

    v17 = *(this + 1);
    v18 = *(v17 + 152);
    if (v18)
    {
      mlir::AsmParserState::addUses(v18, v16, &Loc, 1);
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
    mlir::detail::Parser::emitWrongTokenError(&v35, this, &v32);
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
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
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
        *(v13 - 2) = xmmword_25736B6D0;
        *v13 = xmmword_25736B6D0;
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
          *v10 = xmmword_25736B6D0;
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
      *(v22 - 2) = xmmword_25736B6D0;
      *v22 = xmmword_25736B6D0;
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
        *v10 = xmmword_25736B6D0;
        v10 += 2;
      }

      while (v10 != v24);
    }
  }

  return result;
}

BOOL anonymous namespace::OperationParser::parseBlock(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v61 = *MEMORY[0x277D85DE8];
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

  Loc = mlir::Token::getLoc((v5 + 56));
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v49 = "expected block name";
  LOWORD(v52) = 259;
  if (!mlir::detail::Parser::parseToken(this, 7, &v49))
  {
    return 0;
  }

  v11 = BlockInfoByName;
  BlockInfoByName[1] = Loc;
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
          v49 = "expected ':' after block name";
          LOWORD(v52) = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v49))
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
          MEMORY[0x259C63180]();
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

  v43[0] = "redefinition of block '";
  v44 = 259;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, v43, &v49);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v49);
  }

  if (v49)
  {
    v47 = 261;
    *&v45 = v8;
    *(&v45 + 1) = v9;
    mlir::Diagnostic::operator<<(v50, &v45);
    if (v49)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = "'";
      v46 = 1;
      if (v52 >= v53)
      {
        if (v51 > &v45 || v51 + 24 * v52 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v51 + 24 * v52;
      v33 = v45;
      *(v32 + 2) = v46;
      *v32 = v33;
      ++v52;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v49);
  v34 = result;
  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
    result = v34;
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
      result = v34;
    }

    v35 = __p;
    if (__p)
    {
      v36 = v58;
      v37 = __p;
      if (v58 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v58 = v35;
      operator delete(v37);
      result = v34;
    }

    v38 = v55;
    if (v55)
    {
      v39 = v56;
      v40 = v55;
      if (v56 != v55)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v55;
      }

      v56 = v38;
      operator delete(v40);
      result = v34;
    }

    if (v51 != &v54)
    {
      free(v51);
      return v34;
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

void llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = v1;
  v8 = 0uLL;
  *&v9 = 0;
  {
    *&v6[0] = "expected ':' and type for SSA operand";
    v7 = 259;
    if (mlir::detail::Parser::parseToken(v1, 15, v6))
    {
      mlir::detail::Parser::parseType(v1);
      if (v2)
      {
        v6[0] = v8;
        v6[1] = v9;
      }
    }
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser::UnresolvedOperand,mlir::Type)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0::operator() const(void)::{lambda(mlir::OpAsmParser::UnresolvedOperand,mlir::Type)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v30 = *(a2 + 8);
  v31 = *(a2 + 24);
  v6 = *(a1 + 24);
  if (**a1 != 1)
  {
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v6 + 1) + 8, v5);
    mlir::Block::addArgument(**(a1 + 16), a3, EncodedSourceLocation);
  }

  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = *(**(a1 + 16) + 48);
  if (v8 >= ((*(**(a1 + 16) + 56) - v9) >> 3))
  {
    v32[0] = "too many arguments specified in argument list";
    v33 = 259;
    mlir::detail::Parser::emitError(&v34, v6, v32);
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
          MEMORY[0x259C63150](v27, 0x1000C8077774924);
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
        v22 = *(*(v6 + 1) + 152);
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
      mlir::detail::Parser::emitError(&v34, v6, v32);
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
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
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
  LODWORD(v20) = 3;
  *(&v20 + 1) = __s;
  v21 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v20 || v11 + 24 * v12 <= &v20)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v20;
  *(v13 + 16) = v21;
  *v13 = v14;
  ++*(a1 + 24);
  mlir::DiagnosticArgument::DiagnosticArgument(&v20, *a3);
  v15 = *(a1 + 24);
  v16 = *(a1 + 16);
  if (v15 >= *(a1 + 28))
  {
    if (v16 > &v20 || v16 + 24 * v15 <= &v20)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v16 + 24 * *(a1 + 24);
  v18 = v20;
  *(v17 + 16) = v21;
  *v17 = v18;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(a1, a4, a5);
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
  v7 = 0u;
  v8 = 0u;
  v1 = *(a1 + 2);
  v2 = *a1;
  if (v1 >= *(a1 + 3))
  {
    if (v2 > &v7 || v2 + 32 * v1 <= &v7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = (v2 + 32 * *(a1 + 2));
  v4 = v8;
  *v3 = v7;
  v3[1] = v4;
  v5 = (*(a1 + 2) + 1);
  *(a1 + 2) = v5;
  return *a1 + 32 * v5 - 32;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::Attribute &,llvm::StringRef,mlir::NamedAttrList &,mlir::AsmParser::Delimiter)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  v12 = 0uLL;
  *&v13 = 0;
  if (((*(*v4 + 704))(v4, &v12, 1) & 1) == 0)
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
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= &v12 && v9 + 32 * v7 > &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = (v9 + 32 * *v8);
  v11 = v13;
  *v10 = v12;
  v10[1] = v11;
  ++*v8;
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AffineExpr &)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  v12 = 0uLL;
  *&v13 = 0;
  if (((*(*v4 + 704))(v4, &v12, 1) & 1) == 0)
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
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= &v12 && v9 + 32 * v7 > &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = (v9 + 32 * *v8);
  v11 = v13;
  *v10 = v12;
  v10[1] = v11;
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
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 2);
  v2 = *a1;
  if (v1 >= *(a1 + 3))
  {
    if (v2 > &v9 || v2 + (v1 << 6) <= &v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = (v2 + (*(a1 + 2) << 6));
  v4 = v9;
  v5 = v10;
  v6 = v12;
  v3[2] = v11;
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = (*(a1 + 2) + 1);
  *(a1 + 2) = v7;
  return *a1 + (v7 << 6) - 64;
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
  v39 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v22 = "invalid properties ";
  v23 = 259;
  mlir::emitError(v4, &v22, &v27);
  if (v27)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, *a1[1]);
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v29 + 24 * v30;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v30;
    if (v27)
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " for op ";
      v25 = 8;
      if (v7 >= v31)
      {
        if (v29 > &v24 || v29 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v29 + 24 * v30;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v30;
    }
  }

  *&v24 = *(*(*a1[2] + 48) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v27)
  {
    v26 = 261;
    *&v24 = Value;
    *(&v24 + 1) = v11;
    mlir::Diagnostic::operator<<(&v28, &v24);
    if (v27)
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = ": ";
      v25 = 2;
      if (v30 >= v31)
      {
        if (v29 > &v24 || v29 + 24 * v30 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v29 + 24 * v30;
      v13 = v24;
      *(v12 + 2) = v25;
      *v12 = v13;
      ++v30;
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

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
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
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  mlir::emitError(**a1, &v20);
  if (v20)
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "'";
    v18 = 1;
    if (v23 >= v24)
    {
      if (v22 > &v17 || v22 + 24 * v23 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v22 + 24 * v23;
    v5 = v17;
    *(v4 + 2) = v18;
    *v4 = v5;
    ++v23;
    if (v20)
    {
      v6 = *(a1 + 8);
      v19 = 260;
      *&v17 = v6;
      mlir::Diagnostic::operator<<(&v21, &v17);
      if (v20)
      {
        LODWORD(v17) = 3;
        *(&v17 + 1) = "' op ";
        v18 = 5;
        if (v23 >= v24)
        {
          if (v22 > &v17 || v22 + 24 * v23 <= &v17)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v22 + 24 * v23;
        v8 = v17;
        *(v7 + 2) = v18;
        *v7 = v8;
        ++v23;
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
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
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_1>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v21 = "invalid properties ";
  v22 = 259;
  mlir::emitError(v4, &v21, &v26);
  if (v26)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v23, *a1[1]);
    if (v29 >= v30)
    {
      if (v28 > &v23 || v28 + 24 * v29 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v23;
    *(v5 + 2) = v24;
    *v5 = v6;
    v7 = ++v29;
    if (v26)
    {
      LODWORD(v23) = 3;
      *(&v23 + 1) = " for op ";
      v24 = 8;
      if (v7 >= v30)
      {
        if (v28 > &v23 || v28 + 24 * v7 <= &v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v23;
      *(v8 + 2) = v24;
      *v8 = v9;
      ++v29;
      if (v26)
      {
        v10 = a1[2];
        v25 = 260;
        *&v23 = v10;
        mlir::Diagnostic::operator<<(&v27, &v23);
        if (v26)
        {
          LODWORD(v23) = 3;
          *(&v23 + 1) = ": ";
          v24 = 2;
          if (v29 >= v30)
          {
            if (v28 > &v23 || v28 + 24 * v29 <= &v23)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v28 + 24 * v29;
          v12 = v23;
          *(v11 + 2) = v24;
          *v11 = v12;
          ++v29;
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (*a1 + 16 * v4);
  *v5 = *a2;
  v5[1] = v3;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

uint64_t mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, uint64_t *a3, char *a4, unsigned int *a5, char *a6, uint64_t *a7)
{
  v14 = strlen(__s);
  v15 = *(a1 + 16);
  LODWORD(v21) = 3;
  *(&v21 + 1) = __s;
  v22 = v14;
  v16 = *(a1 + 24);
  if (v16 >= *(a1 + 28))
  {
    if (v15 > &v21 || v15 + 24 * v16 <= &v21)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v15 + 24 * *(a1 + 24);
  v18 = v21;
  *(v17 + 16) = v22;
  *v17 = v18;
  ++*(a1 + 24);
  v23 = 261;
  v19 = a3[1];
  *&v21 = *a3;
  *(&v21 + 1) = v19;
  mlir::Diagnostic::operator<<(a1, &v21);
  return mlir::Diagnostic::append<char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(a1, a4, a5, a6, a7);
}

uint64_t mlir::Diagnostic::append<char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, unsigned int *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v13 = *(a1 + 16);
  a1 += 16;
  v12 = v13;
  LODWORD(v24) = 3;
  *(&v24 + 1) = __s;
  v25 = v10;
  v14 = *(a1 + 8);
  if (v14 >= *(a1 + 12))
  {
    if (v12 > &v24 || v12 + 24 * v14 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v12 + 24 * *(v11 + 24);
  v16 = v24;
  *(v15 + 16) = v25;
  *v15 = v16;
  v17 = *(v11 + 28);
  v18 = *(v11 + 24) + 1;
  *(v11 + 24) = v18;
  v19 = *a3;
  LODWORD(v24) = 5;
  *(&v24 + 1) = v19;
  v20 = *(v11 + 16);
  if (v18 >= v17)
  {
    if (v20 > &v24 || v20 + 24 * v18 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v20 + 24 * *(v11 + 24);
  v22 = v24;
  *(v21 + 16) = v25;
  *v21 = v22;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(v11, a4, a5);
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
  v115 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  v6 = *(a2 + 24);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v6 = 0;
  }

  v101 = v6;
  if (!v6 || *v4[1] != mlir::OpaqueLoc::getUnderlyingTypeID(&v101))
  {
    goto LABEL_61;
  }

  v7 = *(v5 + 360) + 24 * mlir::OpaqueLoc::getUnderlyingLocation(&v101);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v4[2];
  v14 = llvm::StringMapImpl::hash(v9, v10, v12, v13);
  Key = llvm::StringMapImpl::FindKey(v11, v9, v10, v14);
  if (Key == -1 || Key == *(v11 + 8) || (v16 = *(*v11 + 8 * Key), (v17 = *(v16 + 8)) == 0))
  {
    v100 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(EncodedSourceLocation, v99, v104);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v104);
    }

    if (v104[0])
    {
      LODWORD(v102) = 3;
      *(&v102 + 1) = "operation location alias was never defined";
      v103 = 42;
      if (v106 >= v107)
      {
        if (v105 > &v102 || v105 + 24 * v106 <= &v102)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v105 + 24 * v106;
      v20 = v102;
      *(v19 + 2) = v103;
      *v19 = v20;
      ++v106;
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
    if (v104[0])
    {
      mlir::InFlightDiagnostic::report(v104);
    }

    if (v114 == 1)
    {
      if (v113 != &v114)
      {
        free(v113);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v112;
        v24 = __p;
        if (v112 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v112 = v22;
        operator delete(v24);
      }

      v25 = v109;
      if (!v109)
      {
        goto LABEL_58;
      }

      v26 = v110;
      v27 = v109;
      if (v110 == v109)
      {
        goto LABEL_57;
      }

      do
      {
        v29 = *--v26;
        v28 = v29;
        *v26 = 0;
        if (v29)
        {
          MEMORY[0x259C63150](v28, 0x1000C8077774924);
        }
      }

      while (v26 != v25);
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

    v100 = 257;
    v30 = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(v30, v99, v104);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v104);
    }

    if (v104[0])
    {
      LODWORD(v102) = 3;
      *(&v102 + 1) = "expected location, but found '";
      v103 = 30;
      if (v106 >= v107)
      {
        if (v105 > &v102 || v105 + 24 * v106 <= &v102)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v105 + 24 * v106;
      v32 = v102;
      *(v31 + 2) = v103;
      *v31 = v32;
      ++v106;
      if (v104[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v102, v17);
        if (v106 >= v107)
        {
          if (v105 > &v102 || v105 + 24 * v106 <= &v102)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v33 = v105 + 24 * v106;
        v34 = v102;
        *(v33 + 2) = v103;
        *v33 = v34;
        v35 = ++v106;
        if (v104[0])
        {
          LODWORD(v102) = 3;
          *(&v102 + 1) = "'";
          v103 = 1;
          if (v35 >= v107)
          {
            if (v105 > &v102 || v105 + 24 * v35 <= &v102)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v36 = v105 + 24 * v106;
          v37 = v102;
          *(v36 + 2) = v103;
          *v36 = v37;
          ++v106;
        }
      }
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
    if (v104[0])
    {
      mlir::InFlightDiagnostic::report(v104);
    }

    if (v114 == 1)
    {
      if (v113 != &v114)
      {
        free(v113);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v112;
        v40 = __p;
        if (v112 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v112 = v38;
        operator delete(v40);
      }

      v25 = v109;
      if (!v109)
      {
        goto LABEL_58;
      }

      v41 = v110;
      v27 = v109;
      if (v110 == v109)
      {
LABEL_57:
        v110 = v25;
        operator delete(v27);
LABEL_58:
        if (v105 != v108)
        {
          free(v105);
        }

        goto LABEL_60;
      }

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

      while (v41 != v25);
LABEL_56:
      v27 = v109;
      goto LABEL_57;
    }
  }

LABEL_60:
  if (!v21)
  {
    return 0;
  }

LABEL_61:
  v44 = *(a2 + 44);
  v45 = v44 & 0x7FFFFF;
  if ((v44 & 0x7FFFFF) != 0)
  {
    v46 = 0x1000C8077774924;
    v47 = ((a2 + 16 * ((v44 >> 23) & 1) + ((v44 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v96 = v47 + 24 * v45;
    while (1)
    {
      v48 = *(v47 + 8);
      if (v48 != v47)
      {
        break;
      }

LABEL_147:
      v47 += 24;
      if (v47 == v96)
      {
        return 1;
      }
    }

    v97 = v47;
LABEL_66:
    v49 = v48 - 8;
    v98 = v48;
    if (!v48)
    {
      v49 = 0;
    }

    v50 = *(v49 + 48);
    v51 = *(v49 + 56);
    while (1)
    {
      if (v50 == v51)
      {
        v48 = *(v98 + 8);
        v47 = v97;
        if (v48 == v97)
        {
          goto LABEL_147;
        }

        goto LABEL_66;
      }

      v52 = *v50;
      v53 = *v3;
      v54 = **v3;
      v55 = *(*v50 + 32);
      if (*(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
      {
        v55 = 0;
      }

      v101 = v55;
      if (v55)
      {
        if (*v53[1] == mlir::OpaqueLoc::getUnderlyingTypeID(&v101))
        {
          break;
        }
      }

LABEL_70:
      ++v50;
    }

    v56 = v3;
    v57 = v46;
    v58 = *(v54 + 360) + 24 * mlir::OpaqueLoc::getUnderlyingLocation(&v101);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    v62 = v53[2];
    v65 = llvm::StringMapImpl::hash(v60, v61, v63, v64);
    v66 = llvm::StringMapImpl::FindKey(v62, v60, v61, v65);
    if (v66 == -1 || v66 == *(v62 + 8) || (v67 = *(*v62 + 8 * v66), (v68 = *(v67 + 8)) == 0))
    {
      v100 = 257;
      v69 = mlir::Lexer::getEncodedSourceLocation(*(v54 + 8) + 8, v59);
      mlir::emitError(v69, v99, v104);
      if (*(*(v54 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v104);
      }

      v46 = v57;
      v3 = v56;
      if (v104[0])
      {
        LODWORD(v102) = 3;
        *(&v102 + 1) = "operation location alias was never defined";
        v103 = 42;
        if (v106 >= v107)
        {
          if (v105 > &v102 || v105 + 24 * v106 <= &v102)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v70 = v105 + 24 * v106;
        v71 = v102;
        *(v70 + 2) = v103;
        *v70 = v71;
        ++v106;
      }

      v72 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
      if (v104[0])
      {
        mlir::InFlightDiagnostic::report(v104);
      }

      if (v114 != 1)
      {
LABEL_69:
        if (!v72)
        {
          return 0;
        }

        goto LABEL_70;
      }

      if (v113 != &v114)
      {
        free(v113);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v112;
        v75 = __p;
        if (v112 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v112 = v73;
        operator delete(v75);
      }

      v76 = v109;
      if (!v109)
      {
LABEL_129:
        if (v105 != v108)
        {
          free(v105);
        }

        goto LABEL_69;
      }

      v77 = v110;
      v78 = v109;
      if (v110 == v109)
      {
LABEL_128:
        v110 = v76;
        operator delete(v78);
        goto LABEL_129;
      }

      do
      {
        v80 = *--v77;
        v79 = v80;
        *v77 = 0;
        if (v80)
        {
          MEMORY[0x259C63150](v79, v46);
        }
      }

      while (v77 != v76);
    }

    else
    {
      if (mlir::LocationAttr::classof(*(v67 + 8)))
      {
        *(v52 + 32) = v68;
        v46 = v57;
        v3 = v56;
        goto LABEL_70;
      }

      v100 = 257;
      v81 = mlir::Lexer::getEncodedSourceLocation(*(v54 + 8) + 8, v59);
      mlir::emitError(v81, v99, v104);
      v46 = v57;
      if (*(*(v54 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v104);
      }

      v3 = v56;
      if (v104[0])
      {
        LODWORD(v102) = 3;
        *(&v102 + 1) = "expected location, but found '";
        v103 = 30;
        if (v106 >= v107)
        {
          if (v105 > &v102 || v105 + 24 * v106 <= &v102)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v82 = v105 + 24 * v106;
        v83 = v102;
        *(v82 + 2) = v103;
        *v82 = v83;
        ++v106;
        if (v104[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v102, v68);
          if (v106 >= v107)
          {
            if (v105 > &v102 || v105 + 24 * v106 <= &v102)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v84 = v105 + 24 * v106;
          v85 = v102;
          *(v84 + 2) = v103;
          *v84 = v85;
          v86 = ++v106;
          if (v104[0])
          {
            LODWORD(v102) = 3;
            *(&v102 + 1) = "'";
            v103 = 1;
            if (v86 >= v107)
            {
              if (v105 > &v102 || v105 + 24 * v86 <= &v102)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v87 = v105 + 24 * v106;
            v88 = v102;
            *(v87 + 2) = v103;
            *v87 = v88;
            ++v106;
          }
        }
      }

      v72 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v104);
      if (v104[0])
      {
        mlir::InFlightDiagnostic::report(v104);
      }

      if (v114 != 1)
      {
        goto LABEL_69;
      }

      if (v113 != &v114)
      {
        free(v113);
      }

      v89 = __p;
      if (__p)
      {
        v90 = v112;
        v91 = __p;
        if (v112 != __p)
        {
          do
          {
            v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
          }

          while (v90 != v89);
          v91 = __p;
        }

        v112 = v89;
        operator delete(v91);
      }

      v76 = v109;
      if (!v109)
      {
        goto LABEL_129;
      }

      v92 = v110;
      v78 = v109;
      if (v110 == v109)
      {
        goto LABEL_128;
      }

      do
      {
        v94 = *--v92;
        v93 = v94;
        *v92 = 0;
        if (v94)
        {
          MEMORY[0x259C63150](v93, v46);
        }
      }

      while (v92 != v76);
    }

    v78 = v109;
    goto LABEL_128;
  }

  return 1;
}