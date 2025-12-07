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
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>,unsigned long long,unsigned long long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long long>>::LookupBucketFor<unsigned long long>(v17, a2, &v20);
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

uint64_t anonymous namespace::TensorLiteralParser::parseList(mlir::detail::Parser **a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v10 = 1;
  v11 = a1;
  __src = v14;
  v13 = 0x400000000;
  v9 = 0;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = &v10;
  v8[3] = &v11;
  v8[4] = &__src;
  v3 = 0;
  {
    *(a2 + 8) = 0;
    if (!*(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    **a2 = v9;
    v4 = *(a2 + 12);
    v5 = (*(a2 + 8) + 1);
    *(a2 + 8) = v5;
    v6 = v13;
    if (v13 + v5 > v4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v13)
    {
      memcpy((*a2 + 8 * v5), __src, 8 * v13);
      LODWORD(v5) = *(a2 + 8);
    }

    *(a2 + 8) = v5 + v6;
    v3 = 1;
  }

  if (__src != v14)
  {
    free(__src);
  }

  return v3;
}

uint64_t anonymous namespace::TensorLiteralParser::parseElement(mlir::detail::Parser **this)
{
  v64 = *MEMORY[0x277D85DE8];
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
        mlir::Lexer::lexToken(&v53, (*(v2 + 1) + 8));
        v6 = *(v2 + 1);
        *(v6 + 56) = v53;
        *(v6 + 72) = v54;
        {
          return 0;
        }

        v7 = *this;
        *&v53 = "expected ',' between complex elements";
        v56 = 259;
        if (!mlir::detail::Parser::parseToken(v7, 16, &v53))
        {
          return 0;
        }

        {
          return 0;
        }

        v8 = *this;
        v51[0] = "expected ')' after complex elements";
        v52 = 259;
        return mlir::detail::Parser::parseToken(v8, 28, v51);
      }

LABEL_28:
      v51[0] = "expected element literal of primitive type";
      v52 = 259;
      mlir::detail::Parser::emitError(&v53, v2, v51);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      v25 = result;
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
        result = v25;
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
          result = v25;
        }

        v26 = __p;
        if (__p)
        {
          v27 = v61;
          v28 = __p;
          if (v61 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v61 = v26;
          operator delete(v28);
          result = v25;
        }

        v29 = v58;
        if (!v58)
        {
          goto LABEL_68;
        }

        v30 = v59;
        v31 = v58;
        if (v59 == v58)
        {
LABEL_67:
          v59 = v29;
          operator delete(v31);
          result = v25;
LABEL_68:
          if (v55 != &v57)
          {
            free(v55);
            return v25;
          }

          return result;
        }

        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
LABEL_66:
        v31 = v58;
        goto LABEL_67;
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
LABEL_47:
      this[8] = v13;
      v38 = *this;
      v39 = *(v38 + 1);
      *(v39 + 80) = *(v39 + 56);
      *(v39 + 96) = *(v39 + 72);
      mlir::Lexer::lexToken(&v53, (*(v38 + 1) + 8));
      v40 = *(v38 + 1);
      *(v40 + 56) = v53;
      *(v40 + 72) = v54;
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

      if (v19)
      {
        if (!(v19 >> 59))
        {
          operator new();
        }

        goto LABEL_81;
      }

      v34 = v16;
      v35 = 32 * v16;
      *(32 * v16) = 0;
      goto LABEL_45;
    }

    goto LABEL_80;
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
  mlir::Lexer::lexToken(&v53, (*(v2 + 1) + 8));
  v20 = *(v2 + 1);
  *(v20 + 56) = v53;
  *(v20 + 72) = v54;
  v21 = *this;
  v22 = *(*this + 1);
  v23 = *(v22 + 56);
  v5 = (v22 + 56);
  if ((v23 - 9) < 2)
  {
    v10 = this[8];
    v24 = this[9];
    if (v10 < v24)
    {
      *v10 = 1;
      goto LABEL_15;
    }

    v14 = this[7];
    v15 = v10 - v14;
    v47 = (v10 - v14) >> 5;
    v48 = v47 + 1;
    if (!((v47 + 1) >> 59))
    {
      v49 = v24 - v14;
      if (v49 >> 4 > v48)
      {
        v48 = v49 >> 4;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFE0)
      {
        v50 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (!(v50 >> 59))
        {
          operator new();
        }

LABEL_81:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v34 = v47;
      v35 = 32 * v47;
      *(32 * v47) = 1;
LABEL_45:
      v36 = *v5;
      *(v35 + 24) = *(v5 + 2);
      *(v35 + 8) = v36;
      v13 = (v35 + 32);
      v37 = (v35 - 32 * v34);
      memcpy(v37, v14, v15);
      this[7] = v37;
      this[8] = v13;
      this[9] = 0;
      if (v14)
      {
        operator delete(v14);
      }

      goto LABEL_47;
    }

LABEL_80:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v51[0] = "expected integer or floating point literal";
  v52 = 259;
  mlir::detail::Parser::emitError(&v53, v21, v51);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  v25 = result;
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
    result = v25;
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
      result = v25;
    }

    v41 = __p;
    if (__p)
    {
      v42 = v61;
      v43 = __p;
      if (v61 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v61 = v41;
      operator delete(v43);
      result = v25;
    }

    v29 = v58;
    if (!v58)
    {
      goto LABEL_68;
    }

    v44 = v59;
    v31 = v58;
    if (v59 == v58)
    {
      goto LABEL_67;
    }

    do
    {
      v46 = *--v44;
      v45 = v46;
      *v44 = 0;
      if (v46)
      {
        MEMORY[0x259C63150](v45, 0x1000C8077774924);
      }
    }

    while (v44 != v29);
    goto LABEL_66;
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TensorLiteralParser::parseList(llvm::SmallVectorImpl<long long> &)::$_0>(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
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
    if (v5 != &__s2)
    {
      v6 = v24;
      v7 = *(v5 + 8);
      if (v7 >= v24)
      {
        if (v24)
        {
          memmove(*v5, __s2, 8 * v24);
        }
      }

      else
      {
        if (*(v5 + 12) < v24)
        {
          *(v5 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v7)
        {
          memmove(*v5, __s2, 8 * v7);
        }

        else
        {
          v7 = 0;
        }

        if (v24 != v7)
        {
          memcpy((*v5 + 8 * v7), __s2 + 8 * v7, 8 * (v24 - v7));
        }
      }

      *(v5 + 8) = v6;
      v4 = *(a1 + 16);
    }

    *v4 = 0;
    goto LABEL_41;
  }

  v8 = *(a1 + 32);
  v9 = **(a1 + 24);
  v10 = *(v8 + 8);
  if (v10 == v24 && !memcmp(*v8, __s2, 8 * v10))
  {
LABEL_41:
    v3 = 1;
    goto LABEL_42;
  }

  v11 = *v9;
  v21 = "tensor literal is invalid; ranks are not consistent between elements";
  v22 = 259;
  mlir::detail::Parser::emitError(v26, v11, &v21);
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
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
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

void std::vector<llvm::APInt>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

_DWORD *std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(void **a1, const llvm::APInt *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = (16 * v2);
  v8 = *(a2 + 2);
  *(16 * v2 + 8) = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(v7, a2);
  }

  *v7 = *a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 - (v10 - *a1);
  if (v10 != *a1)
  {
    v12 = (-16 * ((v10 - *a1) >> 4) + 16 * v2 + 8);
    v13 = *a1;
    do
    {
      *v12 = *(v13 + 2);
      *(v12 - 1) = *v13;
      *(v13 + 2) = 0;
      v13 += 16;
      v12 += 4;
    }

    while (v13 != v10);
    do
    {
      if (*(v9 + 2) >= 0x41u && *v9)
      {
        MEMORY[0x259C63150](*v9, 0x1000C8000313F17);
      }

      v9 += 16;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v7 + 16;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return (v7 + 16);
}

void std::vector<llvm::APFloat>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
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
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a1 + 2) - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v18 = 32 * v2;
  v20 = 0;
  v9 = *(a2 + 8);
  v8 = (a2 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(0);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v7 + 8), v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v7 + 8), v8);
  }

  v19 = v7 + 32;
  std::vector<llvm::APFloat>::__swap_out_circular_buffer(a1, &__p);
  v11 = *(a1 + 1);
  v13 = v18;
  for (i = v19; v19 != v13; i = v19)
  {
    while (1)
    {
      v19 = i - 32;
      v15 = *(i - 24);
      v14 = (i - 24);
      if (v10 == v15)
      {
        break;
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v14);
      i = v19;
      if (v19 == v13)
      {
        goto LABEL_18;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
  }

LABEL_18:
  if (__p)
  {
    operator delete(__p);
  }

  return v11;
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
  v21 = *MEMORY[0x277D85DE8];
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
            MEMORY[0x259C63150](v8, 0x1000C8077774924);
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
  v4 = v2[2];
  if (v4 >= v2[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v4) = v3;
  ++v2[2];
  return (**a1)[*(*a1 + 2) - 1] != 0;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>(uint64_t *a1, uint64_t a2, const llvm::Twine *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  LOBYTE(StringAttr) = 0;
  v58 = 0;
  v5 = *(v4 + 8);
  v6 = (v5 + 7);
  v7 = *(v5 + 14);
  if (v7 == 3 || v7 == 12)
  {
LABEL_6:
    v10 = v5[8];
    v9 = v5[9];
    LOWORD(v64) = 261;
    *&v61 = v10;
    *(&v61 + 1) = v9;
    v58 = 1;
    StringAttr = mlir::Builder::getStringAttr(v4, &v61, a3);
    goto LABEL_7;
  }

  if (v7 != 11)
  {
    if (!mlir::Token::isKeyword(v6))
    {
      v59.__r_.__value_.__r.__words[0] = "expected attribute name";
      v60 = 259;
      mlir::detail::Parser::emitWrongTokenError(&v61, v4, &v59);
      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
      if (v61)
      {
        mlir::InFlightDiagnostic::report(&v61);
      }

      if (v72 != 1)
      {
        return v26;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v70;
        v50 = __p;
        if (v70 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v70 = v48;
        operator delete(v50);
      }

      v30 = v67;
      if (v67)
      {
        v51 = v68;
        v32 = v67;
        if (v68 != v67)
        {
          do
          {
            v53 = *--v51;
            v52 = v53;
            *v51 = 0;
            if (v53)
            {
              MEMORY[0x259C63150](v52, 0x1000C8077774924);
            }
          }

          while (v51 != v30);
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }

    v5 = *(v4 + 8);
    goto LABEL_6;
  }

  mlir::Token::getStringValue(v6, &v59);
  LOWORD(v64) = 260;
  *&v61 = &v59;
  v58 = 1;
  StringAttr = mlir::Builder::getStringAttr(v4, &v61, v25);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

LABEL_7:
  mlir::StringAttr::getValue(&StringAttr);
  if (!v12)
  {
    v59.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v60 = 259;
    mlir::detail::Parser::emitError(&v61, v4, &v59);
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (v72 != 1)
    {
      return v26;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v70;
      v29 = __p;
      if (v70 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v70 = v27;
      operator delete(v29);
    }

    v30 = v67;
    if (v67)
    {
      v31 = v68;
      v32 = v67;
      if (v68 != v67)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        goto LABEL_75;
      }

LABEL_76:
      v68 = v30;
      operator delete(v32);
    }

LABEL_77:
    if (v63 != &v66)
    {
      free(v63);
    }

    return v26;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1[1], &StringAttr, &v61, &v59, v11);
  if ((v62 & 1) == 0)
  {
    v55 = "duplicate key '";
    v56 = 259;
    mlir::detail::Parser::emitError(&v61, v4, &v55);
    Value = mlir::StringAttr::getValue(&StringAttr);
    if (v61)
    {
      v60 = 261;
      v59.__r_.__value_.__r.__words[0] = Value;
      v59.__r_.__value_.__l.__size_ = v36;
      mlir::Diagnostic::operator<<(&v61 + 8, &v59.__r_.__value_.__l.__data_);
      if (v61)
      {
        LODWORD(v59.__r_.__value_.__l.__data_) = 3;
        v59.__r_.__value_.__l.__size_ = "' in dictionary attribute";
        v59.__r_.__value_.__r.__words[2] = 25;
        if (v64 >= v65)
        {
          if (v63 > &v59 || v63 + 24 * v64 <= &v59)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v37 = v63 + 24 * v64;
        v38 = *&v59.__r_.__value_.__l.__data_;
        *(v37 + 2) = *(&v59.__r_.__value_.__l + 2);
        *v37 = v38;
        ++v64;
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (v72 != 1)
    {
      return v26;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v70;
      v41 = __p;
      if (v70 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v70 = v39;
      operator delete(v41);
    }

    v30 = v67;
    if (v67)
    {
      v42 = v68;
      v32 = v67;
      if (v68 != v67)
      {
        do
        {
          v44 = *--v42;
          v43 = v44;
          *v42 = 0;
          if (v44)
          {
            MEMORY[0x259C63150](v43, 0x1000C8077774924);
          }
        }

        while (v42 != v30);
LABEL_75:
        v32 = v67;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v13 = *(v4 + 8);
  *(v13 + 80) = *(v13 + 56);
  *(v13 + 96) = *(v13 + 72);
  mlir::Lexer::lexToken(&v61, (*(v4 + 8) + 8));
  v14 = *(v4 + 8);
  *(v14 + 56) = v61;
  *(v14 + 72) = v62;
  *&v61 = mlir::StringAttr::getValue(&StringAttr);
  *(&v61 + 1) = v15;
  v59.__r_.__value_.__s.__data_[0] = 46;
  v16 = llvm::StringRef::find(&v61, &v59, 1uLL, 0);
  if (v16 != -1 && *(&v61 + 1) > v16 + 1)
  {
    mlir::MLIRContext::getOrLoadDialect(***(v4 + 8), v61, v16);
  }

  v18 = *(v4 + 8);
  if (*(v18 + 56) == 18)
  {
    *(v18 + 80) = *(v18 + 56);
    *(v18 + 96) = *(v18 + 72);
    mlir::Lexer::lexToken(&v61, (*(v4 + 8) + 8));
    v19 = *(v4 + 8);
    *(v19 + 56) = v61;
    *(v19 + 72) = v62;
    v20 = mlir::detail::Parser::parseAttribute(v4, 0);
    if (!v20)
    {
      return 0;
    }

    v21 = a1[2];
    mlir::NamedAttribute::NamedAttribute(&v61, StringAttr, v20);
    v23 = *(&v61 + 1);
    v22 = v61;
    v24 = v21;
  }

  else
  {
    v45 = a1[2];
    v46 = StringAttr;
    UnitAttr = mlir::Builder::getUnitAttr(v4, v17);
    mlir::NamedAttribute::NamedAttribute(&v61, v46, UnitAttr);
    v23 = *(&v61 + 1);
    v22 = v61;
    v24 = v45;
  }

  mlir::NamedAttrList::push_back(v24, v22, v23);
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
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v21, v20, &v22);
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

unsigned int *llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(unsigned int *result, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v60[3] = *MEMORY[0x277D85DE8];
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
  v55 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 1);
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
    mlir::Lexer::lexToken(__x, (*(v2 + 1) + 8));
    v14 = *(v2 + 1);
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
    mlir::detail::Parser::emitError(__x, v2, v40);
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
          MEMORY[0x259C63150](v37, 0x1000C8077774924);
        }
      }

      while (v36 != v22);
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken(__x, (*(v2 + 1) + 8));
  v5 = *(v2 + 1);
  *(v5 + 56) = *__x;
  *(v5 + 72) = v46;
  v3 = *(v2 + 1);
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
      v7 = *(*(v2 + 1) + 56);
      mlir::Type::isUnsignedInteger(v1);
      v8 = v7 == 79;
      v9 = 8;
      v43 = 8;
      v42 = v8;
      v44 = 1;
      v10 = *(v2 + 1);
      *(v10 + 96) = *(v10 + 72);
      *(v10 + 80) = *(v10 + 56);
      mlir::Lexer::lexToken(__x, (*(v2 + 1) + 8));
      v11 = *(v2 + 1);
      *(v11 + 56) = *__x;
      *(v11 + 72) = v46;
      goto LABEL_10;
    }

    v40[0] = "expected i1 type for 'true' or 'false' values";
    v41 = 259;
    mlir::detail::Parser::emitError(__x, v2, v40);
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
          MEMORY[0x259C63150](v25, 0x1000C8077774924);
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
    mlir::detail::Parser::emitError(__x, v2, v40);
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
          MEMORY[0x259C63150](v31, 0x1000C8077774924);
        }
      }

      while (v30 != v22);
      goto LABEL_60;
    }
  }

LABEL_64:
  if (v44 == 1 && v43 >= 0x41 && v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
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
      std::string::__throw_length_error[abi:nn200100]();
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
      operator new();
    }

    v30 = (__position.__i_ - begin);
    memset(v12, *__x, __n);
    v31 = &v12[__n];
    v32 = end - i;
    memcpy(v31, i, end - i);
    this->__end_ = i;
    v33 = &v12[begin - i];
    memcpy(v33, begin, v30);
    this->__begin_ = v33;
    this->__end_ = &v31[v32];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {
      operator delete(begin);
    }

    return v12;
  }

  v15 = end - __position.__i_;
  if (__n > end - __position.__i_)
  {
    memset(this->__end_, *__x, __n - (end - __position.__i_));
    v16 = &i[__n];
    this->__end_ = &i[__n];
    if (!v15)
    {
      return i;
    }

    v17 = end - i;
    v18 = &i[__n];
    v19 = i;
    v20 = &i[__n];
    if (i >= end)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v16 = this->__end_;
  v17 = __n;
  v18 = &__position.__i_[__n];
  v19 = &end[-__n];
  v20 = v16;
  if (end >= __n)
  {
LABEL_16:
    if (__n <= v15)
    {
      v21 = end - i;
    }

    else
    {
      v21 = __n;
    }

    v22 = &end[__n] - i - v21;
    v23 = v22 >= 0x20 && __n > 0x1F;
    v20 = v16;
    if (!v23)
    {
      goto LABEL_44;
    }

    v19 += v22 & 0xFFFFFFFFFFFFFFE0;
    v20 = &v16[v22 & 0xFFFFFFFFFFFFFFE0];
    v24 = &i[v21 + 16];
    v25 = &v24[-__n];
    v26 = v22 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 32;
      v25 += 32;
      v26 -= 32;
    }

    while (v26);
    if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_44:
      do
      {
        v28 = *v19++;
        *v20++ = v28;
      }

      while (v19 != end);
    }
  }

LABEL_28:
  this->__end_ = v20;
  if (v16 != v18)
  {
    memmove(v18, i, v16 - v18);
  }

  if (i <= v5)
  {
    if (this->__end_ <= v5)
    {
      v29 = 0;
    }

    else
    {
      v29 = __n;
    }

    v5 += v29;
  }

  memset(i, *v5, v17);
  return i;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>(uint64_t **a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = v2[1];
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken(&v50, (v2[1] + 8));
    v5 = v2[1];
    *(v5 + 56) = v50;
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
    mlir::Lexer::lexToken(&v50, (v2[1] + 8));
    v13 = v2[1];
    *(v13 + 56) = v50;
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
    llvm::APFloat::Storage::Storage(&v50 + 8, v45, v22);
    llvm::detail::IEEEFloat::~IEEEFloat(v45);
    if (v62 == 1)
    {
      v24 = llvm::APFloat::Storage::operator=(&v61, (&v50 + 8));
      v12 = llvm::APFloatBase::PPCDoubleDouble(v24);
      if (v12 != *(&v50 + 1))
      {
        goto LABEL_12;
      }

LABEL_52:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v50 + 8));
      if (mlir::Type::isF64(v1))
      {
LABEL_14:
        if (v12 == v61.n128_u64[0])
        {
          v10 = COERCE_DOUBLE(llvm::detail::DoubleAPFloat::bitcastToAPInt(&v50, &v61, v11));
          v26 = DWORD2(v50);
          if (DWORD2(v50))
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = COERCE_DOUBLE(llvm::detail::IEEEFloat::bitcastToAPInt(&v50, &v61));
          v26 = DWORD2(v50);
          if (DWORD2(v50))
          {
LABEL_16:
            v27 = v26 >> 3;
            v29 = v1[1];
            v28.__i_ = v1[2];
            v30 = (v1 + 1);
            v31 = &v28.__i_[-v29];
            v45[0] = 0;
            std::vector<char>::insert(v30, v28, v27, v45);
            v10 = COERCE_DOUBLE(llvm::StoreIntToMemory(&v50, &v30->__begin_[v31], v27));
            v32 = DWORD2(v50);
            ++v30[1].__begin_;
            if (v32 >= 0x41)
            {
              v10 = *&v50;
              if (v50)
              {
                v10 = COERCE_DOUBLE(MEMORY[0x259C63150](v50, 0x1000C8000313F17));
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
      LOBYTE(v50) = 0;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v47);
      llvm::APFloat::convert(v60, FloatSemantics, 1u, &v50);
      goto LABEL_14;
    }

    v42 = *(&v50 + 1);
    v12 = llvm::APFloatBase::PPCDoubleDouble(v23);
    if (v12 == v42)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, (&v50 + 8));
      v62 = 1;
      if (v12 == *(&v50 + 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v61, &v50 + 8);
      v62 = 1;
      if (v12 == *(&v50 + 1))
      {
        goto LABEL_52;
      }
    }

LABEL_12:
    llvm::detail::IEEEFloat::~IEEEFloat((&v50 + 8));
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
    mlir::Lexer::lexToken(&v50, (v2[1] + 8));
    v7 = v2[1];
    *(v7 + 56) = v50;
    *(v7 + 72) = v51;
    v8 = mlir::FloatType::getFloatSemantics(&v47);
    Width = mlir::FloatType::getWidth(&v47);
    *&v10 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v2, v60, &v48, v6, v8, Width);
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
  mlir::detail::Parser::emitError(&v50, v2, v45);
  *&v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  v33 = *&v10;
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v57;
      v36 = __p;
      if (v57 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
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
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
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
  v50[1] = *MEMORY[0x277D85DE8];
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v48 = v50;
  v49 = xmmword_25738FDE0;
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
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v48[v6] = v13;
    ++v8;
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
        if (v43 != v42)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              MEMORY[0x259C63150](v27, 0x1000C8077774924);
            }
          }

          while (v25 != v24);
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v35 = "unexpected nul or EOF in pretty dialect name";
    v36 = 259;
    mlir::detail::Parser::emitError(&v38, this, &v35);
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
              MEMORY[0x259C63150](v33, 0x1000C8077774924);
            }
          }

          while (v32 != v24);
LABEL_77:
          v26 = v42;
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
  v33 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v18 = 257;
  mlir::detail::Parser::emitError(&v21, v4, v17);
  if (v21)
  {
    LODWORD(v19) = 3;
    *(&v19 + 1) = "unbalanced '";
    v20 = 12;
    if (v24 >= v25)
    {
      if (v23 > &v19 || v23 + 24 * v24 <= &v19)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v23 + 24 * v24;
    v6 = v19;
    *(v5 + 2) = v20;
    *v5 = v6;
    ++v24;
    if (v21)
    {
      mlir::Diagnostic::operator<<(&v22, *(**(a2 + 8) + *(*(a2 + 8) + 8) - 1));
      if (v21)
      {
        LODWORD(v19) = 3;
        *(&v19 + 1) = "' character in pretty dialect name";
        v20 = 34;
        if (v24 >= v25)
        {
          if (v23 > &v19 || v23 + 24 * v24 <= &v19)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v23 + 24 * v24;
        v8 = v19;
        *(v7 + 2) = v20;
        *v7 = v8;
        ++v24;
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v30;
      v11 = __p;
      if (v30 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v30 = v9;
      operator delete(v11);
    }

    v12 = v27;
    if (v27)
    {
      v13 = v28;
      v14 = v27;
      if (v28 != v27)
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
        v14 = v27;
      }

      v28 = v12;
      operator delete(v14);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

BOOL mlir::detail::Parser::parseDialectSymbolBody(llvm::StringRef &,BOOL &)::$_1::operator()(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v23 = *MEMORY[0x277D85DE8];
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
              MEMORY[0x259C63150](v11, 0x1000C8077774924);
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

void *mlir::detail::Parser::parseExtendedAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  v104 = *MEMORY[0x277D85DE8];
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

  *&v92 = v11;
  *(&v92 + 1) = v12 - (v12 != 0);
  if (v9 == 2 && v12 <= 1)
  {
    v44 = mlir::detail::Parser::codeCompleteDialectSymbol(a1);
    goto LABEL_69;
  }

  v80 = v5;
  LocRange = mlir::Token::getLocRange(v8);
  v81 = v15;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v17 = *(a1 + 1);
  *(v17 + 96) = *(v17 + 72);
  *(v17 + 80) = *(v17 + 56);
  mlir::Lexer::lexToken(&v93, (*(a1 + 1) + 8));
  v18 = *(a1 + 1);
  *(v18 + 56) = v93;
  *(v18 + 72) = v94;
  LOBYTE(v93) = 46;
  v19 = llvm::StringRef::find(&v92, &v93, 1uLL, 0);
  v82 = LocRange;
  if (v19 == -1)
  {
    v28 = Loc;
    v26 = 0;
    v90 = 0;
    v91 = 0;
    v89 = v92;
    v22 = *(&v92 + 1);
    v23 = v92;
  }

  else
  {
    v22 = *(&v92 + 1);
    v23 = v92;
    if (v19 >= *(&v92 + 1))
    {
      v24 = *(&v92 + 1);
    }

    else
    {
      v24 = v19;
    }

    if (*(&v92 + 1) >= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = *(&v92 + 1);
    }

    v26 = v92 + v25;
    *&v89 = v92;
    *(&v89 + 1) = v24;
    v27 = (*(&v92 + 1) - v25);
    v90 = v92 + v25;
    v91 = (*(&v92 + 1) - v25);
    v28 = Loc;
    if (*(&v92 + 1) != v25)
    {
      v29 = 1;
      v30 = v92 + v25;
      v31 = *(a1 + 1);
      if (*(v31 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_40:
      v32 = (v23 + v22) == *(v31 + 64);
      if (!v32 && !v29)
      {
        goto LABEL_18;
      }

LABEL_41:
      if (v29)
      {
        if (v32)
        {
          if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v90, &v93))
          {
            goto LABEL_68;
          }

          v30 = v90;
          v27 = v91;
        }
      }

      else
      {
        v90 = v89 + *(&v89 + 1);
        v91 = 0;
        LOBYTE(v93) = 0;
        if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v90, &v93))
        {
          goto LABEL_68;
        }

        v46 = v91 != 0;
        if (v91)
        {
          v30 = v90 + 1;
        }

        else
        {
          v30 = v90;
        }

        v27 = &v91[-v46];
        v90 = v30;
        v91 -= v46;
        if ((v93 & 1) == 0)
        {
          if (v27 >= v27 - 1)
          {
            --v27;
          }

          v91 = v27;
        }

        v26 = v28;
      }

      v47 = v89;
      *&v83 = v26;
      v48 = *(a1 + 1);
      v49 = a2;
      if (*(v48 + 56) != 15 || (*(v48 + 80) = *(v48 + 56), *(v48 + 96) = *(v48 + 72), mlir::Lexer::lexToken(&v93, (*(a1 + 1) + 8)), v50 = *(a1 + 1), *(v50 + 56) = v93, *(v50 + 72) = v94, (v49 = mlir::detail::Parser::parseType(a1)) != 0))
      {
        Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v47, *(&v47 + 1));
        if (!Dialect)
        {
          *&v86 = a1;
          *(&v86 + 1) = &v83;
          LOWORD(v96) = 261;
          v93 = v47;
          v60 = mlir::StringAttr::get(v80, &v93, v52);
          if (!v49)
          {
            v49 = mlir::NoneType::get(v80, v59);
          }

          mlir::OpaqueAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v86, v60, v30, v27, v49);
        }

        v53 = Dialect;
        v54 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v55 = *(a1 + 1);
        *(v55 + 40) = v30;
        mlir::Lexer::lexToken(&v93, (v55 + 8));
        v56 = *(a1 + 1);
        *(v56 + 56) = v93;
        *(v56 + 72) = v94;
        *(&v93 + 1) = mlir::Token::getLoc((*(a1 + 1) + 56));
        v94 = a1;
        LOBYTE(v95) = 0;
        *&v93 = &unk_286893E18;
        v96 = v30;
        v97[0] = v27;
        v44 = (*(*v53 + 32))(v53, &v93, v49);
        v57 = *(a1 + 1);
        *(v57 + 40) = v54;
        mlir::Lexer::lexToken(&v86, (v57 + 8));
        v58 = *(a1 + 1);
        *(v58 + 56) = v86;
        *(v58 + 72) = v87;
        mlir::DialectAsmParser::~DialectAsmParser(&v93);
        goto LABEL_69;
      }

LABEL_68:
      v44 = 0;
      goto LABEL_69;
    }
  }

  v27 = 0;
  v29 = *(v23 + v22 - 1) == 46;
  v30 = v26;
  v31 = *(a1 + 1);
  if (*(v31 + 56) == 23)
  {
    goto LABEL_40;
  }

LABEL_17:
  v32 = 0;
  if (v29)
  {
    goto LABEL_41;
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
    v85 = 1283;
    *&v83 = "undefined symbol alias id '";
    v84 = v92;
    *&v86 = &v83;
    v87 = "'";
    v88 = 770;
    mlir::detail::Parser::emitWrongTokenError(&v93, a1, &v86);
    if (v93)
    {
      mlir::InFlightDiagnostic::report(&v93);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v101;
        v38 = __p;
        if (v101 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v101 = v36;
        operator delete(v38);
      }

      v39 = v98;
      if (v98)
      {
        v40 = v99;
        v41 = v98;
        if (v99 != v98)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              MEMORY[0x259C63150](v42, 0x1000C8077774924);
            }
          }

          while (v40 != v39);
          v41 = v98;
        }

        v99 = v39;
        operator delete(v41);
      }

      if (v95 != v97)
      {
        free(v95);
      }
    }

    goto LABEL_68;
  }

  v45 = *v7;
  if (v6)
  {
    mlir::AsmParserState::addAttrAliasUses(v6, v92, *(&v92 + 1), v82, v81);
  }

  v44 = *(*(v45 + 8 * v35) + 8);
LABEL_69:
  if (v44)
  {
    v61 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v44);
    *&v89 = v61;
    *(&v89 + 1) = v62;
    if (!a2)
    {
      return v44;
    }
  }

  else
  {
    v61 = 0;
    v89 = 0uLL;
    if (!a2)
    {
      return v44;
    }
  }

  if (v61 && mlir::TypedAttr::getType(&v89) != a2)
  {
    *&v86 = "attribute type different than expected: expected ";
    v88 = 259;
    mlir::detail::Parser::emitError(&v93, a1, &v86);
    if (v93)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v83, a2);
      if (v96 >= HIDWORD(v96))
      {
        if (v95 > &v83 || v95 + 24 * v96 <= &v83)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v63 = v95 + 24 * v96;
      v64 = v83;
      *(v63 + 2) = v84;
      *v63 = v64;
      v65 = v96 + 1;
      LODWORD(v96) = v96 + 1;
      if (v93)
      {
        LODWORD(v83) = 3;
        *(&v83 + 1) = ", but got ";
        *&v84 = 10;
        if (v65 >= HIDWORD(v96))
        {
          if (v95 > &v83 || v95 + 24 * v65 <= &v83)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v66 = v95 + 24 * v96;
        v67 = v83;
        *(v66 + 2) = v84;
        *v66 = v67;
        LODWORD(v96) = v96 + 1;
      }
    }

    Type = mlir::TypedAttr::getType(&v89);
    if (v93)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v83, Type);
      if (v96 >= HIDWORD(v96))
      {
        if (v95 > &v83 || v95 + 24 * v96 <= &v83)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v69 = v95 + 24 * v96;
      v70 = v83;
      *(v69 + 2) = v84;
      *v69 = v70;
      LODWORD(v96) = v96 + 1;
      if (v93)
      {
        mlir::InFlightDiagnostic::report(&v93);
      }
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v101;
        v73 = __p;
        if (v101 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v101 = v71;
        operator delete(v73);
      }

      v74 = v98;
      if (v98)
      {
        v75 = v99;
        v76 = v98;
        if (v99 != v98)
        {
          do
          {
            v78 = *--v75;
            v77 = v78;
            *v75 = 0;
            if (v78)
            {
              MEMORY[0x259C63150](v77, 0x1000C8077774924);
            }
          }

          while (v75 != v74);
          v76 = v98;
        }

        v99 = v74;
        operator delete(v76);
      }

      if (v95 != v97)
      {
        free(v95);
      }
    }

    return 0;
  }

  return v44;
}

uint64_t mlir::detail::Parser::parseExtendedType(mlir::detail::Parser *this)
{
  v76 = *MEMORY[0x277D85DE8];
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

  *&v64 = v9;
  *(&v64 + 1) = v10 - (v10 != 0);
  if (v7 == 2 && v10 <= 1)
  {

    return mlir::detail::Parser::codeCompleteDialectSymbol(this);
  }

  LocRange = mlir::Token::getLocRange(v6);
  v54 = v13;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v14 = *(this + 1);
  *(v14 + 96) = *(v14 + 72);
  *(v14 + 80) = *(v14 + 56);
  mlir::Lexer::lexToken(&v65, (*(this + 1) + 8));
  v15 = *(this + 1);
  *(v15 + 56) = v65;
  *(v15 + 72) = v66;
  LOBYTE(v65) = 46;
  v16 = llvm::StringRef::find(&v64, &v65, 1uLL, 0);
  if (v16 == -1)
  {
    v23 = 0;
    v62 = 0;
    v63 = 0;
    v61 = v64;
    v19 = *(&v64 + 1);
    v20 = v64;
  }

  else
  {
    v19 = *(&v64 + 1);
    v20 = v64;
    if (v16 >= *(&v64 + 1))
    {
      v21 = *(&v64 + 1);
    }

    else
    {
      v21 = v16;
    }

    if (*(&v64 + 1) >= v16 + 1)
    {
      v22 = v16 + 1;
    }

    else
    {
      v22 = *(&v64 + 1);
    }

    v23 = v64 + v22;
    *&v61 = v64;
    *(&v61 + 1) = v21;
    v24 = (*(&v64 + 1) - v22);
    v62 = v64 + v22;
    v63 = (*(&v64 + 1) - v22);
    if (*(&v64 + 1) != v22)
    {
      v25 = 1;
      v26 = v64 + v22;
      v27 = *(this + 1);
      if (*(v27 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_43:
      v28 = (v20 + v19) == *(v27 + 64);
      if (!v28 && !v25)
      {
        goto LABEL_18;
      }

LABEL_44:
      if (v25)
      {
        if (!v28)
        {
LABEL_60:
          v55[0] = v23;
          Dialect = mlir::MLIRContext::getOrLoadDialect(v3, v61, *(&v61 + 1));
          if (!Dialect)
          {
            *&v58 = this;
            *(&v58 + 1) = v55;
            LOWORD(v68) = 261;
            v65 = v61;
            v52 = mlir::StringAttr::get(v3, &v65, v44);
            mlir::OpaqueType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v58, v52, v26, v24);
          }

          v45 = Dialect;
          v46 = mlir::Token::getLoc((*(this + 1) + 56));
          v47 = *(this + 1);
          *(v47 + 40) = v26;
          mlir::Lexer::lexToken(&v65, (v47 + 8));
          v48 = *(this + 1);
          *(v48 + 56) = v65;
          *(v48 + 72) = v66;
          *(&v65 + 1) = mlir::Token::getLoc((*(this + 1) + 56));
          v66 = this;
          LOBYTE(v67) = 0;
          *&v65 = &unk_286893E18;
          v68 = v26;
          v69 = v24;
          v49 = (*(*v45 + 48))(v45, &v65);
          v50 = *(this + 1);
          *(v50 + 40) = v46;
          mlir::Lexer::lexToken(&v58, (v50 + 8));
          v51 = *(this + 1);
          *(v51 + 56) = v58;
          *(v51 + 72) = v59;
          mlir::DialectAsmParser::~DialectAsmParser(&v65);
          return v49;
        }

        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v62, &v65))
        {
          v26 = v62;
          v24 = v63;
          goto LABEL_60;
        }
      }

      else
      {
        v62 = v61 + *(&v61 + 1);
        v63 = 0;
        LOBYTE(v65) = 0;
        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v62, &v65))
        {
          v42 = v63 != 0;
          if (v63)
          {
            v26 = v62 + 1;
          }

          else
          {
            v26 = v62;
          }

          v24 = &v63[-v42];
          v62 = v26;
          v63 -= v42;
          if ((v65 & 1) == 0)
          {
            if (v24 >= v24 - 1)
            {
              --v24;
            }

            v63 = v24;
          }

          v23 = Loc;
          goto LABEL_60;
        }
      }

      return 0;
    }
  }

  v24 = 0;
  v25 = *(v20 + v19 - 1) == 46;
  v26 = v23;
  v27 = *(this + 1);
  if (*(v27 + 56) == 23)
  {
    goto LABEL_43;
  }

LABEL_17:
  v28 = 0;
  if (v25)
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
    v57 = 1283;
    v55[0] = "undefined symbol alias id '";
    v56 = v64;
    *&v58 = v55;
    v59 = "'";
    v60 = 770;
    mlir::detail::Parser::emitWrongTokenError(&v65, this, &v58);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v75 == 1)
    {
      if (v74 != &v75)
      {
        free(v74);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v73;
        v34 = __p;
        if (v73 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v73 = v32;
        operator delete(v34);
      }

      v35 = v70;
      if (v70)
      {
        v36 = v71;
        v37 = v70;
        if (v71 != v70)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v70;
        }

        v71 = v35;
        operator delete(v37);
      }

      if (v67 != &v69)
      {
        free(v67);
      }
    }

    return 0;
  }

  v41 = *(v5 + 24);
  if (v4)
  {
    mlir::AsmParserState::addTypeAliasUses(v4, v64, *(&v64 + 1), LocRange, v54);
  }

  return *(*(v41 + 8 * v31) + 8);
}

void mlir::parseAttribute(mlir::MLIRContext ****a1, uint64_t **a2, uint64_t **a3, void *a4, uint64_t ***a5, int a6)
{
  v90[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v47);
  }

  else
  {
    v65 = 261;
    v63 = a1;
    v64[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v63, 0, &v47);
  }

  llvm::SourceMgr::SourceMgr(&v44);
  v11 = v47;
  v47 = 0;
  v64[1] = 0;
  v64[0] = 0;
  v63 = v11;
  if (v45 >= v46)
  {
    v12 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v44, &v63);
  }

  else
  {
    v12 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v45, &v63) + 3);
  }

  v45 = v12;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v63);
  v39[0] = 0;
  v39[1] = 0;
  v39[2] = 0x1000000000;
  v39[3] = 0;
  v39[4] = 0;
  v39[5] = 0x1000000000;
  v39[6] = 0;
  v39[7] = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v81 = a3;
  v82 = 1;
  v84 = 0;
  v83 = 0;
  v85 = 0;
  v86 = 0;
  v87 = v89;
  v88 = 0x600000000;
  v89[6] = v90;
  v89[7] = 0x600000000;
  v63 = &v81;
  mlir::Lexer::Lexer(v64, &v44, a3, 0);
  mlir::Lexer::lexToken(&v66, v64);
  v68 = 1;
  v69 = "";
  v70 = 0;
  v73 = 0;
  v71 = v39;
  v72 = 0;
  v74 = 0;
  v75 = v77;
  v76 = 0;
  v77[1] = 0;
  v77[0] = 0;
  v80[0] = "builtin";
  v80[1] = 7;
  v78 = v80;
  v79 = 0x300000001;
  v37 = *v63;
  v38 = &v63;
  v35 = v66;
  v36 = v67;
  if (mlir::detail::Parser::parseAttribute(&v37, a4, v13, v14))
  {
    v33 = *(v38 + 7);
    v34 = v38[9];
    Loc = mlir::Token::getLoc(&v33);
    v16 = (Loc - mlir::Token::getLoc(&v35));
    if (a5)
    {
      *a5 = v16;
    }

    else if (v16 != a2)
    {
      v17 = mlir::Token::getLoc(&v33);
      v32 = 257;
      mlir::detail::Parser::emitError(&v37, v17, v31, &v51);
      if (v51)
      {
        LODWORD(v48) = 3;
        *(&v48 + 1) = "found trailing characters: '";
        v49 = 28;
        if (v54 >= v55)
        {
          if (v53 > &v48 || v53 + 24 * v54 <= &v48)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v53 + 24 * v54;
        v19 = v48;
        *(v18 + 2) = v49;
        *v18 = v19;
        ++v54;
        if (v51)
        {
          v20 = a2 >= v16 ? v16 : a2;
          v50 = 261;
          *&v48 = v20 + a1;
          *(&v48 + 1) = a2 - v20;
          mlir::Diagnostic::operator<<(&v52, &v48);
          if (v51)
          {
            LODWORD(v48) = 3;
            *(&v48 + 1) = "'";
            v49 = 1;
            if (v54 >= v55)
            {
              if (v53 > &v48 || v53 + 24 * v54 <= &v48)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v21 = v53 + 24 * v54;
            v22 = v48;
            *(v21 + 2) = v49;
            *v21 = v22;
            ++v54;
            if (v51)
            {
              mlir::InFlightDiagnostic::report(&v51);
            }
          }
        }
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v60;
          v25 = __p;
          if (v60 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v60 = v23;
          operator delete(v25);
        }

        v26 = v57;
        if (v57)
        {
          v27 = v58;
          v28 = v57;
          if (v58 != v57)
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
            v28 = v57;
          }

          v58 = v26;
          operator delete(v28);
        }

        if (v53 != &v56)
        {
          free(v53);
        }
      }
    }
  }

  if (v78 != v80)
  {
    free(v78);
  }

  if (v75 != v77)
  {
    free(v75);
  }

  llvm::deallocate_buffer(v72, (8 * v74));
}

void mlir::parseType(uint64_t ***a1, uint64_t **a2, uint64_t **a3, uint64_t ***a4, int a5)
{
  v87[6] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v44);
  }

  else
  {
    v62 = 261;
    v60 = a1;
    v61[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v60, 0, &v44);
  }

  llvm::SourceMgr::SourceMgr(&v41);
  v9 = v44;
  v44 = 0;
  v61[1] = 0;
  v61[0] = 0;
  v60 = v9;
  if (v42 >= v43)
  {
    v10 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v41, &v60);
  }

  else
  {
    v10 = (llvm::SourceMgr::SrcBuffer::SrcBuffer(v42, &v60) + 3);
  }

  v42 = v10;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v60);
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = 0x1000000000;
  v36[3] = 0;
  v36[4] = 0;
  v36[5] = 0x1000000000;
  v36[6] = 0;
  v36[7] = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v78 = a3;
  v79 = 1;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = v86;
  v85 = 0x600000000;
  v86[6] = v87;
  v86[7] = 0x600000000;
  v60 = &v78;
  mlir::Lexer::Lexer(v61, &v41, a3, 0);
  mlir::Lexer::lexToken(&v63, v61);
  v65 = 1;
  v66 = "";
  v67 = 0;
  v70 = 0;
  v68 = v36;
  v69 = 0;
  v71 = 0;
  v72 = v74;
  v73 = 0;
  v74[1] = 0;
  v74[0] = 0;
  v77[0] = "builtin";
  v77[1] = 7;
  v75 = v77;
  v76 = 0x300000001;
  v34 = *v60;
  v35 = &v60;
  v32 = v63;
  v33 = v64;
  mlir::detail::Parser::parseType(&v34);
  if (v11)
  {
    v30 = *(v35 + 7);
    v31 = v35[9];
    Loc = mlir::Token::getLoc(&v30);
    v13 = (Loc - mlir::Token::getLoc(&v32));
    if (a4)
    {
      *a4 = v13;
    }

    else if (v13 != a2)
    {
      v14 = mlir::Token::getLoc(&v30);
      v29 = 257;
      mlir::detail::Parser::emitError(&v34, v14, v28, &v48);
      if (v48)
      {
        LODWORD(v45) = 3;
        *(&v45 + 1) = "found trailing characters: '";
        v46 = 28;
        if (v51 >= v52)
        {
          if (v50 > &v45 || v50 + 24 * v51 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v50 + 24 * v51;
        v16 = v45;
        *(v15 + 2) = v46;
        *v15 = v16;
        ++v51;
        if (v48)
        {
          v17 = a2 >= v13 ? v13 : a2;
          v47 = 261;
          *&v45 = v17 + a1;
          *(&v45 + 1) = a2 - v17;
          mlir::Diagnostic::operator<<(&v49, &v45);
          if (v48)
          {
            LODWORD(v45) = 3;
            *(&v45 + 1) = "'";
            v46 = 1;
            if (v51 >= v52)
            {
              if (v50 > &v45 || v50 + 24 * v51 <= &v45)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v18 = v50 + 24 * v51;
            v19 = v45;
            *(v18 + 2) = v46;
            *v18 = v19;
            ++v51;
            if (v48)
            {
              mlir::InFlightDiagnostic::report(&v48);
            }
          }
        }
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v57;
          v22 = __p;
          if (v57 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v57 = v20;
          operator delete(v22);
        }

        v23 = v54;
        if (v54)
        {
          v24 = v55;
          v25 = v54;
          if (v55 != v54)
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
            v25 = v54;
          }

          v55 = v23;
          operator delete(v25);
        }

        if (v50 != &v53)
        {
          free(v50);
        }
      }
    }
  }

  if (v75 != v77)
  {
    free(v75);
  }

  if (v72 != v74)
  {
    free(v72);
  }

  llvm::deallocate_buffer(v69, (8 * v71));
}

void anonymous namespace::CustomDialectAsmParser::~CustomDialectAsmParser(_anonymous_namespace_::CustomDialectAsmParser *this)
{
  mlir::DialectAsmParser::~DialectAsmParser(this);

  JUMPOUT(0x259C63180);
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(uint64_t a1, double *a2, uint64_t a3, unsigned int a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeyword(void *a1, uint64_t a2, const char *a3, const char **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v24[0] = a2;
  v24[1] = a3;
  v5 = a1[2];
  if (*(*(v5 + 8) + 56) == 2)
  {
    return mlir::detail::Parser::codeCompleteExpectedTokens(v5, v24, 1);
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 408))(a1, a2, a3))
  {
    return 1;
  }

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

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
  v13 = result;
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
    result = v13;
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
      result = v13;
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
      result = v13;
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
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
      result = v13;
    }

    if (v30 != &v33)
    {
      free(v30);
      return v13;
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
{
  v5 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, mlir::detail::Parser **a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseType(uint64_t a1, uint64_t *a2)
{
  mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4)
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrowTypeList(void *a1, uint64_t a2)
{
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2);
  return v4 & 1;
}

void mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrowTypeList(uint64_t a1, uint64_t a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonType(uint64_t a1, uint64_t *a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
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

void mlir::Lexer::emitError(llvm::SourceMgr::SrcBuffer ***this@<X0>, const char *a2@<X1>, const llvm::Twine *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = *this;
  v9 = **this;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v9, a2);
  v11 = a2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v9, LineNumber);
  v12 = this[1];
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
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
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

  v24 = this[4] - a2;
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
            v11 = *(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x100;
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
  v7 = MEMORY[0x277D85DE0];
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

void mlir::Lexer::lexEllipsis(mlir::Lexer *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 4);
  if (v6 != *(this + 2) + *(this + 3) && *v6 == 46 && *(v6 + 1) == 46)
  {
    *(this + 4) = v6 + 2;
    *a3 = 17;
    *(a3 + 8) = a2;
    *(a3 + 16) = v6 + 2 - a2;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7 = "expected three consecutive dots for an ellipsis";
    v8 = 259;
    mlir::Lexer::emitError(this, v6, &v7, a3);
  }
}

void *mlir::Lexer::skipComment(void *this)
{
  v1 = this[4] + 1;
  do
  {
    while (1)
    {
      v2 = v1++;
      this[4] = v1;
      v3 = *v2;
      if (!*v2)
      {
        break;
      }

      if (v3 == 10 || v3 == 13)
      {
        return this;
      }
    }
  }

  while (v2 != (this[2] + this[3]));
  this[4] = v2;
  return this;
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
      if (v7 == 95 || (*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x100) != 0)
      {
LABEL_9:
        v11 = MEMORY[0x277D85DE0];
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
      v12 = MEMORY[0x277D85DE0];
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
      v12 = MEMORY[0x277D85DE0];
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
    v12 = MEMORY[0x277D85DE0];
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
    if (v5 < 0 || (v6 = MEMORY[0x277D85DE0], (*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x10000) == 0))
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

    v10 = MEMORY[0x277D85DE0];
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

BOOL mlir::detail::Parser::parseCallSiteLocation(mlir::detail::Parser *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken(&v21, (*(a1 + 1) + 8));
  v5 = *(a1 + 1);
  *(v5 + 56) = v21;
  *(v5 + 72) = v22;
  *&v21 = "expected '(' in callsite location";
  v24 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 21, &v21))
  {
    return 0;
  }

  v20 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 1);
  if (*(v6 + 56) == 3 && *(v6 + 72) == 2 && **(v6 + 64) == 29793)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken(&v21, (*(a1 + 1) + 8));
    v17 = *(a1 + 1);
    *(v17 + 56) = v21;
    *(v17 + 72) = v22;
    v18[0] = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v18))
    {
      *&v21 = "expected ')' in callsite location";
      v24 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v21))
      {
        *a2 = mlir::CallSiteLoc::get(v20, v18[0]);
        return 1;
      }
    }

    return 0;
  }

  v18[0] = "expected 'at' in callsite location";
  v19 = 259;
  mlir::detail::Parser::emitWrongTokenError(&v21, a1, v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v21);
  v8 = result;
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
    result = v8;
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
      result = v8;
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
      result = v8;
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
      result = v8;
    }

    if (v23 != &v25)
    {
      free(v23);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::detail::Parser::parseLocationInstance(mlir::detail::Parser *a1, uint64_t *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v3 = *(v2 + 56);
  if (v3 == 3)
  {
    v11 = *(v2 + 64);
    v10 = *(v2 + 72);
    if (v10 == 5)
    {
      v25 = a1;
      v26 = memcmp(v11, "fused", 5uLL);
      a1 = v25;
      if (!v26)
      {

        return mlir::detail::Parser::parseFusedLocation(v25);
      }
    }

    else if (v10 == 7)
    {
      v20 = a1;
      v22 = memcmp(*(v2 + 64), "unknown", 7uLL);
      a1 = v20;
      if (!v22)
      {
        *(v2 + 80) = *(v2 + 56);
        *(v2 + 96) = *(v2 + 72);
        mlir::Lexer::lexToken(&v39, (v20[1] + 1));
        v23 = v20[1];
        *(v23 + 7) = v39;
        v23[9] = v40;
        *a2 = mlir::UnknownLoc::get(**v20[1], v24);
        return 1;
      }
    }

    else if (v10 == 8 && *v11 == 0x657469736C6C6163)
    {

      return mlir::detail::Parser::parseCallSiteLocation(a1, a2);
    }

    v35[0] = "expected location instance";
    v36 = 259;
    mlir::detail::Parser::emitWrongTokenError(&v39, a1, v35);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    return v7;
  }

  if (v3 != 11)
  {
    if (v3 == 5)
    {
      v5 = a1;
      v6 = mlir::detail::Parser::parseExtendedAttr(a1, 0);
      v7 = v6;
      if (!v6)
      {
        return v7;
      }

      v8 = mlir::LocationAttr::classof(v6) && v7;
      *a2 = v8;
      if (v8)
      {
        return 1;
      }

      v35[0] = "expected location attribute, but got";
      v36 = 259;
      mlir::detail::Parser::emitError(&v39, v5, v35);
      if (v39)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v7);
        if (v42 >= v43)
        {
          if (v41 > &v37 || v41 + 24 * v42 <= &v37)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v41 + 24 * v42;
        v28 = v37;
        *(v27 + 2) = v38;
        *v27 = v28;
        ++v42;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
      if (v39)
      {
        mlir::InFlightDiagnostic::report(&v39);
      }

      if (v50 != 1)
      {
        return v7;
      }

      if (v49 != &v50)
      {
        free(v49);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v48;
        v31 = __p;
        if (v48 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v48 = v29;
        operator delete(v31);
      }

      v15 = v45;
      if (!v45)
      {
LABEL_61:
        if (v41 != &v44)
        {
          free(v41);
        }

        return v7;
      }

      v32 = v46;
      v17 = v45;
      if (v46 == v45)
      {
LABEL_60:
        v46 = v15;
        operator delete(v17);
        goto LABEL_61;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          MEMORY[0x259C63150](v33, 0x1000C8077774924);
        }
      }

      while (v32 != v15);
    }

    else
    {
      v35[0] = "expected location instance";
      v36 = 259;
      mlir::detail::Parser::emitWrongTokenError(&v39, a1, v35);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
      if (v39)
      {
        mlir::InFlightDiagnostic::report(&v39);
      }

      if (v50 != 1)
      {
        return v7;
      }

      if (v49 != &v50)
      {
        free(v49);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v48;
        v14 = __p;
        if (v48 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v48 = v12;
        operator delete(v14);
      }

      v15 = v45;
      if (!v45)
      {
        goto LABEL_61;
      }

      v16 = v46;
      v17 = v45;
      if (v46 == v45)
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
          MEMORY[0x259C63150](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
    }

    v17 = v45;
    goto LABEL_60;
  }

  return mlir::detail::Parser::parseNameOrFileLineColLocation(a1, a2);
}

uint64_t mlir::detail::Parser::parseFusedLocation(mlir::MLIRContext ****a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  *(v2 + 5) = *(v2 + 7);
  v2[12] = v2[9];
  mlir::Lexer::lexToken(v10, (a1[1] + 1));
  v3 = a1[1];
  *(v3 + 7) = *v10;
  v3[9] = v11[0];
  v4 = a1[1];
  if (*(v4 + 14) == 23)
  {
    *(v4 + 5) = *(v4 + 7);
    v4[12] = v4[9];
    mlir::Lexer::lexToken(v10, (a1[1] + 1));
    v5 = a1[1];
    *(v5 + 7) = *v10;
    v5[9] = v11[0];
    v6 = mlir::detail::Parser::parseAttribute(a1, 0);
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v10[0] = "expected '>' after fused location metadata";
    v12 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 19, v10))
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9[1] = v10;
  v10[0] = v11;
  v10[1] = 0x400000000;
  v9[0] = a1;
  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>, v9, " in fused location", 18))
  {
    mlir::FusedLoc::get(v10[0], LODWORD(v10[1]), v7, **a1[1]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return 0;
}

BOOL mlir::detail::Parser::parseNameOrFileLineColLocation(mlir::detail::Parser *a1, uint64_t *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = **v4;
  mlir::Token::getStringValue((v4 + 7), &v52);
  v6 = *(a1 + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken(&v53, (*(a1 + 1) + 8));
  v8 = *(a1 + 1);
  *(v8 + 56) = v53;
  *(v8 + 72) = v54;
  v9 = *(a1 + 1);
  v10 = (v9 + 56);
  v11 = *(v9 + 56);
  if (v11 == 21)
  {
    *(v9 + 80) = *v10;
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken(&v53, (*(a1 + 1) + 8));
    v26 = *(a1 + 1);
    *(v26 + 56) = v53;
    *(v26 + 72) = v54;
    v50[0] = 0;
    if (mlir::detail::Parser::parseLocationInstance(a1, v50))
    {
      v56 = 260;
      *&v53 = &v52;
      v28 = mlir::StringAttr::get(v5, &v53, v27);
      *a2 = mlir::NameLoc::get(v28, v50[0]);
      *&v53 = "expected ')' after child location of NameLoc";
      v56 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, &v53))
      {
        v17 = 1;
        goto LABEL_51;
      }
    }

    goto LABEL_46;
  }

  if (v11 != 15)
  {
    v56 = 260;
    *&v53 = &v52;
    v29 = mlir::StringAttr::get(v5, &v53, v7);
    v30 = mlir::NameLoc::get(v29);
    goto LABEL_25;
  }

  *(v9 + 80) = *v10;
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken(&v53, (*(a1 + 1) + 8));
  v12 = *(a1 + 1);
  *(v12 + 56) = v53;
  *(v12 + 72) = v54;
  v13 = *(a1 + 1);
  v15 = *(v13 + 56);
  v14 = (v13 + 56);
  if (v15 == 10)
  {
    UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v14);
    if ((UnsignedIntegerValue & 0x100000000) == 0)
    {
      v50[0] = "expected integer line number in FileLineColLoc";
      v51 = 259;
      mlir::detail::Parser::emitWrongTokenError(&v53, a1, v50);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v61;
          v20 = __p;
          if (v61 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v61 = v18;
          operator delete(v20);
        }

        v21 = v58;
        if (!v58)
        {
          goto LABEL_49;
        }

        v22 = v59;
        v23 = v58;
        if (v59 == v58)
        {
LABEL_48:
          v59 = v21;
          operator delete(v23);
LABEL_49:
          if (v55 != &v57)
          {
            free(v55);
          }

          goto LABEL_51;
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
LABEL_47:
        v23 = v58;
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    v37 = UnsignedIntegerValue;
    v38 = *(a1 + 1);
    *(v38 + 80) = *(v38 + 56);
    *(v38 + 96) = *(v38 + 72);
    mlir::Lexer::lexToken(&v53, (*(a1 + 1) + 8));
    v39 = *(a1 + 1);
    *(v39 + 56) = v53;
    *(v39 + 72) = v54;
    *&v53 = "expected ':' in FileLineColLoc";
    v56 = 259;
    if (mlir::detail::Parser::parseToken(a1, 15, &v53))
    {
      v40 = *(a1 + 1);
      v42 = *(v40 + 56);
      v41 = (v40 + 56);
      if (v42 != 10)
      {
        v50[0] = "expected integer column number in FileLineColLoc";
        v51 = 259;
        mlir::detail::Parser::emitWrongTokenError(&v53, a1, v50);
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
        if (v53)
        {
          mlir::InFlightDiagnostic::report(&v53);
        }

        if (v63 == 1)
        {
          mlir::Diagnostic::~Diagnostic((&v53 + 8));
        }

        goto LABEL_51;
      }

      v43 = mlir::Token::getUnsignedIntegerValue(v41);
      if ((v43 & 0x100000000) == 0)
      {
        v50[0] = "expected integer column number in FileLineColLoc";
        v51 = 259;
        mlir::detail::Parser::emitError(&v53, a1, v50);
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
        goto LABEL_51;
      }

      v45 = v43;
      v46 = *(a1 + 1);
      *(v46 + 80) = *(v46 + 56);
      *(v46 + 96) = *(v46 + 72);
      mlir::Lexer::lexToken(&v53, (*(a1 + 1) + 8));
      v47 = *(a1 + 1);
      *(v47 + 56) = v53;
      *(v47 + 72) = v54;
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v52;
      }

      else
      {
        v48 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      v30 = mlir::FileLineColLoc::get(v5, v48, size, v37, v45);
LABEL_25:
      *a2 = v30;
      v17 = 1;
      goto LABEL_51;
    }

LABEL_46:
    v17 = 0;
    goto LABEL_51;
  }

  v50[0] = "expected integer line number in FileLineColLoc";
  v51 = 259;
  mlir::detail::Parser::emitWrongTokenError(&v53, a1, v50);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v61;
      v33 = __p;
      if (v61 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v61 = v31;
      operator delete(v33);
    }

    v21 = v58;
    if (!v58)
    {
      goto LABEL_49;
    }

    v34 = v59;
    v23 = v58;
    if (v59 == v58)
    {
      goto LABEL_48;
    }

    do
    {
      v36 = *--v34;
      v35 = v36;
      *v34 = 0;
      if (v36)
      {
        MEMORY[0x259C63150](v35, 0x1000C8077774924);
      }
    }

    while (v34 != v21);
    goto LABEL_47;
  }

LABEL_51:
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  return v17;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v6 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(v2, &v6) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v3 + 8 * v4) = v6;
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
  v26 = *MEMORY[0x277D85DE8];
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
    mlir::detail::Parser::emitWrongTokenError(&v16, a1, a3);
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
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
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
  v37 = *MEMORY[0x277D85DE8];
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
      mlir::detail::Parser::emitWrongTokenError(&v26, a1, v24);
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
                MEMORY[0x259C63150](v20, 0x1000C8077774924);
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

void mlir::detail::Parser::emitWrongTokenError(mlir::InFlightDiagnostic *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, const llvm::Twine *a3@<X1>)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v7 = *(this + 1);
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
      v21 = *(this + 1) + 8;
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

  v21 = *(this + 1) + 8;
  v15 = v10;
LABEL_23:
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v21, v15);
  mlir::emitError(EncodedSourceLocation, a3, a1);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a1);
  }
}

void mlir::detail::Parser::emitError(mlir::InFlightDiagnostic *__return_ptr a1@<X8>, mlir::detail::Parser *this@<X0>, const llvm::Twine *a3@<X1>)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v7 = Loc;
  v8 = *(this + 1);
  if (!*(v8 + 56))
  {
    v7 = (Loc - 1);
  }

  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(v8 + 8, v7);
  mlir::emitError(EncodedSourceLocation, a3, a1);
  if (*(*(this + 1) + 56) == 1)
  {

    mlir::InFlightDiagnostic::abandon(a1);
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

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v4 = 0;
  v30 = *MEMORY[0x277D85DE8];
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
        bzero((*a2 + 8), (((v17 + 63) >> 3) - 8) & 0xFFFFFFF8);
        goto LABEL_39;
      }

      *a2 = v17 != 0;
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
        bzero((*a2 + 8), (((v15 + 63) >> 3) - 8) & 0xFFFFFFF8);
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
        MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
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
  v49 = *MEMORY[0x277D85DE8];
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
            MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
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
                MEMORY[0x259C63150](v24, 0x1000C8077774924);
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

BOOL mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, uint64_t a2, mlir::Token *this, int a4, void *a5, unint64_t a6)
{
  v58 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc(this);
  v13 = *(this + 2);
  if (v13 < 2 || (v14 = *(this + 1), *(v14 + 1) != 120))
  {
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
    v44[0] = "hexadecimal float literal should not have a leading minus";
    v45 = 259;
    v15 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
    mlir::emitError(v15, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
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

      v17 = __p;
      if (__p)
      {
        v18 = v55;
        v19 = __p;
        if (v55 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v55 = v17;
        operator delete(v19);
      }

      v20 = v52;
      if (v52)
      {
        v21 = v53;
        v22 = v52;
        if (v53 != v52)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x259C63150](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v52;
        }

        v53 = v20;
        operator delete(v22);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    return v16;
  }

  LODWORD(v47) = 1;
  v46 = 0;
  v48 = v14;
  v49 = v13;
  llvm::StringRef::getAsInteger(&v48, 0, &v46);
  v27 = v47;
  if (v47 <= 0x40)
  {
    if (64 - __clz(v46) <= a6)
    {
      v28 = llvm::APInt::APInt(&v48, a6, (v47 + 63) >> 6, &v46);
      if ((*(a2 + 32) & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_56:
      v42 = *(a2 + 8);
      v43 = llvm::APFloatBase::PPCDoubleDouble(v28);
      if (v43 == v42)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((a2 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((a2 + 8));
      }

      *(a2 + 32) = 0;
      v31 = (a2 + 8);
      v32 = a5;
      if (v43 != a5)
      {
        goto LABEL_34;
      }

LABEL_64:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v32, &v48);
    }

LABEL_37:
    v44[0] = "hexadecimal float constant out of range for type";
    v45 = 259;
    v33 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
    mlir::emitError(v33, v44, &v48);
    if (*(*(a1 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v48);
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
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

      v34 = __p;
      if (__p)
      {
        v35 = v55;
        v36 = __p;
        if (v55 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v55 = v34;
        operator delete(v36);
      }

      v37 = v52;
      if (v52)
      {
        v38 = v53;
        v39 = v52;
        if (v53 != v52)
        {
          do
          {
            v41 = *--v38;
            v40 = v41;
            *v38 = 0;
            if (v41)
            {
              MEMORY[0x259C63150](v40, 0x1000C8077774924);
            }
          }

          while (v38 != v37);
          v39 = v52;
        }

        v53 = v37;
        operator delete(v39);
      }

      if (v50 != v51)
      {
        free(v50);
      }
    }

    goto LABEL_68;
  }

  if (v27 - llvm::APInt::countLeadingZerosSlowCase(&v46) > a6)
  {
    goto LABEL_37;
  }

  v28 = llvm::APInt::APInt(&v48, a6, (v27 + 63) >> 6, v46);
  if (*(a2 + 32))
  {
    goto LABEL_56;
  }

LABEL_33:
  v30 = llvm::APFloatBase::PPCDoubleDouble(v28);
  v31 = (a2 + 8);
  v32 = a5;
  if (v30 == a5)
  {
    goto LABEL_64;
  }

LABEL_34:
  llvm::detail::IEEEFloat::IEEEFloat(v31, v32, &v48, v29);
  *(a2 + 32) = 1;
  if (v49 >= 0x41 && v48)
  {
    MEMORY[0x259C63150](v48, 0x1000C8000313F17);
  }

  v16 = 1;
LABEL_68:
  if (v47 >= 0x41 && v46)
  {
    MEMORY[0x259C63150](v46, 0x1000C8000313F17);
  }

  return v16;
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

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, const mlir::OpAsmDialectInterface *a2@<X1>, llvm::StringRef *a3@<X2>, uint64_t a4@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  v55 = a2;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v8 = *(this + 1);
  v9 = *(v8 + 56);
  if (v9 == 3 || v9 == 12)
  {
LABEL_6:
    *a3 = *(v8 + 64);
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken(&v59, (*(this + 1) + 8));
    v11 = *(this + 1);
    *(v11 + 56) = v59;
    *(v11 + 72) = v60;
    v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](*(*(this + 1) + 104) + 48, &v55);
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
        (*(*v55 + 32))(&v52);
        if (v54)
        {
          (*(*v55 + 40))(&v59);
          if (*(v19 + 31) < 0)
          {
            operator delete(*v20);
          }

          v22 = v59;
          *(v20 + 16) = v60;
          *v20 = v22;
          *(v19 + 32) = v52;
          *(v19 + 48) = v53;
          goto LABEL_16;
        }

        v51[16] = 257;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
        mlir::emitError(EncodedSourceLocation, v51, &v59);
        if (*(*(this + 1) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v59);
        }

        if (!v59)
        {
          goto LABEL_50;
        }

        LODWORD(v56) = 3;
        *(&v56 + 1) = "unknown 'resource' key '";
        v57 = 24;
        if (v62 >= v63)
        {
          if (v61 > &v56 || v61 + 24 * v62 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v34 = v61 + 24 * v62;
        v35 = v56;
        *(v34 + 2) = v57;
        *v34 = v35;
        ++v62;
        if (!v59)
        {
          goto LABEL_50;
        }

        v58 = 261;
        v36 = *(a3 + 1);
        *&v56 = *a3;
        *(&v56 + 1) = v36;
        mlir::Diagnostic::operator<<(&v59 + 8, &v56);
        if (!v59)
        {
          goto LABEL_50;
        }

        LODWORD(v56) = 3;
        *(&v56 + 1) = "' for dialect '";
        v57 = 15;
        if (v62 >= v63)
        {
          if (v61 > &v56 || v61 + 24 * v62 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v37 = v61 + 24 * v62;
        v38 = v56;
        *(v37 + 2) = v57;
        *v37 = v38;
        ++v62;
        if (v59 && (v39 = *(v55 + 1), v41 = *(v39 + 8), v40 = *(v39 + 16), v58 = 261, *&v56 = v41, *(&v56 + 1) = v40, mlir::Diagnostic::operator<<(&v59 + 8, &v56), v59))
        {
          LODWORD(v56) = 3;
          *(&v56 + 1) = "'";
          v57 = 1;
          if (v62 >= v63)
          {
            if (v61 > &v56 || v61 + 24 * v62 <= &v56)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v42 = v61 + 24 * v62;
          v43 = v56;
          *(v42 + 2) = v57;
          *v42 = v43;
          ++v62;
          v44 = v59;
          *a4 = 0;
          *(a4 + 24) = 0;
          if (v44)
          {
            mlir::InFlightDiagnostic::report(&v59);
          }
        }

        else
        {
LABEL_50:
          *a4 = 0;
          *(a4 + 24) = 0;
        }

        if (v70)
        {
          if (v69 != &v70)
          {
            free(v69);
          }

          v45 = __p;
          if (__p)
          {
            v46 = v68;
            v47 = __p;
            if (v68 != __p)
            {
              do
              {
                v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
              }

              while (v46 != v45);
              v47 = __p;
            }

            v68 = v45;
            operator delete(v47);
          }

          v28 = v65;
          if (!v65)
          {
            goto LABEL_67;
          }

          v48 = v66;
          v30 = v65;
          if (v66 == v65)
          {
LABEL_66:
            v66 = v28;
            operator delete(v30);
LABEL_67:
            if (v61 != &v64)
            {
              free(v61);
            }

            return;
          }

          do
          {
            v50 = *--v48;
            v49 = v50;
            *v48 = 0;
            if (v50)
            {
              MEMORY[0x259C63150](v49, 0x1000C8077774924);
            }
          }

          while (v48 != v28);
LABEL_65:
          v30 = v65;
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

  *&v56 = "expected identifier key for 'resource' entry";
  v58 = 259;
  mlir::detail::Parser::emitError(&v59, this, &v56);
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v68;
      v27 = __p;
      if (v68 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v68 = v25;
      operator delete(v27);
    }

    v28 = v65;
    if (!v65)
    {
      goto LABEL_67;
    }

    v29 = v66;
    v30 = v65;
    if (v66 == v65)
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
        MEMORY[0x259C63150](v31, 0x1000C8077774924);
      }
    }

    while (v29 != v28);
    goto LABEL_65;
  }
}