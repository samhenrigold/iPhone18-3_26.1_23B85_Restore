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

uint64_t *llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4)
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
    if (*(v4 + 1) == 120)
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

unint64_t mlir::Token::getUInt64IntegerValue(uint64_t a1, unint64_t a2)
{
  v4 = 10;
  if (a2 >= 2)
  {
    if (*(a1 + 1) == 120)
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
  if ((llvm::getAsUnsignedInteger(&v1[v3], v2 - v3, 0xA, &v5) & 1) != 0 || HIDWORD(v5))
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
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v6 = 25;
      }

      else
      {
        v6 = (v5 | 7) + 1;
      }

      v7 = operator new(v6);
      a2->__r_.__value_.__l.__size_ = v5;
      a2->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
      a2->__r_.__value_.__r.__words[0] = v7;
      a2 = v7;
    }

    else
    {
      *(&a2->__r_.__value_.__s + 23) = v5;
      if (v3 < 2)
      {
        a2->__r_.__value_.__s.__data_[v5] = 0;
        return;
      }
    }

    memmove(a2, v4, v5);
    a2->__r_.__value_.__s.__data_[v5] = 0;
  }
}

unint64_t mlir::Token::getHashIdentifierNumber(mlir::Token *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(this + 1) + 1;
  }

  else
  {
    v2 = *(this + 1);
  }

  v4 = 0;
  if ((llvm::getAsUnsignedInteger(v2, v1 - (v1 != 0), 0xA, &v4) & 1) != 0 || HIDWORD(v4))
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
        Loc = mlir::Token::getLoc((*(v23 + 1) + 56));
        v75 = "integer bitwidth is limited to ";
        v76 = 259;
        mlir::detail::Parser::emitError(v23, Loc, &v75, &v77);
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

  Loc = mlir::Token::getLoc((*(this + 1) + 56));
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
    mlir::detail::Parser::emitError(this, Loc, &v16, v19);
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
              operator delete[](v14);
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
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
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

  v8 = mlir::Token::getLoc((v7 + 56));
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
          v30 = Loc;
          *&v25 = this;
          *(&v25 + 1) = &v30;
          result = mlir::UnrankedMemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>, &v25, v10, v23);
        }

        else
        {
          result = mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(this, Loc, &v40, &v28, v24, &v23);
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
                operator delete[](v19);
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
              operator delete[](v12);
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
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken(&v27, (*(this + 1) + 8));
  v3 = *(this + 1);
  *(v3 + 56) = v27;
  *(v3 + 72) = v28[0];
  *&v27 = "expected '<' in tensor type";
  v29 = 259;
  if (!mlir::detail::Parser::parseToken(this, 23, &v27))
  {
    return 0;
  }

  *&v27 = v28;
  *(&v27 + 1) = 0x400000000;
  v4 = *(this + 1);
  v5 = *(v4 + 56);
  if (v5 == 30)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken(&v19, (*(this + 1) + 8));
    v6 = *(this + 1);
    *(v6 + 56) = v19;
    *(v6 + 72) = v20;
    if (!mlir::detail::Parser::parseXInDimensionList(this))
    {
      goto LABEL_36;
    }

    v7 = *(this + 1);
  }

  else
  {
    LOBYTE(v23) = 1;
    *&v19 = this;
    *(&v19 + 1) = &v23;
    v20 = &v27;
    while (1)
    {
      v7 = *(this + 1);
      if ((*(v7 + 56) | 0x10) != 0x1A)
      {
        break;
      }

      if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(&v19) || !mlir::detail::Parser::parseXInDimensionList(this))
      {
        goto LABEL_36;
      }
    }
  }

  Loc = mlir::Token::getLoc((v7 + 56));
  if (*(*(this + 1) + 56) == 21)
  {
    v9 = mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    v9 = mlir::detail::Parser::parseNonFunctionType(this);
  }

  v11 = v9;
  v23 = 0;
  v12 = *(this + 1);
  if (*(v12 + 56) == 16)
  {
    *(v12 + 80) = *(v12 + 56);
    *(v12 + 96) = *(v12 + 72);
    mlir::Lexer::lexToken(&v19, (*(this + 1) + 8));
    v13 = *(this + 1);
    *(v13 + 56) = v19;
    *(v13 + 72) = v20;
    v14 = mlir::detail::Parser::parseOptionalAttribute(this, &v23, 0);
    if ((v14 & 0x100) != 0)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_36;
      }

      v16 = v23;
      if (v23)
      {
        v16 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(v23);
      }

      else
      {
        v17 = 0;
      }

      *&v19 = v16;
      *(&v19 + 1) = v17;
      if (v16)
      {
        v22 = this;
        if ((mlir::VerifiableTensorEncoding::verifyEncoding(&v19, v27, DWORD2(v27), v11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>, &v22) & 1) == 0)
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

  *&v19 = "expected '>' in tensor type";
  v21 = 259;
  if (!mlir::detail::Parser::parseToken(this, 19, &v19))
  {
    goto LABEL_36;
  }

  if (mlir::TensorType::isValidElementType(v11))
  {
    if (v5 == 30)
    {
      if (v23)
      {
        *&v19 = "cannot apply encoding to unranked tensor";
        v21 = 259;
        mlir::detail::Parser::emitError(this, &v19, v24);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
        result = 0;
        v15 = v27;
        if (v27 == v28)
        {
          return result;
        }
      }

      else
      {
        result = mlir::UnrankedTensorType::get(v11);
        v15 = v27;
        if (v27 == v28)
        {
          return result;
        }
      }
    }

    else
    {
      result = mlir::RankedTensorType::get(v27, DWORD2(v27), v11, v23);
      v15 = v27;
      if (v27 == v28)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  *&v19 = "invalid tensor element type";
  v21 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v19, &v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v26[192] != 1)
  {
LABEL_36:
    result = 0;
    v15 = v27;
    if (v27 == v28)
    {
      return result;
    }

    goto LABEL_37;
  }

  mlir::Diagnostic::~Diagnostic(v26);
  result = 0;
  v15 = v27;
  if (v27 == v28)
  {
    return result;
  }

LABEL_37:
  v18 = result;
  free(v15);
  return v18;
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
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
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
  v12 = xmmword_1E096FAF0;
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

  v14 = Loc;
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
            operator delete[](v23);
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
  if (v6 >= 2 && *(v5 + 1) == 120)
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

  return v10;
}

BOOL mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 8) + 56));
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

  v5 = Loc;
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

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(*a1, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v50 = v3;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v50;
    v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_15;
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
  if (v8 == &v6[2 * v7] || *v8 != v5 || !v8[1])
  {
LABEL_15:
    v15 = *(a1 + 16);
    if (!*v15)
    {
      *v15 = v3;
      return 1;
    }

    v52[0] = "multiple memory spaces specified in memref type";
    v53 = 259;
    mlir::detail::Parser::emitError(v2, v52, v54);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v60;
        v18 = __p;
        if (v60 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v60 = v16;
        operator delete(v18);
      }

      v19 = v57;
      if (!v57)
      {
        goto LABEL_83;
      }

      v20 = v58;
      v21 = v57;
      if (v58 == v57)
      {
        goto LABEL_82;
      }

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
      goto LABEL_81;
    }

    return v14;
  }

  v24 = *v3;
  {
    v25 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if (!v27)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v51 = v3;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v51;
    v25 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if (!v27)
    {
      goto LABEL_46;
    }
  }

  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
LABEL_46:
    v34 = *(a1 + 8);
    *v34 = v3;
    v34[1] = 0;
    if (**(a1 + 24))
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

  v41 = v28[1];
  v42 = *(a1 + 8);
  *v42 = v3;
  v42[1] = v41;
  if (**(a1 + 24))
  {
LABEL_47:
    v52[0] = "cannot have affine map for unranked memref type";
    v53 = 259;
    mlir::detail::Parser::emitError(v2, v52, v54);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v60;
        v37 = __p;
        if (v60 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v60 = v35;
        operator delete(v37);
      }

      v19 = v57;
      if (!v57)
      {
        goto LABEL_83;
      }

      v38 = v58;
      v21 = v57;
      if (v58 == v57)
      {
LABEL_82:
        v58 = v19;
        operator delete(v21);
LABEL_83:
        if (v55 != &v56)
        {
          free(v55);
        }

        return v14;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          operator delete[](v39);
        }
      }

      while (v38 != v19);
LABEL_81:
      v21 = v57;
      goto LABEL_82;
    }

    return v14;
  }

LABEL_64:
  if (!**(a1 + 16))
  {
    return 1;
  }

  v52[0] = "expected memory space to be last in memref type";
  v53 = 259;
  mlir::detail::Parser::emitError(v2, v52, v54);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
  if (v54[0])
  {
    mlir::InFlightDiagnostic::report(v54);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v60;
      v45 = __p;
      if (v60 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v60 = v43;
      operator delete(v45);
    }

    v19 = v57;
    if (!v57)
    {
      goto LABEL_83;
    }

    v46 = v58;
    v21 = v57;
    if (v58 == v57)
    {
      goto LABEL_82;
    }

    do
    {
      v48 = *--v46;
      v47 = v48;
      *v46 = 0;
      if (v48)
      {
        operator delete[](v47);
      }
    }

    while (v46 != v19);
    goto LABEL_81;
  }

  return v14;
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

BOOL mlir::BytecodeReader::Impl::read(unint64_t a1, Location a2, uint64_t a3, uint64_t a4)
{
  v201 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 1176);
  v7 = *(a1 + 1184);
  v8 = *(a1 + 8);
  v149 = v6;
  v150 = v7;
  v151 = v6;
  v152 = v8;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *&v179 = 4;
  if (v7 > 3)
  {
    v151 = (v6 + 4);
  }

  else
  {
    v154.__r_.__value_.__r.__words[0] = v7;
    mlir::emitError(&v156, v8, a2);
    if (v156)
    {
      mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v156 + 8, "attempting to skip ", &v179, " bytes when only ", &v154.__r_.__value_.__l.__data_, " remain");
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
              operator delete[](v15);
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
              operator delete[](v24);
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
  v27 = *(a1 + 248);
  if (v27 < 7)
  {
    if (v27 <= 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    mlir::emitError(&v156, v152, v26);
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

      v28 = __p;
      if (__p)
      {
        v29 = v174;
        v30 = __p;
        if (v174 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v174 = v28;
        operator delete(v30);
      }

      v31 = v171;
      if (v171)
      {
        v32 = v172;
        v33 = v171;
        if (v172 != v171)
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
          v33 = v171;
        }

        *&v172 = v31;
        operator delete(v33);
      }

      if (v158 != &v160)
      {
        free(v158);
      }
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v189);
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

      v37 = v197;
      if (v197)
      {
        v38 = v198;
        v39 = v197;
        if (v198 != v197)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = v197;
        }

        v198 = v37;
        operator delete(v39);
      }

      v40 = v195;
      if (v195)
      {
        v41 = v196;
        v42 = v195;
        if (v196 != v195)
        {
          do
          {
            v44 = *--v41;
            v43 = v44;
            *v41 = 0;
            if (v44)
            {
              operator delete[](v43);
            }
          }

          while (v41 != v40);
          v42 = v195;
        }

        v196 = v40;
        operator delete(v42);
      }

      if (v191 != v194)
      {
        free(v191);
      }
    }

    if (!v36)
    {
      goto LABEL_128;
    }
  }

  {
LABEL_128:
    result = 0;
    goto LABEL_129;
  }

  v148 = **a1;
  DiagEngine = mlir::MLIRContext::getDiagEngine(v148);
  *&v156 = a1;
  v158 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,void>::Callbacks + 2;
  v147 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v156);
  v47 = v158;
  if (v158 >= 8)
  {
    if ((v158 & 4) != 0)
    {
      if ((v158 & 2) != 0)
      {
        v48 = &v156;
      }

      else
      {
        v48 = v156;
      }

      (*((v158 & 0xFFFFFFFFFFFFFFF8) + 16))(v48, v46);
    }

    if ((v47 & 2) == 0)
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
  if (v151 == (v149 + v150))
  {
LABEL_130:
    v65 = 0;
LABEL_131:
    toString(&v154, v65);
    mlir::emitError(&v189, v152, v202);
    if (v189)
    {
      mlir::Diagnostic::append<char const(&)[30],std::string>(&v189 + 8, "missing data for top-level section: ", &v154.__r_.__value_.__l.__data_);
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
              operator delete[](v72);
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
              operator delete[](v90);
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

    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v154.__r_.__value_.__l.__data_);
    }

    goto LABEL_222;
  }

  do
  {
    LOBYTE(v153) = 0;
    v146[0] = 0;
    v146[1] = 0;
    {
      v74 = 0;
      goto LABEL_221;
    }

    v49 = &v156 + 24 * v153;
    if (v49[16] == 1)
    {
      toString(&v154, v153);
      mlir::emitError(&v189, v152, v203);
      if (v189)
      {
        mlir::Diagnostic::append<char const(&)[30],std::string>(&v189 + 8, "duplicate top-level section: ", &v154.__r_.__value_.__l.__data_);
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
                operator delete[](v81);
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
                operator delete[](v99);
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

      if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v154.__r_.__value_.__l.__data_);
        v74 = v92;
      }

      goto LABEL_221;
    }

    *v49 = *v146;
    v49[16] = 1;
  }

  while (v151 != (v149 + v150));
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

  v50 = v178;
  if ((v178 & 1) == 0 && *(a1 + 248) > 4)
  {
    v65 = 8;
    goto LABEL_131;
  }

  v51 = *(a1 + 8);
  v52 = v156;
  *&v154.__r_.__value_.__l.__data_ = v156;
  v154.__r_.__value_.__r.__words[2] = v156;
  v155 = v51;
  v146[0] = 0;
  {
    goto LABEL_326;
  }

  v54 = (a1 + 536);
  v55 = v146[0];
  v56 = *(a1 + 544);
  if (v146[0] != v56)
  {
    if (v146[0] >= v56)
    {
      if (v146[0] > *(a1 + 548))
      {
        v145 = v146[0];
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 536, (a1 + 552), v146[0], 16);
        v55 = v145;
        v56 = *(a1 + 544);
      }

      if (v55 != v56)
      {
        v57 = v55;
        bzero((*v54 + 16 * v56), 16 * (v55 - v56));
        LODWORD(v55) = v57;
      }
    }

    LODWORD(v56) = v55;
    *(a1 + 544) = v55;
    v55 = v55;
  }

  if (!v56)
  {
    v61 = *(&v52 + 1);
LABEL_228:
    if (*(&v52 + 1) - (v154.__r_.__value_.__r.__words[0] + v154.__r_.__value_.__l.__size_) + v154.__r_.__value_.__r.__words[2] == v61)
    {
      if (!v50)
      {
LABEL_322:
        if ((mlir::BytecodeReader::Impl::parseDialectSection(a1, v158, v159) & 1) == 0)
        {
          goto LABEL_326;
        }

        v189 = v170;
        v190 = v171;
        v179 = v172;
        v180 = __p;
        {
          goto LABEL_326;
        }

        v74 = mlir::BytecodeReader::Impl::parseIRSection(a1, v167, v168, a2.var0.var0);
LABEL_221:
        v83 = v74;
        goto LABEL_222;
      }
    }

    else
    {
      mlir::emitError(&v189, v155, v53);
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
                operator delete[](v111);
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
                operator delete[](v132);
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
        goto LABEL_322;
      }
    }

    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

  v58 = 16 * v55;
  v59 = (v58 + *v54 - 8);
  v60 = -v58;
  v61 = *(&v52 + 1);
  while (1)
  {
    v153 = 0;
    {
      break;
    }

    v62 = v61 >= v153;
    v61 -= v153;
    if (!v62)
    {
      mlir::emitError(&v189, v155, v53);
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
                operator delete[](v123);
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
                operator delete[](v141);
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

    v63 = v153 - 1;
    *(v59 - 1) = v52 + v61;
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
  mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v147);
  result = v83;
LABEL_129:
  *(a1 + 72) = 0;
  return result;
}

BOOL anonymous namespace::EncodingReader::parseNullTerminatedString(_anonymous_namespace_::EncodingReader *this, llvm::StringRef *a2)
{
  v50 = *MEMORY[0x1E69E9840];
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
    mlir::emitError(v39, *(this + 3), v6);
    if (v39[0])
    {
      LODWORD(v30[0]) = 3;
      v30[1] = "malformed null-terminated string, no null character found";
      v30[2] = 57;
      v8 = v30;
      v9 = v40;
      if (v41 >= v42)
      {
        if (v40 <= v30 && v40 + 24 * v41 > v30)
        {
          v29 = v30 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v9 = v40;
          v8 = v40 + v29;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v8 = v30;
          v9 = v40;
        }
      }

      v10 = &v9[24 * v41];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v41;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v30, v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v47;
        v14 = __p;
        if (v47 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v47 = v12;
        operator delete(v14);
      }

      v15 = v44;
      if (v44)
      {
        v16 = v45;
        v17 = v44;
        if (v45 != v44)
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
          v17 = v44;
        }

        v45 = v15;
        operator delete(v17);
      }

      if (v40 != v43)
      {
        free(v40);
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v20 = v35;
      if (v35)
      {
        v21 = v36;
        v22 = v35;
        if (v36 != v35)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = v35;
        }

        v36 = v20;
        operator delete(v22);
      }

      v23 = v33;
      if (v33)
      {
        v24 = v34;
        v25 = v33;
        if (v34 != v33)
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
          v25 = v33;
        }

        v34 = v23;
        operator delete(v25);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }
  }

  return v7;
}

uint64_t anonymous namespace::EncodingReader::parseSection(mlir **a1, _BYTE *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v31 = 0;
  {
    return 0;
  }

  v30 = 0;
  {
    return 0;
  }

  v7 = v31;
  v8 = v31 & 0x7F;
  *a2 = v31 & 0x7F;
  if (v8 >= 9)
  {
    v29 = v8;
    mlir::emitError(v41, a1[3], v6);
    if (*v41)
    {
      mlir::Diagnostic::append<char const(&)[21],unsigned int>(&v42, "invalid section ID: ", &v29);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v32, v41);
    if (*v41)
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v9 = v47;
      if (v47)
      {
        v10 = v48;
        v11 = v47;
        if (v48 != v47)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = v47;
        }

        v48 = v9;
        operator delete(v11);
      }

      v12 = v45;
      if (v45)
      {
        v13 = v46;
        v14 = v45;
        if (v46 != v45)
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
          v14 = v45;
        }

        v46 = v12;
        operator delete(v14);
      }

      if (v43 != &v44)
      {
        free(v43);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    v20 = result;
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
      result = v20;
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
        result = v20;
      }

      v21 = v37;
      if (v37)
      {
        v22 = v38;
        v23 = v37;
        if (v38 != v37)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = v37;
        }

        v38 = v21;
        operator delete(v23);
        result = v20;
      }

      v24 = v35;
      if (v35)
      {
        v25 = v36;
        v26 = v35;
        if (v36 != v35)
        {
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
          v26 = v35;
        }

        v36 = v24;
        operator delete(v26);
        result = v20;
      }

      if (v33 != &v34)
      {
        free(v33);
        return v20;
      }
    }

    return result;
  }

  if (v7 < 0)
  {
    *v41 = 0;
    {
      return 0;
    }

    v19.var0.var0 = v41[0];
    {
      return 0;
    }
  }

  v17 = v30;
}

void toString(std::string *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        *(&result->__r_.__value_.__s + 23) = 10;
        strcpy(result, "String (0)");
        return;
      }

      if (a2 == 1)
      {
        *(&result->__r_.__value_.__s + 23) = 11;
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
      *(&result->__r_.__value_.__s + 23) = 12;
      strcpy(result, "AttrType (2)");
    }

    else
    {
      *(&result->__r_.__value_.__s + 23) = 18;
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
          *(&result->__r_.__value_.__s + 23) = 18;
          strcpy(result, "ResourceOffset (6)");
          return;
        case 7:
          *(&result->__r_.__value_.__s + 23) = 19;
          strcpy(result, "DialectVersions (7)");
          return;
        case 8:
          *(&result->__r_.__value_.__s + 23) = 14;
          strcpy(result, "Properties (8)");
          return;
      }

      goto LABEL_20;
    }

    if (a2 == 4)
    {
      *(&result->__r_.__value_.__s + 23) = 6;
      strcpy(result, "IR (4)");
    }

    else
    {
      *(&result->__r_.__value_.__s + 23) = 12;
      strcpy(result, "Resource (5)");
    }
  }
}

BOOL anonymous namespace::PropertiesSectionReader::initialize(uint64_t *a1, mlir *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 1;
  }

  v28 = a3;
  v29 = a4;
  v30 = a3;
  v31 = a2;
  v27 = 0;
  {
    return 0;
  }

  v7 = *a1;
  v8 = a1[1];
  v23 = v7;
  v24 = v8;
  v25 = v7;
  v26 = a2;
  v9 = v27;
  if (v27 > *(a1 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v27, 8);
    goto LABEL_7;
  }

  if (v27)
  {
    while (1)
    {
LABEL_7:
      v10 = a1[1];
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v14 = *(a1 + 6);
      if (v14 >= *(a1 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v14 + 1, 8);
        v14 = *(a1 + 6);
      }

      *(a1[2] + 8 * v14) = v10 - (v11 + v12) + v13;
      ++*(a1 + 6);
      v32[0] = 0;
      {
        return 0;
      }

      if (!--v9)
      {
        if (v25 == v23 + v24)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }
  }

  if (v7 == v7 + v8)
  {
    return 1;
  }

LABEL_15:
  mlir::emitError(&v33, v26, v6);
  if (v33)
  {
    LODWORD(v32[0]) = 3;
    v32[1] = "Broken properties section: didn't exhaust the offsets table";
    v32[2] = 59;
    v16 = v32;
    v17 = v35;
    if (v36 >= v37)
    {
      if (v35 <= v32 && v35 + 24 * v36 > v32)
      {
        v22 = v32 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v17 = v35;
        v16 = &v22[v35];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v16 = v32;
        v17 = v35;
      }
    }

    v18 = v17 + 24 * v36;
    v19 = *v16;
    *(v18 + 16) = v16[2];
    *v18 = v19;
    ++v36;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    v20 = result;
    mlir::InFlightDiagnostic::report(&v33);
    result = v20;
  }

  if (v38[160] == 1)
  {
    v21 = result;
    mlir::Diagnostic::~Diagnostic(&v34);
    return v21;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseDialectSection(unint64_t a1, AttributeStorage *a2, uint64_t a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v77 = a2;
  v78 = a3;
  v79 = a2;
  v80 = v4;
  v76 = 0;
  {
    return 0;
  }

  v5 = v76;
  v6 = *(a1 + 280);
  if (v76 != v6)
  {
    if (v76 < v6)
    {
      v7 = 8 * v6;
      v8 = 8 * v76 - v7;
      v9 = (v7 + *(a1 + 272) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = v10[7];
          v10[7] = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          operator delete(v10);
        }

        --v9;
        v8 += 8;
      }

      while (v8);
      goto LABEL_34;
    }

    if (v76 <= *(a1 + 284))
    {
      v12 = *(a1 + 272);
      v19 = v76 - v6;
      if (v76 == v6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v74[0] = 0;
    v12 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1 + 272, (a1 + 288), v76, 8, v74);
    v13 = *(a1 + 272);
    v14 = *(a1 + 280);
    if (!v14)
    {
LABEL_30:
      v32 = v74[0];
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
              v31 = v30[7];
              v30[7] = 0;
              if (v31)
              {
                (*(*v31 + 8))(v31);
              }

              operator delete(v30);
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
    v33 = 0;
    v34 = "string";
    v72 = v5;
    while (1)
    {
      v35 = operator new(0x40uLL);
      *v35 = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      v35[3] = 0u;
      v36 = *(a1 + 272);
      v37 = *(v36 + 8 * v33);
      *(v36 + 8 * v33) = v35;
      if (v37)
      {
        v38 = v37[7];
        v37[7] = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        operator delete(v37);
      }

      if (*(a1 + 248))
      {
        break;
      }

      v51 = *(*(a1 + 272) + 8 * v33);
      v74[0] = 0;
      {
        return 0;
      }

      v52.var0.var0 = v80;
      if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v52, *(a1 + 536), *(a1 + 544), v74[0], (v51 + 24), v34, 6))
      {
        return 0;
      }

LABEL_38:
      if (++v33 == v5)
      {
        goto LABEL_65;
      }
    }

    v73[0] = 0;
    {
      return 0;
    }

    v39 = v73[0];
    v73[0] >>= 1;
    v40.var0.var0 = v80;
    if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v40, *(a1 + 536), *(a1 + 544), v73[0], (*(*(a1 + 272) + 8 * v33) + 24), v34, 6))
    {
      return 0;
    }

    if (v39)
    {
      LOBYTE(v82) = 0;
      {
        return 0;
      }

      if (v82 != 7)
      {
        v63 = *(a1 + 8);
        v74[0] = "expected dialect version section";
        v75 = 259;
        mlir::emitError(v63, v74, v83);
        if (v83[0])
        {
          mlir::InFlightDiagnostic::report(v83);
        }

        if (v91)
        {
          if (v90 != &v91)
          {
            free(v90);
          }

          v64 = __p;
          if (__p)
          {
            v65 = v89;
            v66 = __p;
            if (v89 != __p)
            {
              do
              {
                v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
              }

              while (v65 != v64);
              v66 = __p;
            }

            v89 = v64;
            operator delete(v66);
          }

          v67 = v86;
          if (v86)
          {
            v68 = v87;
            v69 = v86;
            if (v87 != v86)
            {
              do
              {
                v71 = *--v68;
                v70 = v71;
                *v68 = 0;
                if (v71)
                {
                  operator delete[](v70);
                }
              }

              while (v68 != v67);
              v69 = v86;
            }

            v87 = v67;
            operator delete(v69);
          }

          if (v84 != &v85)
          {
            free(v84);
          }
        }

        return 0;
      }
    }

    v43 = *(*(a1 + 272) + 8 * v33);
    v45 = *(v43 + 24);
    v44 = *(v43 + 32);
    v46 = llvm::StringMapImpl::hash(v45, v44, v41, v42);
    v47 = llvm::StringMapImpl::LookupBucketFor(a1 + 336, v45, v44, v46);
    v48 = *(a1 + 336);
    v49 = v47;
    v50 = *(v48 + 8 * v47);
    if (v50 == -8)
    {
      --*(a1 + 352);
    }

    else if (v50)
    {
LABEL_37:
      *(v50 + 8) = v43;
      goto LABEL_38;
    }

    v53 = v34;
    buffer = llvm::allocate_buffer(v44 + 17, 8uLL);
    v55 = buffer;
    v56 = (buffer + 2);
    if (v44)
    {
      memcpy(buffer + 2, v45, v44);
    }

    v56[v44] = 0;
    *v55 = v44;
    v55[1] = 0;
    *(v48 + 8 * v49) = v55;
    ++*(a1 + 348);
    v57 = (*(a1 + 336) + 8 * llvm::StringMapImpl::RehashTable((a1 + 336), v49));
    v34 = v53;
    v5 = v72;
    while (1)
    {
      v50 = *v57;
      if (*v57 && v50 != -8)
      {
        break;
      }

      ++v57;
    }

    goto LABEL_37;
  }

LABEL_65:
  v73[0] = a1;
  v73[1] = &v77;
  if (*(a1 + 248) >= 4uLL)
  {
    v74[0] = 0;
    {
      return 0;
    }

    if (v74[0] > *(a1 + 372))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 360, (a1 + 376), v74[0], 48);
    }
  }

  if (v79 == (v77 + v78))
  {
    return 1;
  }

  while (1)
  {
    v59 = *(a1 + 280);
    v74[0] = *(a1 + 272);
    v74[1] = v59;
    v82 = 0;
    {
      return 0;
    }

    v81 = 0;
    {
      return 0;
    }

    v60 = v81;
    if (v81)
    {
      v61 = v82;
      {
        if (!--v60)
        {
          goto LABEL_71;
        }
      }

      return 0;
    }

LABEL_71:
    if (v79 == (v77 + v78))
    {
      return 1;
    }
  }
}

BOOL mlir::BytecodeReader::Impl::parseResourceSection(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v193 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16) == *(a4 + 16))
  {
    if (*(a3 + 16))
    {
      v153[0] = &unk_1F5AF21B0;
      v153[1] = a1 + 11;
      v15 = a1 + 53;
      v153[2] = a1 + 67;
      v153[3] = a1 + 53;
      v153[4] = a1 + 42;
      v153[5] = a2;
      v153[6] = a1 + 31;
      v17 = *a1;
      v16 = a1[1];
      v18 = a1[34];
      v19 = a1[151];
      v166[1] = *(a1 + 70);
      v167 = v16;
      v165 = v16;
      v166[0] = v18;
      v163 = *a3;
      v164 = v163;
      v160 = *a4;
      v161 = v160;
      v162 = v16;
      v159 = 0;
      {
        return 0;
      }

      v152 = v19;
      if (v159)
      {
        v20 = 0;
        v21 = "string";
        do
        {
          v177 = 0uLL;
          *&v182 = 0;
          {
            return 0;
          }

          v22.var0.var0 = v162;
          if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v22, a1[67], *(a1 + 136), v182, &v177, v21, 6))
          {
            return 0;
          }

          v23 = v177;
          v182 = v177;
          v24 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v17 + 16), &v182);
          if (!v24 || v24 == *(v17 + 16) + 24 * *(v17 + 32))
          {
            v29 = *(v17 + 40);
            if (v29)
            {
              ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v29, v182, *(&v182 + 1), v26);
              v28 = 0;
              goto LABEL_59;
            }
          }

          else
          {
            ParserFor = *(v24 + 16);
            if (ParserFor)
            {
              v28 = 0;
              goto LABEL_59;
            }
          }

          mlir::emitWarning(&v182, v167, v25);
          if (v182)
          {
            LODWORD(v168) = 3;
            *(&v168 + 1) = "ignoring unknown external resources for '";
            v169 = 41;
            v30 = v183;
            if (v184 >= v185)
            {
              if (v183 <= &v168 && v183 + 24 * v184 > &v168)
              {
                v73 = &v168 - v183;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                v30 = v183;
                v31 = v183 + v73;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                v31 = &v168;
                v30 = v183;
              }
            }

            else
            {
              v31 = &v168;
            }

            v32 = &v30[24 * v184];
            v33 = *v31;
            *(v32 + 2) = *(v31 + 2);
            *v32 = v33;
            ++v184;
            if (v182)
            {
              LOWORD(v171) = 261;
              v168 = v23;
              mlir::Diagnostic::operator<<(&v182 + 8, &v168);
              if (v182)
              {
                LODWORD(v168) = 3;
                *(&v168 + 1) = "'";
                v169 = 1;
                v34 = v183;
                if (v184 >= v185)
                {
                  if (v183 <= &v168 && v183 + 24 * v184 > &v168)
                  {
                    v74 = &v168 - v183;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                    v34 = v183;
                    v35 = v183 + v74;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                    v35 = &v168;
                    v34 = v183;
                  }
                }

                else
                {
                  v35 = &v168;
                }

                v36 = &v34[24 * v184];
                v37 = *v35;
                *(v36 + 2) = *(v35 + 2);
                *v36 = v37;
                ++v184;
                if (v182)
                {
                  mlir::InFlightDiagnostic::report(&v182);
                }
              }
            }
          }

          if (v192 == 1)
          {
            if (v191 != &v192)
            {
              free(v191);
            }

            v38 = __p;
            if (__p)
            {
              v39 = v190;
              v40 = __p;
              if (v190 != __p)
              {
                do
                {
                  v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
                }

                while (v39 != v38);
                v40 = __p;
              }

              v190 = v38;
              operator delete(v40);
            }

            v41 = v187;
            if (v187)
            {
              v42 = v188;
              v43 = v187;
              if (v188 != v187)
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
                v43 = v187;
              }

              v188 = v41;
              operator delete(v43);
            }

            if (v183 != v186)
            {
              free(v183);
            }
          }

          ParserFor = 0;
          v28 = 1;
LABEL_59:
          v46 = v167;
          v181 = 0;
          {
            return 0;
          }

          v47 = v181;
          if (v181)
          {
            if (v28)
            {
              while (1)
              {
                v154 = 0uLL;
                v178 = 0;
                *&v182 = 0;
                {
                  break;
                }

                v48.var0.var0 = v162;
                {
                  break;
                }

                if (!--v47)
                {
                  goto LABEL_85;
                }
              }
            }

            else
            {
              while (1)
              {
                v154 = 0uLL;
                LODWORD(v158) = 0;
                v178 = 0;
                v180 = 0uLL;
                *&v182 = 0;
                {
                  break;
                }

                v49.var0.var0 = v162;
                {
                  break;
                }

                v52 = v21;
                v54 = *(&v154 + 1);
                v53 = v154;
                v174 = v180;
                v175 = v180;
                v176 = v46;
                v55 = llvm::StringMapImpl::hash(v154, *(&v154 + 1), v50, v51);
                Key = llvm::StringMapImpl::FindKey(a1 + 61, v53, v54, v55);
                if (Key != -1 && Key != *(a1 + 124))
                {
                  v57 = *(a1[61] + 8 * Key);
                  v60 = *(v57 + 8);
                  v58 = v57 + 8;
                  v59 = v60;
                  v61 = *(v58 + 23);
                  if (v61 >= 0)
                  {
                    v53 = v58;
                  }

                  else
                  {
                    v53 = v59;
                  }

                  v62 = *(v58 + 8);
                  if (v61 >= 0)
                  {
                    v54 = v61;
                  }

                  else
                  {
                    v54 = v62;
                  }
                }

                *&v154 = v53;
                *(&v154 + 1) = v54;
                *&v168 = &unk_1F5AF2270;
                *(&v168 + 1) = v53;
                v169 = v54;
                v170 = v158;
                v171 = &v174;
                v172 = a1 + 67;
                v173 = v152;
                if (((*(*ParserFor + 16))(ParserFor, &v168) & 1) == 0)
                {
LABEL_188:
                  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                  return 0;
                }

                if (v175 != v174 + *(&v174 + 1))
                {
                  v63.var0.var0 = v176;
                  v64 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
                  v21 = v52;
                  if (v182)
                  {
                    mlir::InFlightDiagnostic::report(&v182);
                  }

                  v15 = a1 + 53;
                  if (v192)
                  {
                    if (v191 != &v192)
                    {
                      free(v191);
                    }

                    v65 = __p;
                    if (__p)
                    {
                      v66 = v190;
                      v67 = __p;
                      if (v190 != __p)
                      {
                        do
                        {
                          v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
                        }

                        while (v66 != v65);
                        v67 = __p;
                      }

                      v190 = v65;
                      operator delete(v67);
                    }

                    v68 = v187;
                    if (v187)
                    {
                      v69 = v188;
                      v70 = v187;
                      if (v188 != v187)
                      {
                        do
                        {
                          v72 = *--v69;
                          v71 = v72;
                          *v69 = 0;
                          if (v72)
                          {
                            operator delete[](v71);
                          }
                        }

                        while (v69 != v68);
                        v70 = v187;
                      }

                      v188 = v68;
                      operator delete(v70);
                    }

                    if (v183 != v186)
                    {
                      free(v183);
                    }
                  }

                  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                  if (v64)
                  {
                    goto LABEL_86;
                  }

                  return 0;
                }

                MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                --v47;
                v21 = v52;
                if (!v47)
                {
                  goto LABEL_85;
                }
              }
            }

            return 0;
          }

LABEL_85:
          v15 = a1 + 53;
LABEL_86:
          ++v20;
        }

        while (v20 < v159);
      }

      Context = mlir::Attribute::getContext(&v167);
      if (v161 != v160 + *(&v160 + 1))
      {
        v83 = Context;
        while (1)
        {
          v158 = 0;
          {
            return 0;
          }

          v85 = **v158;
          if (!v85)
          {
            mlir::emitError(&v182, v165, v84);
            if (v182)
            {
              LODWORD(v168) = 3;
              *(&v168 + 1) = "dialect '";
              v169 = 9;
              v113 = &v168;
              v114 = v183;
              if (v184 >= v185)
              {
                if (v183 <= &v168 && v183 + 24 * v184 > &v168)
                {
                  v148 = &v168 - v183;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                  v114 = v183;
                  v113 = v183 + v148;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                  v113 = &v168;
                  v114 = v183;
                }
              }

              v115 = &v114[24 * v184];
              v116 = *v113;
              *(v115 + 2) = *(v113 + 2);
              *v115 = v116;
              ++v184;
              if (v182)
              {
                v117 = *v158;
                LOWORD(v171) = 261;
                v119 = *(v117 + 24);
                v118 = *(v117 + 32);
                *&v168 = v119;
                *(&v168 + 1) = v118;
                mlir::Diagnostic::operator<<(&v182 + 8, &v168);
                if (v182)
                {
                  LODWORD(v168) = 3;
                  *(&v168 + 1) = "' is unknown";
                  v169 = 12;
                  v120 = &v168;
                  v121 = v183;
                  if (v184 >= v185)
                  {
                    if (v183 <= &v168 && v183 + 24 * v184 > &v168)
                    {
                      v150 = &v168 - v183;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                      v121 = v183;
                      v120 = v183 + v150;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                      v120 = &v168;
                      v121 = v183;
                    }
                  }

                  v122 = &v121[24 * v184];
                  v123 = *v120;
                  *(v122 + 2) = *(v120 + 2);
                  *v122 = v123;
                  ++v184;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
            if (v182)
            {
              mlir::InFlightDiagnostic::report(&v182);
            }

            if (v192 != 1)
            {
              return v6;
            }

            if (v191 != &v192)
            {
              free(v191);
            }

            v124 = __p;
            if (__p)
            {
              v125 = v190;
              v126 = __p;
              if (v190 != __p)
              {
                do
                {
                  v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
                }

                while (v125 != v124);
                v126 = __p;
              }

              v190 = v124;
              operator delete(v126);
            }

            v10 = v187;
            if (!v187)
            {
              goto LABEL_236;
            }

            v127 = v188;
            v12 = v187;
            if (v188 == v187)
            {
              goto LABEL_235;
            }

            do
            {
              v129 = *--v127;
              v128 = v129;
              *v127 = 0;
              if (v129)
              {
                operator delete[](v128);
              }
            }

            while (v127 != v10);
            goto LABEL_234;
          }

          if (!mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(**v158))
          {
            v157 = 0;
            mlir::emitError(&v182, v165, v86);
            if (v182)
            {
              LODWORD(v168) = 3;
              *(&v168 + 1) = "unexpected resources for dialect '";
              v169 = 34;
              v130 = &v168;
              v131 = v183;
              if (v184 >= v185)
              {
                if (v183 <= &v168 && v183 + 24 * v184 > &v168)
                {
                  v149 = &v168 - v183;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                  v131 = v183;
                  v130 = v183 + v149;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                  v130 = &v168;
                  v131 = v183;
                }
              }

              v132 = &v131[24 * v184];
              v133 = *v130;
              *(v132 + 2) = *(v130 + 2);
              *v132 = v133;
              ++v184;
              if (v182)
              {
                v134 = *v158;
                LOWORD(v171) = 261;
                v136 = *(v134 + 24);
                v135 = *(v134 + 32);
                *&v168 = v136;
                *(&v168 + 1) = v135;
                mlir::Diagnostic::operator<<(&v182 + 8, &v168);
                if (v182)
                {
                  LODWORD(v168) = 3;
                  *(&v168 + 1) = "'";
                  v169 = 1;
                  v137 = &v168;
                  v138 = v183;
                  if (v184 >= v185)
                  {
                    if (v183 <= &v168 && v183 + 24 * v184 > &v168)
                    {
                      v151 = &v168 - v183;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                      v138 = v183;
                      v137 = v183 + v151;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v186, v184 + 1, 24);
                      v137 = &v168;
                      v138 = v183;
                    }
                  }

                  v139 = &v138[24 * v184];
                  v140 = *v137;
                  *(v139 + 2) = *(v137 + 2);
                  *v139 = v140;
                  ++v184;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
            if (v182)
            {
              mlir::InFlightDiagnostic::report(&v182);
            }

            if (v192 != 1)
            {
              return v6;
            }

            if (v191 != &v192)
            {
              free(v191);
            }

            v141 = __p;
            if (__p)
            {
              v142 = v190;
              v143 = __p;
              if (v190 != __p)
              {
                do
                {
                  v142 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v142 - 1);
                }

                while (v142 != v141);
                v143 = __p;
              }

              v190 = v141;
              operator delete(v143);
            }

            v10 = v187;
            if (!v187)
            {
              goto LABEL_236;
            }

            v144 = v188;
            v12 = v187;
            if (v188 == v187)
            {
              goto LABEL_235;
            }

            do
            {
              v146 = *--v144;
              v145 = v146;
              *v144 = 0;
              if (v146)
              {
                operator delete[](v145);
              }
            }

            while (v144 != v10);
            goto LABEL_234;
          }

          v87 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v85);
          v156 = v15;
          v157 = v87;
          *&v154 = &v157;
          *(&v154 + 1) = &v163;
          v155 = &v158;
          v88 = v167;
          v181 = 0;
          {
            return 0;
          }

          v89 = v181;
          if (v181)
          {
            do
            {
              v180 = 0uLL;
              v179 = 0;
              v178 = 0;
              v177 = 0uLL;
              *&v182 = 0;
              {
                return 0;
              }

              v90.var0.var0 = v162;
              {
                return 0;
              }

              if (*(&v177 + 1))
              {
                v174 = v177;
                v175 = v177;
                v176 = v88;
                v94 = *(&v180 + 1);
                v93 = v180;
                v95 = llvm::StringMapImpl::hash(v180, *(&v180 + 1), v91, v92);
                v96 = llvm::StringMapImpl::FindKey(a1 + 61, v93, v94, v95);
                if (v96 != -1 && v96 != *(a1 + 124))
                {
                  v97 = *(a1[61] + 8 * v96);
                  v100 = *(v97 + 8);
                  v98 = v97 + 8;
                  v99 = v100;
                  v101 = *(v98 + 23);
                  if (v101 >= 0)
                  {
                    v93 = v98;
                  }

                  else
                  {
                    v93 = v99;
                  }

                  v102 = *(v98 + 8);
                  if (v101 >= 0)
                  {
                    v94 = v101;
                  }

                  else
                  {
                    v94 = v102;
                  }
                }

                *&v180 = v93;
                *(&v180 + 1) = v94;
                *&v168 = &unk_1F5AF2270;
                *(&v168 + 1) = v93;
                v169 = v94;
                v170 = v179;
                v171 = &v174;
                v172 = a1 + 67;
                v173 = v152;
                if (((*(*v87 + 48))(v87, &v168) & 1) == 0)
                {
                  goto LABEL_188;
                }

                if (v175 != v174 + *(&v174 + 1))
                {
                  v103.var0.var0 = v176;
                  v104 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
                  if (v182)
                  {
                    mlir::InFlightDiagnostic::report(&v182);
                  }

                  v15 = a1 + 53;
                  if (v192)
                  {
                    if (v191 != &v192)
                    {
                      free(v191);
                    }

                    v105 = __p;
                    if (__p)
                    {
                      v106 = v190;
                      v107 = __p;
                      if (v190 != __p)
                      {
                        do
                        {
                          v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
                        }

                        while (v106 != v105);
                        v107 = __p;
                      }

                      v190 = v105;
                      operator delete(v107);
                    }

                    v108 = v187;
                    if (v187)
                    {
                      v109 = v188;
                      v110 = v187;
                      if (v188 != v187)
                      {
                        do
                        {
                          v112 = *--v109;
                          v111 = v112;
                          *v109 = 0;
                          if (v112)
                          {
                            operator delete[](v111);
                          }
                        }

                        while (v109 != v108);
                        v110 = v187;
                      }

                      v188 = v108;
                      operator delete(v110);
                    }

                    if (v183 != v186)
                    {
                      free(v183);
                    }
                  }

                  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                  if (v104)
                  {
                    goto LABEL_143;
                  }

                  return 0;
                }

                MPSGraphDelegateCompiler.precompilationDescriptor.modify();
              }
            }

            while (--v89);
          }

          v15 = a1 + 53;
LABEL_143:
          v6 = 1;
          if (v161 == v160 + *(&v160 + 1))
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
    *&v168 = "unexpected resource offset section when resource section is not present";
    LOWORD(v171) = 259;
    mlir::emitError(v5, &v168, &v182);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
    if (v182)
    {
      mlir::InFlightDiagnostic::report(&v182);
    }

    if (v192 == 1)
    {
      if (v191 != &v192)
      {
        free(v191);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v190;
        v9 = __p;
        if (v190 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v190 = v7;
        operator delete(v9);
      }

      v10 = v187;
      if (!v187)
      {
        goto LABEL_236;
      }

      v11 = v188;
      v12 = v187;
      if (v188 == v187)
      {
LABEL_235:
        v188 = v10;
        operator delete(v12);
LABEL_236:
        if (v183 != v186)
        {
          free(v183);
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
          operator delete[](v13);
        }
      }

      while (v11 != v10);
LABEL_234:
      v12 = v187;
      goto LABEL_235;
    }
  }

  else
  {
    v75 = a1[1];
    *&v168 = "expected resource offset section when resource section is present";
    LOWORD(v171) = 259;
    mlir::emitError(v75, &v168, &v182);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v182);
    if (v182)
    {
      mlir::InFlightDiagnostic::report(&v182);
    }

    if (v192 == 1)
    {
      if (v191 != &v192)
      {
        free(v191);
      }

      v76 = __p;
      if (__p)
      {
        v77 = v190;
        v78 = __p;
        if (v190 != __p)
        {
          do
          {
            v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
          }

          while (v77 != v76);
          v78 = __p;
        }

        v190 = v76;
        operator delete(v78);
      }

      v10 = v187;
      if (!v187)
      {
        goto LABEL_236;
      }

      v79 = v188;
      v12 = v187;
      if (v188 == v187)
      {
        goto LABEL_235;
      }

      do
      {
        v81 = *--v79;
        v80 = v81;
        *v79 = 0;
        if (v81)
        {
          operator delete[](v80);
        }
      }

      while (v79 != v10);
      goto LABEL_234;
    }
  }

  return v6;
}

BOOL anonymous namespace::AttrTypeReader::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AttributeStorage *a6, uint64_t a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v33[0] = a4;
  v33[1] = a5;
  v10 = *(a1 + 136);
  v29 = a6;
  v30 = a7;
  v31 = a6;
  v32 = v10;
  v28 = 0;
  {
    return 0;
  }

  v27 = 0;
  {
    return 0;
  }

  v11 = v28;
  v12 = *(a1 + 32);
  if (v28 != v12)
  {
    if (v28 >= v12)
    {
      if (v28 > *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v28, 40);
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
  v14 = v27;
  v15 = *(a1 + 88);
  if (v27 != v15)
  {
    if (v27 >= v15)
    {
      if (v27 > *(a1 + 92))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 80, (a1 + 96), v27, 40);
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

  v26 = 0;
  v34 = 0;
  v39 = (a1 + 24);
  v40 = &v34;
  v41 = &v29;
  v42 = &v26;
  v43 = v33;
  if (v12)
  {
    v16 = v12;
    while (1)
    {
      v37 = a2;
      v38 = a3;
      v36 = 0;
      {
        return 0;
      }

      v35 = 0;
      {
        return 0;
      }

      v17 = v35;
      if (v35)
      {
        v18 = v36;
        while (_ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(&v39, *v18))
        {
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        return 0;
      }

LABEL_19:
      if (v34 == v16)
      {
        LODWORD(v15) = *(a1 + 88);
        v13 = (a1 + 80);
        break;
      }
    }
  }

  v34 = 0;
  v39 = v13;
  v40 = &v34;
  v41 = &v29;
  v42 = &v26;
  v43 = v33;
  if (v15)
  {
    v19 = v15;
    do
    {
      v37 = a2;
      v38 = a3;
      v36 = 0;
      {
        return 0;
      }

      v35 = 0;
      {
        return 0;
      }

      v20 = v35;
      if (v35)
      {
        v21 = v36;
        while (_ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(&v39, *v21))
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

    while (v34 != v19);
  }

  if (v31 == (v29 + v30))
  {
    return 1;
  }

  v23.var0.var0 = v32;
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    v24 = result;
    mlir::InFlightDiagnostic::report(&v39);
    result = v24;
  }

  if (v44 == 1)
  {
    v25 = result;
    mlir::Diagnostic::~Diagnostic(&v40);
    return v25;
  }

  return result;
}

BOOL mlir::BytecodeReader::Impl::parseIRSection(uint64_t a1, AttributeStorage *a2, AttributeStorage *a3, uint64_t a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v79[0] = a2;
  v79[1] = a3;
  v79[2] = a2;
  v80 = v6;
  LOBYTE(v90) = 0;
  v91 = 0;
  v7 = mlir::ModuleOp::create(v6, &v90);
  v8 = operator new(0x80uLL);
  v9 = v7[11];
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((&v7[4 * ((v9 >> 23) & 1) + 17] + ((v9 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v7[10];
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *v8 = v11;
  v8[1] = v11 + 24 * v10;
  v8[2] = v79;
  v8[3] = 0;
  *(v8 + 8) = 0;
  v8[5] = v8 + 7;
  v8[6] = 0x600000000;
  v8[13] = 0;
  v8[14] = 0;
  *(v8 + 120) = 1;
  v77 = v8 + 16;
  v78 = (v8 + 16);
  v76 = v8;
  v12 = *(((&v7[4 * ((v9 >> 23) & 1) + 17] + ((v9 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v7[10] + 8);
  if (v12)
  {
    v13 = v12 - 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v8 + 12);
  if (v14 >= *(v8 + 13))
  {
    v73 = v8;
    llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 5), v8 + 7, v14 + 1, 8);
    v8 = v73;
    LODWORD(v14) = v73[12];
  }

  *(v8[5] + 8 * v14) = v13;
  ++*(v8 + 12);
  *(v77 - 3) = *(*(v77 - 16) + 8);
  if (mlir::BytecodeReader::Impl::parseBlockHeader(a1, v79, (v77 - 16)))
  {
    v16 = *(a1 + 688);
    if (v16 >= *(a1 + 696))
    {
      v17 = std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>((a1 + 680));
    }

    else
    {
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0;
      *v16 = 0u;
      *(v16 + 24) = v16 + 40;
      *(v16 + 36) = 4;
      v17 = (v16 + 56);
    }

    *(a1 + 688) = v17;
    v19 = (v17 - 7);
    v20 = v77;
    v21 = (*(v17 - 6) - *(v17 - 7)) >> 3;
    v22 = *(v17 - 6);
    if (v22 >= *(v17 - 5))
    {
      v75 = v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod((v17 - 4), v17 - 2, v22 + 1, 4);
      v17 = v75;
      LODWORD(v22) = *(v75 - 6);
    }

    *(*(v17 - 4) + v22) = v21;
    ++*(v17 - 6);
    v23 = *(v17 - 7);
    v24 = (*(v17 - 6) - v23) >> 3;
    v25 = *(v20 - 24);
    if (v24 >= v24 + v25)
    {
      if (v24 > v24 + v25)
      {
        *(v17 - 6) = (v23 + 8 * (v24 + v25));
      }
    }

    else
    {
      std::vector<mlir::Value>::__append(v19, v25);
    }

    while (v76 != v77)
    {
      if ((mlir::BytecodeReader::Impl::parseRegions(a1, &v76, (v77 - 16)) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (*(a1 + 760) == a1 + 760)
    {
      LODWORD(v81[0]) = 0;
      *&v90 = a1;
      *(&v90 + 1) = v81;
      mlir::detail::walk<mlir::ForwardIterator>(v7, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_0>, &v90, 0);
      *&v90 = a1;
      v35 = mlir::detail::walk<mlir::ForwardIterator>(v7, llvm::function_ref<mlir::WalkResult ()(mlir::Block *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_1>, &v90, 1);
      *&v90 = a1;
      v36 = mlir::detail::walk<mlir::ForwardIterator>(v7, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_2>, &v90, 1);
      if (v35 && v36)
      {
        v40 = *(a1 + 280);
        if (v40)
        {
          v41 = *(a1 + 272);
          v42 = 8 * v40;
          while (1)
          {
            v38 = *(*v41 + 56);
            if (v38)
            {
              v43 = *(*v41 + 16);
              if (v43)
              {
                if (((*(*v43 + 64))(v43, v7) & 1) == 0)
                {
                  break;
                }
              }
            }

            v41 += 8;
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
LABEL_68:
          if (*(*a1 + 8) != 1 || (mlir::verify(v7, 1, v38, v39) & 1) != 0)
          {
            v56 = *(((&v7[4 * ((v7[11] >> 23) & 1) + 17] + ((v7[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v7[10] + 8);
            if (v56)
            {
              v57 = v56 - 8;
            }

            else
            {
              v57 = 0;
            }

            llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::splice(a4 + 32, (a4 + 32), v57 + 32, *(v57 + 40), (v57 + 32));
            v18 = 1;
            goto LABEL_103;
          }
        }

LABEL_22:
        v18 = 0;
        goto LABEL_102;
      }

      mlir::emitError(&v90, v80, v37);
      if (v90)
      {
        LODWORD(v81[0]) = 3;
        v81[1] = "parsed use-list orders were invalid and could not be applied";
        v81[2] = 60;
        v44 = v81;
        v45 = v92;
        if (v93 >= v94)
        {
          if (v92 <= v81 && v92 + 24 * v93 > v81)
          {
            v74 = v81 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
            v45 = v92;
            v44 = v92 + v74;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
            v44 = v81;
            v45 = v92;
          }
        }

        v46 = &v45[24 * v93];
        v47 = *v44;
        *(v46 + 2) = *(v44 + 2);
        *v46 = v47;
        ++v93;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(v81, &v90);
      if (v90)
      {
        mlir::InFlightDiagnostic::report(&v90);
      }

      if (v101 == 1)
      {
        if (v100 != &v101)
        {
          free(v100);
        }

        v48 = __p;
        if (__p)
        {
          v49 = v99;
          v50 = __p;
          if (v99 != __p)
          {
            do
            {
              v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
            }

            while (v49 != v48);
            v50 = __p;
          }

          v99 = v48;
          operator delete(v50);
        }

        v51 = v96;
        if (v96)
        {
          v52 = v97;
          v53 = v96;
          if (v97 != v96)
          {
            do
            {
              v55 = *--v52;
              v54 = v55;
              *v52 = 0;
              if (v55)
              {
                operator delete[](v54);
              }
            }

            while (v52 != v51);
            v53 = v96;
          }

          v97 = v51;
          operator delete(v53);
        }

        if (v92 != v95)
        {
          free(v92);
        }
      }

      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
      if (v81[0])
      {
        mlir::InFlightDiagnostic::report(v81);
      }

      if (v89 != 1)
      {
        goto LABEL_102;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v59 = v86;
      if (v86)
      {
        v60 = v87;
        v61 = v86;
        if (v87 != v86)
        {
          do
          {
            v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
          }

          while (v60 != v59);
          v61 = v86;
        }

        v87 = v59;
        operator delete(v61);
      }

      v62 = v84;
      if (v84)
      {
        v63 = v85;
        v64 = v84;
        if (v85 != v84)
        {
          do
          {
            v66 = *--v63;
            v65 = v66;
            *v63 = 0;
            if (v66)
            {
              operator delete[](v65);
            }
          }

          while (v63 != v62);
          v64 = v84;
        }

        v85 = v62;
        operator delete(v64);
      }

      v58 = v82;
      if (v82 == &v83)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v26.var0.var0 = v80;
      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
      if (v90)
      {
        mlir::InFlightDiagnostic::report(&v90);
      }

      if (v101 != 1)
      {
        goto LABEL_102;
      }

      if (v100 != &v101)
      {
        free(v100);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v99;
        v29 = __p;
        if (v99 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v99 = v27;
        operator delete(v29);
      }

      v30 = v96;
      if (v96)
      {
        v31 = v97;
        v32 = v96;
        if (v97 != v96)
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
          v32 = v96;
        }

        v97 = v30;
        operator delete(v32);
      }

      v58 = v92;
      if (v92 == v95)
      {
LABEL_102:
        if (!v7)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }
    }

    free(v58);
    goto LABEL_102;
  }

  v18 = 0;
LABEL_103:
  mlir::Operation::erase(v7, v15);
LABEL_104:
  v67 = v76;
  if (v76)
  {
    v68 = v77;
    v69 = v76;
    if (v77 != v76)
    {
      do
      {
        v70 = *(v68 - 11);
        if (v68 - 9 != v70)
        {
          free(v70);
        }

        v71 = *(v68 - 13);
        *(v68 - 13) = 0;
        if (v71)
        {
          operator delete(v71);
        }

        v68 -= 16;
      }

      while (v68 != v67);
      v69 = v76;
    }

    v77 = v67;
    operator delete(v69);
  }

  return v18;
}

uint64_t anonymous namespace::EncodingReader::parseVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (v4 == (*this + *(this + 1)))
  {
    v8.var0.var0 = *(this + 3);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
    if (*__dst)
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v24;
        v12 = __p;
        if (v24 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v24 = v10;
        operator delete(v12);
      }

      v13 = v21;
      if (v21)
      {
        v14 = v22;
        v15 = v21;
        if (v22 != v21)
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
          v15 = v21;
        }

        v22 = v13;
        operator delete(v15);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }

    if (!v9)
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
      v87 = xmmword_1E0970050;
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

uint64_t mlir::BytecodeReader::Impl::parseBlockHeader(uint64_t a1, AttributeStorage **this, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
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

  v30 = 0;
  {
    return 0;
  }

  v36 = &v38;
  v37 = 0x600000000;
  v33 = v35;
  v34 = 0x600000000;
  v10 = v30;
  if (v30 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, &v38, v30, 8);
    if (v10 > HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v10, 8);
    }
  }

  v11 = mlir::UnknownLoc::get(**a1, v9);
  if (!v10)
  {
LABEL_28:
    mlir::ValueRange::ValueRange(&v31, v36, v37);
    mlir::Block::addArguments(v8, v31, v32, v33, v34);
    mlir::ValueRange::ValueRange(&v31, v8[6], (v8[7] - v8[6]) >> 3);
    v23.var0.var0 = this[3];
    v24 = !mlir::BytecodeReader::Impl::defineValues(a1, v23, v31, v32);
    v25 = v33;
    if (v33 == v35)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v12 = v11;
  while (1)
  {
    v29 = v12;
    if (*(a1 + 248) < 4uLL)
    {
      break;
    }

    v31 = 0;
    {
      goto LABEL_37;
    }

    v13 = v31;
    v14.var0.var0 = (v31 >> 1);
    if (!v15)
    {
      goto LABEL_37;
    }

    v16 = v15;
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_21:
    v19 = v37;
    if (v37 >= HIDWORD(v37))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, &v38, v37 + 1, 8);
      v19 = v37;
    }

    *(v36 + v19) = v16;
    LODWORD(v37) = v37 + 1;
    v20 = v29;
    v21 = v34;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v34 + 1, 8);
      v21 = v34;
    }

    *(v33 + v21) = v20;
    LODWORD(v34) = v34 + 1;
    if (!--v10)
    {
      goto LABEL_28;
    }
  }

  v31 = 0;
  {
    v17.var0.var0 = v31;
    if (v18)
    {
      v16 = v18;
LABEL_20:
      if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, this, &v29) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }
  }

LABEL_37:
  v24 = 1;
  v25 = v33;
  if (v33 != v35)
  {
LABEL_29:
    free(v25);
  }

LABEL_30:
  if (v36 != &v38)
  {
    free(v36);
  }

  if (v24)
  {
    return 0;
  }

  if (*(a1 + 248) < 3uLL)
  {
    return 1;
  }

  LOBYTE(v31) = 0;
  result = 0;
  if (v26)
  {
    if (v31)
    {
      v27 = *(a3 + 104);
      if (v27)
      {
        v28 = v27 - 8;
      }

      else
      {
        v28 = 0;
      }

      mlir::BytecodeReader::Impl::parseUseListOrderForRange(&v36, this, ((*(v28 + 56) - *(v28 + 48)) >> 3));
    }

    return 1;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseRegions(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v317 = *MEMORY[0x1E69E9840];
  if (*a3 != *(a3 + 8))
  {
    v257 = (a1 + 11);
    v254 = a1 + 67;
    v253 = a1 + 53;
    v252 = a1 + 42;
    v255 = (a1 + 31);
    v7 = &v307;
    v248 = a1 + 3;
    while (!*(a3 + 104))
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

LABEL_386:
      v210 = v8 + 3;
      *a3 = v210;
      if (v210 == *(a3 + 8))
      {
        goto LABEL_387;
      }
    }

    v9 = *(a3 + 16);
    while (1)
    {
      v10 = *(a3 + 112);
      *(a3 + 112) = v10 - 1;
      v11 = v3;
      if (v10)
      {
        break;
      }

LABEL_378:
      v204 = *(*(a3 + 104) + 8);
      *(a3 + 104) = v204;
      v8 = *a3;
      if (v204 == *a3)
      {
        *(a3 + 104) = 0;
        v205 = a1[86];
        v206 = *(v205 - 56);
        v207 = (*(v205 - 48) - v206) >> 3;
        v208 = *(a3 + 32);
        v209 = v207 - v208;
        if (v207 >= v208)
        {
          if (v207 > v209)
          {
            *(v205 - 48) = v206 + 8 * v209;
          }
        }

        else
        {
          std::vector<mlir::Value>::__append(v205 - 56, -v208);
          v8 = *a3;
        }

        --*(v205 - 24);
        v3 = v11;
        goto LABEL_386;
      }

      v3 = v11;
      v11 = 0;
      if ((mlir::BytecodeReader::Impl::parseBlockHeader(a1, v9, a3) & 1) == 0)
      {
        return v11;
      }
    }

    v249 = v7;
    v250 = a2;
    while (1)
    {
      v260.__r_.__value_.__r.__words[0] = 0;
      {
        return 0;
      }

      v12.var0.var0 = *(v9 + 24);
      v13 = a1[45];
      v14 = *(a1 + 92);
      *__src = "operation name";
      *&__src[8] = 14;
      v267 = v260.__r_.__value_.__r.__words[0];
      if (v260.__r_.__value_.__r.__words[0] < v14)
      {
        break;
      }

      v17 = v11;
      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v277);
      if (v277[0])
      {
        mlir::InFlightDiagnostic::report(v277);
      }

      if (v295 == 1)
      {
        if (v293 != &v295)
        {
          free(v293);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v292;
          v21 = __p;
          if (v292 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v292 = v19;
          operator delete(v21);
        }

        v22 = v289;
        if (v289)
        {
          v23 = v290;
          v24 = v289;
          if (v290 != v289)
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
            v24 = v289;
          }

          v290 = v22;
          operator delete(v24);
        }

        if (v279 != v281)
        {
          free(v279);
        }
      }

      if (!v18)
      {
        return 0;
      }

      v15 = 0;
      LODWORD(v11) = v17;
      v16 = MEMORY[0x28];
      if ((MEMORY[8] & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_48:
      v35 = *v15;
      v36 = *(v9 + 16);
      v251 = v11;
      if (v36 == (*v9 + *(v9 + 8)))
      {
        v38.var0.var0 = *(v9 + 24);
        v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v277);
        if (v277[0])
        {
          mlir::InFlightDiagnostic::report(v277);
        }

        if (v295 == 1)
        {
          if (v293 != &v295)
          {
            free(v293);
          }

          v40 = __p;
          if (__p)
          {
            v41 = v292;
            v42 = __p;
            if (v292 != __p)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = __p;
            }

            v292 = v40;
            operator delete(v42);
          }

          v43 = v289;
          if (v289)
          {
            v44 = v290;
            v45 = v289;
            if (v290 != v289)
            {
              do
              {
                v47 = *--v44;
                v46 = v47;
                *v44 = 0;
                if (v47)
                {
                  operator delete[](v46);
                }
              }

              while (v44 != v43);
              v45 = v289;
            }

            v290 = v43;
            operator delete(v45);
          }

          if (v279 != v281)
          {
            free(v279);
          }
        }

        if (!v39)
        {
          return 0;
        }

        v37 = 0;
        v264 = 0;
        if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v9, &v264) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        *(v9 + 16) = v36 + 1;
        v37 = *v36;
        v264 = 0;
        if ((mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v9, &v264) & 1) == 0)
        {
          return 0;
        }
      }

      mlir::OperationState::OperationState(v277, v264, v35);
      if (v37)
      {
        *__src = 0;
        {
          goto LABEL_439;
        }

        v49.var0.var0 = *__src;
        v260.__r_.__value_.__r.__words[0] = v50;
        if (!v50)
        {
          goto LABEL_439;
        }

        v51 = *(*v50 + 136);
        if (v51 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v52 = v50;
        }

        else
        {
          v52 = 0;
        }

        if (v51 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v52 = v50;
        }

        else
        {
          v267 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DictionaryAttr]";
          *&v268 = 70;
          v53 = llvm::StringRef::find(&v267, "DesiredTypeName = ", 0x12uLL, 0);
          if (v268 >= v53)
          {
            v54 = v53;
          }

          else
          {
            v54 = v268;
          }

          v55 = v267 + v54;
          v56 = v268 - v54;
          v57 = 18;
          if (v56 < 0x12)
          {
            v57 = v56;
          }

          v58 = &v55[v57];
          v59 = v56 - v57;
          if (v59 >= v59 - 1)
          {
            --v59;
          }

          v267 = v58;
          *&v268 = v59;
          v60.var0.var0 = *(v9 + 24);
          v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
          if (*__src)
          {
            mlir::InFlightDiagnostic::report(__src);
          }

          if (v316 == 1)
          {
            if (v315 != &v316)
            {
              free(v315);
            }

            v62 = v313;
            if (v313)
            {
              v63 = v314;
              v64 = v313;
              if (v314 != v313)
              {
                do
                {
                  v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
                }

                while (v63 != v62);
                v64 = v313;
              }

              v314 = v62;
              operator delete(v64);
            }

            v65 = v311;
            if (v311)
            {
              v66 = v312;
              v67 = v311;
              if (v312 != v311)
              {
                do
                {
                  v69 = *--v66;
                  v68 = v69;
                  *v66 = 0;
                  if (v69)
                  {
                    operator delete[](v68);
                  }
                }

                while (v66 != v65);
                v67 = v311;
              }

              v312 = v65;
              operator delete(v67);
            }

            if (v304 != &v305)
            {
              free(v304);
            }
          }

          if (!v61)
          {
            goto LABEL_439;
          }
        }

        mlir::NamedAttrList::NamedAttrList(__src, v52);
        v48.var0.var0 = *__src;
        if (*__src != &__src[16])
        {
          if (__dst != &v288)
          {
            free(__dst);
            v48.var0.var0 = *__src;
          }

          __dst = v48.var0.var0;
          v287 = *&__src[8];
          *__src = &__src[16];
          *&__src[8] = 0;
          v294 = v308;
          goto LABEL_114;
        }

        v93 = *&__src[8];
        v94 = v287;
        if (v287 >= *&__src[8])
        {
          if (*&__src[8])
          {
            memmove(__dst, *__src, 16 * *&__src[8]);
          }
        }

        else
        {
          if (HIDWORD(v287) < *&__src[8])
          {
            LODWORD(v287) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v288, *&__src[8], 16);
            goto LABEL_173;
          }

          if (v287)
          {
            memmove(__dst, *__src, 16 * v287);
          }

          else
          {
LABEL_173:
            v94 = 0;
          }

          if (*&__src[8] != v94)
          {
            memcpy(__dst + 16 * v94, (*__src + 16 * v94), 16 * (*&__src[8] - v94));
          }
        }

        LODWORD(v287) = v93;
        *&__src[8] = 0;
        v294 = v308;
        if (*__src != &__src[16])
        {
          free(*__src);
        }
      }

LABEL_114:
      if ((v37 & 0x40) == 0)
      {
        goto LABEL_205;
      }

      if ((v16 & 0x100) == 0)
      {
        v226 = a1[1];
        WORD4(v269) = 259;
        mlir::emitError(v226, &v267, __src);
        if (*__src)
        {
          v227 = *v255;
          LODWORD(v260.__r_.__value_.__l.__data_) = 5;
          v260.__r_.__value_.__l.__size_ = v227;
          v228 = &v260;
          v229 = v304;
          if (DWORD2(v304) >= HIDWORD(v304))
          {
            if (v304 <= &v260 && v304 + 24 * DWORD2(v304) > &v260)
            {
              v246 = &v260 - v304;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v304, &v305, DWORD2(v304) + 1, 24);
              v229 = v304;
              v228 = &v246[v304];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v304, &v305, DWORD2(v304) + 1, 24);
              v228 = &v260;
              v229 = v304;
            }
          }

          v230 = v229 + 24 * DWORD2(v304);
          v231 = *&v228->__r_.__value_.__l.__data_;
          *(v230 + 16) = *(&v228->__r_.__value_.__l + 2);
          *v230 = v231;
          v232 = ++DWORD2(v304);
          if (*__src)
          {
            LODWORD(v260.__r_.__value_.__l.__data_) = 3;
            v260.__r_.__value_.__l.__size_ = " with properties.";
            v260.__r_.__value_.__r.__words[2] = 17;
            v233 = &v260;
            v234 = v304;
            if (v232 >= HIDWORD(v304))
            {
              if (v304 <= &v260 && v304 + 24 * v232 > &v260)
              {
                v247 = &v260 - v304;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v304, &v305, v232 + 1, 24);
                v234 = v304;
                v233 = &v247[v304];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v304, &v305, v232 + 1, 24);
                v233 = &v260;
                v234 = v304;
              }
            }

            v235 = v234 + 24 * DWORD2(v304);
            v236 = *&v233->__r_.__value_.__l.__data_;
            *(v235 + 16) = *(&v233->__r_.__value_.__l + 2);
            *v235 = v236;
            ++DWORD2(v304);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }
          }
        }

        if (v316 == 1)
        {
          if (v315 != &v316)
          {
            free(v315);
          }

          v237 = v313;
          if (v313)
          {
            v238 = v314;
            v239 = v313;
            if (v314 != v313)
            {
              do
              {
                v238 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v238 - 1);
              }

              while (v238 != v237);
              v239 = v313;
            }

            v314 = v237;
            operator delete(v239);
          }

          v240 = v311;
          if (v311)
          {
            v241 = v312;
            v242 = v311;
            if (v312 != v311)
            {
              do
              {
                v244 = *--v241;
                v243 = v244;
                *v241 = 0;
                if (v244)
                {
                  operator delete[](v243);
                }
              }

              while (v241 != v240);
              v242 = v311;
            }

            v312 = v240;
            operator delete(v242);
          }

          if (v304 != &v305)
          {
            free(v304);
          }
        }

LABEL_439:
        mlir::OperationState::~OperationState(v277);
        return 0;
      }

      v260.__r_.__value_.__r.__words[0] = &unk_1F5AF21B0;
      v260.__r_.__value_.__l.__size_ = v257;
      v260.__r_.__value_.__r.__words[2] = v254;
      *&v261 = v253;
      *(&v261 + 1) = v252;
      v262 = v9;
      v263 = v255;
      v70 = a1[1];
      v273 = 0;
      {
        goto LABEL_439;
      }

      if (v273 >= *(a1 + 156))
      {
        v274 = "Properties idx out-of-bound for ";
        v276 = 259;
        (*(v260.__r_.__value_.__r.__words[0] + 16))(__src, &v260, &v274);
        v267 = *(v35 + 8);
        AttrData = mlir::OpaqueAttr::getAttrData(&v267);
        if (*__src)
        {
          WORD4(v269) = 261;
          v267 = AttrData;
          *&v268 = v83;
          mlir::Diagnostic::operator<<(&__src[8], &v267);
        }

        v84 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v316 == 1)
        {
          if (v315 != &v316)
          {
            free(v315);
          }

          v85 = v313;
          if (v313)
          {
            v86 = v314;
            v87 = v313;
            if (v314 != v313)
            {
              do
              {
                v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
              }

              while (v86 != v85);
              v87 = v313;
            }

            v314 = v85;
            operator delete(v87);
          }

          v88 = v311;
          if (v311)
          {
            v89 = v312;
            v90 = v311;
            if (v312 == v311)
            {
              goto LABEL_201;
            }

            do
            {
              v92 = *--v89;
              v91 = v92;
              *v89 = 0;
              if (v92)
              {
                operator delete[](v91);
              }
            }

            while (v89 != v88);
LABEL_200:
            v90 = v311;
            goto LABEL_201;
          }

LABEL_202:
          if (v304 != &v305)
          {
            free(v304);
          }
        }

LABEL_204:
        if (!v84)
        {
          goto LABEL_439;
        }

        goto LABEL_205;
      }

      v71 = a1[76];
      if (v273 >= v71)
      {
        v274 = "Properties offset out-of-bound for ";
        v276 = 259;
        (*(v260.__r_.__value_.__r.__words[0] + 16))(__src, &v260, &v274);
        v267 = *(v35 + 8);
        v95 = mlir::OpaqueAttr::getAttrData(&v267);
        if (*__src)
        {
          WORD4(v269) = 261;
          v267 = v95;
          *&v268 = v96;
          mlir::Diagnostic::operator<<(&__src[8], &v267);
        }

        v84 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v316 != 1)
        {
          goto LABEL_204;
        }

        if (v315 != &v316)
        {
          free(v315);
        }

        v97 = v313;
        if (v313)
        {
          v98 = v314;
          v99 = v313;
          if (v314 != v313)
          {
            do
            {
              v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
            }

            while (v98 != v97);
            v99 = v313;
          }

          v314 = v97;
          operator delete(v99);
        }

        v88 = v311;
        if (!v311)
        {
          goto LABEL_202;
        }

        v100 = v312;
        v90 = v311;
        if (v312 != v311)
        {
          do
          {
            v102 = *--v100;
            v101 = v102;
            *v100 = 0;
            if (v102)
            {
              operator delete[](v101);
            }
          }

          while (v100 != v88);
          goto LABEL_200;
        }

LABEL_201:
        v312 = v88;
        operator delete(v90);
        goto LABEL_202;
      }

      v72 = *(a1[77] + 8 * v273);
      v267 = (a1[75] + v72);
      *&v268 = v71 - v72;
      *(&v268 + 1) = v267;
      *&v269 = v70;
      *&__src[8] = *&v260.__r_.__value_.__r.__words[1];
      v304 = v261;
      *__src = &unk_1F5AF21B0;
      v305 = &v267;
      v306 = v263;
      v265[0] = 0;
      v274 = 0;
      v275 = 0;
      {
        goto LABEL_439;
      }

      v272[0] = v274;
      v272[1] = v275;
      v272[2] = v274;
      v272[3] = v70;
      v268 = *&v260.__r_.__value_.__r.__words[1];
      v269 = v261;
      v267 = &unk_1F5AF21B0;
      v270 = v272;
      v271 = v263;
      {
        v73 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
        v74 = *(v35 + 32);
        v75 = *(v35 + 40);
        if (!v75)
        {
          goto LABEL_181;
        }
      }

      else
      {
        mlir::BytecodeReader::Impl::parseRegions();
        v73 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
        v74 = *(v35 + 32);
        v75 = *(v35 + 40);
        if (!v75)
        {
          goto LABEL_181;
        }
      }

      v76 = v74;
      v77 = v75;
      do
      {
        v78 = v77 >> 1;
        v79 = &v76[2 * (v77 >> 1)];
        v81 = *v79;
        v80 = v79 + 2;
        v77 += ~(v77 >> 1);
        if (v81 < v73)
        {
          v76 = v80;
        }

        else
        {
          v77 = v78;
        }
      }

      while (v77);
      if (v76 != &v74[2 * v75] && *v76 == v73)
      {
        v187 = v76[1];
        if (v187)
        {
          if (((*v187)(&v267, v277) & 1) == 0)
          {
            goto LABEL_439;
          }

          goto LABEL_205;
        }
      }

LABEL_181:
      if (*(v35 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v265[0] = "has properties but missing BytecodeOpInterface for ";
        v266 = 259;
        v274 = *(v35 + 8);
        v103 = mlir::OpaqueAttr::getAttrData(&v274);
        if (*__src)
        {
          v276 = 261;
          v274 = v103;
          v275 = v104;
          mlir::Diagnostic::operator<<(&__src[8], &v274);
        }

        v84 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v316 != 1)
        {
          goto LABEL_204;
        }

        if (v315 != &v316)
        {
          free(v315);
        }

        v105 = v313;
        if (v313)
        {
          v106 = v314;
          v107 = v313;
          if (v314 != v313)
          {
            do
            {
              v106 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v106 - 1);
            }

            while (v106 != v105);
            v107 = v313;
          }

          v314 = v105;
          operator delete(v107);
        }

        v88 = v311;
        if (!v311)
        {
          goto LABEL_202;
        }

        v108 = v312;
        v90 = v311;
        if (v312 != v311)
        {
          do
          {
            v110 = *--v108;
            v109 = v110;
            *v108 = 0;
            if (v110)
            {
              operator delete[](v109);
            }
          }

          while (v108 != v88);
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      v162 = v268;
      *__src = 0;
      {
        goto LABEL_439;
      }

      v163.var0.var0 = *__src;
      {
        goto LABEL_439;
      }

LABEL_205:
      if ((v37 & 2) != 0)
      {
        v267 = 0;
        {
          goto LABEL_439;
        }

        v111 = v267;
        v112 = v283;
        if (v267 != v283)
        {
          if (v267 >= v283)
          {
            if (v267 > v284)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v282, &v285, v267, 8);
              v112 = v283;
            }

            if (v111 != v112)
            {
              bzero((v282 + 8 * v112), 8 * (v111 - v112));
            }
          }

          v283 = v111;
        }

        if (v111 >= 1)
        {
          v113 = 0;
          v114 = v111 & 0x7FFFFFFF;
          do
          {
            v115 = v282;
            *__src = 0;
            {
              goto LABEL_439;
            }

            v116.var0.var0 = *__src;
            *(v115 + 8 * v113) = v117;
            if (!v117)
            {
              goto LABEL_439;
            }
          }

          while (v114 != ++v113);
        }
      }

      if ((v37 & 4) != 0)
      {
        v265[0] = 0;
        {
          goto LABEL_439;
        }

        v118 = v265[0];
        v119 = v279;
        if (v265[0] != v279)
        {
          if (v265[0] >= v279)
          {
            if (v265[0] > HIDWORD(v279))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v278, &v280, v265[0], 8);
              v119 = v279;
            }

            if (v118 != v119)
            {
              bzero(&v278[v119], 8 * (v118 - v119));
            }
          }

          LODWORD(v279) = v118;
        }

        if (v118 >= 1)
        {
          v120 = 0;
          v121 = v118 & 0x7FFFFFFF;
          while (1)
          {
            v122 = a1[86];
            v274 = 0;
            {
              break;
            }

            v123 = v274;
            v48.var0.var0 = *(v9 + 24);
            v125 = *(v122 - 56);
            v124 = *(v122 - 48);
            v267 = "value";
            *&v268 = 5;
            v260.__r_.__value_.__r.__words[0] = v274;
            if (v274 >= (v124 - v125) >> 3)
            {
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
              if (*__src)
              {
                mlir::InFlightDiagnostic::report(__src);
              }

              if (v316 == 1)
              {
                if (v315 != &v316)
                {
                  free(v315);
                }

                v218 = v313;
                if (v313)
                {
                  v219 = v314;
                  v220 = v313;
                  if (v314 != v313)
                  {
                    do
                    {
                      v219 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v219 - 1);
                    }

                    while (v219 != v218);
                    v220 = v313;
                  }

                  v314 = v218;
                  operator delete(v220);
                }

                v221 = v311;
                if (v311)
                {
                  v222 = v312;
                  v223 = v311;
                  if (v312 != v311)
                  {
                    do
                    {
                      v225 = *--v222;
                      v224 = v225;
                      *v222 = 0;
                      if (v225)
                      {
                        operator delete[](v224);
                      }
                    }

                    while (v222 != v221);
                    v223 = v311;
                  }

                  v312 = v221;
                  operator delete(v223);
                }

                if (v304 != &v305)
                {
                  free(v304);
                }
              }

              break;
            }

            v126 = *(v125 + 8 * v274);
            if (v126)
            {
              v278[v120] = v126;
            }

            else
            {
              ForwardRef = mlir::BytecodeReader::Impl::createForwardRef(a1, v48.var0.var0);
              *(v125 + 8 * v123) = ForwardRef;
              v278[v120] = ForwardRef;
              if (!ForwardRef)
              {
                goto LABEL_439;
              }
            }

            if (v121 == ++v120)
            {
              goto LABEL_237;
            }
          }

          v278[v120] = 0;
          goto LABEL_439;
        }
      }

LABEL_237:
      if ((v37 & 8) != 0)
      {
        v265[0] = 0;
        {
          goto LABEL_439;
        }

        v128 = v265[0];
        v129 = v296;
        if (v265[0] != v296)
        {
          if (v265[0] >= v296)
          {
            if (v265[0] > v297)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v295, &v298, v265[0], 8);
              v129 = v296;
            }

            if (v128 != v129)
            {
              bzero((v295 + 8 * v129), 8 * (v128 - v129));
            }
          }

          v296 = v128;
        }

        if (v128 >= 1)
        {
          v130 = 0;
          v131 = v128 & 0x7FFFFFFF;
          do
          {
            v132 = v295;
            v274 = 0;
            {
              goto LABEL_439;
            }

            v48.var0.var0 = *(v9 + 24);
            v133 = *(a3 + 40);
            v134 = *(a3 + 48);
            v267 = "successor";
            *&v268 = 9;
            v260.__r_.__value_.__r.__words[0] = v274;
            if (v274 < v134)
            {
              *(v132 + 8 * v130) = *(v133 + 8 * v274);
            }

            else
            {
              v135 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
              if (*__src)
              {
                mlir::InFlightDiagnostic::report(__src);
              }

              if (v316 == 1)
              {
                if (v315 != &v316)
                {
                  free(v315);
                }

                v136 = v313;
                if (v313)
                {
                  v137 = v314;
                  v138 = v313;
                  if (v314 != v313)
                  {
                    do
                    {
                      v137 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v137 - 1);
                    }

                    while (v137 != v136);
                    v138 = v313;
                  }

                  v314 = v136;
                  operator delete(v138);
                }

                v139 = v311;
                if (v311)
                {
                  v140 = v312;
                  v141 = v311;
                  if (v312 != v311)
                  {
                    do
                    {
                      v143 = *--v140;
                      v142 = v143;
                      *v140 = 0;
                      if (v143)
                      {
                        operator delete[](v142);
                      }
                    }

                    while (v140 != v139);
                    v141 = v311;
                  }

                  v312 = v139;
                  operator delete(v141);
                }

                if (v304 != &v305)
                {
                  free(v304);
                }
              }

              if (!v135)
              {
                goto LABEL_439;
              }
            }
          }

          while (++v130 != v131);
        }
      }

      if (*v255 > 2)
      {
        v144 = (v37 >> 5) & 1;
      }

      else
      {
        v144 = 0;
      }

      if (v144 == 1)
      {
        mlir::BytecodeReader::Impl::parseUseListOrderForRange(__src, v9, v283);
      }

      v256 &= 0xFFFFFFFFFFFFFF00;
      if ((v37 & 0x10) != 0)
      {
        *__src = 0;
        {
          goto LABEL_300;
        }

        v145 = __src[0];
        v146 = *__src >> 1;
        llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(&v299, *__src >> 1);
        if (v146 >= 1)
        {
          do
          {
            v147 = operator new(0x18uLL);
            *v147 = v147;
            *(v147 + 1) = v147;
            *(v147 + 2) = 0;
            v267 = v147;
            v148 = v299;
            if (v300 >= v301)
            {
              if (v299 <= &v267 && v299 + 8 * v300 > &v267)
              {
                v154 = &v267 - v299;
                llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(&v299, v300 + 1);
                v148 = v299;
                v149 = &v154[v299];
              }

              else
              {
                llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(&v299, v300 + 1);
                v149 = &v267;
                v148 = v299;
              }
            }

            else
            {
              v149 = &v267;
            }

            v150 = v300;
            v151 = *v149;
            *v149 = 0;
            *(v148 + 8 * v150) = v151;
            v300 = v150 + 1;
            v152 = v267;
            v267 = 0;
            if (v152)
            {
              mlir::Region::~Region(v152);
              operator delete(v153);
            }

            LODWORD(v146) = v146 - 1;
          }

          while (v146);
        }
      }

      else
      {
        v145 = 0;
      }

      v155 = mlir::Operation::create(v277, v48.var0.var0);
      v156 = *(a3 + 104);
      if (v156)
      {
        v157 = v156 - 8;
      }

      else
      {
        v157 = 0;
      }

      llvm::ilist_traits<mlir::Operation>::addNodeToList(v157 + 32, v155);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v158 = *(v157 + 32);
      *v159 = v158;
      v159[1] = v157 + 32;
      *(v158 + 8) = v159;
      *(v157 + 32) = v159;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      if (*(a3 + 32))
      {
        v160 = v155[9];
        if (v160)
        {
          mlir::ValueRange::ValueRange(__src, (v155 - 4), v160);
          v161.var0.var0 = *(v9 + 24);
          if (!mlir::BytecodeReader::Impl::defineValues(a1, v161, *__src, *&__src[8]))
          {
LABEL_300:
            mlir::OperationState::~OperationState(v277);
            v258 = 0;
            v259 = 0;
            return 0;
          }
        }
      }

      mlir::OperationState::~OperationState(v277);
      v258 = v155;
      v259 = 1;
      v164 = v155[11];
      if ((v164 & 0x7FFFFF) == 0)
      {
        v7 = v249;
        a2 = v250;
        v11 = v251;
        goto LABEL_359;
      }

      *__src = ((&v155[4 * ((v164 >> 23) & 1) + 17] + ((v164 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v155[10];
      *&__src[8] = *__src + 24 * (v164 & 0x7FFFFF);
      *&__src[16] = v9;
      *&v304 = 0;
      DWORD2(v304) = 0;
      v7 = v249;
      a2 = v250;
      v305 = v249;
      v306 = 0x600000000;
      v309 = 0uLL;
      v310 = v145 & 1;
      if (*v255 < 2 || (v145 & 1) == 0)
      {
LABEL_313:
        v170 = v250[1];
        if (v170 >= v250[2])
        {
          v250[1] = std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__emplace_back_slow_path<mlir::BytecodeReader::Impl::RegionReadState>(v250, __src);
          if (v145)
          {
            goto LABEL_349;
          }
        }

        else
        {
          v171 = *__src;
          *(v170 + 16) = *&__src[16];
          *v170 = v171;
          v172 = v304;
          *&v304 = 0;
          *(v170 + 24) = v172;
          *(v170 + 32) = DWORD2(v304);
          v173 = (v170 + 56);
          *(v170 + 40) = v170 + 56;
          *(v170 + 48) = 0x600000000;
          if (v170 != __src)
          {
            v174 = v306;
            if (v306)
            {
              v175 = v305;
              if (v305 != v249)
              {
                *(v170 + 40) = v305;
                *(v170 + 48) = v174;
                *(v170 + 52) = HIDWORD(v306);
                v305 = v249;
                HIDWORD(v306) = 0;
                goto LABEL_347;
              }

              if (v306 < 7)
              {
                v188 = v306;
LABEL_345:
                memcpy(v173, v175, 8 * v188);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v170 + 40, (v170 + 56), v306, 8);
                v188 = v306;
                if (v306)
                {
                  v175 = v305;
                  v173 = *(v170 + 40);
                  goto LABEL_345;
                }
              }

              *(v170 + 48) = v174;
LABEL_347:
              LODWORD(v306) = 0;
            }
          }

          v189 = v309;
          *(v170 + 120) = v310;
          *(v170 + 104) = v189;
          v250[1] = v170 + 128;
          if (v145)
          {
LABEL_349:
            v190 = a1[86];
            if (v190 >= a1[87])
            {
              v191 = std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>(a1 + 85);
            }

            else
            {
              *(v190 + 16) = 0u;
              *(v190 + 32) = 0u;
              *(v190 + 48) = 0;
              *v190 = 0u;
              *(v190 + 24) = v190 + 40;
              v191 = (v190 + 56);
              *(v190 + 36) = 4;
            }

            v176 = 0;
            a1[86] = v191;
            goto LABEL_353;
          }
        }

        v176 = 0;
LABEL_353:
        v11 = 1;
        goto LABEL_354;
      }

      LOBYTE(v274) = 0;
      *&v260.__r_.__value_.__l.__data_ = 0uLL;
      {
        v176 = 0;
        v11 = 0;
        goto LABEL_354;
      }

      if (v274 == 4)
      {
        v165 = *&v260.__r_.__value_.__l.__data_;
        v166 = a1[1];
        v167 = operator new(0x20uLL);
        *v167 = v165;
        v167[2] = v165;
        v167[3] = v166;
        v168 = v304;
        *&v304 = v167;
        if (v168)
        {
          operator delete(v168);
          v167 = v304;
        }

        *&__src[16] = v167;
        if (*(a1 + 16) != 1)
        {
          goto LABEL_313;
        }

        v169 = a1[9];
        if (v169)
        {
          if (v169(a1[10], v258))
          {
            goto LABEL_313;
          }

          v167 = v304;
        }

        v194 = v167;
        v195 = operator new(0x98uLL);
        *v195 = 0u;
        *(v195 + 2) = v258;
        *(v195 + 24) = *__src;
        *&v304 = 0;
        *(v195 + 5) = *&__src[16];
        *(v195 + 6) = v194;
        v196 = v306;
        *(v195 + 14) = DWORD2(v304);
        v197 = v195 + 80;
        *(v195 + 8) = v195 + 80;
        v198 = (v195 + 64);
        *(v195 + 9) = 0x600000000;
        v11 = v251;
        if (v196)
        {
          v199 = v305;
          if (v305 != v249)
          {
            *(v195 + 8) = v305;
            v200 = HIDWORD(v306);
            *(v195 + 18) = v196;
            *(v195 + 19) = v200;
            v305 = v249;
            HIDWORD(v306) = 0;
            goto LABEL_376;
          }

          v201 = v195;
          if (v196 < 7)
          {
            v202 = v196;
LABEL_374:
            memcpy(v197, v199, 8 * v202);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod((v195 + 64), v197, v196, 8);
            v202 = v306;
            if (v306)
            {
              v199 = v305;
              v197 = *v198;
              goto LABEL_374;
            }
          }

          v195 = v201;
          *(v201 + 18) = v196;
          v11 = v251;
LABEL_376:
          LODWORD(v306) = 0;
        }

        *(v195 + 8) = v309;
        v195[144] = v310;
        v203 = a1[3];
        *v195 = v203;
        *(v195 + 1) = v248;
        *(v203 + 8) = v195;
        a1[3] = v195;
        ++a1[5];
        v267 = v195;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(a1 + 6, &v258, &v267, v277);
        v176 = 1;
        goto LABEL_354;
      }

      v177 = a1[1];
      v267 = "expected IR section for region";
      WORD4(v269) = 259;
      mlir::emitError(v177, &v267, v277);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v277);
      if (v277[0])
      {
        mlir::InFlightDiagnostic::report(v277);
      }

      if (v295 == 1)
      {
        if (v293 != &v295)
        {
          free(v293);
        }

        v178 = v11;
        v179 = __p;
        if (__p)
        {
          v180 = v292;
          v181 = __p;
          if (v292 != __p)
          {
            do
            {
              v180 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v180 - 1);
            }

            while (v180 != v179);
            v181 = __p;
          }

          v292 = v179;
          operator delete(v181);
        }

        v182 = v289;
        if (v289)
        {
          v183 = v290;
          v184 = v289;
          if (v290 != v289)
          {
            do
            {
              v186 = *--v183;
              v185 = v186;
              *v183 = 0;
              if (v186)
              {
                operator delete[](v185);
              }
            }

            while (v183 != v182);
            v184 = v289;
          }

          v290 = v182;
          operator delete(v184);
        }

        v11 = v178;
        if (v279 != v281)
        {
          free(v279);
        }
      }

      v176 = 0;
LABEL_354:
      if (v305 != v249)
      {
        free(v305);
      }

      v192 = v304;
      *&v304 = 0;
      if (v192)
      {
        operator delete(v192);
      }

      if (!v176)
      {
        return v11;
      }

LABEL_359:
      v193 = *(a3 + 112);
      *(a3 + 112) = v193 - 1;
      if (!v193)
      {
        goto LABEL_378;
      }
    }

    v15 = v13 + 48 * v260.__r_.__value_.__r.__words[0];
    v16 = *(v15 + 40);
    if (*(v15 + 8))
    {
      goto LABEL_48;
    }

LABEL_35:
    if (*(v15 + 32))
    {
      v277[0] = &unk_1F5AF21B0;
      v277[1] = v257;
      v278 = v254;
      v279 = v253;
      v280 = v252;
      v281[0] = v9;
      v281[1] = v255;
      {
        return 0;
      }

      v27 = *(v15 + 16);
      WORD4(v269) = 773;
      v29 = *(v27 + 24);
      v28 = *(v27 + 32);
      v267 = v29;
      *&v268 = v28;
      *(&v268 + 1) = ".";
      v30 = *(v15 + 24);
      v31 = *(v15 + 32);
      *__src = &v267;
      *&__src[16] = v30;
      *&v304 = v31;
      WORD4(v304) = 1282;
      llvm::Twine::str(__src, &v260);
      v32 = **a1;
      if (*(v15 + 8) == 1)
      {
        *(v15 + 8) = 0;
      }

      if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v260;
      }

      else
      {
        v33 = v260.__r_.__value_.__r.__words[0];
      }

      if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v260.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v260.__r_.__value_.__l.__size_;
      }

      mlir::OperationName::OperationName(v15, v33, size, v32);
      *(v15 + 8) = 1;
      if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v260.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      mlir::OperationName::OperationName(v15, *(*(v15 + 16) + 24), *(*(v15 + 16) + 32), **a1);
      *(v15 + 8) = 1;
    }

    goto LABEL_48;
  }

LABEL_387:
  if (*(a3 + 120) == 1)
  {
    v211 = a1[86];
    v212 = (v211 - 56);
    v213 = *(v211 - 32);
    if (v213 != (v211 - 16))
    {
      free(v213);
    }

    v214 = *v212;
    if (*v212)
    {
      *(v211 - 48) = v214;
      operator delete(v214);
    }

    a1[86] = v212;
  }

  v215 = a2[1];
  v216 = *(v215 - 88);
  if (v216 != (v215 - 72))
  {
    free(v216);
  }

  v217 = *(v215 - 104);
  *(v215 - 104) = 0;
  if (v217)
  {
    operator delete(v217);
  }

  a2[1] = v215 - 128;
  return 1;
}