void mlir::detail::Parser::parseResourceHandle(uint64_t *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, mlir::Dialect *a3@<X1>)
{
  v16 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a3);
    __p = 0;
    v14 = 0;
    v15 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &__p, a1);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v10 = 257;
    mlir::detail::Parser::emitError(this, (*(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0)), v9, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<10ul>(&v14, "dialect '");
      if (__p)
      {
        v7 = *(a3 + 1);
        v8 = *(a3 + 2);
        v12 = 261;
        v11[0] = v7;
        v11[1] = v8;
        mlir::Diagnostic::operator<<(&v14, v11);
        if (__p)
        {
          mlir::Diagnostic::operator<<<35ul>(&v14, "' does not expect resource handles");
        }
      }
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
  }
}

_BYTE *mlir::detail::Parser::codeCompleteOperationName(_BYTE *result, void *a2, size_t a3)
{
  if (a3)
  {
    v4 = result;
    result = memchr(a2, 46, a3);
    if (!result || result - a2 == -1)
    {
      v5 = *(**(*(v4 + 1) + 160) + 24);

      return v5();
    }
  }

  return result;
}

_BYTE *mlir::detail::Parser::codeCompleteDialectOrElidedOpName(_BYTE *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v5 = *i;
    if (v5 <= 0xC)
    {
      if (v5 != 9)
      {
        if (v5 != 10)
        {
          return result;
        }

        break;
      }
    }

    else if (v5 != 32 && v5 != 13)
    {
      return result;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), &byte_25D0A27DF, 0);
  v7 = *(*(v2 + 1) + 168) + 16 * *(*(v2 + 1) + 176);
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);

  return mlir::detail::Parser::codeCompleteOperationName(v2, v8, v9);
}

void mlir::parseAsmSourceFile(uint64_t **a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColRange::get(v9, v10, v11, 0, 0);
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
  mlir::detail::ParserState::ParserState(v18, a1, a3, v13, a4, a5);
  LOBYTE(v20) = 0;
  LOBYTE(v21) = 0;
  v19[0] = *(**v12 + 32);
  memset(&v19[1], 0, 24);
  mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v19, v12, &v20);
}

uint64_t anonymous namespace::OperationParser::parseOperation(int32x2_t *this)
{
  v126 = *MEMORY[0x277D85DE8];
  v2 = this[1];
  v3 = *(*&v2 + 64);
  v95 = v97;
  v96 = 0x100000000;
  v72 = 0;
  if (*(*&v2 + 56) == 6)
  {
    p_EncodedSourceLocation = this;
    v122 = &v95;
    v123 = &v72;
    {
      v27 = 0;
      goto LABEL_130;
    }

    v2 = this[1];
  }

  v70 = *(*&v2 + 56);
  v71 = *(*&v2 + 72);
  v4 = v70;
  if (v70 == 3 || mlir::Token::isKeyword(&v70))
  {
    v5 = v95;
    v6 = v96;
    v7 = *(*&v2 + 64);
    v8 = *(*&v2 + 72);
    v87 = v9;
    v88 = v11;
    if ((v11 & 1) == 0)
    {
      v28 = 0;
      goto LABEL_70;
    }

    v12 = v9;
    v13 = *(v9 + 8);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v120 = 0;
    if (*(v9 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v29 = *(*(v9 + 8) + 32);
      if (!v29)
      {
        v38 = v14;
        LOWORD(v77) = 257;
        mlir::detail::Parser::emitError(this, v7, &__p, &p_EncodedSourceLocation);
        if (p_EncodedSourceLocation)
        {
        }

        DialectNamespace = mlir::OperationName::getDialectNamespace(&v87);
        if (p_EncodedSourceLocation)
        {
          LOWORD(v100) = 261;
          v98.__r_.__value_.__r.__words[0] = DialectNamespace;
          v98.__r_.__value_.__l.__size_ = v40;
          mlir::Diagnostic::operator<<(&v122, &v98.__r_.__value_.__l.__data_);
          if (p_EncodedSourceLocation)
          {
            mlir::Diagnostic::operator<<<28ul>(&v122, "' not found for custom op '");
            if (p_EncodedSourceLocation)
            {
              LOWORD(v100) = 261;
              v98.__r_.__value_.__r.__words[0] = v7;
              v98.__r_.__value_.__l.__size_ = v8;
              mlir::Diagnostic::operator<<(&v122, &v98.__r_.__value_.__l.__data_);
              if (p_EncodedSourceLocation)
              {
                mlir::Diagnostic::operator<<<3ul>(&v122, "' ");
              }
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v98, &p_EncodedSourceLocation);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&p_EncodedSourceLocation);
        if (v8 != v15 || v8 && memcmp(v7, v38, v8))
        {
          if (v98.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<10ul>(&v98.__r_.__value_.__l.__size_, " (tried '");
            if (v98.__r_.__value_.__r.__words[0])
            {
              v124 = 261;
              p_EncodedSourceLocation = v38;
              v122 = v15;
              mlir::Diagnostic::operator<<(&v98.__r_.__value_.__l.__size_, &p_EncodedSourceLocation);
              if (v98.__r_.__value_.__r.__words[0])
              {
                mlir::Diagnostic::operator<<<11ul>(&v98.__r_.__value_.__l.__size_, "' as well)");
              }
            }
          }
        }

        mlir::Diagnostic::attachNote(&v98.__r_.__value_.__l.__size_, 0, 0);
      }

      __s2 = v14;
      (*(*v29 + 64))(&v98);
      if ((v98.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        LOWORD(v77) = 257;
        mlir::detail::Parser::emitError(this, v7, &__p, &p_EncodedSourceLocation);
        if (p_EncodedSourceLocation)
        {
          mlir::Diagnostic::operator<<<12ul>(&v122, "custom op '");
          if (p_EncodedSourceLocation)
          {
            LOWORD(v100) = 261;
            v98.__r_.__value_.__r.__words[0] = v7;
            v98.__r_.__value_.__l.__size_ = v8;
            mlir::Diagnostic::operator<<(&v122, &v98.__r_.__value_.__l.__data_);
            if (p_EncodedSourceLocation)
            {
              mlir::Diagnostic::operator<<<13ul>(&v122, "' is unknown");
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v98, &p_EncodedSourceLocation);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&p_EncodedSourceLocation);
        if (v8 != v15 || v8 && memcmp(v7, __s2, v8))
        {
          if (v98.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<10ul>(&v98.__r_.__value_.__l.__size_, " (tried '");
            if (v98.__r_.__value_.__r.__words[0])
            {
              v124 = 261;
              p_EncodedSourceLocation = __s2;
              v122 = v15;
              mlir::Diagnostic::operator<<(&v98.__r_.__value_.__l.__size_, &p_EncodedSourceLocation);
              if (v98.__r_.__value_.__r.__words[0])
              {
                mlir::Diagnostic::operator<<<11ul>(&v98.__r_.__value_.__l.__size_, "' as well)");
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
        v28 = 0;
        goto LABEL_69;
      }

      v67 = v3;
      v16 = v15;
      v99 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(v119);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::UniqueFunctionBase(v119, &v98);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(&v98);
      v26 = 0;
      v18 = 0;
    }

    else
    {
      v67 = v3;
      __s2 = v14;
      v16 = v15;
      (*(*v9 + 40))(&v98, v9);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(v119);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::UniqueFunctionBase(v119, &v98);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(&v98);
      v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      v18 = (*(*v12 + 32))(v12, v17);
      v19 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();
      v20 = mlir::detail::InterfaceMap::lookup((v12 + 4), v19);
      if (v20)
      {
        v21 = v20;
        v22 = (*(v20 + 24))();
        if (v23)
        {
          v24 = (*(v21 + 24))(v22);
          v26 = v25;
LABEL_22:
          llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(*&this[1] + 168, v24, v26);
          llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(&v116, "MLIR Parser: custom op parser '%s'", *(v12[1] + 16));
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v7);
          v98.__r_.__value_.__r.__words[0] = EncodedSourceLocation;
          v98.__r_.__value_.__l.__size_ = v12;
          v98.__r_.__value_.__r.__words[2] = &v100;
          v99 = 0x400000000;
          v101 = &v103;
          v102 = 0x400000000;
          v104[0] = &v105;
          v104[1] = 0x400000000;
          v106 = 4;
          v107 = v109;
          v108 = 0x100000000;
          v109[1] = &v110;
          v109[2] = 0x100000000;
          v112 = 0;
          v111 = 0;
          v113 = &mlir::detail::TypeIDResolver<void,void>::id;
          v114 = 0;
          v115 = 0;
          v30 = *(*&this[1] + 152);
          if (v30)
          {
            llvm::SmallVectorImpl<mlir::AsmParserState::Impl::PartialOpDef>::emplace_back<mlir::OperationName const&>(*v30 + 440, &v98.__r_.__value_.__r.__words[1]);
          }

          v84 = this;
          v85 = &v98;
          v74 = v7;
          v75 = this;
          v76 = 0;
          __p = &unk_286E80AB0;
          v77 = v5;
          v78 = v6;
          v79 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
          v80 = v119;
          v81 = v18;
          v82 = __s2;
          v83 = v16;
          if ((v120 & 2) != 0)
          {
            v31 = v119;
          }

          else
          {
            v31 = v119[0];
          }

          if ((*(v120 & 0xFFFFFFFFFFFFFFF8))(v31, &__p, &v98))
          {
            mlir::DictionaryAttr::findDuplicate(v104, (v106 & 4) != 0, &v91);
            v3 = v67;
            if ((v106 & 4) == 0)
            {
              v106 = 4;
            }

            if (v92)
            {
              v32 = (*(__p + 2))(&__p);
              v89[0] = "attribute '";
              v90 = 259;
              (*(__p + 3))(&p_EncodedSourceLocation, &__p, v32, v89);
              if (p_EncodedSourceLocation)
              {
                v34 = *(v91 + 16);
                v33 = *(v91 + 24);
                v94 = 261;
                v93[0] = v34;
                v93[1] = v33;
                mlir::Diagnostic::operator<<(&v122, v93);
                if (p_EncodedSourceLocation)
                {
                  mlir::Diagnostic::operator<<<46ul>(&v122, "' occurs more than once in the attribute list");
                }
              }

              v35 = v125;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&p_EncodedSourceLocation);
              if (v35)
              {
                goto LABEL_36;
              }
            }

            if (v76)
            {
LABEL_36:
              v28 = 0;
            }

            else
            {
              v54 = v111;
              v93[0] = v111;
              v111 = 0;
              v55 = mlir::Operation::create(&v98);
              mlir::OpBuilder::insert(&this[48], v55);
              v89[0] = v55;
              v28 = 0;
              {
                if (v54)
                {
                  p_EncodedSourceLocation = &EncodedSourceLocation;
                  v122 = v93;
                  v123 = v89;
                  {
                    v28 = v89[0];
                  }

                  else
                  {
                    v28 = 0;
                  }
                }

                else
                {
                  v28 = v55;
                }
              }
            }
          }

          else
          {
            v28 = 0;
            v3 = v67;
          }

          mlir::OperationState::~OperationState(&v98);
          v116 = &unk_286E798B0;
          if (v117 != &v118)
          {
            free(v117);
          }

          --*(*&this[1] + 176);
LABEL_69:
          llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(v119);
          goto LABEL_70;
        }
      }

      v26 = 0;
    }

    v24 = &byte_25D0A27DF;
    goto LABEL_22;
  }

  if (v4 == 2)
  {
    if (v71 && **(&v70 + 1) == 34)
    {
      mlir::Token::getStringValue(&v70, &v98);
      size = SHIBYTE(v98.__r_.__value_.__r.__words[2]);
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v98;
      }

      else
      {
        v37 = v98.__r_.__value_.__r.__words[0];
      }

      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v98.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (v37->__r_.__value_.__s.__data_[size - 1] == 46)
        {
          mlir::detail::Parser::codeCompleteOperationName(this, v37, size - 1);
        }
      }

      else
      {
        (*(**(*&this[1] + 160) + 16))(*(*&this[1] + 160), &byte_25D0A27DF, 0);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, v3);
    }

    goto LABEL_128;
  }

  if (v4 != 11)
  {
    p_EncodedSourceLocation = "expected operation name in quotes";
    v124 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v98, this, &p_EncodedSourceLocation);
    goto LABEL_87;
  }

LABEL_70:
  if (!v28)
  {
LABEL_128:
    v46 = 0;
    goto LABEL_129;
  }

  if (!v96)
  {
    v44 = this[1];
    v45 = v44[19];
    if (v45)
    {
      mlir::AsmParserState::finalizeOperationDefinition(v45, v28, *(&v70 + 1), *(&v70 + 1) + v71, v44[11] + v44[12], 0, 0);
    }

    v46 = 1;
    goto LABEL_129;
  }

  v41 = *(v28 + 36);
  if (v41)
  {
    if (v72 == v41)
    {
      if (*(*&this[1] + 152))
      {
        v98.__r_.__value_.__r.__words[0] = &v98.__r_.__value_.__r.__words[2];
        v98.__r_.__value_.__l.__size_ = 0x300000000;
        if (v96 <= 3)
        {
          v42 = v95;
          v43 = v95 + 32 * v96;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, &v98.__r_.__value_.__r.__words[2], v96, 16);
          if (!v96)
          {
            goto LABEL_112;
          }

          v42 = v95;
          v43 = v95 + 32 * v96;
        }

        v57 = 0;
        do
        {
          v58 = *(v42 + 3);
          v59 = v98.__r_.__value_.__r.__words[1];
          if (LODWORD(v98.__r_.__value_.__r.__words[1]) >= HIDWORD(v98.__r_.__value_.__r.__words[1]))
          {
            llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::push_back(&v98, v57, v58);
          }

          else
          {
            v60 = v98.__r_.__value_.__r.__words[0] + 16 * LODWORD(v98.__r_.__value_.__r.__words[1]);
            *v60 = v57;
            *(v60 + 8) = v58;
            LODWORD(v98.__r_.__value_.__r.__words[1]) = v59 + 1;
          }

          v57 += *(v42 + 4);
          v42 += 32;
        }

        while (v42 != v43);
LABEL_112:
        mlir::AsmParserState::finalizeOperationDefinition(*(*&this[1] + 152), v28, *(&v70 + 1), *(&v70 + 1) + v71, *(*&this[1] + 88) + *(*&this[1] + 96), v98.__r_.__value_.__l.__data_, LODWORD(v98.__r_.__value_.__r.__words[1]));
      }

      v56 = v95;
      __s2a = v95 + 32 * v96;
      v61 = 0;
      while (1)
      {
        v62 = *(v56 + 4);
        if (v62)
        {
          break;
        }

        v64 = v61;
LABEL_122:
        v56 += 32;
        v46 = 1;
        v61 = v64;
        if (v56 == __s2a)
        {
          goto LABEL_129;
        }
      }

      v63 = 0;
      while (1)
      {
        v98.__r_.__value_.__r.__words[0] = *(v56 + 3);
        *&v98.__r_.__value_.__r.__words[1] = *v56;
        LODWORD(v99) = v63;
        v64 = (v61 + 1);
        v65 = (v61 >= 6 ? v28 - 96 - 24 * (v61 - 5) : v28 - 16 * v64);
        {
          goto LABEL_128;
        }

        ++v63;
        LODWORD(v61) = v64;
        if (v62 == v63)
        {
          goto LABEL_122;
        }
      }
    }

    p_EncodedSourceLocation = "operation defines ";
    v124 = 259;
    mlir::detail::Parser::emitError(this, v3, &p_EncodedSourceLocation, &v98);
    if (v98.__r_.__value_.__r.__words[0])
    {
      v47 = *(v28 + 36);
      LODWORD(__p) = 5;
      v74 = v47;
      v48 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v99, &__p, 1);
      v49 = v99 + 24 * v100;
      v50 = *v48;
      *(v49 + 16) = *(v48 + 16);
      *v49 = v50;
      ++v100;
      if (v98.__r_.__value_.__r.__words[0])
      {
        mlir::Diagnostic::operator<<<27ul>(&v98.__r_.__value_.__l.__size_, " results but was provided ");
        if (v98.__r_.__value_.__r.__words[0])
        {
          LODWORD(__p) = 5;
          v74 = v72;
          v51 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v99, &__p, 1);
          v52 = v99 + 24 * v100;
          v53 = *v51;
          *(v52 + 16) = *(v51 + 16);
          *v52 = v53;
          ++v100;
          if (v98.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<9ul>(&v98.__r_.__value_.__l.__size_, " to bind");
          }
        }
      }
    }
  }

  else
  {
    p_EncodedSourceLocation = "cannot name an operation with no results";
    v124 = 259;
    mlir::detail::Parser::emitError(this, v3, &p_EncodedSourceLocation, &v98);
  }

LABEL_87:
  v46 = v107 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
LABEL_129:
  v27 = v46 & 1;
LABEL_130:
  if (v95 != v97)
  {
    free(v95);
  }

  return v27;
}

uint64_t anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this, int a2)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v5 = (this + 208);
  v4 = *(this + 26);
  v38[0] = 0;
  v38[1] = 0;
  LODWORD(v39) = 0;
  v6 = *(this + 54);
  v7 = v38;
  if (v6 >= *(this + 55))
  {
    if (v4 <= v38 && v4 + 24 * v6 > v38)
    {
      v34 = v38 - v4;
      v4 = *v5;
      v7 = &v34[*v5];
    }

    else
    {
      v4 = *v5;
      v7 = v38;
    }
  }

  v8 = v4 + 24 * *(this + 54);
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
  ++*(this + 54);
  MEMORY[0x25F891030](v38[0], 8);
  v38[0] = 0;
  v38[1] = 0;
  LODWORD(v39) = 0;
  v11 = *(this + 70);
  v12 = *(this + 34);
  v13 = v38;
  if (v11 >= *(this + 71))
  {
    if (v12 <= v38 && v12 + 24 * v11 > v38)
    {
      v35 = v38 - v12;
      llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(this + 272, v11 + 1);
      v12 = *(this + 34);
      v13 = &v35[v12];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(this + 272, v11 + 1);
      v12 = *(this + 34);
      v13 = v38;
    }
  }

  v14 = v12 + 24 * *(this + 70);
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
  ++*(this + 70);
  MEMORY[0x25F891030](v38[0], 8);
  if (a2)
  {
    v18 = (this + 16);
    v17 = *(this + 2);
    *v38 = 0u;
    v39 = 0x2800000000;
    v40[0] = v41;
    v40[1] = 0x200000000;
    v19 = *(this + 6);
    if (v19 >= *(this + 7))
    {
      if (v17 <= v38 && v17 + 88 * v19 > v38)
      {
        v37 = v38 - v17;
        v17 = *v18;
        v20 = &v37[*v18];
        goto LABEL_6;
      }

      v17 = *v18;
    }

    v20 = v38;
LABEL_6:
    v21 = v17 + 88 * *(this + 6);
    *v21 = *v20;
    *(v21 + 8) = *(v20 + 1);
    *v20 = 0;
    v20[1] = 0;
    *(v20 + 4) = 0;
    *(v21 + 24) = v21 + 40;
    v22 = v21 + 24;
    *(v22 + 8) = 0x200000000;
    if (*(v20 + 8))
    {
      llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(v22, v20 + 3);
    }

    ++*(this + 6);
    llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector(v40);
    if (HIDWORD(v38[1]) && LODWORD(v38[1]))
    {
      v23 = 0;
      v24 = 8 * LODWORD(v38[1]);
      do
      {
        v25 = *(v38[0] + v23);
        if (v25 != -8 && v25 != 0)
        {
        }

        v23 += 8;
      }

      while (v24 != v23);
    }

    free(v38[0]);
  }

  v27 = *(this + 2) + 88 * *(this + 6);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  v29 = (v27 - 64);
  v28 = *(v27 - 64);
  HIDWORD(v39) = 8;
  v30 = *(v27 - 56);
  v31 = v38;
  if (v30 >= *(v27 - 52))
  {
    if (v28 <= v38 && v28 + 24 * v30 > v38)
    {
      v36 = v38 - v28;
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow((v27 - 64), v30 + 1);
      v28 = *v29;
      v31 = &v36[*v29];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow((v27 - 64), v30 + 1);
      v28 = *v29;
      v31 = v38;
    }
  }

  v32 = v28 + 24 * *(v27 - 56);
  *v32 = *v31;
  *(v32 + 8) = *(v31 + 1);
  *v31 = 0;
  v31[1] = 0;
  *(v31 + 4) = 0;
  ++*(v27 - 56);
  return llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v38);
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v15);
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
      v12 = 24 * v11;
      v13 = v5 - 24;
      do
      {
        MEMORY[0x25F891030](*&v13[v12], 8);
        v12 -= 24;
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
  *(a1 + 12) = v14;
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v15);
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
    v11 = *(a1 + 8);
    v5 = *a1;
    if (v11)
    {
      v12 = 24 * v11;
      v13 = v5 - 24;
      do
      {
        MEMORY[0x25F891030](*&v13[v12], 8);
        v12 -= 24;
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
  *(a1 + 12) = v14;
}

void llvm::SmallVectorTemplateBase<anonymous namespace::OperationParser::IsolatedSSANameScope,false>::grow(uint64_t a1, unint64_t a2)
{
  v21 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v21);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[11 * v7];
    v9 = (v4 + 24);
    v10 = (v6 + 3);
    do
    {
      v11 = v10 - 24;
      *(v9 - 3) = *(v10 - 3);
      *(v9 - 1) = *(v10 - 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 4) = 0;
      *v9 = (v9 + 2);
      v9[1] = 0x200000000;
      if (*(v10 + 2))
      {
        v9 = llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(v9, v10);
      }

      v9 += 11;
      v10 += 88;
    }

    while (v11 + 88 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = &v6[11 * v12];
      do
      {
        v14 = v13;
        v13 -= 11;
        llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector((v14 - 8));
        if (*(v14 - 19))
        {
          v15 = *(v14 - 20);
          if (v15)
          {
            v16 = 0;
            v17 = 8 * v15;
            do
            {
              v18 = *(*v13 + v16);
              if (v18 != -8 && v18 != 0)
              {
              }

              v16 += 8;
            }

            while (v17 != v16);
          }
        }

        free(*v13);
      }

      while (v13 != v6);
      v6 = *a1;
    }
  }

  v20 = v21;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v20;
}

uint64_t **llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(uint64_t **a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 2);
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = -24 * v7;
        v9 = &v6[3 * v7 - 3];
        do
        {
          v9 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v9) - 24;
          v8 += 24;
        }

        while (v8);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = a2 + 1;
      a1[1] = a2[1];
      *a2 = v5;
      *(a2 + 3) = 0;
LABEL_10:
      *v10 = 0;
      return a1;
    }

    v10 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(a1 + 2);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *>(v4, &v4[3 * v12], v16);
        v16 = *a1;
        LODWORD(v13) = *(a1 + 2);
      }

      else
      {
        v17 = *a1;
      }

        ;
      }

      *(a1 + 2) = v12;
      v27 = *(a2 + 2);
      if (v27)
      {
        v28 = *a2;
        v29 = -24 * v27;
        v30 = &v28[3 * v27 - 3];
        do
        {
          v30 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v30) - 24;
          v29 += 24;
        }

        while (v29);
      }

      goto LABEL_10;
    }

    if (*(a1 + 3) >= v12)
    {
      if (v13)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *>(v4, &v4[3 * v13], *a1);
LABEL_23:
        v18 = *a2;
        v19 = *(a2 + 2);
        if (v13 != v19)
        {
          v20 = &v18[3 * v19];
          v21 = &(*a1)[3 * v13];
          v22 = &v18[3 * v13];
          do
          {
            *v21 = *v22;
            *(v21 + 1) = *(v22 + 1);
            *v22 = 0;
            v22[1] = 0;
            *(v22 + 4) = 0;
            v21 += 3;
            v22 += 3;
          }

          while (v22 != v20);
          v18 = *a2;
        }

        *(a1 + 2) = v12;
        v23 = *v10;
        if (v23)
        {
          v24 = -24 * v23;
          v25 = &v18[3 * v23 - 3];
          do
          {
            v25 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v25) - 24;
            v24 += 24;
          }

          while (v24);
        }

        goto LABEL_10;
      }
    }

    else
    {
      if (v13)
      {
        v14 = -24 * v13;
        v15 = &(*a1)[3 * v13 - 3];
        do
        {
          v15 = (llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v15) - 24);
          v14 += 24;
        }

        while (v14);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(a1, v12);
    }

    v13 = 0;
    goto LABEL_23;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(char **a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 2);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 24, &v13);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = *v5;
      *(v8 + 8) = *(v5 + 8);
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 4) = 0;
      v8 += 24;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v9 = *(a1 + 2);
    if (v9)
    {
      v10 = -24 * v9;
      v11 = &v5[24 * v9 - 24];
      do
      {
        v11 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v11) - 24;
        v10 += 24;
      }

      while (v10);
      v5 = *a1;
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v12;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 4);
      v8 = *(v5 + 5);
      v9 = v5[1];
      *v5 = 0;
      v5[1] = 0;
      *(v5 + 4) = 0;
      v10 = *a3;
      *a3 = v6;
      v13[0] = v10;
      v11 = a3[1];
      a3[1] = v9;
      v13[1] = v11;
      LODWORD(v6) = *(a3 + 4);
      *(a3 + 4) = v7;
      v14 = v6;
      v15 = v8;
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v13);
      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = v2 + 24 * v3 - 24;
    do
    {
      v5 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v5) - 24;
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void llvm::StringMapEntry<llvm::SmallVector<anonymous namespace::OperationParser::ValueDefinition,1u>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  JUMPOUT(0x25F891030);
}

uint64_t anonymous namespace::OperationParser::parseGenericOperation(_anonymous_namespace_::OperationParser *this)
{
  v39[26] = *MEMORY[0x277D85DE8];
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, *(*(this + 1) + 64));
  v30 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v29);
  size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v32 = "empty operation name is invalid";
    v34 = 259;
    mlir::detail::Parser::emitError(this, (*(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0)), &v32, v39);
    v4 = v39;
    goto LABEL_7;
  }

  if (std::string::find(&v29, 0, 0) != -1)
  {
    *&v32 = "null character not allowed in operation name";
    v34 = 259;
    mlir::detail::Parser::emitError(this, (*(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0)), &v32, v38);
    v4 = v38;
LABEL_7:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v4);
    v5 = 0;
    goto LABEL_43;
  }

  v6 = *(this + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v32, (*(this + 1) + 8));
  v7 = *(this + 1);
  *(v7 + 56) = v32;
  *(v7 + 72) = v33;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v29;
  }

  else
  {
    v8 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v29.__r_.__value_.__l.__size_;
  }

  mlir::OperationState::OperationState(&v32, EncodedSourceLocation, v8, v9);
  v28 = &v32;
  if (*(*(&v32 + 1) + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
LABEL_28:
    v17 = *(*(this + 1) + 152);
    if (v17)
    {
      llvm::SmallVectorImpl<mlir::AsmParserState::Impl::PartialOpDef>::emplace_back<mlir::OperationName const&>(*v17 + 440, (&v32 + 8));
    }

    v25.n128_u8[0] = 0;
    LOBYTE(v26) = 0;
    v23.n128_u8[0] = 0;
    v24 = 0;
    v22[0] = 0;
    v22[16] = 0;
    v21[0] = 0;
    v21[16] = 0;
    v5 = 0;
    {
      goto LABEL_42;
    }

    v18 = v36;
    v23.n128_u64[0] = v36;
    v36 = 0;
    {
      v5 = mlir::Operation::create(&v32);
      mlir::OpBuilder::insert((this + 384), v5);
      {
        if (!v18)
        {
          goto LABEL_42;
        }

        v25.n128_u64[0] = &v30;
        v25.n128_u64[1] = &v23;
        v26 = &v29;
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_41;
  }

  v10 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
  v11 = v29.__r_.__value_.__r.__words[0];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v29;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v29.__r_.__value_.__l.__size_;
  }

  v23.n128_u64[0] = v11;
  v23.n128_u64[1] = v10;
  v22[0] = 46;
  llvm::StringRef::split(&v23, v22, 1uLL, &v25);
  v12 = v25;
  if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v25.n128_i64[0], v25.n128_i64[1], v13) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v12.n128_u64[0], v12.n128_u64[1], v14))
  {
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v29;
    }

    else
    {
      v15 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v29.__r_.__value_.__l.__size_;
    }

    mlir::OperationName::OperationName(&v25, v15, v16, ***(this + 1));
    *(&v32 + 1) = v25.n128_u64[0];
    goto LABEL_28;
  }

  v19 = *(this + 1);
  if (*(***v19 + 40))
  {
    goto LABEL_28;
  }

  v25.n128_u64[0] = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
  v27 = 259;
  mlir::detail::Parser::emitError(this, (*(v19 + 64) - (*(v19 + 56) == 0)), &v25, v31);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
LABEL_41:
  v5 = 0;
LABEL_42:
  mlir::OperationState::~OperationState(&v32);
LABEL_43:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v5;
}

uint64_t anonymous namespace::OperationParser::addDefinition(int32x2_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = v7;
  v11 = *(a2 + 24);
  if (*(v7 + 8) <= v11)
  {
    v11 = *(a2 + 24);
  }

  v12 = 16 * v11;
  v13 = *(*v10 + v12);
  if (v13)
  {
    if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*&a1[42], a1[44].i32[0], *(*v10 + v12)))
    {
      v19 = *a2;
      v45 = 257;
      mlir::detail::Parser::emitError(a1, v19, v44, &v49);
      if (v49)
      {
        mlir::Diagnostic::operator<<<28ul>(v50, "redefinition of SSA value '");
        v48 = 261;
        v20 = *(a2 + 16);
        v46 = *(a2 + 8);
        v47 = v20;
        mlir::Diagnostic::operator<<(v50, &v46);
        mlir::Diagnostic::operator<<<2ul>(v50, "'");
      }

      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v10 + 16 * *(a2 + 24) + 8));
      mlir::Diagnostic::attachNote(v50, EncodedSourceLocation, 1);
    }

    if ((a3[1] ^ *(v13 + 8)) >= 8)
    {
      v22 = *a2;
      v45 = 257;
      mlir::detail::Parser::emitError(a1, v22, v44, &v49);
      if (v49)
      {
        v23 = a3[1] & 0xFFFFFFFFFFFFFFF8;
        mlir::Diagnostic::operator<<<26ul>(v50, "definition of SSA value '");
        v24 = *(a2 + 8);
        v25 = *(a2 + 16);
        v48 = 261;
        v46 = v24;
        v47 = v25;
        mlir::Diagnostic::operator<<(v50, &v46);
        mlir::Diagnostic::operator<<<2ul>(v50, "#");
        v26 = *(a2 + 24);
        LODWORD(v46) = 5;
        v47 = v26;
        v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
        v28 = v51 + 24 * v52;
        v29 = *v27;
        *(v28 + 16) = *(v27 + 16);
        *v28 = v29;
        ++v52;
        mlir::Diagnostic::operator<<<12ul>(v50, "' has type ");
        LODWORD(v46) = 4;
        v47 = v23;
        v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v46, 1);
        v31 = v51 + 24 * v52;
        v32 = *v30;
        *(v31 + 16) = *(v30 + 16);
        *v31 = v32;
        ++v52;
      }

      v33 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v10 + 16 * *(a2 + 24) + 8));
      mlir::Diagnostic::attachNote(v50, v33, 1);
    }

    v49 = a3;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v13, &v49);
    v14 = 0;
    v15 = *(v13 + 8) & 7;
    v16 = v15 == 7;
    if (v15 == 7)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13;
    }

    if (!v16)
    {
      v18 = *(v17 + 8) & 7;
      if (v18 == 6)
      {
        v14 = (v17 + 24 * *(v17 + 16) + 120);
      }

      else
      {
        v14 = (v17 + 16 * v18 + 16);
      }
    }

    mlir::Operation::destroy(v14);
    v34 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*&a1[42], a1[44].i32[0], v13);
    if (v34)
    {
      *v34 = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    v35 = *(*&a1[1] + 152);
    if (v35)
    {
      mlir::AsmParserState::refineDefinition(v35, v13, a3);
    }
  }

  v36 = *a2;
  v37 = (*v10 + 16 * *(a2 + 24));
  *v37 = a3;
  v37[1] = v36;
  v39 = *(a2 + 8);
  v38 = *(a2 + 16);
  v40 = *&a1[2] + 88 * a1[3].u32[0];
  v41 = (*(v40 - 64) + 24 * *(v40 - 56) - 24);
  v42 = llvm::xxh3_64bits(v39, v38, v8, v9);
  llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v41, v39, v38, v42);
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *&v23 = "expected valid ssa identifier";
  v25 = 259;
  if (!mlir::detail::Parser::parseToken(v2, 6, &v23))
  {
    v16 = 0;
    return v16 & 1;
  }

  v6 = *(v2 + 1);
  if (*(v6 + 56) != 15)
  {
    v13 = 1;
    goto LABEL_9;
  }

  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v23, (*(v2 + 1) + 8));
  v9 = *(v2 + 1);
  *(v9 + 56) = v23;
  *(v9 + 72) = v24;
  v10 = *(v2 + 1);
  if (*(v10 + 56) != 10)
  {
    v21[0] = "expected integer number of results";
    v22 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v23, v2, v21);
LABEL_14:
    v16 = v26 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    return v16 & 1;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v10 + 64), *(v10 + 72), v7, v8);
  if ((v12 & 1) == 0 || (v13 = UInt64IntegerValue) == 0)
  {
    v21[0] = "expected named operation to have at least 1 result";
    v22 = 259;
    mlir::detail::Parser::emitError(v2, (*(*(v2 + 1) + 64) - (*(*(v2 + 1) + 56) == 0)), v21, &v23);
    goto LABEL_14;
  }

  v14 = *(v2 + 1);
  *(v14 + 80) = *(v14 + 56);
  *(v14 + 96) = *(v14 + 72);
  mlir::Lexer::lexToken(&v23, (*(v2 + 1) + 8));
  v15 = *(v2 + 1);
  *(v15 + 56) = v23;
  *(v15 + 72) = v24;
LABEL_9:
  v17 = *(a1 + 8);
  *&v23 = v4;
  *(&v23 + 1) = v5;
  v18 = *(v17 + 8);
  if (v18 >= *(v17 + 12))
  {
    llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(v17, &v23, v13, v4);
  }

  else
  {
    v19 = *v17 + 32 * v18;
    *v19 = v23;
    *(v19 + 16) = v13;
    *(v19 + 24) = v4;
    ++*(v17 + 8);
  }

  **(a1 + 16) += v13;
  v16 = 1;
  return v16 & 1;
}

__n128 llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v12 = *a2;
  v13 = a3;
  v14 = a4;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = &v12;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= &v12 && v6 + 32 * v5 > &v12)
    {
      v11 = &v12 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 32);
      v6 = *a1;
      v7 = &v11[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 32);
      v6 = *a1;
      v7 = &v12;
    }
  }

  v8 = (v6 + 32 * *(a1 + 8));
  result = *v7;
  v10 = v7[1];
  *v8 = *v7;
  v8[1] = v10;
  ++*(a1 + 8);
  return result;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v1 = this;
  v29[26] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v28.n128_u64[0] = v3;
  v28.n128_u64[1] = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v25, (*(this + 1) + 8));
    v5 = *(v1 + 8);
    *(v5 + 56) = v25;
    *(v5 + 72) = v26.n128_u64[0];
    v6 = ****(v1 + 8);
    v8 = llvm::StringMap<mlir::RegisteredOperationName,llvm::MallocAllocator>::find(v6 + 208, v3, v4, v7);
    if (*(v6 + 208) + 8 * *(v6 + 216) == v8)
    {
      LOBYTE(v25) = 46;
      llvm::StringRef::split(&v28, &v25, 1uLL, &v23);
      v12 = v23.n128_u64[1];
      v11 = v23.n128_u64[0];
      __p = 0;
      v21 = 0;
      v22 = 0;
      v13 = *(v1 + 8);
      if (!v24)
      {
        if (*(v13 + 56) == 2 && *(v28.n128_u64[0] + v28.n128_u64[1] - 1) == 46)
        {
          mlir::detail::Parser::codeCompleteOperationName(v1, v23.n128_u64[0], v23.n128_u64[1]);
          v9 = 0;
          LOBYTE(v1) = 0;
          return v9 | v1;
        }

        v14 = *(v13 + 168) + 16 * *(v13 + 176);
        v11 = *(v14 - 16);
        v12 = *(v14 - 8);
        v19 = 773;
        v18[0] = v11;
        v18[1] = v12;
        v18[2] = ".";
        *&v25 = v18;
        v26 = v28;
        v27 = 1282;
        llvm::Twine::str(&v25, &__p);
        v13 = *(v1 + 8);
        v15 = SHIBYTE(v22);
        p_p = __p;
        if (v22 >= 0)
        {
          p_p = &__p;
        }

        if (v22 < 0)
        {
          v15 = v21;
        }

        v28.n128_u64[0] = p_p;
        v28.n128_u64[1] = v15;
      }

      mlir::MLIRContext::getOrLoadDialect(**v13, v11, v12, v10);
      mlir::OperationName::OperationName(&v25, v28.n128_u64[0], v28.n128_u64[1], ***(v1 + 8));
      LOBYTE(v1) = v25;
      v9 = v25 & 0xFFFFFFFFFFFFFF00;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v1 = *(*v8 + 8);
      v9 = v1 & 0xFFFFFFFFFFFFFF00;
    }
  }

  else
  {
    *&v25 = "empty operation name is invalid";
    v27 = 259;
    mlir::detail::Parser::emitError(this, &v3[-(*(v2 + 56) == 0)], &v25, v29);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
    LOBYTE(v1) = 0;
    v9 = 0;
  }

  return v9 | v1;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(uint64_t ****a1, unint64_t a2)
{
  v2 = a1[1];
  if (*(v2 + 14) != 65)
  {
    return 1;
  }

  *(v2 + 5) = *(v2 + 7);
  v2[12] = v2[9];
  mlir::Lexer::lexToken(&v16, (a1[1] + 1));
  v5 = a1[1];
  *(v5 + 7) = v16;
  v5[9] = v17;
  *&v16 = "expected '(' in location";
  v18 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v16))
  {
    v6 = a1[1];
    v7 = *(v6 + 14);
    v9 = v6[8];
    v8 = v6[9];
    v15 = 0;
    if (v7 == 5 && (!v8 || (v10 = memchr(v9, 46, v8)) == 0 || v10 - v9 == -1))
    {
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

void anonymous namespace::CleanupOpStateRegions::~CleanupOpStateRegions(_anonymous_namespace_::CleanupOpStateRegions *this)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x400000000;
  v2 = *this;
  v3 = *(*this + 232);
  if (v3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v10, v3, 8);
    v2 = *this;
    LODWORD(v3) = *(*this + 232);
  }

  if (v3)
  {
    v4 = *(v2 + 224);
    v5 = &v4[v3];
    do
    {
      v6 = *v4;
      if (*v4)
      {
        for (i = *(v6 + 8); i != v6; i = *(i + 8))
        {
          if (i)
          {
            v8 = (i - 8);
          }

          else
          {
            v8 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v8);
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }
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

void anonymous namespace::CustomOpAsmParser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t **a3@<X2>, void *a4@<X8>)
{
  v10 = 1283;
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v9[0] = "custom op '";
  v9[2] = v4;
  v9[3] = v5;
  *&v11 = v9;
  *&v12 = "' ";
  LOWORD(v13) = 770;
  v6 = *(a3 + 32);
  if (v6 == 1)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
  }

  else if (*(a3 + 32))
  {
    v7 = *a3;
    v8 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v6) = 2;
      v7 = a3;
    }

    *&v14 = &v11;
    *&v15 = v7;
    *(&v15 + 1) = v8;
    LOBYTE(v16) = 2;
    BYTE1(v16) = v6;
  }

  else
  {
    LOWORD(v16) = 256;
  }

  *(a1 + 24) = 1;
  mlir::detail::Parser::emitError(*(a1 + 16), a2, &v14, a4);
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseBase64Bytes(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) != 11)
  {
    v23[0] = "expected string";
    v24 = 259;
    (*(*a1 + 24))(&v25, a1, v4, v23);
    v16 = v27 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    return v16 & 1;
  }

  if (!a2)
  {
LABEL_18:
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v25, (*(v5 + 8) + 8));
    v17 = *(v5 + 8);
    *(v17 + 56) = v25;
    *(v17 + 72) = v26;
    v16 = 1;
    return v16 & 1;
  }

  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  v22[0] = v7;
  v22[1] = v8;
  first_not_of = llvm::StringRef::find_first_not_of(v22, "  \t\n\v\f\r", 8, 0);
  if (first_not_of >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = first_not_of;
  }

  v11 = v8 - v10;
  v12 = v10 + v7;
  *&v25 = v12;
  *(&v25 + 1) = v11;
  last_not_of = llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
  if (v11 >= last_not_of + 1)
  {
    v14 = last_not_of + 1;
  }

  else
  {
    v14 = v11;
  }

  llvm::decodeBase64(v12, v14, a2, &v21);
  if (!v21)
  {
    v5 = a1[2];
    v6 = *(v5 + 8);
    goto LABEL_18;
  }

  v19 = v21;
  v21 = 0;
  llvm::toString(&v19, &__p);
  v24 = 260;
  v23[0] = &__p;
  (*(*a1 + 24))(&v25, a1, v4, v23);
  v15 = v27;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v16 = v15 ^ 1;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  return v16 & 1;
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(uint64_t a1, double *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  llvm::APFloat::APFloat(v6, 0.0);
  if ((*(*a1 + 368))(a1, &llvm::semIEEEdouble, v6))
  {
    *a2 = llvm::APFloat::convertToDouble(v6);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  llvm::APFloat::Storage::~Storage(v6);
  return v4;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(uint64_t a1, _DWORD *a2, llvm::detail::IEEEFloat *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken(&v20, (*(v6 + 8) + 8));
    v9 = *(v6 + 8);
    *(v9 + 56) = v20;
    *(v9 + 72) = v21;
    v6 = *(a1 + 16);
    v7 = *(v6 + 8);
  }

  v16 = *(v7 + 56);
  v17 = *(v7 + 72);
  LOBYTE(v20) = 0;
  v22 = 0;
  v10 = mlir::detail::Parser::parseFloatFromLiteral(v6, &v20, &v16, v8 == 24, a2);
  v11 = 0;
  if (v10)
  {
    v12 = *(a1 + 16);
    v13 = *(v12 + 8);
    *(v13 + 80) = *(v13 + 56);
    *(v13 + 96) = *(v13 + 72);
    mlir::Lexer::lexToken(&v18, (*(v12 + 8) + 8));
    v14 = *(v12 + 8);
    *(v14 + 56) = v18;
    *(v14 + 72) = v19;
    llvm::APFloat::Storage::operator=(a3, &v20);
    v11 = 1;
  }

  if (v22 == 1)
  {
    llvm::APFloat::Storage::~Storage(&v20);
  }

  return v11;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeyword(void *a1, const char *a2, const char *a3, const char **a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v14, 1, 0);
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
      v12 = "expected '";
      v13 = 259;
      (*(*a1 + 24))(&v17, a1, v10, &v12);
      if (v17)
      {
        v16 = 261;
        v15[0] = a2;
        v15[1] = a3;
        mlir::Diagnostic::operator<<(v18, v15);
        if (v17)
        {
          mlir::Diagnostic::operator<<<2ul>(v18, "'");
          if (v17)
          {
            mlir::Diagnostic::operator<<(v18, a4);
          }
        }
      }

      v5 = (v18[192] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    }
  }

  return v5;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, void *__s2, size_t __n)
{
  v12[0] = __s2;
  v12[1] = __n;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  v8 = (v6 + 56);
  v7 = *(v6 + 56);
  if (v7 == 12 || v7 == 3)
  {
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    (*(**(v6 + 160) + 48))(*(v6 + 160), v12, 1, 1);
    return 0;
  }

  result = mlir::Token::isKeyword(v8);
  if (result)
  {
LABEL_16:
    if (*(v6 + 72) == __n && (!__n || !memcmp(*(v6 + 64), __s2, __n)))
    {
      *(v6 + 80) = *v8;
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken(&v13, (*(v5 + 8) + 8));
      v10 = *(v5 + 8);
      *(v10 + 56) = v13;
      *(v10 + 72) = v14;
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a1 + 16) + 8);
  v9 = *(v8 + 56);
  if (v9 == 12 || v9 == 3)
  {
    goto LABEL_6;
  }

  if (v9 == 2)
  {
    (*(**(v8 + 160) + 48))(*(v8 + 160), a3, a4, 1);
    return 0;
  }

  result = mlir::Token::isKeyword((v8 + 56));
  if (result)
  {
LABEL_6:
    v15 = *(v8 + 64);
    if (std::__find[abi:nn200100]<llvm::StringRef const*,llvm::StringRef const*,llvm::StringRef,std::__identity>(a3, a3 + 16 * a4, &v15) != a3 + 16 * a4)
    {
      *a2 = v15;
      v11 = *(a1 + 16);
      v12 = *(v11 + 8);
      *(v12 + 96) = *(v12 + 72);
      *(v12 + 80) = *(v12 + 56);
      mlir::Lexer::lexToken(&v16, (*(v11 + 8) + 8));
      v13 = *(v11 + 8);
      *(v13 + 56) = v16;
      *(v13 + 72) = v17;
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t **, uint64_t *), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v7 = mlir::detail::Parser::parseAttribute(v6, a3);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a4(a5, a2, a3);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (*(*(v3 + 8) + 56) == 22)
  {
    v5 = mlir::detail::Parser::parseAttribute(v3, a3);
    if (v5)
    {
      *a2 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
}

{
  v3 = *(a1 + 16);
  if (*(*(v3 + 8) + 56) == 11)
  {
    v5 = mlir::detail::Parser::parseAttribute(v3, a3);
    if (v5)
    {
      *a2 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
}

{
  v3 = *(a1 + 16);
  if (*(*(v3 + 8) + 56) == 4)
  {
    v5 = mlir::detail::Parser::parseAttribute(v3, a3);
    if (v5)
    {
      *a2 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
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
  mlir::Token::getSymbolReference(&v19, &__p);
  v18 = 260;
  *&v16 = &__p;
  *a2 = mlir::StringAttr::get(*v5, &v16, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = a1[2];
  v8 = *(v7 + 8);
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken(&v16, (*(v7 + 8) + 8));
  v10 = *(v7 + 8);
  *(v10 + 56) = v16;
  *(v10 + 72) = v17;
  v11 = *(*(a1[2] + 8) + 152);
  if (!v11)
  {
    return 1;
  }

  v12 = mlir::SymbolRefAttr::get(*a2, 0, 0, v9);
  *&v16 = *(&v19 + 1);
  *(&v16 + 1) = *(&v19 + 1) + v20;
  v13 = 1;
  mlir::AsmParserState::addUses(v11, v12, &v16, 1);
  return v13;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseType(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = mlir::detail::Parser::parseType(*(a1 + 16), a2, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v6 = mlir::detail::Parser::parseType(v5, a2, a3, a4);
    *a2 = v6;
    return v6 != 0;
  }

  else
  {

    return a3(a4);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrowTypeList(void *a1, uint64_t a2)
{
  if ((*(*a1 + 56))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrowTypeList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v10, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v10;
  *(v6 + 72) = v11;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2, v7, v8);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonType(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v10 = "expected ':'";
  v11 = 259;
  if (!mlir::detail::Parser::parseToken(v4, 15, &v10))
  {
    return 0;
  }

  v8 = mlir::detail::Parser::parseType(*(a1 + 16), v5, v6, v7);
  *a2 = v8;
  return v8 != 0;
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
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    __p = 0;
    v15 = 0;
    v16 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &__p, a3);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v11 = 257;
    mlir::detail::Parser::emitError(v7, (*(*(v7 + 8) + 64) - (*(*(v7 + 8) + 56) == 0)), v10, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<10ul>(&v15, "dialect '");
      if (__p)
      {
        v8 = *(a2 + 8);
        v9 = *(a2 + 16);
        v13 = 261;
        v12[0] = v8;
        v12[1] = v9;
        mlir::Diagnostic::operator<<(&v15, v12);
        if (__p)
        {
          mlir::Diagnostic::operator<<<35ul>(&v15, "' does not expect resource handles");
        }
      }
    }

    *a3 = 0;
    a3[24] = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
  }
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
{
  v2 = *(*(a1 + 2) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return mlir::AsmParser::parseKeyword(a1, a2);
  }

  *a2 = &byte_25D0A27DF;
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
  if (*(v3 + 56) != 65)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(&v17, (*(v2 + 8) + 8));
  v6 = *(v2 + 8);
  *(v6 + 56) = v17;
  *(v6 + 72) = v18;
  v20 = 0;
  v7 = *(a1 + 88);
  *&v17 = "expected '(' in location";
  v19 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v17))
  {
    v8 = *(a1 + 88);
    v9 = v8[1];
    if (*(v9 + 14) == 5 && ((v10 = v9[9]) == 0 || ((v11 = v9[8], (v12 = memchr(v11, 46, v10)) != 0) ? (v13 = v12 - v11 == -1) : (v13 = 1), v13)))
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v20) & 1) == 0)
    {
      return 0;
    }

    v14 = *(a1 + 88);
    *&v17 = "expected ')' in location";
    v19 = 259;
    if (mlir::detail::Parser::parseToken(v14, 28, &v17))
    {
      v15 = v20;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v15;
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
    v6 = &byte_25D0A27DF;
    while (1)
    {
      v7 = a2 - *v4;
      if (a2 < *v4)
      {
        break;
      }

      v4 += 8;
      a2 = v7;
      v5 -= 32;
      if (!v5)
      {
        v8 = 0;
        a2 = -1;
        goto LABEL_10;
      }
    }

    v6 = *(v4 - 2);
    v9 = *(v4 - 1);
    if (v9)
    {
      ++v6;
    }

    v8 = v9 - (v9 != 0);
  }

  else
  {
    v8 = 0;
    a2 = -1;
    v6 = &byte_25D0A27DF;
  }

LABEL_10:
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = a2;
  return this;
}

uint64_t anonymous namespace::CustomOpAsmParser::getNumResults(_anonymous_namespace_::CustomOpAsmParser *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 4);
  v5 = 32 * v1;
  v6 = (v4 + 16);
  do
  {
    v7 = *v6;
    v6 += 8;
    result += v7;
    v5 -= 32;
  }

  while (v5);
  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v11 = *(v3 + 400);
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  if (v7)
  {
    v8 = *(v3 + 8);
    v9 = v8[19];
    if (v9)
    {
      mlir::AsmParserState::finalizeOperationDefinition(v9, v7, v5, v5 + v6, v8[11] + v8[12], 0, 0);
    }
  }

  if (v11)
  {
    *(v3 + 400) = v11;
  }

  else
  {
    *(v3 + 400) = 0;
    *(v3 + 408) = 0;
  }

  return v7;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperationAfterOpName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalOperand(void *a1)
{
  v1 = *(a1[11] + 8);
  v2 = *(v1 + 56);
  if (v2 == 6 || v2 == 2 && *(v1 + 72) && **(v1 + 64) == 37)
  {
    v3 = (*(*a1 + 704))(a1);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | (v4 << 8);
}

BOOL anonymous namespace::CustomOpAsmParser::parseOperandList(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = a4;
  v8 = a1[11];
  v9 = *(v8 + 1);
  if (a3)
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v15 = *(v9 + 56);
    v10 = *(v9 + 64);
    if (v15 != 6 && (v15 != 2 || !*(v9 + 72) || *v10 != 37))
    {
      if ((a5 + 1) >= 2)
      {
        if ((v15 - 21) > 1)
        {
          v18[0] = "expected operand";
          v19 = 259;
          mlir::detail::Parser::emitWrongTokenError(&v23, v8, v18);
        }

        else
        {
          v18[0] = "unexpected delimiter";
          v19 = 259;
          mlir::detail::Parser::emitError(v8, v10, v18, &v23);
        }

LABEL_19:
        v14 = (v27 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
        return v14;
      }

      return 1;
    }
  }

  v17[0] = a1;
  v17[1] = a2;
  v17[2] = &v20;
  {
    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v18[0] = "expected ";
      v19 = 259;
      (*(*a1 + 24))(&v23, a1, v10, v18);
      if (v23)
      {
        v21 = 2;
        v22 = a5;
        v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
        v12 = v25 + 24 * v26;
        v13 = *v11;
        *(v12 + 16) = *(v11 + 16);
        *v12 = v13;
        ++v26;
        if (v23)
        {
          mlir::Diagnostic::operator<<<10ul>(&v24, " operands");
        }
      }

      goto LABEL_19;
    }

    return 1;
  }

  return 0;
}

unint64_t anonymous namespace::CustomOpAsmParser::resolveOperand(uint64_t a1, _OWORD *a2, unint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (result)
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, result);
    return 1;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v29[8] = *MEMORY[0x277D85DE8];
  __src = v29;
  v28 = 0x200000000;
  v24 = v26;
  v25 = 0x100000000;
  v21[0] = a1;
  v21[1] = &v24;
  v21[2] = &__src;
  v20 = 0;
  {
    if (v20)
    {
      v12 = mlir::AffineMapAttr::get(v20);
      *a3 = v12;
      v13 = *(**v12 + 32);
      v23 = 261;
      v22[0] = a4;
      v22[1] = a5;
      v15 = mlir::StringAttr::get(v13, v22, v14);
      mlir::NamedAttrList::push_back(a6, v15, v12);
    }

    v16 = __src;
    v17 = __src + 32 * v28;
    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand*,void>(a2, v16, v17);
    llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand*,void>(a2, v24, v24 + 32 * v25);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (__src != v29)
  {
    free(__src);
  }

  return v18;
}

BOOL anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t ***a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseArgument(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v12[9] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x400000000;
  v12[8] = 4;
  if ((*(*a1 + 704))(a1, a2, 0) & 1) != 0 && (!a3 || ((*(*a1 + 576))(a1, a2 + 32)) && (!a4 || ((*(*a1 + 488))(a1, v11)) && ((*(*a1 + 656))(a1, a2 + 48))
  {
    v8 = (*(*a1 + 32))(a1);
    *(a2 + 40) = mlir::NamedAttrList::getDictionary(v11, *v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v9;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalArgument(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 6)
  {
    v1 = (*(*a1 + 752))(a1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  return v1 | (v2 << 8);
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
    v1 = (*(*a1 + 776))(a1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  return v1 | (v2 << 8);
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
  v3 = *(v2 + 56);
  if (v3 == 7 || v3 == 2 && *(v2 + 72) && **(v2 + 64) == 94)
  {
    v4 = (*(*this + 800))(this, a2);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | (v5 << 8);
}

BOOL anonymous namespace::CustomOpAsmParser::parseSuccessorAndUseList(void *a1, uint64_t a2, uint64_t a3)
{
  v27[16] = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 800))(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v25 = v27;
  v26 = 0x400000000;
  {
    if (v26)
    {
      v22 = v24;
      v23 = 0x400000000;
      *&v20[0] = "expected ':' in operand list";
      v21 = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, v20) && mlir::detail::Parser::parseTypeListNoParens(v5, &v22))
      {
        v7 = v26;
        if (v26 == v23)
        {
          if (*(a3 + 12) < v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v26, 8);
            v7 = v26;
          }

          if (v7)
          {
            v8 = 0;
            v9 = 0;
            v10 = 32 * v7;
            do
            {
              v11 = *&v25[v9 + 16];
              v20[0] = *&v25[v9];
              v20[1] = v11;
              v13 = v12 == 0;
              if (!v12)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a3, v12);
              v9 += 32;
              v8 += 8;
            }

            while (v10 != v9);
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v18 = "expected ";
          v19 = 259;
          mlir::detail::Parser::emitError(v5, (*(*(v5 + 1) + 64) - (*(*(v5 + 1) + 56) == 0)), &v18, v20);
          v17 = v26;
          v15 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v20, &v17);
          v16 = v15;
          if (*v15)
          {
            mlir::Diagnostic::operator<<<29ul>((v15 + 1), " types to match operand list");
          }

          v13 = *(v16 + 200);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
        }
      }

      else
      {
        v13 = 1;
      }

      if (v22 != v24)
      {
        free(v22);
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

  if (v25 != v27)
  {
    free(v25);
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

BOOL anonymous namespace::OperationParser::parseLocationAlias(void *a1, uint64_t *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = v6;
  mlir::Lexer::lexToken(&v35, (a1[1] + 8));
  v8 = a1[1];
  *(v8 + 56) = v35;
  *(v8 + 72) = v36;
  if (v6)
  {
    v9 = (v5 + 1);
  }

  else
  {
    v9 = v5;
  }

  v10 = (v6 - (v6 != 0));
  v11 = a1[1];
  v12 = *(v11 + 152);
  if (v12)
  {
    mlir::AsmParserState::addAttrAliasUses(v12, v9, (v6 - (v6 != 0)), v5, &v5[v6]);
    v11 = a1[1];
  }

  v13 = *(v11 + 104);
  v14 = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v13, v9, v10, v7);
  if (*v13 + 8 * *(v13 + 8) == v14 || (v15 = *(*v14 + 8)) == 0)
  {
    v21 = a1[46];
    v22 = a1[47];
    if (v21 >= v22)
    {
      v24 = a1[45];
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3) + 1;
      if (v25 > 0xAAAAAAAAAAAAAAALL)
      {
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v24) >> 3);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x555555555555555)
      {
        v27 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v28 = (8 * ((v21 - v24) >> 3));
      *v28 = v5;
      v28[1] = v9;
      v28[2] = v10;
      v23 = v28 + 3;
      v29 = v28 - (v21 - v24);
      memcpy(v29, v24, v21 - v24);
      a1[45] = v29;
      a1[46] = v23;
      a1[47] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v21 = v5;
      *(v21 + 1) = v9;
      v23 = v21 + 24;
      *(v21 + 2) = v10;
    }

    a1[46] = v23;
    return 1;
  }

  *&v35 = *(*v14 + 8);
  if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v35))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
  if (v16)
  {
    return 1;
  }

  v32 = 257;
  mlir::detail::Parser::emitError(a1, v5, v31, &v35);
  if (v35)
  {
    mlir::Diagnostic::operator<<<31ul>(&v35 + 8, "expected location, but found '");
    if (v35)
    {
      v33 = 0;
      v34 = v15;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
      v18 = v37 + 24 * v38;
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++v38;
      if (v35)
      {
        mlir::Diagnostic::operator<<<2ul>(&v35 + 8, "'");
      }
    }
  }

  v20 = (v39 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  return v20;
}

uint64_t anonymous namespace::OperationParser::parseGenericOperationAfterOpName(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v71 = *MEMORY[0x277D85DE8];
  v64 = v66;
  v65 = 0x800000000;
  if ((*(a3 + 16) & 1) == 0)
  {
    *&v60 = "expected '(' to start operand list";
    v62 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 21, &v60))
    {
      goto LABEL_55;
    }

    {
      goto LABEL_55;
    }

    v67 = "expected ')' to end operand list";
    v70 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 28, &v67))
    {
      goto LABEL_55;
    }

    v20 = v64;
    v21 = v65;
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *a3 = v20;
    *(a3 + 8) = v21;
  }

  if (*(a4 + 16))
  {
    v18 = *(a4 + 8);
    if (v18)
    {
      v19 = *a4 | 4;
    }

    else
    {
      v19 = 0;
    }

    llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v19, 0, v19, v18);
  }

  else if (*(*(a1 + 1) + 56) == 22)
  {
    if ((mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(a2 + 8) & 1) == 0)
    {
      v67 = "successors in non-terminator";
      v70 = 259;
      mlir::detail::Parser::emitError(a1, (*(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0)), &v67, &v60);
LABEL_54:
      v51 = v63;
LABEL_66:
      v45 = v51 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      goto LABEL_56;
    }

    v67 = v69;
    v68 = 0x200000000;
    *&v60 = "expected '['";
    v62 = 259;
    {
      if (v68)
      {
        v22 = v67 | 4;
      }

      else
      {
        v22 = 0;
      }

      llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v22, 0, v22, v68);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    if (v67 != v69)
    {
      free(v67);
    }

    if (v23)
    {
      goto LABEL_55;
    }
  }

  if (a8)
  {
    *(a2 + 248) = a7;
  }

  else
  {
    v24 = *(a1 + 1);
    if (*(v24 + 56) == 23)
    {
      *(v24 + 80) = *(v24 + 56);
      *(v24 + 96) = *(v24 + 72);
      mlir::Lexer::lexToken(&v60, (*(a1 + 1) + 8));
      v25 = *(a1 + 1);
      *(v25 + 56) = v60;
      *(v25 + 72) = v61;
      v26 = mlir::detail::Parser::parseAttribute(a1, 0);
      *(a2 + 248) = v26;
      if (!v26)
      {
        goto LABEL_55;
      }

      *&v60 = "expected '>' to close properties";
      v62 = 259;
      if (!mlir::detail::Parser::parseToken(a1, 19, &v60))
      {
        goto LABEL_55;
      }
    }
  }

  if (*(a5 + 16))
  {
    mlir::OperationState::addRegions(a2, *a5, *(a5 + 8));
  }

  else
  {
    v27 = *(a1 + 1);
    if (*(v27 + 56) == 21)
    {
      *(v27 + 80) = *(v27 + 56);
      *(v27 + 96) = *(v27 + 72);
      mlir::Lexer::lexToken(&v60, (*(a1 + 1) + 8));
      v28 = *(a1 + 1);
      *(v28 + 56) = v60;
      *(v28 + 72) = v61;
      operator new();
    }
  }

  if (*(a6 + 16))
  {
    v29 = *a6;
    v30 = (*a6 + 16 * *(a6 + 8));
    *(a2 + 192) = 0;
    llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>((a2 + 112), v29, v30);
  }

  else if (*(*(a1 + 1) + 56) == 20 && !mlir::detail::Parser::parseAttributeDict(a1, (a2 + 112)))
  {
    goto LABEL_55;
  }

  if (a10)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_41;
  }

  *&v60 = "expected ':' followed by operation type";
  v62 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, &v60) || (EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, *(*(a1 + 1) + 64)), (v50 = mlir::detail::Parser::parseType(a1, v47, v48, v49)) == 0))
  {
LABEL_55:
    v45 = 0;
    goto LABEL_56;
  }

  a9 = v50;
  if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v67 = "expected function type";
    v70 = 259;
    emitDiag(EncodedSourceLocation, 2, &v67, &v60);
    goto LABEL_54;
  }

LABEL_41:
  v33 = (*(a9 + 16) + 8 * *(a9 + 8));
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), v33, &v33[8 * *(a9 + 12)]);
  v35 = *(a9 + 8);
  v36 = *(a3 + 8);
  if (v36 != v35)
  {
    v46 = v36 == 1;
    v53 = "s";
    if (v46)
    {
      v53 = "";
    }

    v54 = *v53;
    v58 = "expected ";
    v59 = 259;
    emitDiag(EncodedSourceLocation, 2, &v58, &v60);
    v57 = *(a3 + 8);
    v55 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v60, &v57);
    v56 = v55;
    if (*v55)
    {
      mlir::Diagnostic::operator<<<14ul>((v55 + 1), " operand type");
      if (*v56)
      {
        v70 = 264;
        LOBYTE(v67) = v54;
        mlir::Diagnostic::operator<<((v56 + 1), &v67);
        if (*v56)
        {
          mlir::Diagnostic::operator<<<10ul>((v56 + 1), " but had ");
        }
      }
    }

    v67 = v35;
    v51 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v56, &v67) + 200);
    goto LABEL_66;
  }

  if (v35)
  {
    v37 = 0;
    v38 = *(a9 + 16);
    v39 = 32 * v35 - 32;
    do
    {
      v40 = (*a3 + v37);
      v41 = v40[1];
      v60 = *v40;
      v61 = v41;
      v42 = *v38++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a2 + 16, v43);
      v44 = *(*(a2 + 16) + 8 * *(a2 + 24) - 8);
      v45 = v44 != 0;
      if (v44)
      {
        v46 = v39 == v37;
      }

      else
      {
        v46 = 1;
      }

      v37 += 32;
    }

    while (!v46);
  }

  else
  {
    v45 = 1;
  }

LABEL_56:
  if (v64 != v66)
  {
    free(v64);
  }

  return v45 & 1;
}

BOOL anonymous namespace::OperationParser::parseOptionalSSAUseList(mlir::detail::Parser *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(v4 + 56);
  if (v5 != 6 && (v5 != 2 || !*(v4 + 72) || **(v4 + 64) != 37))
  {
    return 1;
  }

  v7[2] = v2;
  v7[3] = v3;
  v7[0] = a1;
  v7[1] = a2;
}

uint64_t anonymous namespace::OperationParser::parseRegion(mlir::detail::Parser *a1, unint64_t a2, const char **a3, unint64_t a4, int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v16[0] = "expected '{' to begin a region";
  v18 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 20, v16))
  {
    return 0;
  }

  v8 = *(*(a1 + 1) + 152);
  if (v8)
  {
    v9 = *v8;
    v10 = *(*(v9 + 440) + 8 * *(v9 + 448) - 8);
    if (v10)
    {
      llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>> *,true>::push_back(v9 + 504, v10);
    }
  }

  if (a4 || (v11 = *(a1 + 1), *(v11 + 56) != 27))
  {
    operator new();
  }

  *(v11 + 80) = *(v11 + 56);
  *(v11 + 96) = *(v11 + 72);
  mlir::Lexer::lexToken(v16, (*(a1 + 1) + 8));
  v12 = *(a1 + 1);
  *(v12 + 56) = *v16;
  *(v12 + 72) = v17;
  v13 = *(*(a1 + 1) + 152);
  if (v13)
  {
    v14 = *v13;
    if (*(*(v14 + 440) + 8 * *(v14 + 448) - 8))
    {
      --*(v14 + 512);
    }
  }

  return 1;
}

unint64_t anonymous namespace::OperationParser::resolveSSAUse(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = v7;
  v9 = *(a2 + 24);
  if (*(v7 + 8) <= v9)
  {
    v10 = *v8;
  }

  else
  {
    v10 = *v7;
    v11 = *(*v7 + 16 * v9);
    if (v11)
    {
      if ((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
      {
        v12 = *a2;
        v35[0] = "use of value '";
        v36 = 259;
        mlir::detail::Parser::emitError(a1, v12, v35, &v42);
        if (v42)
        {
          v13 = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
          v14 = *(a2 + 8);
          v15 = *(a2 + 16);
          v40 = 261;
          v38 = v14;
          v39 = v15;
          mlir::Diagnostic::operator<<(&v43, &v38);
          mlir::Diagnostic::operator<<<43ul>(&v43, "' expects different type than prior uses: ");
          LODWORD(v38) = 4;
          v39 = a3;
          v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v38, 1);
          v17 = v45 + 24 * v46;
          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
          ++v46;
          mlir::Diagnostic::operator<<<5ul>(&v43, " vs ");
          LODWORD(v38) = 4;
          v39 = v13;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v38, 1);
          v20 = v45 + 24 * v46;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v46;
        }

        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, (*v8)[2 * *(a2 + 24) + 1]);
        mlir::Diagnostic::attachNote(&v43, EncodedSourceLocation, 1);
      }

      goto LABEL_19;
    }
  }

  if (*v10 && !llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*(a1 + 336), *(a1 + 352), *v10))
  {
    v33 = *a2;
    v42 = "reference to invalid result number";
    LOWORD(v46) = 259;
    mlir::detail::Parser::emitError(a1, v33, &v42, v41);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v41);
    return 0;
  }

  v23 = *a2;
  v35[0] = a3;
  mlir::OperationName::OperationName(&v37, "builtin.unrealized_conversion_cast", 0x22, ***(a1 + 8));
  v24 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v23);
  v42 = &v44;
  v43 = 0x400000000;
  v47 = 4;
  v25 = mlir::Operation::create(v24, v37, v35 + 2, 1, 0, 0, &v42, 0, 0, 0, 0);
  if (v42 != &v44)
  {
    free(v42);
  }

  v11 = (v25 - 16);
  v38 = 0;
  v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(*(a1 + 336), *(a1 + 352), v11, &v38);
  v27 = v38;
  if ((v26 & 1) == 0)
  {
    v42 = v38;
    v28 = *(a1 + 344);
    v29 = *(a1 + 352);
    if (4 * v28 + 4 >= 3 * v29)
    {
      v29 *= 2;
    }

    else if (v29 + ~v28 - *(a1 + 348) > v29 >> 3)
    {
LABEL_15:
      *(a1 + 344) = v28 + 1;
      if (*v27 != -4096)
      {
        --*(a1 + 348);
      }

      *v27 = v11;
      *(v27 + 1) = 0;
      goto LABEL_18;
    }

    llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::grow(a1 + 336, v29);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(*(a1 + 336), *(a1 + 352), v11, &v42);
    v28 = *(a1 + 344);
    v27 = v42;
    goto LABEL_15;
  }

LABEL_18:
  *(v27 + 1) = v23;
  v30 = *a2;
  v31 = &(*v8)[2 * *(a2 + 24)];
  *v31 = v11;
  v31[1] = v30;
LABEL_19:
  v32 = *(*(a1 + 8) + 152);
  if (v32)
  {
    mlir::AsmParserState::addUses(v32, v11, a2, 1);
  }

  return v11;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalSSAUseList(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  memset(v9, 0, 24);
  {
    return 0;
  }

  v3 = a1[1];
  v4 = 1;
  v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v3, v9, 1);
  v6 = (*v3 + 32 * *(v3 + 8));
  v7 = v5[1];
  *v6 = *v5;
  v6[1] = v7;
  ++*(v3 + 8);
  return v4;
}

uint64_t anonymous namespace::OperationParser::parseSSAUse(uint64_t a1, uint64_t a2, char a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = *(*(a1 + 8) + 64);
    *&v43 = "expected SSA operand";
    LOWORD(v46) = 259;
    v24 = 0;
    if (!mlir::detail::Parser::parseToken(a1, 6, &v43))
    {
      return v24 & 1;
    }

    v30 = *(a1 + 8);
    if (*(v30 + 56) == 5)
    {
      if ((a3 & 1) == 0)
      {
        v37[0] = "result number not allowed in argument list";
        v39 = 259;
        v32 = *(v30 + 64);
        goto LABEL_53;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber((v30 + 56), v27, v28, v29);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v37[0] = "invalid SSA value result number";
        v39 = 259;
        v32 = (*(*(a1 + 8) + 64) - (*(*(a1 + 8) + 56) == 0));
LABEL_53:
        mlir::detail::Parser::emitError(a1, v32, v37, &v43);
        v24 = v50 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
        return v24 & 1;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v33 = *(a1 + 8);
      *(v33 + 80) = *(v33 + 56);
      *(v33 + 96) = *(v33 + 72);
      mlir::Lexer::lexToken(&v43, (*(a1 + 8) + 8));
      v34 = *(a1 + 8);
      *(v34 + 56) = v43;
      *(v34 + 72) = v44;
    }

    v24 = 1;
    return v24 & 1;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v36 = v6 + 88 * v5;
    while (1)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
          ;
        }
      }

      else
      {
        i = *v6;
      }

      v10 = *v6 + 8 * v7;
      if (i != v10)
      {
        break;
      }

LABEL_45:
      v6 += 88;
      if (v6 == v36)
      {
        goto LABEL_46;
      }
    }

    v11 = *i;
    while (!*(v11 + 4))
    {
      do
      {
LABEL_40:
        v22 = i[1];
        ++i;
        v11 = v22;
        if (v22)
        {
          v23 = v11 + 1 == 0;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
      if (i == v10)
      {
        goto LABEL_45;
      }
    }

    v12 = *v11[1];
    v37[0] = 0;
    v37[1] = 0;
    v38 = 0;
    DWORD2(v43) = 0;
    v47 = 0;
    v48 = 1;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    *&v43 = &unk_286E79D28;
    v49 = v37;
    llvm::raw_ostream::SetUnbuffered(&v43);
    if ((~*(v12 + 8) & 7) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*(a1 + 336), *(a1 + 352), v13))
      {
LABEL_32:
        v42 = *(v12 + 8) & 0xFFFFFFFFFFFFFFF8;
        mlir::Type::print(&v42, &v43);
        if (*(v11 + 4) >= 2u)
        {
          v19 = v46;
          if ((v45 - v46) > 4)
          {
            *(v46 + 4) = 46;
            *v19 = 774774828;
            v46 += 5;
          }

          else
          {
            llvm::raw_ostream::write(&v43, ", ...", 5uLL);
          }
        }

        v20 = *v11;
        v21 = *(*(a1 + 8) + 160);
        *__p = *v37;
        v41 = v38;
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        (*(*v21 + 32))(v21, v11 + 5, v20, __p);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        llvm::raw_ostream::~raw_ostream(&v43);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }

        goto LABEL_40;
      }

      v14 = *(v13 + 8) & 7;
      if (v14 == 6)
      {
        v15 = v13 + 24 * *(v13 + 16) + 120;
      }

      else
      {
        v15 = v13 + 16 * v14 + 16;
      }

      v17 = &v43;
      llvm::raw_ostream::operator<<(&v43, *(*(*(v15 + 48) + 8) + 16), *(*(*(v15 + 48) + 8) + 24));
    }

    else
    {
      v16 = v46;
      if ((v45 - v46) > 4)
      {
        *(v46 + 4) = 35;
        *v16 = 543650401;
        v46 += 5;
        v17 = &v43;
      }

      else
      {
        v17 = llvm::raw_ostream::write(&v43, "arg #", 5uLL);
      }

      write_unsigned<unsigned long long>(v17, *(v12 + 24), 0, 0, 0);
    }

    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 1uLL)
    {
      *v18 = 8250;
      *(v17 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v17, ": ", 2uLL);
    }

    goto LABEL_32;
  }

LABEL_46:
  v24 = 0;
  return v24 & 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(uint64_t a1, int a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
    v5 = (-348639895 * ((v4 >> 47) ^ v4)) & (a2 - 1);
    v6 = *(a1 + 16 * v5);
    if (v6 == a3)
    {
      return a1 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (a2 - 1);
      v6 = *(a1 + 16 * v5);
      if (v6 == a3)
      {
        return a1 + 16 * v5;
      }
    }
  }

  return 0;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 32);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 32);
    }
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseSuccessors(llvm::SmallVectorImpl<mlir::Block *> &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v5 = 0;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(*(a1 + 8), v5);
  return v3;
}

uint64_t anonymous namespace::OperationParser::parseSuccessor(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  v4 = *(v3 + 56);
  if (v4 == 7)
  {
    v12 = *(v3 + 72);
    v24 = *(v3 + 64);
    v14 = *BlockInfoByName;
    if (!*BlockInfoByName)
    {
      operator new();
    }

    v15 = *(*(this + 1) + 152);
    if (v15)
    {
      mlir::AsmParserState::addUses(v15, v14, &v24, 1);
      v14 = *BlockInfoByName;
    }

    *a2 = v14;
    v16 = *(this + 1);
    *(v16 + 80) = *(v16 + 56);
    *(v16 + 96) = *(v16 + 72);
    mlir::Lexer::lexToken(&v25, (*(this + 1) + 8));
    v17 = *(this + 1);
    *(v17 + 56) = v25;
    *(v17 + 72) = v26;
    return 1;
  }

  else if (v4 == 2)
  {
    v5 = *(v3 + 72);
    if (!v5 || v5 == 1 && **(v3 + 64) == 94)
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

        v19 = &v7[4 * v8];
        if (i != v19)
        {
          v20 = *i;
LABEL_21:
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v20, i[1]);
          while (1)
          {
            i += 4;
            if (i == v19)
            {
              break;
            }

            v20 = *i;
            if (*i < 0xFFFFFFFFFFFFFFFELL)
            {
              v18 = 0;
              if (i != v19)
              {
                goto LABEL_21;
              }

              return v18;
            }
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v22 = "expected block name";
    v23 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v25, this, &v22);
    v18 = (v27 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  return v18;
}

void *anonymous namespace::OperationParser::getBlockInfoByName(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
  v7 = v12;
  if (v6)
  {
    return v7 + 2;
  }

  v13 = v12;
  v8 = *(v4 - 16);
  v9 = *(v4 - 8);
  if (4 * v8 + 4 >= 3 * v9)
  {
    v9 *= 2;
    goto LABEL_9;
  }

  if (v9 + ~v8 - *(v4 - 12) <= v9 >> 3)
  {
LABEL_9:
    v8 = *(v4 - 16);
    v7 = v13;
  }

  *(v4 - 16) = v8 + 1;
  if (*v7 != -1)
  {
    --*(v4 - 12);
  }

  *v7 = v11;
  v7[2] = 0;
  v7[3] = 0;
  return v7 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 32 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = v8;
      while (*v9 != -1)
      {
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v9 == -2;
        }

        if (v14)
        {
          v15 = v9;
        }

        else
        {
          v15 = v11;
        }

        v16 = v12 + 1;
        v17 = (v13 + v12) & v7;
        v9 = a1 + 32 * v17;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v13 = v17;
        v11 = v15;
        v19 = isEqual;
        result = 1;
        v12 = v16;
        if (v19)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 32 * v10;
      do
      {
        *result = xmmword_25D0A05E0;
        result += 4;
        v11 -= 32;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 32 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = 0;
          v14 = v17;
          *v17 = *v13;
          v14[1] = v13[1];
          ++*(a1 + 8);
        }

        v13 += 2;
        v12 -= 32;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 32 * v15;
    do
    {
      *result = xmmword_25D0A05E0;
      result += 4;
      v16 -= 32;
    }

    while (v16);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t anonymous namespace::OperationParser::parseBlock(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(this + 1);
  if (*a2 && *(v5 + 56) != 7)
  {
    *(this + 50) = v4;
    *(this + 51) = v4 + 32;
    while (1)
    {
      v19 = *(*(this + 1) + 56);
      if (v19 == 7 || v19 == 27)
      {
        break;
      }

      {
        return 0;
      }
    }

    return 1;
  }

  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v34 = "expected block name";
  v36 = 259;
  if (!mlir::detail::Parser::parseToken(this, 7, &v34))
  {
    return 0;
  }

  v9 = BlockInfoByName;
  BlockInfoByName[1] = v6;
  v10 = *BlockInfoByName;
  if (!*BlockInfoByName)
  {
    v17 = *a2;
    if (!*a2)
    {
      operator new();
    }

    v18 = 0;
    *BlockInfoByName = v17;
    goto LABEL_18;
  }

  v11 = *(this + 34) + 24 * *(this + 70);
  v12 = *(v11 - 8);
  if (v12)
  {
    v13 = *(v11 - 24);
    v14 = v12 - 1;
    v15 = (v12 - 1) & ((v10 >> 4) ^ (v10 >> 9));
    v16 = *(v13 + 16 * v15);
    if (v16 == v10)
    {
LABEL_7:
      *(v13 + 16 * v15) = -8192;
      *(v11 - 16) = vadd_s32(*(v11 - 16), 0x1FFFFFFFFLL);
      v17 = *BlockInfoByName;
      v18 = *BlockInfoByName;
LABEL_18:
      v21 = *(*(this + 1) + 152);
      if (v21)
      {
        mlir::AsmParserState::addDefinition(v21, v17, v6);
        v17 = *v9;
      }

      *a2 = v17;
      {
        v34 = "expected ':' after block name";
        v36 = 259;
        if (mlir::detail::Parser::parseToken(this, 15, &v34))
        {
          v22 = *a2 + 32;
          *(this + 50) = *a2;
          *(this + 51) = v22;
          do
          {
            v23 = *(*(this + 1) + 56);
            if (v23 == 7 || v23 == 27)
            {
              return 1;
            }
          }
        }
      }

      if (v18)
      {
        mlir::Block::dropAllDefinedValueUses(v18);
        mlir::Block::~Block(v18);
        MEMORY[0x25F891040]();
      }

      return 0;
    }

    v26 = 1;
    while (v16 != -4096)
    {
      v27 = v15 + v26++;
      v15 = v27 & v14;
      v16 = *(v13 + 16 * v15);
      if (v16 == v10)
      {
        goto LABEL_7;
      }
    }
  }

  v29[0] = "redefinition of block '";
  v30 = 259;
  mlir::detail::Parser::emitError(this, v6, v29, &v34);
  if (v34)
  {
    v33 = 261;
    v32[0] = v6;
    v32[1] = v7;
    mlir::Diagnostic::operator<<(v35, v32);
    if (v34)
    {
      mlir::Diagnostic::operator<<<2ul>(v35, "'");
    }
  }

  v25 = (v37 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
  return v25;
}

uint64_t anonymous namespace::OperationParser::popSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 34) + 24 * *(this + 70);
  v3 = *(v2 - 24);
  v4 = *(v2 - 16);
  *(v2 - 24) = 0;
  *(v2 - 16) = 0;
  v5 = *(v2 - 8);
  *(v2 - 8) = 0;
  LODWORD(v2) = *(this + 70) - 1;
  *(this + 70) = v2;
  MEMORY[0x25F891030](*(*(this + 34) + 24 * v2), 8);
  if (v4)
  {
    v50 = (v51 + 8);
    *&v51[0] = 0x400000000;
    v6 = v3;
    if (v5)
    {
      v7 = 16 * v5;
      v6 = v3;
      while ((v6->i64[0] | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v6;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_34;
        }
      }
    }

    v19 = &v3[v5];
    if (v6 != v19)
    {
      LODWORD(v20) = 0;
LABEL_20:
      v21 = *v6;
      if (v20 >= DWORD1(v51[0]))
      {
        v45 = *v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v51 + 8, v20 + 1, 16);
        v21 = v45;
        LODWORD(v20) = v51[0];
      }

      v50[v20] = vextq_s8(v21, v21, 8uLL);
      v20 = ++LODWORD(v51[0]);
      v22 = ((*(this + 52) + 16 * ((*(*(this + 52) + 44) >> 23) & 1) + ((*(*(this + 52) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 52) + 40);
      *(v21.i64[0] + 24) = v22 & 0xFFFFFFFFFFFFFFF8 | *(v21.i64[0] + 24) & 7;
      v23 = *v22;
      *(v21.i64[0] + 8) = *v22;
      *(v21.i64[0] + 16) = v22;
      *(v23 + 8) = v21.i64[0] + 8;
      *v22 = v21.i64[0] + 8;
      while (++v6 != v19)
      {
        if ((v6->i64[0] | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v6 != v19)
          {
            goto LABEL_20;
          }

          break;
        }
      }

      v24 = v50;
      if (v20 >= 2)
      {
        qsort(v50, v20, 0x10uLL, llvm::array_pod_sort_comparator<std::pair<char const*,mlir::Block *>>);
        v24 = v50;
        LODWORD(v20) = v51[0];
      }

      if (v20)
      {
        v25 = 16 * v20;
        do
        {
          v26 = *v24;
          v24 += 2;
          v47 = "reference to an undefined block";
          v48 = 259;
          mlir::detail::Parser::emitError(this, v26, &v47, v49);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
          v25 -= 16;
        }

        while (v25);
        v24 = v50;
      }

      if (v24 != (v51 + 8))
      {
        free(v24);
      }
    }

LABEL_34:
    v27 = 0;
  }

  else
  {
    v8 = *(this + 2);
    v9 = *(this + 6);
    v10 = v8 + 88 * v9;
    v11 = *(v10 - 56);
    if (v11 == 1)
    {
      v12 = v9 - 1;
      *(this + 6) = v12;
      v13 = v8 + 88 * v12;
      llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector(v13 + 24);
      if (*(v13 + 12))
      {
        v14 = *(v13 + 8);
        if (v14)
        {
          v15 = 0;
          v16 = 8 * v14;
          do
          {
            v17 = *(*v13 + v15);
            if (v17 != -8 && v17 != 0)
            {
            }

            v15 += 8;
          }

          while (v16 != v15);
        }
      }

      free(*v13);
    }

    else
    {
      v28 = *(v10 - 64) + 24 * v11;
      v50 = *(v28 - 24);
      v29 = v50;
      v51[0] = *(v28 - 16);
      v46 = v51[0];
      *(v28 - 8) = 0;
      *(v28 - 24) = 0;
      *(v28 - 16) = 0;
      LODWORD(v28) = *(v10 - 56) - 1;
      *(v10 - 56) = v28;
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(*(v10 - 64) + 24 * v28);
      v32 = v29;
      if (v46)
      {
        while (!*v32 || *v32 == -8)
        {
          ++v32;
        }
      }

      v34 = &v29->i64[v46];
      if (v32 != v34)
      {
        v35 = *v32;
        do
        {
          v37 = *v35;
          v36 = (v35 + 1);
          v38 = llvm::xxh3_64bits(v36, v37, v30, v31);
          Key = llvm::StringMapImpl::FindKey((v10 - 88), v36, v37, v38);
          if (Key != -1 && Key != *(v10 - 80))
          {
            v40 = *(*(v10 - 88) + 8 * Key);
            llvm::StringMapImpl::RemoveKey(v10 - 88, v40 + *(v10 - 68), *v40, v31);
          }

          do
          {
            v41 = v32[1];
            ++v32;
            v35 = v41;
            if (v41)
            {
              v42 = v35 + 1 == 0;
            }

            else
            {
              v42 = 1;
            }
          }

          while (v42);
        }

        while (v32 != v34);
      }

      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(&v50);
    }

    v43 = *(this + 54) - 1;
    *(this + 54) = v43;
    MEMORY[0x25F891030](*(*(this + 26) + 24 * v43), 8);
    v27 = 1;
  }

  MEMORY[0x25F891030](v3, 8);
  return v27;
}

uint64_t llvm::StringMap<llvm::SmallVector<anonymous namespace::OperationParser::ValueDefinition,1u>,llvm::MallocAllocator>::operator[](llvm::StringMapImpl *a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
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
  v15 = buffer + 5;
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
  for (i = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v10, v13)); ; ++i)
  {
    v11 = *i;
    if (*i && v11 != -8)
    {
      break;
    }
  }

  return v11 + 8;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0>(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v20 = 0;
  v21 = 0uLL;
  {
    return 0;
  }

  v25 = "expected ':' and type for SSA operand";
  v28 = 259;
  if (!mlir::detail::Parser::parseToken(v1, 15, &v25))
  {
    return 0;
  }

  v8 = mlir::detail::Parser::parseType(v1, v5, v6, v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = v20;
  if (*v2 != 1)
  {
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v1 + 1) + 8, v20);
    mlir::Block::addArgument(*v4, v9, EncodedSourceLocation);
  }

  v11 = *v3;
  v12 = (*v4)[6];
  if (v11 >= (((*v4)[7] - v12) >> 3))
  {
    v14 = "too many arguments specified in argument list";
    goto LABEL_16;
  }

  *v3 = v11 + 1;
  v13 = *(v12 + 8 * v11);
  if ((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) != v8)
  {
    v14 = "argument and block argument type mismatch";
LABEL_16:
    v23 = v14;
    v24 = 259;
    mlir::detail::Parser::emitError(v1, (*(*(v1 + 1) + 64) - (*(*(v1 + 1) + 56) == 0)), &v23, &v25);
    v18 = (v29 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    return v18;
  }

  {
    return 0;
  }

  v17 = *(*(v1 + 1) + 152);
  if (v17)
  {
    mlir::AsmParserState::addDefinition(v17, v13, v10);
  }

  v25 = v10;
  v26 = v21;
  v27 = v22;
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

void llvm::SmallVectorImpl<anonymous namespace::OperationParser::ValueDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 16);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 16 * v2), 16 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
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
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOperandList(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AsmParser::Delimiter,BOOL,int)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(a1[1]);
  v4 = *a1[2];
  v5 = *(*v2 + 704);

  return v5(v2, v3, v4);
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + 32 * v1);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (*(a1 + 8) + 1);
  *(a1 + 8) = v3;
  return *a1 + 32 * v3 - 32;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(uint64_t a1)
{
  memset(v7, 0, sizeof(v7));
  v2 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(a1, v7, 1);
  v3 = (*a1 + 32 * *(a1 + 8));
  v4 = v2[1];
  *v3 = *v2;
  v3[1] = v4;
  v5 = (*(a1 + 8) + 1);
  *(a1 + 8) = v5;
  return *a1 + 32 * v5 - 32;
}

void llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 5);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 32);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 32 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 5);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::Attribute &,llvm::StringRef,mlir::NamedAttrList &,mlir::AsmParser::Delimiter)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v12, 0, 24);
  if (((*(*v4 + 704))(v4, v12, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = 2;
  if (a2)
  {
    v5 = 1;
  }

  v6 = a1[v5];
  v7 = 1;
  v8 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v6, v12, 1);
  v9 = (*v6 + 32 * *(v6 + 8));
  v10 = v8[1];
  *v9 = *v8;
  v9[1] = v10;
  ++*(v6 + 8);
  return v7;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AffineExpr &)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v12, 0, 24);
  if (((*(*v4 + 704))(v4, v12, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = 2;
  if (a2)
  {
    v5 = 1;
  }

  v6 = a1[v5];
  v7 = 1;
  v8 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v6, v12, 1);
  v9 = (*v6 + 32 * *(v6 + 8));
  v10 = v8[1];
  *v9 = *v8;
  v9[1] = v10;
  ++*(v6 + 8);
  return v7;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseArgumentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,mlir::AsmParser::Delimiter,BOOL,BOOL)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = llvm::SmallVectorImpl<mlir::OpAsmParser::Argument>::emplace_back<>(a1[1]);
  v4 = *a1[2];
  v5 = *a1[3];
  v6 = *(*v2 + 752);

  return v6(v2, v3, v4, v5);
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::Argument>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + (v1 << 6));
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (*(a1 + 8) + 1);
  *(a1 + 8) = v3;
  return *a1 + (v3 << 6) - 64;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(uint64_t a1)
{
  memset(v9, 0, sizeof(v9));
  v2 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(a1, v9, 1);
  v3 = (*a1 + (*(a1 + 8) << 6));
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v3[2] = v2[2];
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return *a1 + (v7 << 6) - 64;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 64);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 64);
    }
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOptionalAssignmentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = llvm::SmallVectorImpl<mlir::OpAsmParser::Argument>::emplace_back<>(a1[1]);
  if (((*(*v2 + 752))(v2, v3, 0, 0) & 1) == 0 || ((*(*v2 + 136))(v2) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(a1[2]);
  return (*(*v2 + 704))(v2, v4, 1) & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseCustomOperation(llvm::ArrayRef<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>>)::$_2>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v11 = "invalid properties ";
  v12 = 259;
  emitDiag(v4, 2, &v11, &v16);
  if (v16)
  {
    v5 = **(a1 + 8);
    LODWORD(v13) = 0;
    v14 = v5;
    v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
    v7 = v18 + 24 * v19;
    v8 = *v6;
    *(v7 + 16) = *(v6 + 16);
    *v7 = v8;
    ++v19;
    if (v16)
    {
      mlir::Diagnostic::operator<<<9ul>(v17, " for op ");
      if (v16)
      {
        v9 = *(*(*(**(a1 + 16) + 48) + 8) + 16);
        v10 = *(*(*(**(a1 + 16) + 48) + 8) + 24);
        v15 = 261;
        v13 = v9;
        v14 = v10;
        mlir::Diagnostic::operator<<(v17, &v13);
        if (v16)
        {
          mlir::Diagnostic::operator<<<3ul>(v17, ": ");
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v16);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v7 = 257;
  emitDiag(v4, 2, v6, &v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v5 = *(a1 + 8);
      v7 = 260;
      v6[0] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_1>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v10 = "invalid properties ";
  v11 = 259;
  emitDiag(v4, 2, &v10, &v14);
  if (v14)
  {
    v5 = **(a1 + 8);
    LODWORD(v12[0]) = 0;
    v12[1] = v5;
    v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, v12, 1);
    v7 = v16 + 24 * v17;
    v8 = *v6;
    *(v7 + 16) = *(v6 + 16);
    *v7 = v8;
    ++v17;
    if (v14)
    {
      mlir::Diagnostic::operator<<<9ul>(v15, " for op ");
      if (v14)
      {
        v9 = *(a1 + 16);
        v13 = 260;
        v12[0] = v9;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<3ul>(v15, ": ");
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v14);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
}

void llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::OperationParser::finalize(void)::$_1>(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 24);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    goto LABEL_3;
  }

  v7 = *a1;
  if (*(*a1)[1] != v6[2])
  {
    goto LABEL_3;
  }

  v28 = *v7;
  v29 = *(*v7 + 360) + 24 * v6[1];
  v30 = *v29;
  v31 = v7[2];
  v32 = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v31, *(v29 + 8), *(v29 + 16), a4);
  if (*v31 + 8 * *(v31 + 8) == v32 || (v33 = *(*v32 + 8), (v38[0] = v33) == 0))
  {
    v37 = 257;
    mlir::detail::Parser::emitError(v28, v30, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<43ul>(v40, "operation location alias was never defined");
    }
  }

  else
  {
    v39 = v33;
    if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v39))
    {
      *(a2 + 24) = v33;
LABEL_3:
      v8 = *(a2 + 44);
      if ((v8 & 0x7FFFFF) == 0)
      {
        return 1;
      }

      v9 = ((a2 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v35 = v9 + 24 * (v8 & 0x7FFFFF);
      while (1)
      {
        for (i = *(v9 + 8); i != v9; i = *(i + 8))
        {
          v11 = i - 8;
          if (!i)
          {
            v11 = 0;
          }

          v13 = *(v11 + 48);
          v12 = *(v11 + 56);
          while (v13 != v12)
          {
            v14 = *v13;
            v15 = *(*v13 + 32);
            if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
            {
              v16 = *a1;
              if (*(*a1)[1] == v15[2])
              {
                v17 = *v16;
                v18 = *(*v16 + 360) + 24 * v15[1];
                v19 = *v18;
                v20 = v16[2];
                v21 = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v20, *(v18 + 8), *(v18 + 16), a4);
                if (*v20 + 8 * *(v20 + 8) == v21 || (v22 = *(*v21 + 8)) == 0)
                {
                  v37 = 257;
                  mlir::detail::Parser::emitError(v17, v19, v36, &v39);
                  if (v39)
                  {
                    mlir::Diagnostic::operator<<<43ul>(v40, "operation location alias was never defined");
                  }
                }

                else
                {
                  v39 = *(*v21 + 8);
                  if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v39))
                  {
                    *(v14 + 32) = v22;
                    goto LABEL_20;
                  }

                  v37 = 257;
                  mlir::detail::Parser::emitError(v17, v19, v36, &v39);
                  if (v39)
                  {
                    mlir::Diagnostic::operator<<<31ul>(v40, "expected location, but found '");
                    if (v39)
                    {
                      LODWORD(v38[0]) = 0;
                      v38[1] = v22;
                      v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v41, v38, 1);
                      v25 = v41 + 24 * v42;
                      v26 = *v24;
                      *(v25 + 16) = *(v24 + 16);
                      *v25 = v26;
                      ++v42;
                      if (v39)
                      {
                        mlir::Diagnostic::operator<<<2ul>(v40, "'");
                      }
                    }
                  }
                }

                v23 = v43;
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
                if (v23)
                {
                  return 0;
                }
              }
            }

LABEL_20:
            ++v13;
          }
        }

        v9 += 24;
        if (v9 == v35)
        {
          return 1;
        }
      }
    }

    v37 = 257;
    mlir::detail::Parser::emitError(v28, v30, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<31ul>(v40, "expected location, but found '");
      if (v39)
      {
        mlir::Diagnostic::operator<<<mlir::Attribute &>(v40, v38);
        if (v39)
        {
          mlir::Diagnostic::operator<<<2ul>(v40, "'");
        }
      }
    }
  }

  v34 = v43;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  if ((v34 & 1) == 0)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t **llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v13 = buffer;
  v14 = buffer + 2;
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  *(v14 + a3) = 0;
  *v13 = a3;
  v13[1] = 0;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseFileMetadataDictionary(void)::$_0>(mlir::detail::Parser **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*(*a1 + 1) + 64);
  v16 = 0;
  v17 = 0;
  if (!mlir::detail::Parser::parseOptionalKeyword(v1, &v16))
  {
    v14[0] = "expected identifier key in file metadata dictionary";
    v15 = 259;
    v6 = (*(*(v1 + 1) + 64) - (*(*(v1 + 1) + 56) == 0));
    v7 = v1;
LABEL_24:
    mlir::detail::Parser::emitError(v7, v6, v14, v18);
    v8 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    return v8;
  }

  v18[0] = "expected ':'";
  v19 = 259;
  if (mlir::detail::Parser::parseToken(v1, 15, v18))
  {
    if (v17 == 18)
    {
      if (*v16 != 0x6C616E7265747865 || *(v16 + 8) != 0x6372756F7365725FLL || *(v16 + 16) != 29541)
      {
        goto LABEL_23;
      }

      v18[0] = v1;
    }

    else
    {
      if (v17 != 17 || (*v16 == 0x5F7463656C616964 ? (v3 = *(v16 + 8) == 0x656372756F736572) : (v3 = 0), v3 ? (v4 = *(v16 + 16) == 115) : (v4 = 0), !v4))
      {
LABEL_23:
        v13 = 1283;
        v12[0] = "unknown key '";
        v12[2] = v16;
        v12[3] = v17;
        v14[0] = v12;
        v14[2] = "' in file metadata dictionary";
        v15 = 770;
        v7 = v1;
        v6 = v2;
        goto LABEL_24;
      }

      v18[0] = v1;
    }
  }

  return 0;
}

BOOL anonymous namespace::TopLevelOperationParser::parseResourceFileMetadata(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v5[0] = "expected '{'";
  v6 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 20, v5))
  {
    return 0;
  }

  v5[0] = a1;
  v5[1] = v7;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseResourceFileMetadata(llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>)::$_0>(mlir::detail::Parser **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(*a1 + 1) + 64);
  v8 = 0;
  v9 = 0;
  if (mlir::detail::Parser::parseOptionalKeyword(v2, &v8))
  {
    v10[0] = "expected ':'";
    v11 = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, v10) && (v6[0] = "expected '{'", v7 = 259, mlir::detail::Parser::parseToken(v2, 20, v6)))
    {
      return (*a1[1])(*(a1[1] + 1), v8, v9, v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6[0] = "expected identifier key for 'resource' entry";
    v7 = 259;
    mlir::detail::Parser::emitError(v2, (*(*(v2 + 1) + 64) - (*(*(v2 + 1) + 56) == 0)), v6, v10);
    v4 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  return v4;
}

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, const void *a2, size_t a3, char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(***(*a1 + 1), a2, a3, a4);
  if (!Dialect)
  {
    v15 = 1283;
    v14[0] = "dialect '";
    v14[2] = a2;
    v14[3] = a3;
    v16[0] = v14;
    v16[2] = "' is unknown";
    v17 = 770;
    mlir::detail::Parser::emitError(v7, a4, v16, &v18);
LABEL_5:
    v10 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return v10;
  }

  v9 = Dialect;
  if (!mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(Dialect))
  {
    v15 = 257;
    mlir::detail::Parser::emitError(v7, (*(*(v7 + 1) + 64) - (*(*(v7 + 1) + 56) == 0)), v14, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<44ul>(v19, "unexpected 'resource' section for dialect '");
      if (v18)
      {
        v12 = *(v9 + 8);
        v13 = *(v9 + 16);
        v17 = 261;
        v16[0] = v12;
        v16[1] = v13;
        mlir::Diagnostic::operator<<(v19, v16);
        if (v18)
        {
          mlir::Diagnostic::operator<<<2ul>(v19, "'");
        }
      }
    }

    goto LABEL_5;
  }

  v16[0] = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v9);
  v18 = v7;
  v19[0] = v16;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 1) + 64);
  memset(&v20, 0, sizeof(v20));
  mlir::detail::Parser::parseResourceHandle(v2, *a1[1], &v20, &v17);
  if (v19 == 1 && (*__p = "expected ':'", LOWORD(v13) = 259, mlir::detail::Parser::parseToken(v2, 15, __p)))
  {
    v4 = *(v2 + 1);
    v17 = *(v4 + 56);
    v18 = *(v4 + 72);
    v5 = v18;
    *(v4 + 80) = v17;
    *(v4 + 96) = v5;
    mlir::Lexer::lexToken(__p, (*(v2 + 1) + 8));
    v6 = *(v2 + 1);
    *(v6 + 56) = *__p;
    *(v6 + 72) = *&__p[16];
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = v20;
    }

    *&__p[8] = *&v10.__r_.__value_.__l.__data_;
    v9 = v10.__r_.__value_.__r.__words[2];
    *__p = &unk_286E80E00;
    memset(&v10, 0, sizeof(v10));
    v12 = v9;
    v13 = v3;
    v14 = v17;
    v15 = v18;
    v16 = v2;
    v7 = (*(**a1[1] + 48))(*a1[1], __p);
    *__p = &unk_286E80E00;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*&__p[8]);
    }
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v7;
}

void anonymous namespace::ParsedResourceEntry::~ParsedResourceEntry(void **this)
{
  *this = &unk_286E80E00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286E80E00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x25F891040);
}

char *anonymous namespace::ParsedResourceEntry::getKey(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v3 = *(this + 1);
  v1 = this + 8;
  v2 = v3;
  if (v1[23] >= 0)
  {
    return v1;
  }

  return v2;
}

void anonymous namespace::ParsedResourceEntry::emitError(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  v3 = *(this + 4);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t anonymous namespace::ParsedResourceEntry::getKind(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v2 = *(this + 10);
  result = 1;
  if (v2 != 60 && v2 != 80)
  {
    if (*(this + 7) >= 3uLL)
    {
      v4 = bswap32(**(this + 6) | (*(*(this + 6) + 2) << 16));
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
  v14[26] = *MEMORY[0x277D85DE8];
  v1 = *(this + 10);
  if (v1 == 60)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 80)
  {
    v2 = 1;
LABEL_5:
    v3 = 1;
    return v2 | (v3 << 8);
  }

  v4 = *(this + 8);
  v5 = *(this + 6);
  std::operator+<char>();
  v6 = std::string::append(&v9, "'");
  v7 = v6->__r_.__value_.__r.__words[2];
  *__p = *&v6->__r_.__value_.__l.__data_;
  v11 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v13 = 260;
  v12 = __p;
  mlir::detail::Parser::emitError(v4, v5, &v12, v14);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v2 = 0;
  v3 = 0;
  return v2 | (v3 << 8);
}

{
  v12[25] = *MEMORY[0x277D85DE8];
  if (*(this + 6) == 1)
  {
    LOBYTE(v11) = 0;
    if (v2)
    {
      v3 = v11;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = *(*(this + 4) + 24);
    v10 = 257;
    emitDiag(v4, 2, v9, &v11);
    if (v11)
    {
      mlir::Diagnostic::operator<<<45ul>(v12, "expected a BOOL resource entry, but found a ");
      if (v11)
      {
        v5 = *(this + 6);
        v6 = qword_25D0A02C0[v5];
        v7 = (&off_2799BECA0)[v5];
        v10 = 261;
        v9[0] = v7;
        v9[1] = v6;
        mlir::Diagnostic::operator<<(v12, v9);
        if (v11)
        {
          mlir::Diagnostic::operator<<<15ul>(v12, " entry instead");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
    v3 = 0;
    v2 = 0;
  }

  return v3 | (v2 << 8);
}

void anonymous namespace::ParsedResourceEntry::parseAsString(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, std::string *a2@<X8>)
{
  v12[26] = *MEMORY[0x277D85DE8];
  if (*(this + 10) == 11)
  {
    mlir::Token::getStringValue((this + 40), a2);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v3 = *(this + 8);
    v4 = *(this + 6);
    std::operator+<char>();
    v5 = std::string::append(&v7, "'");
    v6 = v5->__r_.__value_.__r.__words[2];
    *__p = *&v5->__r_.__value_.__l.__data_;
    v9 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v11 = 260;
    v10 = __p;
    mlir::detail::Parser::emitError(v3, v4, &v10, v12);
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, size_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  if (v7 == 11)
  {
    mlir::Token::getHexStringValue(&v33, v6);
    v10 = v36;
    if (v36)
    {
      v11 = v35;
      if ((v35 & 0x8000000000000000) != 0)
      {
        if (v34 >= 4)
        {
          v12 = v33;
          goto LABEL_19;
        }
      }

      else if (v35 > 3)
      {
        v12 = &v33;
LABEL_19:
        v21 = *v12;
        if ((v21 & (v21 - 1)) == 0)
        {
          v22 = v34;
          if (v35 >= 0)
          {
            v22 = v35;
          }

          v23 = v22 - 4;
          if (v22 > 4)
          {
            if (v35 >= 0)
            {
              v27 = &v33;
            }

            else
            {
              v27 = v33;
            }

            a2(__dst, a3, v23, v21);
            memcpy(__dst[0], v27 + 4, v23);
            *a4 = *__dst;
            *(a4 + 16) = v38[0];
            v24 = a4 + 24;
          }

          else
          {
            v39 = 0u;
            memset(v38, 0, sizeof(v38));
            *__dst = 0u;
            *(a4 + 8) = 0;
            *(a4 + 16) = 0;
            *a4 = 0;
            v24 = a4 + 24;
          }

          llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v24, &v38[1]);
          *(a4 + 56) = BYTE8(v39);
          v10 = 1;
          *(a4 + 64) = 1;
          mlir::AsmResourceBlob::~AsmResourceBlob(__dst);
          goto LABEL_12;
        }

        v17 = *(a1 + 64);
        v18 = *(a1 + 48);
        std::operator+<char>();
        v25 = std::string::append(&v28, "' to encode alignment in first 4 bytes, but got non-power-of-2 value: ");
        v26 = v25->__r_.__value_.__r.__words[2];
        *__p = *&v25->__r_.__value_.__l.__data_;
        v30 = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        v31[0] = __p;
        v31[2] = v21;
        v32 = 2308;
        goto LABEL_25;
      }

      v17 = *(a1 + 64);
      v18 = *(a1 + 48);
      std::operator+<char>();
      v19 = std::string::append(&v28, "' to encode alignment in first 4 bytes");
      v20 = v19->__r_.__value_.__r.__words[2];
      *__p = *&v19->__r_.__value_.__l.__data_;
      v30 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v32 = 260;
      v31[0] = __p;
LABEL_25:
      mlir::detail::Parser::emitError(v17, v18, v31, __dst);
      *a4 = 0;
      *(a4 + 64) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    LOBYTE(v33) = 0;
  }

  v13 = *(a1 + 64);
  v14 = *(a1 + 48);
  std::operator+<char>();
  v15 = std::string::append(&v28, "'");
  v16 = v15->__r_.__value_.__r.__words[2];
  *__p = *&v15->__r_.__value_.__l.__data_;
  v30 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v32 = 260;
  v31[0] = __p;
  mlir::detail::Parser::emitError(v13, v14, v31, __dst);
  *a4 = 0;
  *(a4 + 64) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v11 = v35;
LABEL_12:
  if ((v10 & 1) != 0 && v11 < 0)
  {
    operator delete(v33);
  }
}

{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v6 = *(*(a1 + 32) + 24);
    v23 = 257;
    emitDiag(v6, 2, &__src, __dst);
    if (__dst[0])
    {
      mlir::Diagnostic::operator<<<45ul>(&__dst[1], "expected a blob resource entry, but found a ");
      if (__dst[0])
      {
        v7 = *(a1 + 24);
        v8 = qword_25D0A02C0[v7];
        v9 = (&off_2799BECA0)[v7];
        v23 = 261;
        __src = v9;
        v22 = v8;
        mlir::Diagnostic::operator<<(&__dst[1], &__src);
        if (__dst[0])
        {
          mlir::Diagnostic::operator<<<15ul>(&__dst[1], " entry instead");
        }
      }
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  }

  else
  {
    __src = 0;
    v22 = 0;
    *v20 = 0;
    v12 = *(a1 + 32);
    {
      v14 = *(a1 + 48);
      v15 = *v14;
      if (*v14)
      {
        v16 = __src;
        v17 = v22;
        v18 = v14[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        *&v24 = v15;
        *(&v24 + 1) = v18;
        mlir::UnmanagedAsmResourceBlob::allocateWithAlign(__dst, v16, v17, v13, &v24);
        *a4 = *__dst;
        *(a4 + 16) = v27;
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a4 + 24, v28);
        *(a4 + 56) = v29;
        *(a4 + 64) = 1;
        mlir::AsmResourceBlob::~AsmResourceBlob(__dst);
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(&v24);
      }

      else
      {
        v19 = v22;
        a2(__dst, a3, v22, v13);
        memcpy(__dst[0], __src, v19);
        *a4 = *__dst;
        *(a4 + 16) = v27;
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a4 + 24, v28);
        *(a4 + 56) = v29;
        *(a4 + 64) = 1;
        mlir::AsmResourceBlob::~AsmResourceBlob(__dst);
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
    }
  }
}

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, void *a2, const unsigned __int8 *a3, char *a4)
{
  v14[25] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  ResourceParser = mlir::ParserConfig::getResourceParser(**(*a1 + 1), a2, a3, a4);
  if (!ResourceParser)
  {
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v7 + 1) + 8, a4);
    v12 = 257;
    emitDiag(EncodedSourceLocation, 1, v11, &v13);
    if (v13)
    {
      mlir::Diagnostic::operator<<<42ul>(v14, "ignoring unknown external resources for '");
      if (v13)
      {
        v12 = 261;
        v11[0] = a2;
        v11[1] = a3;
        mlir::Diagnostic::operator<<(v14, v11);
        if (v13)
        {
          mlir::Diagnostic::operator<<<2ul>(v14, "'");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v13 = v7;
  v14[0] = &ResourceParser;
}

uint64_t mlir::ParserConfig::getResourceParser(uint64_t a1, void *a2, const unsigned __int8 *a3, unint64_t *a4)
{
  v8 = a2;
  v9 = a3;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((a1 + 16), &v8, a3, a4);
  if (v5 && v5 != *(a1 + 16) + 24 * *(a1 + 32))
  {
    return *(v5 + 16);
  }

  result = *(a1 + 40);
  if (result)
  {
    return mlir::FallbackAsmResourceMap::getParserFor(result, v8, v9, v6);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = v4 - 1;
  v8 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
  v9 = v6 + 24 * v8;
  if ((llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8)) & 1) == 0)
  {
    v10 = 1;
    while (*v9 != -1)
    {
      v11 = v10 + 1;
      v8 = (v8 + v10) & v7;
      v9 = v6 + 24 * v8;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8));
      v10 = v11;
      if (isEqual)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(*a1 + 1) + 64);
  memset(&v15, 0, sizeof(v15));
  if (mlir::detail::Parser::parseOptionalKeywordOrString(v2, &v15))
  {
    *__p = "expected ':'";
    LOWORD(v18) = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, __p))
    {
      v4 = *(v2 + 1);
      v12 = *(v4 + 56);
      v13 = *(v4 + 72);
      v5 = v13;
      *(v4 + 80) = v12;
      *(v4 + 96) = v5;
      mlir::Lexer::lexToken(__p, (*(v2 + 1) + 8));
      v6 = *(v2 + 1);
      *(v6 + 56) = *__p;
      *(v6 + 72) = *&__p[16];
      v7 = a1[1];
      if (*v7)
      {
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v11, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
          v7 = a1[1];
        }

        else
        {
          v11 = v15;
        }

        v19 = v12;
        v20 = v13;
        v21 = v2;
        *__p = &unk_286E80E00;
        v9 = v11.__r_.__value_.__r.__words[2];
        *&__p[8] = *&v11.__r_.__value_.__l.__data_;
        memset(&v11, 0, sizeof(v11));
        v17 = v9;
        v18 = v3;
        v8 = (*(**v7 + 16))(*v7, __p);
        *__p = &unk_286E80E00;
        if (SHIBYTE(v17) < 0)
        {
          operator delete(*&__p[8]);
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *&v12 = "expected identifier key for 'external_resources' entry";
    v14 = 259;
    mlir::detail::Parser::emitError(v2, (*(*(v2 + 1) + 64) - (*(*(v2 + 1) + 56) == 0)), &v12, __p);
    v8 = (v22 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t *llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 4;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = v4 + 8;
      v19 = 32 * v3;
      do
      {
        v20 = *(v18 - 8);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *(v18 - 8);
          v21[1] = *v18;
          *(v21 + 1) = *(v18 + 8);
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          ++*(a1 + 8);
          llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::~StringMap(v18);
        }

        v18 += 32;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 4;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 8;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::Token::getUnsignedIntegerValue(mlir::Token *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = 10;
  if (*(this + 2) >= 2uLL)
  {
    if (*(*(this + 1) + 1) == 120)
    {
      v6 = 0;
    }

    else
    {
      v6 = 10;
    }
  }

  v9 = v4;
  v10 = v5;
  v8 = 0;
  if (llvm::StringRef::getAsInteger<unsigned int>((this + 8), v6, &v8, a4))
  {
    return 0;
  }

  else
  {
    return v8 | 0x100000000;
  }
}

uint64_t llvm::StringRef::getAsInteger<unsigned int>(__int128 *a1, llvm::StringRef *a2, _DWORD *a3, unint64_t *a4)
{
  v7 = 0;
  v8 = *a1;
  v5 = llvm::consumeUnsignedInteger(&v8, a2, &v7, a4);
  result = 1;
  if ((v5 & 1) == 0 && !*(&v8 + 1) && !HIDWORD(v7))
  {
    result = 0;
    *a3 = v7;
  }

  return result;
}

unint64_t mlir::Token::getUInt64IntegerValue(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = 10;
  if (a2 >= 2)
  {
    if (*(a1 + 1) == 120)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }
  }

  v12 = v4;
  v13 = v5;
  v9 = 0;
  v10 = a1;
  v11 = a2;
  if ((llvm::consumeUnsignedInteger(&v10, v7, &v9, a4) & 1) != 0 || v11)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

unint64_t mlir::Token::getIntTypeBitwidth(mlir::Token *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = 1;
  if (*v4 != 105)
  {
    v6 = 2;
  }

  if (v5 < v6)
  {
    v6 = *(this + 2);
  }

  v8 = 0;
  v9 = &v4[v6];
  v10 = v5 - v6;
  if ((llvm::consumeUnsignedInteger(&v9, 0xA, &v8, a4) & 1) != 0 || v10 || HIDWORD(v8))
  {
    return 0;
  }

  else
  {
    return v8 | 0x100000000;
  }
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
      v7 = v6 + 1;
      LODWORD(v8) = *(v4 + v6);
      if (v8 == 92)
      {
        v9 = v6 + 2;
        v8 = *(v4 + v7);
        if (*(v4 + v7) <= 0x6Du)
        {
          if (v8 == 34 || v8 == 92)
          {
            goto LABEL_19;
          }

LABEL_24:
          v10 = *(v4 + v9);
          v9 = v6 + 3;
          LOWORD(v8) = llvm::hexDigitValue(char)::LUT[v10] | (16 * llvm::hexDigitValue(char)::LUT[v8]);
          goto LABEL_19;
        }

        if (v8 == 116)
        {
          LOBYTE(v8) = 9;
          goto LABEL_19;
        }

        if (v8 != 110)
        {
          goto LABEL_24;
        }

        LOBYTE(v8) = 10;
      }

      else
      {
        v9 = v6 + 1;
      }

LABEL_19:
      std::string::push_back(a2, v8);
      v6 = v9;
    }

    while (v9 != v5);
  }
}

void mlir::Token::getHexStringValue(uint64_t *__return_ptr a1@<X8>, mlir::Token *this@<X0>)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  v5 = v3 != 0;
  v6 = v3 - v5;
  if (v6 >= v6 - 1)
  {
    --v6;
  }

  memset(&v16, 0, sizeof(v16));
  v7 = v6 - 2;
  if (v6 < 2 || *(v4 + v5) != 30768 || (v6 & 1) != 0)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else if (v6 == 2 || ((std::string::resize(&v16, (v6 - 1) >> 1, 0), (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v8 = &v16) : (v8 = v16.__r_.__value_.__r.__words[0]), v7 == 1))
  {
LABEL_18:
    *a1 = v16;
    *(a1 + 24) = 1;
  }

  else
  {
    v9 = -(v7 >> 1);
    v10 = (v5 + v4 + 3);
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
    *a1 = 0;
    *(a1 + 24) = 0;
    if (v15 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void mlir::Token::getSymbolReference(mlir::Token *this@<X0>, std::string *a2@<X8>)
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
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&a2->__r_.__value_.__s + 23) = v5;
    if (v3 >= 2)
    {
      memmove(a2, v4, v5);
    }

    a2->__r_.__value_.__s.__data_[v5] = 0;
  }
}

unint64_t mlir::Token::getHashIdentifierNumber(mlir::Token *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4)
  {
    ++v5;
  }

  v7 = 0;
  v8 = v5;
  v9 = v4 - (v4 != 0);
  if ((llvm::consumeUnsignedInteger(&v8, 0xA, &v7, a4) & 1) != 0 || v9 || HIDWORD(v7))
  {
    return 0;
  }

  else
  {
    return v7 | 0x100000000;
  }
}

uint64_t mlir::detail::Parser::parseOptionalType(mlir::detail::Parser *this, mlir::Type *a2)
{
  v3 = *(*(this + 1) + 56);
  v4 = (v3 - 8) > 0x3E || ((1 << (v3 - 8)) & 0x490FFFF140002011) == 0;
  if (v4 && ((v9 = v3 - 77, v10 = v9 > 7, v11 = (1 << v9) & 0x93, !v10) ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = mlir::detail::Parser::parseType(this);
    *a2 = v5;
    v6 = v5 != 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t mlir::detail::Parser::parseType(mlir::detail::Parser *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(*(this + 1) + 56) == 21)
  {
    return mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    return mlir::detail::Parser::parseNonFunctionType(this, a2, a3, a4);
  }
}

uint64_t mlir::detail::Parser::parseFunctionType(mlir::detail::Parser *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x400000000;
  v9 = v11;
  v10 = 0x400000000;
  if (mlir::detail::Parser::parseTypeListParens(this, &v12) && (*&v7[0] = "expected '->' in function type", v8 = 259, mlir::detail::Parser::parseToken(this, 13, v7)) && (mlir::detail::Parser::parseFunctionResultTypes(this, &v9, v2, v3) & 1) != 0)
  {
    v4 = *this;
    *&v7[0] = v12 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v7[0] + 1) = v13;
    *&v15 = v9 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v15 + 1) = v10;
    v5 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v4, v7, &v15);
  }

  else
  {
    v5 = 0;
  }

  if (v9 != v11)
  {
    free(v9);
  }

  if (v12 != v14)
  {
    free(v12);
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseNonFunctionType(mlir::detail::Parser *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 <= 37)
  {
    switch(v7)
    {
      case 2:
        if (!*(v5 + 72) || **(v5 + 64) != 33)
        {
          (*(**(v5 + 160) + 72))(*(v5 + 160), *(v5 + 104) + 24, a3, a4);
          return 0;
        }

        break;
      case 8:
        break;
      case 12:
        IntTypeBitwidth = mlir::Token::getIntTypeBitwidth(v6, a2, a3, a4);
        if ((IntTypeBitwidth & 0x100000000) == 0)
        {
          *&v104 = "invalid integer width";
          v106 = 259;
          mlir::detail::Parser::emitError(this, (*(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0)), &v104, v98);
          v11 = v98;
LABEL_109:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
          return 0;
        }

        v59 = IntTypeBitwidth;
        if (BYTE3(IntTypeBitwidth))
        {
          v60 = *(*(this + 1) + 64);
          v100 = "integer bitwidth is limited to ";
          v103 = 259;
          mlir::detail::Parser::emitError(this, v60, &v100, &v104);
          if (v104)
          {
            mlir::Diagnostic::append<unsigned int const&>(&v104 + 8);
            if (v104)
            {
              mlir::Diagnostic::operator<<<6ul>(&v104 + 8, " bits");
            }
          }

LABEL_108:
          v11 = &v104;
          goto LABEL_109;
        }

        v79 = *(this + 1);
        v80 = *(v79 + 72);
        v81 = **(v79 + 64);
        if (v81 == 115)
        {
          v82 = 1;
        }

        else
        {
          v82 = 2;
        }

        if (v81 == 105)
        {
          v83 = 0;
        }

        else
        {
          v83 = v82;
        }

        *(v79 + 80) = *(v79 + 56);
        *(v79 + 96) = v80;
        mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
        v84 = *(this + 1);
        *(v84 + 56) = v104;
        *(v84 + 72) = v105[0];
        return mlir::IntegerType::get(***(this + 1), v59, v83);
      default:
LABEL_54:
        *&v104 = "expected non-function type";
        v106 = 259;
        mlir::detail::Parser::emitWrongTokenError(v99, this, &v104);
        v11 = v99;
        goto LABEL_109;
    }

    return mlir::detail::Parser::parseExtendedType(this);
  }

  switch(v7)
  {
    case '&':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v8 = *(this + 1);
      *(v8 + 56) = v104;
      *(v8 + 72) = v105[0];
      return *(**this + 416);
    case '(':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v23 = *(this + 1);
      *(v23 + 56) = v104;
      *(v23 + 72) = v105[0];
      *&v104 = "expected '<' in complex type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v104))
      {
        return 0;
      }

      v24 = *(*(this + 1) + 64);
      v25 = mlir::detail::Parser::parseType(this);
      if (!v25)
      {
        return 0;
      }

      v26 = v25;
      *&v104 = "expected '>' in complex type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 19, &v104))
      {
        return 0;
      }

      v27 = *v26;
      v28 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      v29 = mlir::detail::InterfaceMap::lookup((v27 + 1), v28);
      v30 = *v26;
      if (v29 || v30[17] == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        *&v104 = v26;
        return mlir::detail::TypeUniquer::get<mlir::ComplexType,mlir::Type &>(*(*v30 + 4), &v104);
      }

      v100 = "invalid element type for complex";
      v103 = 259;
      mlir::detail::Parser::emitError(this, v24, &v100, &v104);
      goto LABEL_108;
    case ',':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v33 = *(this + 1);
      *(v33 + 56) = v104;
      *(v33 + 72) = v105[0];
      return *(**this + 424);
    case '-':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v18 = *(this + 1);
      *(v18 + 56) = v104;
      *(v18 + 72) = v105[0];
      return *(**this + 440);
    case '.':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v19 = *(this + 1);
      *(v19 + 56) = v104;
      *(v19 + 72) = v105[0];
      return *(**this + 448);
    case '/':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v37 = *(this + 1);
      *(v37 + 56) = v104;
      *(v37 + 72) = v105[0];
      return *(**this + 456);
    case '0':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v41 = *(this + 1);
      *(v41 + 56) = v104;
      *(v41 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      goto LABEL_47;
    case '1':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v20 = *(this + 1);
      *(v20 + 56) = v104;
      *(v20 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      goto LABEL_47;
    case '2':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v39 = *(this + 1);
      *(v39 + 56) = v104;
      *(v39 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      goto LABEL_47;
    case '3':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v34 = *(this + 1);
      *(v34 + 56) = v104;
      *(v34 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      goto LABEL_47;
    case '4':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v36 = *(this + 1);
      *(v36 + 56) = v104;
      *(v36 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      goto LABEL_47;
    case '5':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v38 = *(this + 1);
      *(v38 + 56) = v104;
      *(v38 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      goto LABEL_47;
    case '6':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v56 = *(this + 1);
      *(v56 + 56) = v104;
      *(v56 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      goto LABEL_47;
    case '7':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v32 = *(this + 1);
      *(v32 + 56) = v104;
      *(v32 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
      goto LABEL_47;
    case '8':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v35 = *(this + 1);
      *(v35 + 56) = v104;
      *(v35 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      goto LABEL_47;
    case '9':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v31 = *(this + 1);
      *(v31 + 56) = v104;
      *(v31 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      goto LABEL_47;
    case ':':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v55 = *(this + 1);
      *(v55 + 56) = v104;
      *(v55 + 72) = v105[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id;
LABEL_47:
      *&v104 = v22;
      return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v21 + 232), &v104);
    case ';':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v40 = *(this + 1);
      *(v40 + 56) = v104;
      *(v40 + 72) = v105[0];
      return *(**this + 464);
    case '@':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v17 = *(this + 1);
      *(v17 + 56) = v104;
      *(v17 + 72) = v105[0];
      return *(**this + 472);
    case 'C':
      v51 = *(v5 + 64);
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v52 = *(this + 1);
      *(v52 + 56) = v104;
      *(v52 + 72) = v105[0];
      *&v104 = "expected '<' in memref type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v104))
      {
        return 0;
      }

      v100 = v102;
      v101 = 0x400000000;
      v53 = *(this + 1);
      if (*(v53 + 56) == 30)
      {
        *(v53 + 80) = *(v53 + 56);
        *(v53 + 96) = *(v53 + 72);
        mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
        v54 = *(this + 1);
        *(v54 + 56) = v104;
        *(v54 + 72) = v105[0];
        v92 = 1;
        if ((mlir::detail::Parser::parseXInDimensionList(this) & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v92 = 0;
        if (!mlir::detail::Parser::parseDimensionListRanked(this, &v100, 1, 1))
        {
          goto LABEL_115;
        }
      }

      v70 = *(*(this + 1) + 64);
      v71 = mlir::detail::Parser::parseType(this);
      if (!v71)
      {
        goto LABEL_115;
      }

      v72 = v71;
      *&v104 = v71;
      if (!mlir::Type::isIntOrFloat(&v104))
      {
        v73 = *v72;
        v74 = *(*v72 + 136);
        if (v74 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
        {
          v75 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v73 + 8, v75))
          {
            v93 = "invalid memref element type";
            v96 = 259;
            v69 = this;
            v68 = v70;
            goto LABEL_114;
          }
        }
      }

      v90 = 0;
      v91 = 0;
      v89 = 0;
      v93 = this;
      *&v94 = &v90;
      *(&v94 + 1) = &v89;
      v95 = &v92;
      v76 = *(this + 1);
      if (*(v76 + 56) == 19)
      {
        *(v76 + 80) = *(v76 + 56);
        *(v76 + 96) = *(v76 + 72);
        mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
        v77 = *(this + 1);
        *(v77 + 56) = v104;
        *(v77 + 72) = v105[0];
LABEL_88:
        v97 = v51;
        *&v104 = this;
        *(&v104 + 1) = &v97;
        if (v92 == 1)
        {
          Checked = mlir::UnrankedMemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>, &v104, v72, v89);
        }

        else
        {
          Checked = mlir::MemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>, &v104, v100, v101, v72, v90, v91, v89);
        }

        goto LABEL_124;
      }

      *&v104 = "expected ',' or '>' in memref type";
      v106 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v104) && mlir::detail::Parser::parseCommaSeparatedListUntil(this, 19, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>, &v93, 0))
      {
        goto LABEL_88;
      }

LABEL_115:
      v9 = 0;
      goto LABEL_116;
    case 'F':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v58 = *(this + 1);
      *(v58 + 56) = v104;
      *(v58 + 72) = v105[0];
      return mlir::Builder::getNoneType(this);
    case 'M':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v42 = *(this + 1);
      *(v42 + 56) = v104;
      *(v42 + 72) = v105[0];
      *&v104 = "expected '<' in tensor type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v104))
      {
        return 0;
      }

      v100 = v102;
      v101 = 0x400000000;
      v43 = *(this + 1);
      v44 = *(v43 + 56);
      if (v44 == 30)
      {
        *(v43 + 80) = *(v43 + 56);
        *(v43 + 96) = *(v43 + 72);
        mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
        v45 = *(this + 1);
        *(v45 + 56) = v104;
        *(v45 + 72) = v105[0];
        if ((mlir::detail::Parser::parseXInDimensionList(this) & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      else if (!mlir::detail::Parser::parseDimensionListRanked(this, &v100, 1, 1))
      {
        goto LABEL_115;
      }

      v63 = *(*(this + 1) + 64);
      v64 = mlir::detail::Parser::parseType(this);
      v90 = 0;
      v65 = *(this + 1);
      if (*(v65 + 56) == 16)
      {
        *(v65 + 80) = *(v65 + 56);
        *(v65 + 96) = *(v65 + 72);
        mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
        v66 = *(this + 1);
        *(v66 + 56) = v104;
        *(v66 + 72) = v105[0];
        v67 = mlir::detail::Parser::parseOptionalAttribute(this, &v90, 0);
        if ((v67 & 0x100) != 0)
        {
          if ((v67 & 1) == 0)
          {
            goto LABEL_115;
          }

          v85 = v90;
          if (v90)
          {
            v86 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(v90);
            v85 = v87;
          }

          else
          {
            v86 = 0;
          }

          if (v86)
          {
            *&v104 = this;
            if (((*v85)(v85, v86, v100, v101, v64, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>, &v104) & 1) == 0)
            {
              goto LABEL_115;
            }
          }
        }
      }

      if (!v64)
      {
        goto LABEL_115;
      }

      *&v104 = "expected '>' in tensor type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 19, &v104))
      {
        goto LABEL_115;
      }

      if (!mlir::TensorType::isValidElementType(v64))
      {
        v93 = "invalid tensor element type";
        v96 = 259;
        v69 = this;
        v68 = v63;
        goto LABEL_114;
      }

      if (v44 == 30)
      {
        if (v90)
        {
          v93 = "cannot apply encoding to unranked tensor";
          v96 = 259;
          v68 = (*(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0));
          v69 = this;
LABEL_114:
          mlir::detail::Parser::emitError(v69, v68, &v93, &v104);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
          goto LABEL_115;
        }

        *&v104 = v64;
        Checked = mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v64 + 32), &v104);
      }

      else
      {
        Checked = mlir::RankedTensorType::get(v100, v101, v64, v90);
      }

LABEL_124:
      v9 = Checked;
LABEL_116:
      v61 = v100;
      if (v100 != v102)
      {
LABEL_117:
        free(v61);
      }

      break;
    case 'N':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v57 = *(this + 1);
      *(v57 + 56) = v104;
      *(v57 + 72) = v105[0];
      return *(**this + 432);
    case 'Q':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v12 = *(this + 1);
      *(v12 + 56) = v104;
      *(v12 + 72) = v105[0];
      *&v104 = "expected '<' in tuple type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v104))
      {
        return 0;
      }

      v13 = *(this + 1);
      if (*(v13 + 56) == 19)
      {
        *(v13 + 80) = *(v13 + 56);
        *(v13 + 96) = *(v13 + 72);
        mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
        v14 = *(this + 1);
        *(v14 + 56) = v104;
        *(v14 + 72) = v105[0];
        v15 = ***(this + 1);
        v104 = xmmword_25D0A0640;
        return mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange>(v15, &v104);
      }

      *&v104 = v105;
      *(&v104 + 1) = 0x400000000;
      v100 = this;
      v101 = &v104;
      if (mlir::detail::Parser::parseCommaSeparatedList(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v100, 0, 0) && (v100 = "expected '>' in tuple type", v103 = 259, mlir::detail::Parser::parseToken(this, 19, &v100)))
      {
        v62 = ***(this + 1);
        v100 = (v104 & 0xFFFFFFFFFFFFFFF9 | 2);
        v101 = DWORD2(v104);
        v9 = mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange &>(v62, &v100);
      }

      else
      {
        v9 = 0;
      }

      v61 = v104;
      if (v104 == v105)
      {
        return v9;
      }

      goto LABEL_117;
    case 'T':
      v46 = *(v5 + 64);
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken(&v104, (*(this + 1) + 8));
      v47 = *(this + 1);
      *(v47 + 56) = v104;
      *(v47 + 72) = v105[0];
      *&v104 = "expected '<' in vector type";
      v106 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v104))
      {
        return 0;
      }

      *&v104 = v105;
      *(&v104 + 1) = 0x400000000;
      v93 = &v95;
      v94 = xmmword_25D0A0580;
      if (mlir::detail::Parser::parseVectorDimensionList(this, &v104, &v93, v48) && (v49 = mlir::detail::Parser::parseType(this)) != 0 && (v50 = v49, v100 = "expected '>' in vector type", v103 = 259, mlir::detail::Parser::parseToken(this, 19, &v100)))
      {
        v90 = v46;
        v100 = this;
        v101 = &v90;
        v9 = mlir::VectorType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>, &v100, v104, DWORD2(v104), v50, v93, v94);
      }

      else
      {
        v9 = 0;
      }

      if (v93 != &v95)
      {
        free(v93);
      }

      v61 = v104;
      if (v104 == v105)
      {
        return v9;
      }

      goto LABEL_117;
    default:
      goto LABEL_54;
  }

  return v9;
}

uint64_t mlir::detail::Parser::parseFunctionResultTypes(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(*(a1 + 1) + 56) == 21)
  {

    return mlir::detail::Parser::parseTypeListParens(a1, a2);
  }

  else
  {
    result = mlir::detail::Parser::parseNonFunctionType(a1, a2, a3, a4);
    if (result)
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2, result);
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

uint64_t mlir::detail::Parser::parseXInDimensionList(mlir::detail::Parser *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (*(v2 + 56) == 3 && (v3 = *(v2 + 64), *v3 == 120))
  {
    if (*(v2 + 72) != 1)
    {
      *(v2 + 40) = v3 + 1;
    }

    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken(&v9, (*(this + 1) + 8));
    v4 = *(this + 1);
    *(v4 + 56) = v9;
    *(v4 + 72) = v10;
    return 1;
  }

  else
  {
    v7 = "expected 'x' in dimension list";
    v8 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v9, this, &v7);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseDimensionListRanked(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (a4)
  {
    while ((*(*(a1 + 1) + 56) | 0x10) == 0x1A)
    {
      if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7, a2, a3, a4) || (mlir::detail::Parser::parseXInDimensionList(a1) & 1) == 0)
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
    if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7, a2, a3, a4))
    {
      break;
    }

    v6 = *(a1 + 1);
    if (*(v6 + 56) != 3 || **(v6 + 64) != 120)
    {
      return 1;
    }
  }

  while ((mlir::detail::Parser::parseXInDimensionList(a1) & 1) != 0);
  return 0;
}

BOOL mlir::detail::Parser::parseVectorDimensionList(mlir::detail::Parser *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v7 = *(a1 + 1);
    v8 = *(v7 + 56);
    if (v8 == 22)
    {
      v17 = 0;
      *(v7 + 80) = *(v7 + 56);
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken(&v18, (*(a1 + 1) + 8));
      v10 = *(a1 + 1);
      *(v10 + 56) = v18;
      *(v10 + 72) = v19;
      v9 = 1;
    }

    else
    {
      if (v8 != 10)
      {
        return 1;
      }

      v9 = 0;
      v17 = 0;
    }

    if ((mlir::detail::Parser::parseIntegerInDimensionList(a1, &v17, a3, a4) & 1) == 0)
    {
      return 0;
    }

    llvm::SmallVectorTemplateBase<long long,true>::push_back(a2, v17);
    if (v9)
    {
      break;
    }

LABEL_10:
    llvm::SmallVectorTemplateBase<BOOL,true>::push_back(a3, v9);
    if ((mlir::detail::Parser::parseXInDimensionList(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 1);
  if (*(v11 + 56) == 29)
  {
    *(v11 + 80) = *(v11 + 56);
    *(v11 + 96) = *(v11 + 72);
    mlir::Lexer::lexToken(&v18, (*(a1 + 1) + 8));
    v12 = *(a1 + 1);
    *(v12 + 56) = v18;
    *(v12 + 72) = v19;
    goto LABEL_10;
  }

  v15 = "missing ']' closing scalable dimension";
  v16 = 259;
  mlir::detail::Parser::emitWrongTokenError(&v18, a1, &v15);
  v13 = (v20 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v13;
}

uint64_t mlir::detail::Parser::parseIntegerInDimensionList(mlir::detail::Parser *this, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  if (v8 >= 2 && *(v7 + 1) == 120)
  {
    *a2 = 0;
    *(v6 + 40) = v7 + 1;
  }

  else
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v7, v8, a3, a4);
    if ((v10 & 1) == 0 || (UInt64IntegerValue & 0x8000000000000000) != 0)
    {
      v14 = "invalid dimension";
      v15 = 259;
      mlir::detail::Parser::emitError(this, (*(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0)), &v14, &v16);
      v12 = (v18 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
      return v12;
    }

    *a2 = UInt64IntegerValue;
    v6 = *(this + 1);
  }

  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v16, (*(this + 1) + 8));
  v11 = *(this + 1);
  *(v11 + 56) = v16;
  *(v11 + 72) = v17;
  return 1;
}

BOOL mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 8);
  if (*(v6 + 56) == 26)
  {
    v7 = *(v6 + 64);
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(v15, (*(v5 + 1) + 8));
    v8 = *(v5 + 1);
    *(v8 + 56) = *v15;
    *(v8 + 72) = v16;
    if ((**(a1 + 8) & 1) == 0)
    {
      v13 = "expected static shape";
      v14 = 259;
      mlir::detail::Parser::emitError(v5, v7, &v13, v15);
      v11 = (v17 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
      return v11;
    }

    v9 = *(a1 + 16);
    v10 = 0x8000000000000000;
  }

  else
  {
    v15[0] = 0;
    if ((mlir::detail::Parser::parseIntegerInDimensionList(v5, v15, a3, a4) & 1) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 16);
    v10 = v15[0];
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(v9, v10);
  return 1;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t a1)
{
  v2 = mlir::detail::Parser::parseType(*a1);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(*(a1 + 8), v2);
  return v2 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(*a1, 0);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    v6 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v5 + 8, v6))
    {
      v7 = *v4;
      v8 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
      v10 = *(a1 + 8);
      *v10 = v4;
      v10[1] = v9;
      if (**(a1 + 24))
      {
        v11 = "cannot have affine map for unranked memref type";
LABEL_10:
        v15 = v11;
        v16 = 259;
        mlir::detail::Parser::emitError(v2, v2[1][8] - (*(v2[1] + 14) == 0), &v15, v17);
        v12 = v18 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
        return v12 & 1;
      }

      if (**(a1 + 16))
      {
        v11 = "expected memory space to be last in memref type";
        goto LABEL_10;
      }
    }

    else
    {
      v13 = *(a1 + 16);
      if (*v13)
      {
        v11 = "multiple memory spaces specified in memref type";
        goto LABEL_10;
      }

      *v13 = v4;
    }

    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t mlir::Diagnostic::append<unsigned int const&>(uint64_t a1)
{
  v6 = 5;
  v7 = 0xFFFFFFLL;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::detail::Parser::emitError(v2, (*(*(v2 + 8) + 64) - (*(*(v2 + 8) + 56) == 0)), v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

unint64_t mlir::detail::getBranchSuccessorArgument(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 20);
  if (v5 && ((v6 = v4 + 32 * *(a1 + 16), v7 = *(v6 + 16), (*(v7 + 46) & 0x80) == 0) ? (v8 = 0) : (v8 = *(v7 + 72)), (v9 = (v6 - v8) >> 5, a2 >= v9) ? (v10 = v5 + v9 > a2) : (v10 = 0), v10))
  {
    v11 = *(*(a3 + 48) + 8 * (a2 - v9 + *a1));
    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    v11 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

uint64_t mlir::detail::verifyBranchSuccessorOperands(void ***this, unsigned int a2, uint64_t a3)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a3 + 20);
  v21 = v5 + v4;
  v22 = a2;
  v6 = *(((&this[2 * ((*(this + 11) >> 23) & 1) + 8] + ((*(this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24);
  if (v5 + v4 != ((*(v6 + 56) - *(v6 + 48)) >> 3))
  {
    v20 = 257;
    mlir::Operation::emitError(&v23, this, v19);
    if (v23)
    {
      mlir::Diagnostic::operator<<<12ul>(v24, "branch has ");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v21);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<26ul>((v10 + 1), " operands for successor #");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v11, &v22);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<24ul>((v12 + 1), ", but target block has ");
    }

    mlir::InFlightDiagnostic::append<unsigned int>(v13, (*(v6 + 56) - *(v6 + 48)) >> 3);
    v14 = *(v13 + 200);
LABEL_18:
    v9 = v14 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    return v9 & 1;
  }

  if (v5)
  {
    while (1)
    {
      InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(this);
      if (((*(InterfaceFor + 24))(InterfaceFor, this, *(*(*(*(a3 + 8) + 72) + 32 * (v4 + *(a3 + 16) - *a3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v6 + 48) + 8 * v4) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
      {
        break;
      }

      ++v4;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v18 = v4;
    v20 = 257;
    mlir::Operation::emitError(&v23, this, v19);
    if (v23)
    {
      mlir::Diagnostic::operator<<<32ul>(v24, "type mismatch for bb argument #");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v18);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<16ul>((v15 + 1), " of successor #");
    }

    v14 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(v16, &v22) + 200);
    goto LABEL_18;
  }

LABEL_5:
  v9 = 1;
  return v9 & 1;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v22[6] = *MEMORY[0x277D85DE8];
  v19 = this;
  if (this)
  {
    this = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v18[0] = v2;
  v18[1] = this;
  v17 = v18;
  if ((verifyTypesAlongAllEdges(v2, 0, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>, &v17) & 1) == 0)
  {
    return 0;
  }

  v16 = v18;
  v3 = v2[11];
  v4 = 1;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = ((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10];
    v6 = v5 + 24 * (v3 & 0x7FFFFF);
    while (1)
    {
      v20 = v22;
      v21 = 0x300000000;
      v7 = *(v5 + 8);
      if (v7 == v5)
      {
        goto LABEL_20;
      }

      do
      {
        v8 = v7 - 8;
        if (!v7)
        {
          v8 = 0;
        }

        v9 = *(v8 + 32);
        if (v9 != v8 + 32)
        {
          if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
            if (v9)
            {
              v11 = v21;
              if (v21 >= HIDWORD(v21))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v21 + 1, 16);
                v11 = v21;
              }

              v12 = (v20 + 16 * v11);
              *v12 = v9;
              v12[1] = InterfaceFor;
              LODWORD(v21) = v21 + 1;
            }
          }
        }

        v7 = *(v7 + 8);
      }

      while (v7 != v5);
      if (!v21)
      {
LABEL_20:
        v13 = 3;
      }

      else
      {
        v15[0] = &v20;
        v15[1] = &v16;
        v15[2] = &v19;
        v15[3] = v5;
        v13 = (verifyTypesAlongAllEdges(v19, v5, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>, v15) & 1) == 0;
      }

      if (v20 != v22)
      {
        free(v20);
      }

      if (v13 != 3 && v13)
      {
        return 0;
      }

      v5 += 24;
      if (v5 == v6)
      {
        return 1;
      }
    }
  }

  return v4;
}

uint64_t verifyTypesAlongAllEdges(mlir::Operation *a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4)
{
  v44[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  v42 = v44;
  v43 = 0x200000000;
  (*(InterfaceFor + 16))(InterfaceFor, a1, a2, &v42);
  if (v43)
  {
    v26 = a2;
    v9 = v42;
    v27 = &v42[3 * v43];
    v28 = a3;
    while (1)
    {
      a3(&v39, a4, *v9);
      if ((v41 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_30;
      }

      v10 = *(v9 + 1);
      v32 = v9[1];
      v33 = 0;
      v34 = v10;
      mlir::TypeRange::TypeRange<mlir::ValueRange>(&v37, &v32);
      v11 = v40;
      if (v40 != v38)
      {
        v29 = " region control flow edge ";
        v31 = 259;
        mlir::Operation::emitOpError(&v32, a1, &v29);
        printRegionEdgeName(&v32, v26, *v9);
        if (v32)
        {
          mlir::Diagnostic::operator<<<14ul>(&v33, ": source has ");
        }

        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v32, v40);
        if (v32)
        {
          mlir::Diagnostic::operator<<<39ul>(&v33, " operands, but target successor needs ");
        }

        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v32, v38);
        goto LABEL_29;
      }

      v12 = a4;
      if (v40)
      {
        break;
      }

LABEL_12:
      v9 += 3;
      a4 = v12;
      a3 = v28;
      if (v9 == v27)
      {
        goto LABEL_13;
      }
    }

    v13 = 0;
    v14 = v39;
    v15 = v37;
    while (1)
    {
      v16 = mlir::TypeRange::dereference_iterator(v14, v13);
      v17 = mlir::TypeRange::dereference_iterator(v15, v13);
      if (((*(InterfaceFor + 32))(InterfaceFor, a1, v16, v17) & 1) == 0)
      {
        break;
      }

      if (v11 == ++v13)
      {
        goto LABEL_12;
      }
    }

    v29 = " along control flow edge ";
    v31 = 259;
    mlir::Operation::emitOpError(&v32, a1, &v29);
    printRegionEdgeName(&v32, v26, *v9);
    if (v32)
    {
      mlir::Diagnostic::operator<<<16ul>(&v33, ": source type #");
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long>(&v32, v13);
    if (v32)
    {
      mlir::Diagnostic::operator<<<2ul>(&v33, " ");
      if (v32)
      {
        LODWORD(v29) = 4;
        v30 = v16;
        v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34 + 8, &v29, 1);
        v20 = *(&v34 + 1) + 24 * v35;
        v21 = *v19;
        *(v20 + 16) = *(v19 + 16);
        *v20 = v21;
        ++v35;
        if (v32)
        {
          mlir::Diagnostic::operator<<<27ul>(&v33, " should match input type #");
        }
      }
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long>(&v32, v13);
    if (v32)
    {
      mlir::Diagnostic::operator<<<2ul>(&v33, " ");
      if (v32)
      {
        LODWORD(v29) = 4;
        v30 = v17;
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34 + 8, &v29, 1);
        v23 = *(&v34 + 1) + 24 * v35;
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++v35;
      }
    }

LABEL_29:
    v18 = v36 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  }

  else
  {
LABEL_13:
    v18 = 1;
  }

LABEL_30:
  if (v42 != v44)
  {
    free(v42);
  }

  return v18 & 1;
}

uint64_t llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(uint64_t a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 2);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      if (v5)
      {
        v7 = *a1;
        v8 = &v4[3 * v5];
        do
        {
          *v7 = *v4;
          *(v7 + 8) = *(v4 + 1);
          v4 += 3;
          v7 += 24;
        }

        while (v4 != v8);
      }

      goto LABEL_18;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v9 = &v4[3 * v6];
        v10 = *a1;
        do
        {
          *v10 = *v4;
          *(v10 + 8) = *(v4 + 1);
          v4 += 3;
          v10 += 24;
        }

        while (v4 != v9);
LABEL_16:
        v11 = *(a2 + 2) - v6;
        if (v11)
        {
          memcpy((*a1 + 24 * v6), &(*a2)[3 * v6], 24 * v11);
        }

LABEL_18:
        *(a1 + 8) = v5;
        *(a2 + 2) = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}

double llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
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

uint64_t mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BranchOpInterface>();
      mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[270];
}

uint64_t llvm::getTypeName<mlir::BranchOpInterface>()
{
  {
    llvm::getTypeName<mlir::BranchOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BranchOpInterface>();
    *algn_27FC18888 = v1;
  }

  return llvm::getTypeName<mlir::BranchOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BranchOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BranchOpInterface]";
  v6 = 85;
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

uint64_t *mlir::TypeRange::TypeRange<mlir::ValueRange>(uint64_t *a1, unint64_t *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  v13[0] = *a2;
  v13[1] = v4;
  if (v4)
  {
    v3 = mlir::ValueRange::offset_base(v13, v4);
  }

  *a1 = 0;
  a1[1] = v5 - v4;
  if (v5 != v4)
  {
    v6 = v3 & 6;
    v7 = v3 & 0xFFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFFF8) != 0 && v6 == 2;
    v9 = v7 | 4;
    if (!v8)
    {
      v9 = v3 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v6 != 4 || v7 == 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7 | 6;
    }

    *a1 = v11;
  }

  return a1;
}

uint64_t *printRegionEdgeName(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    mlir::Diagnostic::operator<<<6ul>((a1 + 1), "from ");
    v6 = *a1;
    if (a2)
    {
      if (v6)
      {
        mlir::Diagnostic::operator<<<9ul>((a1 + 1), "Region #");
      }

      goto LABEL_6;
    }

    if (v6)
    {
      mlir::Diagnostic::operator<<<16ul>((a1 + 1), "parent operands");
      goto LABEL_12;
    }

LABEL_22:
    v10 = 1;
    if (a3)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a2 + 16);
  v8 = *(v7 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = ((v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
  }

  else
  {
    v9 = 0;
  }

  mlir::InFlightDiagnostic::append<unsigned int>(a1, -1431655765 * ((a2 - v9) >> 3));
LABEL_12:
  if (!*a1)
  {
    if (!a3)
    {
      return a1;
    }

    goto LABEL_17;
  }

  mlir::Diagnostic::operator<<<5ul>((a1 + 1), " to ");
  v10 = *a1 == 0;
  if (a3)
  {
LABEL_14:
    if (!v10)
    {
      mlir::Diagnostic::operator<<<9ul>((a1 + 1), "Region #");
    }

LABEL_17:
    v11 = *(a3 + 16);
    v12 = *(v11 + 44);
    if ((v12 & 0x7FFFFF) != 0)
    {
      v13 = ((v11 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 40);
    }

    else
    {
      v13 = 0;
    }

    mlir::InFlightDiagnostic::append<unsigned int>(a1, -1431655765 * ((a3 - v13) >> 3));
    return a1;
  }

LABEL_23:
  if (!v10)
  {
    mlir::Diagnostic::operator<<<15ul>((a1 + 1), "parent results");
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v7 = 5;
    v8 = a2;
    v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v7, 1);
    v4 = *(a1 + 24) + 24 * *(a1 + 32);
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::append<unsigned int>(uint64_t a1, unsigned int a2)
{
  if (*a1)
  {
    v7 = 5;
    v8 = a2;
    v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v7, 1);
    v4 = *(a1 + 24) + 24 * *(a1 + 32);
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (**(*a1 + 8))();
  v5 = (result & 0xFFFFFFFFFFFFFFF8) == 0 || v4 == 0;
  v6 = result & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v5)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = 1;
  return result;
}

void llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[25] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5)
  {
    v22 = 0;
    v23 = a3;
    v8 = 0;
    v9 = *v4;
    v10 = &(*v4)[v5];
    do
    {
      while (1)
      {
        v26 = *v9;
        SuccessorOperands = mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(&v26, a2);
        if ((v8 & 1) == 0)
        {
          break;
        }

        if (v3 != v12)
        {
          goto LABEL_23;
        }

        if (v3)
        {
          v13 = 0;
          v14 = *(a1 + 8);
          if ((v22 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v15 = v22 & 0xFFFFFFFFFFFFFFF8 | 4;
          }

          else
          {
            v15 = 0;
          }

          v16 = (SuccessorOperands & 0xFFFFFFFFFFFFFFF8) == 0 || v12 == 0;
          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = SuccessorOperands & 0xFFFFFFFFFFFFFFF8 | 4;
          }

          while (1)
          {
            mlir::TypeRange::dereference_iterator(v15, v13);
            mlir::TypeRange::dereference_iterator(v17, v13);
            if (!(*(*(*v14 + 8) + 32))())
            {
              break;
            }

            if (v3 == ++v13)
            {
              goto LABEL_20;
            }
          }

LABEL_23:
          v19 = **(a1 + 16);
          v24 = " along control flow edge";
          v25 = 259;
          mlir::Operation::emitOpError(&v27, v19, &v24);
          printRegionEdgeName(&v27, *(a1 + 24), a2);
          if (v27)
          {
            mlir::Diagnostic::operator<<<51ul>(v28, " operands mismatch between return-like terminators");
          }

          *v23 = 0;
          *(v23 + 16) = 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
          return;
        }

        ++v9;
        v8 = 1;
        if (v9 == v10)
        {
          a3 = v23;
          *v23 = 0;
          *(v23 + 8) = 0;
          goto LABEL_30;
        }
      }

      v22 = SuccessorOperands;
      v3 = v12;
LABEL_20:
      ++v9;
      v8 = 1;
    }

    while (v9 != v10);
    v18 = v22;
    a3 = v23;
    *v23 = 0;
    *(v23 + 8) = v3;
    if (v3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v18 = 0;
LABEL_27:
    v20 = v18 & 0xFFFFFFFFFFFFFFF8;
    v16 = v20 == 0;
    v21 = v20 | 4;
    if (v16)
    {
      v21 = 0;
    }

    *a3 = v21;
  }

LABEL_30:
  *(a3 + 16) = 1;
}

uint64_t mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  (**(a1 + 8))(&v5, *(a1 + 8), *a1, a2);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v2 = *(v5 + 72);
  }

  else
  {
    v2 = 0;
  }

  v3 = v6;
  if (v7 != v8)
  {
    free(v7);
  }

  return v2 + 32 * v3;
}

void mlir::function_interface_impl::setAllArgAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x800000000;
  v8 = (8 * a4) >> 3;
  if (v8 < 9)
  {
    v9 = 0;
    v10 = v17;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v8, 8);
    v9 = v16;
    v10 = v15;
  }

  v11 = 8 * a4;
  if (a4)
  {
    v12 = &v10[2 * v9];
    v13 = v11;
    do
    {
      v14 = *a3;
      if (!*a3)
      {
        v14 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
      }

      *v12++ = v14;
      ++a3;
      v13 -= 8;
    }

    while (v13);
    v9 = v16;
    v10 = v15;
  }

  LODWORD(v16) = v9 + (v11 >> 3);
  setAllArgResAttrDicts<true>(a1, a2, v10, v16);
  if (v15 != v17)
  {
    free(v15);
  }
}