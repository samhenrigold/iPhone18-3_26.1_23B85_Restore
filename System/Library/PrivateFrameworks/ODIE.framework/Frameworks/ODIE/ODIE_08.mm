llvm::raw_ostream *printDialectSymbol(llvm::raw_ostream *a1, const void *a2, size_t a3, const void *a4, size_t a5, char *a6, size_t a7)
{
  v12 = llvm::raw_ostream::operator<<(a1, a2, a3);
  llvm::raw_ostream::operator<<(v12, a4, a5);
  if (!a7)
  {
    goto LABEL_26;
  }

  v13 = *a6;
  if ((v13 & 0x80000000) != 0)
  {
    if (__maskrune(v13, 0x100uLL))
    {
      goto LABEL_6;
    }

LABEL_26:
    v21 = *(a1 + 4);
    if (v21 >= *(a1 + 3))
    {
      llvm::raw_ostream::write(a1, 60);
    }

    else
    {
      *(a1 + 4) = v21 + 1;
      *v21 = 60;
    }

    result = llvm::raw_ostream::operator<<(a1, a6, a7);
    v22 = *(result + 4);
    if (v22 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 62);
    }

    else
    {
      *(result + 4) = v22 + 1;
      *v22 = 62;
    }

    return result;
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x100) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v14 = a7;
  v15 = a6;
  while (1)
  {
    v16 = *v15;
    if (v16 != 95)
    {
      v17 = v16 != 46 && (v16 - 48) >= 0xA;
      if (v17 && (v16 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }
    }

    ++v15;
    if (!--v14)
    {
      goto LABEL_18;
    }
  }

  if (a7 >= v14 && (*v15 != 60 || a6[a7 - 1] != 62))
  {
    goto LABEL_26;
  }

LABEL_18:
  v19 = *(a1 + 4);
  if (v19 >= *(a1 + 3))
  {
    llvm::raw_ostream::write(a1, 46);
  }

  else
  {
    *(a1 + 4) = v19 + 1;
    *v19 = 46;
  }

  return llvm::raw_ostream::operator<<(a1, a6, a7);
}

void printFloatValue(const llvm::APFloat *a1, llvm::raw_ostream *a2, BOOL *a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v6 = *(a1 + 1);
  }

  else
  {
    v6 = a1;
  }

  if ((*(v6 + 20) & 6) != 0)
  {
    v17 = v19;
    v18 = xmmword_25D0A05A0;
    llvm::APFloat::toString(a1, &v17, 6u, 0, 0);
    llvm::APFloat::APFloat(&v15, *a1, v17, v18);
    IsEqual = llvm::APFloat::bitwiseIsEqual(&v15, a1);
    llvm::APFloat::Storage::~Storage(&v15);
    if (IsEqual)
    {
      v8 = v17;
      v9 = v18;
      v10 = a2;
      goto LABEL_11;
    }

    *&v18 = 0;
    llvm::APFloat::toString(a1, &v17, 0, 3u, 1);
    v11 = v17;
    v12 = v18;
    if (v18)
    {
      v13 = memchr(v17, 46, v18);
      if (v13)
      {
        if (v13 - v11 != -1)
        {
          v10 = a2;
          v8 = v11;
          v9 = v12;
LABEL_11:
          llvm::raw_ostream::write(v10, v8, v9);
          v14 = v17;
          if (v17 == v19)
          {
            return;
          }

LABEL_21:
          free(v14);
          return;
        }
      }
    }

    if (v11 != v19)
    {
      free(v11);
    }
  }

  if (a3)
  {
    *a3 = 1;
  }

  v17 = v19;
  v18 = xmmword_25D0A05B0;
  llvm::APFloat::bitcastToAPInt(a1, &v15);
  llvm::APInt::toString(&v15, &v17, 0x10u, 0, 1, 1, 0);
  llvm::raw_ostream::write(a2, v17, v18);
  if (v16 >= 0x41)
  {
    if (v15)
    {
      MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  v14 = v17;
  if (v17 != v19)
  {
    goto LABEL_21;
  }
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printEscapedString(llvm::raw_ostream **a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(a2, a3, *a1);
  result = *a1;
  v9 = *(*a1 + 4);
  if (*(*a1 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

void mlir::AffineMap::print(mlir::AffineMap *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(&v3);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x12)
  {
    *(v2 + 15) = 1044271169;
    *v2 = *"<<NULL AFFINE MAP>>";
    *(a2 + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL AFFINE MAP>>", 0x13uLL);
  }
}

void mlir::AsmPrinter::Impl::printType(llvm::raw_ostream **a1, uint64_t a2)
{
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(a1, a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(a1, a2);
    }
  }

  else
  {
    v4 = *a1;
    v5 = *(*a1 + 4);
    if (*(*a1 + 3) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      *(v4 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double printSymbolReference(llvm::raw_ostream *a1, size_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v6 = *(a3 + 4);
    if (v6 >= *(a3 + 3))
    {
      llvm::raw_ostream::write(a3, 64);
    }

    else
    {
      *(a3 + 4) = v6 + 1;
      *v6 = 64;
    }

    printKeywordOrString(a1, a2, a3);
  }

  else
  {
    v7 = *(a3 + 4);
    if (*(a3 + 3) - v7 > 0x18uLL)
    {
      qmemcpy(v7, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(a3 + 4) += 25;
    }

    else
    {

      llvm::raw_ostream::write(a3, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(llvm::raw_ostream **a1, uint64_t *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v6 = a2[1];
  v5 = a2[2];
  v7 = (*(v5 + 8))(v5, v6);
  v37 = v7;
  if (!a3)
  {
    goto LABEL_15;
  }

  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v38);
  v10 = a1[6];
  if (v10 == -1)
  {
    goto LABEL_15;
  }

  v11 = v8;
  v12 = (*(v9 + 16))(v9, v8);
  v14 = (*(v13 + 24))(v13, v12);
  if (v15)
  {
    v16 = 8 * v15;
    v17 = 1;
    do
    {
      v18 = *v14++;
      v17 *= v18;
      v16 -= 8;
    }

    while (v16);
  }

  else
  {
    v17 = 1;
  }

  if (v17 <= v10 || ((v19 = *(*v11 + 136), v19 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v20 = v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v20 = 1), v20 && (v11[3] & 1) != 0))
  {
LABEL_15:
    v21 = *(*v7 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v36 = v7[1];
      if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::DenseElementsAttr::tryGetComplexIntValues(v45, &v38);
        v40 = v45[1];
        v23 = *(v38 + 24);
        v24 = *a1;
        __p[0] = v45;
        __p[1] = a1;
        *&v40 = &v36;
        v25 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>;
      }

      else
      {
        mlir::DenseElementsAttr::tryGetComplexFloatValues(v45, &v38);
        *__p = v45[0];
        v40 = v45[1];
        v41 = v46;
        v42 = v47;
        v43 = v48;
        v44 = v49;
        v23 = *(v38 + 24);
        v24 = *a1;
        __p[0] = v45;
        __p[1] = a1;
        v25 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>;
      }
    }

    else if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v38, v45);
      v40 = v45[1];
      v23 = *(v38 + 24);
      v24 = *a1;
      __p[0] = v45;
      __p[1] = a1;
      *&v40 = &v37;
      v25 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>;
    }

    else
    {
      mlir::DenseElementsAttr::tryGetFloatValues(v45, &v38);
      *__p = v45[0];
      v40 = v45[1];
      v41 = v46;
      v42 = v47;
      v43 = v48;
      v44 = v49;
      v23 = *(v38 + 24);
      v24 = *a1;
      __p[0] = v45;
      __p[1] = a1;
      v25 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>;
    }

    printDenseElementsAttrImpl(v23, v6, v5, v24, v25, __p);
  }

  else
  {
    v26 = v38[4];
    v27 = v38[5];
    v28 = *a1;
    v29 = *(*a1 + 4);
    if ((*(*a1 + 3) - v29) > 2)
    {
      *(v29 + 2) = 120;
      *v29 = 12322;
      *(v28 + 4) += 3;
    }

    else
    {
      v28 = llvm::raw_ostream::write(*a1, "0x", 3uLL);
    }

    *&v45[0] = &v45[1] + 8;
    *(v45 + 8) = xmmword_25D0A05B0;
    llvm::SmallVectorImpl<char>::resizeImpl<true>(v45, 2 * v27);
    if (v27)
    {
      v30 = 0;
      do
      {
        v31 = *v26++;
        *(*&v45[0] + v30) = llvm::hexdigit(unsigned int,BOOL)::LUT[v31 >> 4];
        *(*&v45[0] + v30 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v31 & 0xF];
        v30 += 2;
        --v27;
      }

      while (v27);
    }

    std::string::basic_string[abi:nn200100](__p, *&v45[0], *(&v45[0] + 1));
    if (*&v45[0] != (&v45[1] + 8))
    {
      free(*&v45[0]);
    }

    if ((SBYTE7(v40) & 0x80u) == 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    if ((SBYTE7(v40) & 0x80u) == 0)
    {
      v33 = BYTE7(v40);
    }

    else
    {
      v33 = __p[1];
    }

    v34 = llvm::raw_ostream::write(v28, v32, v33);
    v35 = *(v34 + 4);
    if (*(v34 + 3) == v35)
    {
      llvm::raw_ostream::write(v34, "", 1uLL);
    }

    else
    {
      *v35 = 34;
      ++*(v34 + 4);
    }

    if (SBYTE7(v40) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void mlir::AsmPrinter::Impl::printDenseStringElementsAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v2[0] = a1;
  v2[1] = &v3;
  printDenseElementsAttrImpl(*(a2 + 24), *(a2 + 8), *(a2 + 16), *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v2);
}

void mlir::AsmPrinter::Impl::printDenseElementsAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    mlir::AsmPrinter::Impl::printDenseStringElementsAttr(a1, a2);
  }

  else
  {
    mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, a2, 1);
  }
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v13 = v4;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (*(v4 + 8) & 0x3FFFFFFF) == 1)
  {
    IntOrFloatBitWidth = 8;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v13);
  }

  v11 = IntOrFloatBitWidth >> 3;
  v12 = IntOrFloatBitWidth;
  v10 = *(a2 + 24);
  v6 = *(a2 + 16);
  v7 = *a1;
  v14[0] = &v12;
  v14[1] = &v10;
  v14[2] = &v11;
  v14[3] = &v13;
  v14[4] = a1;
  if (v6)
  {
    mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v14, 0);
    if (v6 != 1)
    {
      for (i = 1; i != v6; ++i)
      {
        v9 = *(v7 + 4);
        if (*(v7 + 3) - v9 > 1uLL)
        {
          *v9 = 8236;
          *(v7 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v7, ", ", 2uLL);
        }

        mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v14, i);
      }
    }
  }
}

void printDenseElementsAttrImpl(int a1, uint64_t a2, uint64_t a3, llvm::raw_ostream *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {

    a5(a6, 0);
  }

  else
  {
    v9 = (*(a3 + 24))(a3);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = 1;
      do
      {
        v13 = *v9++;
        v12 *= v13;
        v11 -= 8;
      }

      while (v11);
      if (!v12)
      {
        return;
      }
    }

    else
    {
      LODWORD(v12) = 1;
    }

    (*(a3 + 24))(a3, a2);
    v15 = v14;
    v32[0] = v33;
    v32[1] = 0x400000000;
    llvm::SmallVectorImpl<unsigned int>::assign(v32, v14, 0);
    v16 = (*(a3 + 24))(a3, a2);
    if (v12)
    {
      v17 = v16;
      v18 = 0;
      v19 = 0;
      do
      {
        while (1)
        {
          if (v18)
          {
            v20 = *(a4 + 4);
            if (*(a4 + 3) - v20 > 1uLL)
            {
              *v20 = 8236;
              *(a4 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(a4, ", ", 2uLL);
            }
          }

          if (v15 > v19)
          {
            v21 = v19 + 1;
            do
            {
              v22 = *(a4 + 4);
              if (v22 >= *(a4 + 3))
              {
                llvm::raw_ostream::write(a4, 91);
              }

              else
              {
                *(a4 + 4) = v22 + 1;
                *v22 = 91;
              }
            }

            while (v15 > v21++);
          }

          a5(a6, v18);
          ++*(v32[0] + v15 - 1);
          if (v15 != 1)
          {
            break;
          }

          v18 = (v18 + 1);
          v19 = 1;
          if (v18 == v12)
          {
            goto LABEL_35;
          }
        }

        v19 = v15;
        v24 = (v15 - 1);
        LODWORD(v25) = v15;
        do
        {
          v26 = v25;
          v25 = v24;
          v27 = v32[0];
          if (*(v17 + 8 * v25) <= *(v32[0] + v25))
          {
            *(v32[0] + v25) = 0;
            ++v27[v26 - 2];
            --v19;
            v28 = *(a4 + 4);
            if (v28 >= *(a4 + 3))
            {
              llvm::raw_ostream::write(a4, 93);
            }

            else
            {
              *(a4 + 4) = v28 + 1;
              *v28 = 93;
            }
          }

          v24 = v25 - 1;
        }

        while (v25 != 1);
        v18 = (v18 + 1);
      }

      while (v18 != v12);
      if (!v19)
      {
        goto LABEL_39;
      }

      do
      {
LABEL_35:
        v29 = *(a4 + 4);
        if (v29 >= *(a4 + 3))
        {
          llvm::raw_ostream::write(a4, 93);
        }

        else
        {
          *(a4 + 4) = v29 + 1;
          *v29 = 93;
        }

        --v19;
      }

      while (v19);
    }

LABEL_39:
    if (v32[0] != v33)
    {
      free(v32[0]);
    }
  }
}

void mlir::AsmPrinter::Impl::printTypeImpl(llvm::raw_ostream **a1, uint64_t a2)
{
  v4 = *(*a2 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    if (v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v13 = *a1;
      v14 = *(*a1 + 4);
      if ((*(*a1 + 3) - v14) > 4)
      {
        *(v14 + 4) = 120;
        *v14 = 1701080681;
        v18 = *(v13 + 4) + 5;
        goto LABEL_49;
      }

      v15 = "index";
      v16 = 5;
      goto LABEL_40;
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
    {
      v13 = *a1;
      v17 = *(*a1 + 4);
      if (*(*a1 + 3) - v17 > 7uLL)
      {
        v19 = 0x314D32453466;
LABEL_48:
        *v17 = v19 & 0xFFFFFFFFFFFFLL | 0x4E46000000000000;
        v18 = *(v13 + 4) + 8;
        goto LABEL_49;
      }

      v15 = "f4E2M1FN";
    }

    else if (v4 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
    {
      v13 = *a1;
      v17 = *(*a1 + 4);
      if (*(*a1 + 3) - v17 > 7uLL)
      {
        v20 = 843396710;
LABEL_44:
        v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x334D00000000;
        goto LABEL_48;
      }

      v15 = "f6E2M3FN";
    }

    else
    {
      if (v4 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
      {
        if (v4 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
        {
          v13 = *a1;
          v21 = *(*a1 + 4);
          if ((*(*a1 + 3) - v21) > 5)
          {
            *(v21 + 4) = 12877;
            v22 = 893728870;
            goto LABEL_57;
          }

          v15 = "f8E5M2";
        }

        else
        {
          if (v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
          {
            if (v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
            {
              if (v4 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
              {
                v13 = *a1;
                v23 = *(*a1 + 4);
                if ((*(*a1 + 3) - v23) <= 9)
                {
                  v15 = "f8E5M2FNUZ";
LABEL_63:
                  v16 = 10;
                  goto LABEL_40;
                }

                v24 = "f8E5M2FNUZ";
              }

              else
              {
                if (v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
                {
                  if (v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
                  {
                    if (v4 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
                    {
                      if (v4 != &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id)
                      {
                        if (v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
                        {
                          v13 = *a1;
                          v27 = *(*a1 + 4);
                          if (*(*a1 + 3) - v27 > 3uLL)
                          {
                            v29 = 909207138;
                            goto LABEL_88;
                          }

                          v15 = "bf16";
                        }

                        else
                        {
                          if (v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
                          {
                            v13 = *a1;
                            v28 = *(*a1 + 4);
                            if ((*(*a1 + 3) - v28) > 2)
                            {
                              *(v28 + 2) = 54;
                              v30 = 12646;
                              goto LABEL_99;
                            }

                            v15 = "f16";
LABEL_94:
                            v16 = 3;
                            goto LABEL_40;
                          }

                          if (v4 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
                          {
                            if (v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
                            {
                              v13 = *a1;
                              v28 = *(*a1 + 4);
                              if ((*(*a1 + 3) - v28) > 2)
                              {
                                *(v28 + 2) = 50;
                                v30 = 13158;
                                goto LABEL_99;
                              }

                              v15 = "f32";
                            }

                            else
                            {
                              if (v4 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
                              {
                                if (v4 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
                                {
                                  if (v4 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
                                  {
                                    if (v4 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
                                    {
                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
                                      {
                                        v5 = *a1;
                                        v6 = *(*a1 + 4);
                                        if (v6 >= *(*a1 + 3))
                                        {
                                          llvm::raw_ostream::write(v5, 40);
                                        }

                                        else
                                        {
                                          *(v5 + 4) = v6 + 1;
                                          *v6 = 40;
                                        }

                                        v48 = *(a2 + 8);
                                        if (v48)
                                        {
                                          v49 = *(a2 + 16);
                                          v50 = *a1;
                                          mlir::AsmPrinter::Impl::printType(a1, *v49);
                                          if (v48 != 1)
                                          {
                                            v51 = v49 + 1;
                                            v52 = 8 * v48 - 8;
                                            do
                                            {
                                              llvm::raw_ostream::operator<<(v50, ", ", 2uLL);
                                              v53 = *v51++;
                                              mlir::AsmPrinter::Impl::printType(a1, v53);
                                              v52 -= 8;
                                            }

                                            while (v52);
                                          }
                                        }

                                        llvm::raw_ostream::operator<<(*a1, ") -> ", 5uLL);
                                        v54 = *(a2 + 12);
                                        v55 = (*(a2 + 16) + 8 * *(a2 + 8));
                                        if (v54 == 1)
                                        {
                                          v56 = *v55;
                                          if (*(**v55 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
                                          {

                                            mlir::AsmPrinter::Impl::printType(a1, v56);
                                            return;
                                          }
                                        }

                                        v57 = *a1;
                                        v58 = *(*a1 + 4);
                                        if (v58 >= *(*a1 + 3))
                                        {
                                          llvm::raw_ostream::write(v57, 40);
                                        }

                                        else
                                        {
                                          *(v57 + 4) = v58 + 1;
                                          *v58 = 40;
                                        }

                                        if (v54)
                                        {
                                          v59 = *a1;
                                          mlir::AsmPrinter::Impl::printType(a1, *v55);
                                          if (v54 != 1)
                                          {
                                            v60 = 8 * v54;
                                            v61 = v55 + 1;
                                            v62 = v60 - 8;
                                            do
                                            {
                                              llvm::raw_ostream::operator<<(v59, ", ", 2uLL);
                                              v63 = *v61++;
                                              mlir::AsmPrinter::Impl::printType(a1, v63);
                                              v62 -= 8;
                                            }

                                            while (v62);
                                          }
                                        }

                                        v64 = *a1;
                                        v65 = *(*a1 + 4);
                                        if (v65 < *(*a1 + 3))
                                        {
                                          *(v64 + 4) = v65 + 1;
                                          v66 = 41;
LABEL_182:
                                          *v65 = v66;
                                          return;
                                        }

                                        v67 = 41;
                                        goto LABEL_159;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
                                      {
                                        v35 = *(a2 + 32);
                                        v36 = *(a2 + 40);
                                        llvm::raw_ostream::operator<<(*a1, "vector<", 7uLL);
                                        v37 = *(a2 + 16);
                                        if (*(a2 + 16))
                                        {
                                          v38 = *(a2 + 8);
                                          do
                                          {
                                            if (v36)
                                            {
                                              if (*v35 == 1)
                                              {
                                                v39 = *a1;
                                                v40 = *(*a1 + 4);
                                                if (v40 >= *(*a1 + 3))
                                                {
                                                  llvm::raw_ostream::write(v39, 91);
                                                }

                                                else
                                                {
                                                  *(v39 + 4) = v40 + 1;
                                                  *v40 = 91;
                                                }
                                              }

                                              llvm::write_integer(*a1, *v38, 0, 0);
                                              if (*v35 == 1)
                                              {
                                                v41 = *a1;
                                                v42 = *(*a1 + 4);
                                                if (v42 >= *(*a1 + 3))
                                                {
                                                  llvm::raw_ostream::write(v41, 93);
                                                }

                                                else
                                                {
                                                  *(v41 + 4) = v42 + 1;
                                                  *v42 = 93;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              llvm::write_integer(*a1, *v38, 0, 0);
                                            }

                                            v43 = *a1;
                                            v44 = *(*a1 + 4);
                                            if (v44 >= *(*a1 + 3))
                                            {
                                              llvm::raw_ostream::write(v43, 120);
                                            }

                                            else
                                            {
                                              *(v43 + 4) = v44 + 1;
                                              *v44 = 120;
                                            }

                                            ++v38;
                                            ++v35;
                                            --v37;
                                          }

                                          while (v37);
                                        }

                                        v45 = *(a2 + 24);
                                        goto LABEL_156;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                                      {
                                        llvm::raw_ostream::operator<<(*a1, "tensor<", 7uLL);
                                        v86 = *(a2 + 8);
                                        mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(*a1, &v86);
                                        if (*(a2 + 16))
                                        {
                                          v46 = *a1;
                                          v47 = *(*a1 + 4);
                                          if (v47 >= *(*a1 + 3))
                                          {
                                            llvm::raw_ostream::write(v46, 120);
                                          }

                                          else
                                          {
                                            *(v46 + 4) = v47 + 1;
                                            *v47 = 120;
                                          }
                                        }

                                        mlir::AsmPrinter::Impl::printType(a1, *(a2 + 24));
                                        if (*(a2 + 32))
                                        {
                                          llvm::raw_ostream::operator<<(*a1, ", ", 2uLL);
                                          v77 = *(a2 + 32);
                                          v78 = a1;
                                          v79 = 0;
LABEL_179:
                                          mlir::AsmPrinter::Impl::printAttribute(v78, v77, v79);
                                          goto LABEL_180;
                                        }

                                        goto LABEL_180;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
                                      {
                                        v68 = *a1;
                                        v69 = "tensor<*x";
                                        v70 = 9;
LABEL_155:
                                        llvm::raw_ostream::operator<<(v68, v69, v70);
                                        v45 = *(a2 + 8);
LABEL_156:
                                        mlir::AsmPrinter::Impl::printType(a1, v45);
                                        goto LABEL_157;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
                                      {
                                        llvm::raw_ostream::operator<<(*a1, "memref<", 7uLL);
                                        v86 = *(a2 + 8);
                                        mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(*a1, &v86);
                                        if (*(a2 + 16))
                                        {
                                          v75 = *a1;
                                          v76 = *(*a1 + 4);
                                          if (v76 >= *(*a1 + 3))
                                          {
                                            llvm::raw_ostream::write(v75, 120);
                                          }

                                          else
                                          {
                                            *(v75 + 4) = v76 + 1;
                                            *v76 = 120;
                                          }
                                        }

                                        mlir::AsmPrinter::Impl::printType(a1, *(a2 + 24));
                                        if (*(**(a2 + 32) + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || ((*(*(a2 + 40) + 8))() & 1) == 0)
                                        {
                                          llvm::raw_ostream::operator<<(*a1, ", ", 2uLL);
                                          mlir::AsmPrinter::Impl::printAttribute(a1, *(a2 + 32), 1);
                                        }

                                        if (*(a2 + 48))
                                        {
                                          llvm::raw_ostream::operator<<(*a1, ", ", 2uLL);
                                          v77 = *(a2 + 48);
                                          v78 = a1;
                                          v79 = 1;
                                          goto LABEL_179;
                                        }

LABEL_180:
                                        v64 = *a1;
                                        v65 = *(*a1 + 4);
                                        if (v65 >= *(*a1 + 3))
                                        {
                                          llvm::raw_ostream::write(v64, 62);
                                          return;
                                        }

                                        goto LABEL_181;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
                                      {
                                        llvm::raw_ostream::operator<<(*a1, "memref<*x", 9uLL);
                                        mlir::AsmPrinter::Impl::printType(a1, *(a2 + 8));
                                        if (*(a2 + 16))
                                        {
                                          llvm::raw_ostream::operator<<(*a1, ", ", 2uLL);
                                          mlir::AsmPrinter::Impl::printAttribute(a1, *(a2 + 16), 1);
                                        }

                                        goto LABEL_157;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                                      {
                                        v68 = *a1;
                                        v69 = "complex<";
                                        v70 = 8;
                                        goto LABEL_155;
                                      }

                                      if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
                                      {
                                        llvm::raw_ostream::operator<<(*a1, "tuple<", 6uLL);
                                        v80 = *(a2 + 8);
                                        if (v80)
                                        {
                                          v81 = *a1;
                                          mlir::AsmPrinter::Impl::printType(a1, *(a2 + 16));
                                          if (v80 != 1)
                                          {
                                            v82 = 8 * v80;
                                            v83 = (a2 + 24);
                                            v84 = v82 - 8;
                                            do
                                            {
                                              llvm::raw_ostream::operator<<(v81, ", ", 2uLL);
                                              v85 = *v83++;
                                              mlir::AsmPrinter::Impl::printType(a1, v85);
                                              v84 -= 8;
                                            }

                                            while (v84);
                                          }
                                        }

LABEL_157:
                                        v64 = *a1;
                                        v65 = *(*a1 + 4);
                                        if (v65 >= *(*a1 + 3))
                                        {
                                          v67 = 62;
LABEL_159:

                                          llvm::raw_ostream::write(v64, v67);
                                          return;
                                        }

LABEL_181:
                                        *(v64 + 4) = v65 + 1;
                                        v66 = 62;
                                        goto LABEL_182;
                                      }

                                      if (v4 != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
                                      {

                                        mlir::AsmPrinter::Impl::printDialectType(a1, a2);
                                        return;
                                      }

                                      v13 = *a1;
                                      v27 = *(*a1 + 4);
                                      if (*(*a1 + 3) - v27 <= 3uLL)
                                      {
                                        v15 = "none";
                                        goto LABEL_83;
                                      }

                                      v29 = 1701736302;
                                      goto LABEL_88;
                                    }

                                    v31 = *(a2 + 8) >> 30;
                                    if (v31 == 2)
                                    {
                                      v32 = *a1;
                                      v33 = *(*a1 + 4);
                                      if (v33 < *(*a1 + 3))
                                      {
                                        *(v32 + 4) = v33 + 1;
                                        v34 = 117;
                                        goto LABEL_143;
                                      }

                                      v71 = 117;
                                    }

                                    else
                                    {
                                      if (v31 != 1)
                                      {
LABEL_165:
                                        v72 = *a1;
                                        v73 = *(*a1 + 4);
                                        if (v73 >= *(*a1 + 3))
                                        {
                                          v72 = llvm::raw_ostream::write(v72, 105);
                                        }

                                        else
                                        {
                                          *(v72 + 4) = v73 + 1;
                                          *v73 = 105;
                                        }

                                        v74 = *(a2 + 8) & 0x3FFFFFFF;

                                        write_unsigned<unsigned long long>(v72, v74, 0, 0, 0);
                                        return;
                                      }

                                      v32 = *a1;
                                      v33 = *(*a1 + 4);
                                      if (v33 < *(*a1 + 3))
                                      {
                                        *(v32 + 4) = v33 + 1;
                                        v34 = 115;
LABEL_143:
                                        *v33 = v34;
                                        goto LABEL_165;
                                      }

                                      v71 = 115;
                                    }

                                    llvm::raw_ostream::write(v32, v71);
                                    goto LABEL_165;
                                  }

                                  v13 = *a1;
                                  v27 = *(*a1 + 4);
                                  if (*(*a1 + 3) - v27 <= 3uLL)
                                  {
                                    v15 = "f128";
                                    goto LABEL_83;
                                  }

                                  v29 = 942813542;
LABEL_88:
                                  *v27 = v29;
                                  v18 = *(v13 + 4) + 4;
                                  goto LABEL_49;
                                }

                                v13 = *a1;
                                v28 = *(*a1 + 4);
                                if ((*(*a1 + 3) - v28) <= 2)
                                {
                                  v15 = "f80";
                                  goto LABEL_94;
                                }

                                *(v28 + 2) = 48;
                                v30 = 14438;
LABEL_99:
                                *v28 = v30;
                                v18 = *(v13 + 4) + 3;
                                goto LABEL_49;
                              }

                              v13 = *a1;
                              v28 = *(*a1 + 4);
                              if ((*(*a1 + 3) - v28) > 2)
                              {
                                *(v28 + 2) = 52;
                                v30 = 13926;
                                goto LABEL_99;
                              }

                              v15 = "f64";
                            }

                            goto LABEL_94;
                          }

                          v13 = *a1;
                          v27 = *(*a1 + 4);
                          if (*(*a1 + 3) - v27 > 3uLL)
                          {
                            v29 = 842229364;
                            goto LABEL_88;
                          }

                          v15 = "tf32";
                        }

LABEL_83:
                        v16 = 4;
                        goto LABEL_40;
                      }

                      v13 = *a1;
                      v26 = *(*a1 + 4);
                      if ((*(*a1 + 3) - v26) <= 8)
                      {
                        v15 = "f8E8M0FNU";
                        v16 = 9;
                        goto LABEL_40;
                      }

                      *(v26 + 8) = 85;
                      *v26 = *"f8E8M0FNU";
                      v18 = *(v13 + 4) + 9;
LABEL_49:
                      *(v13 + 4) = v18;
                      return;
                    }

                    v13 = *a1;
                    v21 = *(*a1 + 4);
                    if ((*(*a1 + 3) - v21) <= 5)
                    {
                      v15 = "f8E3M4";
                      goto LABEL_52;
                    }

                    *(v21 + 4) = 13389;
                    v22 = 860174438;
LABEL_57:
                    *v21 = v22;
                    v18 = *(v13 + 4) + 6;
                    goto LABEL_49;
                  }

                  v13 = *a1;
                  v25 = *(*a1 + 4);
                  if (*(*a1 + 3) - v25 > 0xCuLL)
                  {
                    qmemcpy(v25, "f8E4M3B11FNUZ", 13);
                    v18 = *(v13 + 4) + 13;
                    goto LABEL_49;
                  }

                  v15 = "f8E4M3B11FNUZ";
                  v16 = 13;
LABEL_40:

                  llvm::raw_ostream::write(v13, v15, v16);
                  return;
                }

                v13 = *a1;
                v23 = *(*a1 + 4);
                if ((*(*a1 + 3) - v23) <= 9)
                {
                  v15 = "f8E4M3FNUZ";
                  goto LABEL_63;
                }

                v24 = "f8E4M3FNUZ";
              }

              *(v23 + 8) = 23125;
              *v23 = *v24;
              v18 = *(v13 + 4) + 10;
              goto LABEL_49;
            }

            v13 = *a1;
            v17 = *(*a1 + 4);
            if (*(*a1 + 3) - v17 <= 7uLL)
            {
              v15 = "f8E4M3FN";
              goto LABEL_39;
            }

            v20 = 876951654;
            goto LABEL_44;
          }

          v13 = *a1;
          v21 = *(*a1 + 4);
          if ((*(*a1 + 3) - v21) > 5)
          {
            *(v21 + 4) = 13133;
            v22 = 876951654;
            goto LABEL_57;
          }

          v15 = "f8E4M3";
        }

LABEL_52:
        v16 = 6;
        goto LABEL_40;
      }

      v13 = *a1;
      v17 = *(*a1 + 4);
      if (*(*a1 + 3) - v17 > 7uLL)
      {
        v19 = 0x324D33453666;
        goto LABEL_48;
      }

      v15 = "f6E3M2FN";
    }

LABEL_39:
    v16 = 8;
    goto LABEL_40;
  }

  v7 = *a1;
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(a2 + 24);

  printDialectSymbol(v7, "!", 1uLL, v10, v11, v8, v12);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::raw_ostream *result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = result;
    if (a5)
    {
      v46 = a4;
      v45[0] = &a4[2 * a5];
      llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(v48, &v46, v45);
      v10 = &a2[2 * a3];
      v46 = a2;
      *&v47 = v10;
      *(&v47 + 1) = v48;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::ArrayRef<mlir::NamedAttribute>,llvm::ArrayRef<llvm::StringRef>,BOOL)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v46, v11, v12, v13);
      v45[0] = v10;
      v45[1] = v10;
      v45[2] = v48;
      result = llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::ArrayRef<mlir::NamedAttribute>,llvm::ArrayRef<llvm::StringRef>,BOOL)::$_1,std::bidirectional_iterator_tag>::findNextValid(v45, v14, v15, v16);
      v17 = v46;
      v44 = v47;
      v18 = v45[0];
      if (v46 != v45[0])
      {
        if (a6)
        {
          v19 = *v9;
          v20 = *(*v9 + 4);
          if ((*(*v9 + 3) - v20) > 0xA)
          {
            *(v20 + 7) = 1936028789;
            *v20 = *" attributes";
            *(v19 + 4) += 11;
          }

          else
          {
            llvm::raw_ostream::write(v19, " attributes", 0xBuLL);
          }
        }

        v23 = *v9;
        v24 = *(*v9 + 4);
        if (*(*v9 + 3) - v24 > 1uLL)
        {
          *v24 = 31520;
          *(v23 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v23, " {", 2uLL);
        }

        v25 = *v9;
        v47 = v44;
        mlir::AsmPrinter::Impl::printNamedAttribute(v9, *v17, v17[1]);
        v46 = v17 + 2;
        llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::ArrayRef<mlir::NamedAttribute>,llvm::ArrayRef<llvm::StringRef>,BOOL)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v46, v26, v27, v28);
        for (i = v46; v46 != v18; i = v46)
        {
          v30 = *(v25 + 4);
          if (*(v25 + 3) - v30 > 1uLL)
          {
            *v30 = 8236;
            *(v25 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v25, ", ", 2uLL);
          }

          mlir::AsmPrinter::Impl::printNamedAttribute(v9, *i, i[1]);
          v46 = i + 2;
          llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::ArrayRef<mlir::NamedAttribute>,llvm::ArrayRef<llvm::StringRef>,BOOL)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v46, v31, v32, v33);
        }

        result = *v9;
        v34 = *(*v9 + 4);
        if (v34 >= *(*v9 + 3))
        {
          result = llvm::raw_ostream::write(result, 125);
        }

        else
        {
          *(result + 4) = v34 + 1;
          *v34 = 125;
        }
      }

      if ((v48[0] & 1) == 0)
      {
        return MEMORY[0x25F891030](v49, 8);
      }
    }

    else
    {
      if (a6)
      {
        v21 = *result;
        v22 = *(*v9 + 4);
        if ((*(*v9 + 3) - v22) > 0xA)
        {
          *(v22 + 7) = 1936028789;
          *v22 = *" attributes";
          *(v21 + 4) += 11;
        }

        else
        {
          llvm::raw_ostream::write(v21, " attributes", 0xBuLL);
        }
      }

      v35 = *v9;
      v36 = *(*v9 + 4);
      if (*(*v9 + 3) - v36 > 1uLL)
      {
        *v36 = 31520;
        *(v35 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v35, " {", 2uLL);
      }

      v37 = *v9;
      mlir::AsmPrinter::Impl::printNamedAttribute(v9, *a2, a2[1]);
      if (a3 != 1)
      {
        v38 = &a2[2 * a3];
        v39 = a2 + 2;
        do
        {
          v40 = *(v37 + 4);
          if (*(v37 + 3) - v40 > 1uLL)
          {
            *v40 = 8236;
            *(v37 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v37, ", ", 2uLL);
          }

          v41 = *v39;
          v42 = v39[1];
          v39 += 2;
          mlir::AsmPrinter::Impl::printNamedAttribute(v9, v41, v42);
        }

        while (v39 != v38);
      }

      result = *v9;
      v43 = *(*v9 + 4);
      if (v43 >= *(*v9 + 3))
      {

        return llvm::raw_ostream::write(result, 125);
      }

      else
      {
        *(result + 4) = v43 + 1;
        *v43 = 125;
      }
    }
  }

  return result;
}

double mlir::AsmPrinter::Impl::printNamedAttribute(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3)
{
  printKeywordOrString(*(a2 + 16), *(a2 + 24), *a1);
  if (*(*a3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v6 = *a1;
    v7 = *(*a1 + 4);
    if ((*(*a1 + 3) - v7) > 2)
    {
      *(v7 + 2) = 32;
      *v7 = 15648;
      *(v6 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v6, " = ", 3uLL);
    }

    return mlir::AsmPrinter::Impl::printAttribute(a1, a3, 0);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDialectType(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_286E79D28;
  v22 = &v23;
  llvm::raw_ostream::SetUnbuffered(&v15);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_286E77250;
  (*(*v4 + 56))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "!", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

llvm::raw_ostream *mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream *this, uint64_t **a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = this;
    v4 = *a2;
    v5 = **a2;
    if (v5 == 0x8000000000000000)
    {
      v6 = *(this + 4);
      if (*(this + 3) == v6)
      {
        this = llvm::raw_ostream::write(this, "?", 1uLL);
      }

      else
      {
        *v6 = 63;
        ++*(this + 4);
      }
    }

    else
    {
      this = llvm::write_integer(this, v5, 0, 0);
    }

    if (v2 != 1)
    {
      v7 = v4 + 1;
      v8 = 8 * v2 - 8;
      do
      {
        v9 = *(v3 + 4);
        if (*(v3 + 3) == v9)
        {
          this = llvm::raw_ostream::write(v3, "x", 1uLL);
        }

        else
        {
          *v9 = 120;
          ++*(v3 + 4);
        }

        if (*v7 == 0x8000000000000000)
        {
          v10 = *(v3 + 4);
          if (*(v3 + 3) == v10)
          {
            this = llvm::raw_ostream::write(v3, "?", 1uLL);
          }

          else
          {
            *v10 = 63;
            ++*(v3 + 4);
          }
        }

        else
        {
          this = llvm::write_integer(v3, *v7, 0, 0);
        }

        ++v7;
        v8 -= 8;
      }

      while (v8);
    }
  }

  return this;
}

uint64_t mlir::AsmPrinter::printAlias(uint64_t a1, uint64_t a2)
{
}

{
  return mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2);
}

llvm::raw_ostream *mlir::AsmPrinter::printString(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 34);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 34;
  }

  v8 = (*(*a1 + 16))(a1);
  llvm::printEscapedString(a2, a3, v8);
  result = (*(*a1 + 16))(a1);
  v10 = *(result + 4);
  if (v10 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 34);
  }

  else
  {
    *(result + 4) = v10 + 1;
    *v10 = 34;
  }

  return result;
}

uint64_t mlir::AsmPrinter::pushCyclicPrinting(mlir::AsmPrinter *this, uint64_t a2)
{
  v2 = *(*(this + 1) + 8);
  v4 = a2;
  return llvm::SetVector<void const*,llvm::SmallVector<void const*,0u>,llvm::DenseSet<void const*,llvm::DenseMapInfo<void const*,void>>,0u>::insert(v2 + 680, &v4);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineExprInternal(llvm::raw_ostream **a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v9 = *(a2 + 8);
  if (v9 > 3)
  {
    if (v9 <= 5)
    {
      if (v9 != 4)
      {
        v11 = *a1;
        v12 = *(a2 + 16);

        return llvm::write_integer(v11, v12, 0, 0);
      }

      v10 = " ceildiv ";
      goto LABEL_28;
    }

    if (v9 == 6)
    {
      v14 = *(a2 + 16);
      if (a4)
      {
        v15 = a5;
        v16 = *(a2 + 16);
        v17 = 0;
        goto LABEL_24;
      }

      v33 = *a1;
      v34 = *(*a1 + 4);
      if (v34 < *(*a1 + 3))
      {
        *(v33 + 4) = v34 + 1;
        v35 = 100;
LABEL_53:
        *v34 = v35;
LABEL_80:

        return write_unsigned<unsigned long long>(v33, v14, 0, 0, 0);
      }

      v48 = 100;
    }

    else
    {
      if (v9 != 7)
      {
LABEL_27:
        v10 = 0;
        goto LABEL_28;
      }

      v14 = *(a2 + 16);
      if (a4)
      {
        v15 = a5;
        v16 = *(a2 + 16);
        v17 = 1;
LABEL_24:

        return a4(v15, v16, v17);
      }

      v33 = *a1;
      v34 = *(*a1 + 4);
      if (v34 < *(*a1 + 3))
      {
        *(v33 + 4) = v34 + 1;
        v35 = 115;
        goto LABEL_53;
      }

      v48 = 115;
    }

    v33 = llvm::raw_ostream::write(v33, v48);
    goto LABEL_80;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = " * ";
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v19 = *(a2 + 16);
    v18 = *(a2 + 24);
    v50 = a4;
    if (a3 == 1)
    {
      v20 = *a1;
      v21 = *(*a1 + 4);
      if (v21 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v20, 40);
        a4 = v50;
      }

      else
      {
        *(v20 + 4) = v21 + 1;
        *v21 = 40;
      }
    }

    v36 = *(v18 + 8);
    if (v36 >= 5)
    {
      v37 = 0;
    }

    else
    {
      v37 = v18;
    }

    if (!v37 || *(v37 + 8) != 1)
    {
      goto LABEL_69;
    }

    v38 = *(v37 + 24);
    if (!v38 || *(v38 + 8) != 5)
    {
      goto LABEL_69;
    }

    v40 = *(v38 + 16);
    if (v40 == -1)
    {
      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v19, 0, a4, a5);
      llvm::raw_ostream::operator<<(*a1, " - ", 3uLL);
      v46 = *(v37 + 16);
      v47 = *(v46 + 8) == 0;
      v45 = a1;
LABEL_74:
      result = mlir::AsmPrinter::Impl::printAffineExprInternal(v45, v46, v47, v50, a5);
      goto LABEL_88;
    }

    if (v40 <= -2)
    {
      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v19, 0, a4, a5);
      llvm::raw_ostream::operator<<(*a1, " - ", 3uLL);
      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, *(v37 + 16), 1, v50, a5);
      v41 = llvm::raw_ostream::operator<<(*a1, " * ", 3uLL);
      v42 = *(v38 + 16);
    }

    else
    {
LABEL_69:
      if (v36 != 5 || (*(v18 + 16) & 0x8000000000000000) == 0)
      {
        mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v19, 0, a4, a5);
        v43 = *a1;
        v44 = *(*a1 + 4);
        if ((*(*a1 + 3) - v44) > 2)
        {
          *(v44 + 2) = 32;
          *v44 = 11040;
          *(v43 + 4) += 3;
        }

        else
        {
          llvm::raw_ostream::write(v43, " + ", 3uLL);
        }

        v45 = a1;
        v46 = v18;
        v47 = 0;
        goto LABEL_74;
      }

      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v19, 0, a4, a5);
      v41 = *a1;
      v49 = *(*a1 + 4);
      if ((*(*a1 + 3) - v49) > 2)
      {
        *(v49 + 2) = 32;
        *v49 = 11552;
        *(v41 + 4) += 3;
      }

      else
      {
        v41 = llvm::raw_ostream::write(v41, " - ", 3uLL);
      }

      v42 = *(v18 + 16);
    }

    result = llvm::write_integer(v41, -v42, 0, 0);
LABEL_88:
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (v9 == 2)
  {
    v10 = " mod ";
  }

  else
  {
    v10 = " floordiv ";
  }

LABEL_28:
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  if (a3 == 1)
  {
    v24 = *a1;
    v25 = *(*a1 + 4);
    if (v25 >= *(*a1 + 3))
    {
      v51 = a4;
      llvm::raw_ostream::write(v24, 40);
      a4 = v51;
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 40;
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  if (*(v23 + 8) == 5)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0;
  }

  v52 = a4;
  if (v27 && *(a2 + 8) == 1 && *(v27 + 16) == -1)
  {
    v31 = *a1;
    v32 = *(*a1 + 4);
    if (*(*a1 + 3) == v32)
    {
      llvm::raw_ostream::write(v31, "-", 1uLL);
      a4 = v52;
    }

    else
    {
      *v32 = 45;
      ++*(v31 + 4);
    }

    v28 = a1;
    v29 = v22;
  }

  else
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v22, 1, a4, a5);
    llvm::raw_ostream::operator<<(*a1, v10);
    v28 = a1;
    v29 = v23;
    a4 = v52;
  }

  result = mlir::AsmPrinter::Impl::printAffineExprInternal(v28, v29, 1, a4, a5);
  if (v26)
  {
LABEL_42:
    result = *a1;
    v30 = *(*a1 + 4);
    if (v30 >= *(*a1 + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v30 + 1;
      *v30 = 41;
    }
  }

  return result;
}

double mlir::Attribute::print(mlir::Attribute *this, llvm::raw_ostream *a2, int a3)
{
  if (*this)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(&v5);
    operator new();
  }

  v3 = *(a2 + 4);
  if ((*(a2 + 3) - v3) > 0x11)
  {
    *(v3 + 16) = 15934;
    result = *"<<NULL ATTRIBUTE>>";
    *v3 = *"<<NULL ATTRIBUTE>>";
    *(a2 + 4) += 18;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
  }

  return result;
}

void mlir::Type::print(mlir::Type *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(&v3);
    operator new();
  }

  v2 = *(a2 + 4);
  if (*(a2 + 3) - v2 > 0xCuLL)
  {
    qmemcpy(v2, "<<NULL TYPE>>", 13);
    *(a2 + 4) += 13;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
  }
}

llvm::raw_ostream *mlir::Value::print(llvm::raw_ostream *this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = a2;
  v4 = *this;
  if (*this)
  {
    v5 = *(v4 + 8) & 7;
    v6 = v5 == 7;
    if (v5 == 7)
    {
      v7 = 0;
    }

    else
    {
      v7 = *this;
    }

    if (v6)
    {
      goto LABEL_7;
    }

    v10 = *(v7 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v7 + 24 * *(v7 + 16);
      v12 = (v11 + 120);
      if (v11 == -120)
      {
LABEL_7:
        v8 = *(a2 + 4);
        if (*(a2 + 3) - v8 > 0x19uLL)
        {
          qmemcpy(v8, "<block argument> of type '", 26);
          *(a2 + 4) += 26;
        }

        else
        {
          v3 = llvm::raw_ostream::write(a2, "<block argument> of type '", 0x1AuLL);
        }

        v15 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
        mlir::Type::print(&v15, v3);
        v13 = *(v3 + 4);
        if ((*(v3 + 3) - v13) > 0xB)
        {
          *(v13 + 8) = 540702821;
          *v13 = *"' at index: ";
          *(v3 + 4) += 12;
        }

        else
        {
          v3 = llvm::raw_ostream::write(v3, "' at index: ", 0xCuLL);
        }

        v14 = *(v4 + 24);

        return write_unsigned<unsigned long long>(v3, v14, 0, 0, 0);
      }
    }

    else
    {
      v12 = (v7 + 16 * v10 + 16);
    }

    mlir::Operation::print(v12, a2, a3);
  }

  v9 = *(a2 + 4);
  if (*(a2 + 3) - v9 > 0xDuLL)
  {
    qmemcpy(v9, "<<NULL VALUE>>", 14);
    *(a2 + 4) += 14;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "<<NULL VALUE>>", 0xEuLL);
  }

  return this;
}

void mlir::Operation::print(uint64_t **this, llvm::raw_ostream *a2, mlir::detail::AsmStateImpl **a3)
{
  v125 = *MEMORY[0x277D85DE8];
  if (this[2] || (v5 = *a3, (*(*a3 + 332) & 0x20) != 0))
  {
    goto LABEL_12;
  }

  v107 = *a3;
  v108 = (v5 + 184);
  v109 = 0;
  v110 = 0;
  LODWORD(v111) = 0;
  v112 = &v114;
  v113 = 0;
  v114 = v116;
  v115 = xmmword_25D0A05C0;
  v118 = 2;
  v122 = 0;
  v123 = 1;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v117 = &unk_286E79DA0;
  v124 = &v114;
  llvm::raw_ostream::SetUnbuffered(&v117);
  *&v78 = &unk_286E773E8;
  *(&v78 + 1) = 0;
  v79 = (v5 + 624);
  v80 = &v107;
  v82 = 0;
  v86 = 0;
  v87 = 1;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v81 = &unk_286E79E20;
  v73 = this;
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::clear(&v109);
  v6 = &v96;
  v94 = &v96;
  v95 = 0;
  v7 = v113;
  if (v113)
  {
    v8 = v112;
    if (v112 != &v114)
    {
      v94 = v112;
      v95 = v113;
      v112 = &v114;
      v113 = 0;
LABEL_6:
      v6 = &v8[13 * v7];
      goto LABEL_7;
    }

    v88 = 0;
    v52 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v94, &v96, v113, 104, &v88);
    v53 = v88;
    if (v94 != &v96)
    {
      free(v94);
    }

    v94 = v52;
    HIDWORD(v95) = v53;
    LODWORD(v95) = v7;
    if (!v113)
    {
      v8 = v94;
      goto LABEL_6;
    }

    v54 = &v112[13 * v113 - 8];
    v55 = -104 * v113;
    do
    {
      if (v54 + 2 != *v54)
      {
        free(*v54);
      }

      v54 -= 13;
      v55 += 104;
    }

    while (v55);
    v7 = v95;
    LODWORD(v113) = 0;
    v8 = v94;
    v6 = &v94[13 * v95];
    if (v95)
    {
LABEL_7:
      v9 = MEMORY[0x277D826F0];
      v10 = v7;
      while (1)
      {
        v11 = operator new(104 * v10, v9);
        if (v11)
        {
          break;
        }

        v12 = v10 >> 1;
        v13 = v10 > 1;
        v10 >>= 1;
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v16 = v11;
      operator delete(v16);
      goto LABEL_18;
    }

    v7 = 0;
    v12 = 0;
  }

  else
  {
    v7 = 0;
    v12 = 0;
    v8 = &v96;
  }

LABEL_16:
LABEL_18:
  v91 = 0;
  v92 = 0;
  v93 = 0x1000000000;
  if (v95)
  {
    v17 = (v94 + 2);
    v18 = 104 * v95;
    do
    {
      if (*(v17 + 8) == 1)
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        v21 = llvm::xxh3_64bits(v19, *v17, v14, v15);
        v22 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>(&v91, v19, v20, v21);
        v23 = *(*v22 + 2);
        *(*v22 + 2) = v23 + 1;
        v24 = v17[2] & 0xC0000000 | v23 & 0x3FFFFFFF;
        v25 = *(v17 - 2);
        v88 = v25;
        *&v89 = v19;
        *(&v89 + 1) = v20;
        LODWORD(v90) = v24;
        BYTE4(v90) = 0;
        v96 = v25;
        LODWORD(v97) = 0;
        llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>(&v98, v5 + 144, &v96, &v97);
        if (v100 == 1)
        {
          v26 = *(v5 + 44);
          *(v98 + 2) = v26;
          if (v26 >= *(v5 + 45))
          {
          }

          else
          {
            v27 = *(v5 + 21) + 32 * v26;
            *v27 = v25;
            *(v27 + 8) = v89;
            *(v27 + 24) = v90;
            ++*(v5 + 44);
          }
        }
      }

      v17 += 13;
      v18 -= 104;
    }

    while (v18);
  }

  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(&v91);
  *&v78 = &unk_286E773E8;
  llvm::raw_ostream::~raw_ostream(&v81);
  llvm::raw_ostream::~raw_ostream(&v117);
  if (v114 != v116)
  {
    free(v114);
  }

  MEMORY[0x25F891030](v109, 8);
  ++v104;
  v28 = *(v102 + 4);
  if (v28 >= *(v102 + 3))
  {
    llvm::raw_ostream::write(v102, 10);
  }

  else
  {
    *(v102 + 4) = v28 + 1;
    *v28 = 10;
  }

  v74 = 0;
  v94 = &v74;
  v95 = v101;
  v97 = &v94;
  v76 = 0;
  v75 = 0;
  v29 = *(v103 + 32);
  v30 = *(v103 + 40);
  if (v29 == v30)
  {
    v49 = 0;
    goto LABEL_76;
  }

  do
  {
    v31 = *v29;
    v32 = *(*v29 + 8);
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
    v35 = *(v103 + 136);
    if (v35)
    {
      v36 = *(v103 + 120);
      v37 = v35 - 1;
      v38 = (v35 - 1) & ((v32 >> 4) ^ (v32 >> 9));
      v39 = (v36 + 48 * v38);
      v40 = *v39;
      if (*v39 == v32)
      {
LABEL_35:
        if (v39 != (v36 + 48 * v35))
        {
          v88 = "dialect";
          *&v89 = 7;
          v98 = v34;
          v99 = v33;
          LOBYTE(v91) = 0;
          v107 = &v96;
          v108 = v101;
          v109 = &v76;
          v110 = &v75 + 1;
          v111 = &v88;
          v112 = &v91;
          v113 = &v75;
          v114 = &v98;
          *&v78 = &unk_286E77580;
          *(&v78 + 1) = _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJRNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_;
          v79 = &v107;
          (*(*v31 + 56))(v31, v73, v39 + 1, &v78);
          LOBYTE(v75) = v75 | v91;
          if (v91 == 1)
          {
            v41 = v102;
            ++v104;
            v42 = *(v102 + 4);
            if (v42 >= *(v102 + 3))
            {
              v41 = llvm::raw_ostream::write(v102, 10);
            }

            else
            {
              *(v102 + 4) = v42 + 1;
              *v42 = 10;
            }

            v43 = *(v41 + 4);
            if ((*(v41 + 3) - v43) > 4)
            {
              *(v43 + 4) = 125;
              *v43 = 538976288;
              *(v41 + 4) += 5;
            }

            else
            {
              llvm::raw_ostream::write(v41, "    }", 5uLL);
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
        v44 = 1;
        while (v40 != -4096)
        {
          v45 = v38 + v44++;
          v38 = v45 & v37;
          v39 = (v36 + 48 * (v45 & v37));
          v40 = *v39;
          if (*v39 == v32)
          {
            goto LABEL_35;
          }
        }
      }
    }

    v78 = 0u;
    v79 = 0;
    v80 = &v82;
    v81 = 0;
    v98 = "dialect";
    v99 = 7;
    v91 = v34;
    v92 = v33;
    v77 = 0;
    v107 = &v96;
    v108 = v101;
    v109 = &v76;
    v110 = &v75 + 1;
    v111 = &v98;
    v112 = &v77;
    v113 = &v75;
    v114 = &v91;
    v88 = &unk_286E77580;
    *&v89 = _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_21OpAsmDialectInterfaceEJNS_9SetVectorINSD_24AsmDialectResourceHandleENS_11SmallVectorISL_Lj0EEENS_8DenseSetISL_NS_12DenseMapInfoISL_vEEEELj0EEEEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_;
    *(&v89 + 1) = &v107;
    (*(*v31 + 56))(v31, v73, &v78, &v88);
    LOBYTE(v75) = v75 | v77;
    if (v77 == 1)
    {
      v46 = v102;
      ++v104;
      v47 = *(v102 + 4);
      if (v47 >= *(v102 + 3))
      {
        v46 = llvm::raw_ostream::write(v102, 10);
      }

      else
      {
        *(v102 + 4) = v47 + 1;
        *v47 = 10;
      }

      v48 = *(v46 + 4);
      if ((*(v46 + 3) - v48) > 4)
      {
        *(v48 + 4) = 125;
        *v48 = 538976288;
        *(v46 + 4) += 5;
      }

      else
      {
        llvm::raw_ostream::write(v46, "    }", 5uLL);
      }
    }

    if (v80 != &v82)
    {
      free(v80);
    }

    MEMORY[0x25F891030](v78, 8);
LABEL_57:
    ++v29;
  }

  while (v29 != v30);
  v49 = v76;
  if (v76)
  {
    v50 = v102;
    ++v104;
    v51 = *(v102 + 4);
    if (v51 >= *(v102 + 3))
    {
      v50 = llvm::raw_ostream::write(v102, 10);
    }

    else
    {
      *(v102 + 4) = v51 + 1;
      *v51 = 10;
    }

    v56 = *(v50 + 4);
    if ((*(v50 + 3) - v56) > 2)
    {
      *(v56 + 2) = 125;
      *v56 = 8224;
      *(v50 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v50, "  }", 3uLL);
    }

    v49 = v76;
  }

LABEL_76:
  LOBYTE(v75) = 0;
  HIBYTE(v75) = v49;
  v76 = 0;
  v57 = *(v103 + 64);
  if (v57)
  {
    v58 = *(v103 + 56);
    v59 = 8 * v57;
    do
    {
      v60 = *v58;
      v61 = *(*v58 + 31);
      v62 = *v58 + 8;
      if (v61 < 0)
      {
        v62 = *(*v58 + 8);
      }

      if (v61 < 0)
      {
        v61 = v60[2];
      }

      v88 = "external";
      *&v89 = 8;
      v98 = v62;
      v99 = v61;
      LOBYTE(v91) = 0;
      v107 = &v96;
      v108 = v101;
      v109 = &v76;
      v110 = &v75 + 1;
      v111 = &v88;
      v112 = &v91;
      v113 = &v75;
      v114 = &v98;
      *&v78 = &unk_286E77580;
      *(&v78 + 1) = _ZN4llvm12function_refIFvNS_9StringRefENS0_IFvRNS_11raw_ostreamEEEEEE11callback_fnIZZN12_GLOBAL__N_116OperationPrinter25printResourceFileMetadataENS0_IFvvEEEPN4mlir9OperationEENK3__0clIKNSD_18AsmResourcePrinterEJEEEDaS1_S1_RT_DpOT0_EUlS1_S5_E_EEvlS1_S5_;
      v79 = &v107;
      (*(*v60 + 16))(v60, v73, &v78);
      LOBYTE(v75) = v75 | v91;
      if (v91 == 1)
      {
        v63 = v102;
        ++v104;
        v64 = *(v102 + 4);
        if (v64 >= *(v102 + 3))
        {
          v63 = llvm::raw_ostream::write(v102, 10);
        }

        else
        {
          *(v102 + 4) = v64 + 1;
          *v64 = 10;
        }

        v65 = *(v63 + 4);
        if ((*(v63 + 3) - v65) > 4)
        {
          *(v65 + 4) = 125;
          *v65 = 538976288;
          *(v63 + 4) += 5;
        }

        else
        {
          llvm::raw_ostream::write(v63, "    }", 5uLL);
        }
      }

      v58 += 8;
      v59 -= 8;
    }

    while (v59);
    if (v76)
    {
      v66 = v102;
      ++v104;
      v67 = *(v102 + 4);
      if (v67 >= *(v102 + 3))
      {
        v66 = llvm::raw_ostream::write(v102, 10);
      }

      else
      {
        *(v102 + 4) = v67 + 1;
        *v67 = 10;
      }

      v68 = *(v66 + 4);
      if ((*(v66 + 3) - v68) > 2)
      {
        *(v68 + 2) = 125;
        *v68 = 8224;
        *(v66 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v66, "  }", 3uLL);
      }
    }
  }

  if (v74 == 1)
  {
    v69 = v102;
    ++v104;
    v70 = *(v102 + 4);
    if (v70 >= *(v102 + 3))
    {
      v69 = llvm::raw_ostream::write(v102, 10);
    }

    else
    {
      *(v102 + 4) = v70 + 1;
      *v70 = 10;
    }

    v71 = *(v69 + 4);
    if ((*(v69 + 3) - v71) > 2)
    {
      *(v71 + 2) = 125;
      *v71 = 11555;
      v72 = (*(v69 + 4) + 3);
      *(v69 + 4) = v72;
    }

    else
    {
      v69 = llvm::raw_ostream::write(v69, "#-}", 3uLL);
      v72 = *(v69 + 4);
    }

    ++v104;
    if (v72 >= *(v69 + 3))
    {
      llvm::raw_ostream::write(v69, 10);
    }

    else
    {
      *(v69 + 4) = v72 + 1;
      *v72 = 10;
    }
  }

LABEL_12:
  v101[0] = &unk_286E772D8;
  if (v105 != &v106)
  {
    free(v105);
  }
}

llvm::raw_ostream *anonymous namespace::SSANameState::printValueID(llvm::raw_ostream *result, unint64_t a2, int a3, llvm::raw_ostream *a4)
{
  if (a2)
  {
    v6 = result;
    v51 = a2;
    v7 = *(a2 + 8) & 7;
    if (v7 == 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2;
    }

    if (v7 == 7)
    {
      goto LABEL_6;
    }

    v12 = *(v8 + 8);
    if ((v12 & 7) == 6)
    {
      v13 = *(v8 + 16);
      v14 = v8 + 24 * v13;
      v15 = (v14 + 156);
      if (*(v14 + 156) != 1)
      {
        v16 = v14 + 120;
        v17 = v13 + 6;
LABEL_17:
        v20 = *(result + 9);
        v21 = *(result + 22);
        v22 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::doFind<mlir::Operation const*>(v20, *(result + 22), v16);
        if (v22)
        {
          v23 = v22 == v20 + 32 * v21;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          v24 = v16 - 16;
          v10 = 1;
        }

        else
        {
          v25 = *(v22 + 16);
          if (v25)
          {
            v26 = *(v22 + 16);
            v27 = *(v22 + 8);
            do
            {
              v28 = v26 >> 1;
              v29 = &v27[v26 >> 1];
              v31 = *v29;
              v30 = v29 + 1;
              v26 += ~(v26 >> 1);
              if (v17 < v31)
              {
                v26 = v28;
              }

              else
              {
                v27 = v30;
              }
            }

            while (v26);
          }

          else
          {
            v27 = *(v22 + 8);
          }

          v32 = *(v22 + 8) + 4 * v25;
          v33 = *(v27 - 1);
          if (v27 == v32)
          {
            v34 = v15;
          }

          else
          {
            v34 = v27;
          }

          v35 = *v34 - v33;
          v10 = v35 != 1;
          if (v35 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 -= v33;
          }

          v24 = v16 - 24 * (v33 - 5) - 96;
          if (v33 <= 5)
          {
            v24 = v16 - 16 * v33 - 16;
          }
        }

        v51 = v24;
        v9 = v17;
        goto LABEL_40;
      }
    }

    else
    {
      v19 = v8 + 16 * (v12 & 7);
      v15 = (v19 + 52);
      if (*(v19 + 52) != 1)
      {
        v16 = v19 + 16;
        v17 = v12 & 7;
        goto LABEL_17;
      }
    }

LABEL_6:
    v9 = 0;
    v10 = 0;
LABEL_40:
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(v6, &v51);
    if (result)
    {
      v36 = result;
      if (result != (*v6 + 16 * *(v6 + 4)))
      {
        v37 = *(a4 + 4);
        if (v37 >= *(a4 + 3))
        {
          llvm::raw_ostream::write(a4, 37);
        }

        else
        {
          *(a4 + 4) = v37 + 1;
          *v37 = 37;
        }

        v39 = *(v36 + 2);
        if (v39 != -1)
        {
          result = write_unsigned<unsigned long long>(a4, v39, 0, 0, 0);
LABEL_61:
          if ((v10 & a3) == 1)
          {
            v50 = *(a4 + 4);
            if (v50 >= *(a4 + 3))
            {
              llvm::raw_ostream::write(a4, 35);
            }

            else
            {
              *(a4 + 4) = v50 + 1;
              *v50 = 35;
            }

            return llvm::write_integer(a4, v9, 0, 0);
          }

          return result;
        }

        v40 = *(v6 + 3);
        v41 = *(v6 + 10);
        if (v41)
        {
          v42 = 0x9DDFEA08EB382D69 * ((8 * v51 - 0xAE502812AA7333) ^ HIDWORD(v51));
          v43 = 0x9DDFEA08EB382D69 * (HIDWORD(v51) ^ (v42 >> 47) ^ v42);
          v44 = (-348639895 * ((v43 >> 47) ^ v43)) & (v41 - 1);
          v45 = (v40 + 24 * v44);
          v46 = *v45;
          if (*v45 == v51)
          {
LABEL_58:
            v49 = (v40 + 24 * v41);
            if (v45)
            {
              v49 = v45;
            }

            result = llvm::raw_ostream::operator<<(a4, v49[1], v49[2]);
            goto LABEL_61;
          }

          v47 = 1;
          while (v46 != -4096)
          {
            v48 = v44 + v47++;
            v44 = v48 & (v41 - 1);
            v45 = (v40 + 24 * v44);
            v46 = *v45;
            if (*v45 == v51)
            {
              goto LABEL_58;
            }
          }
        }

        v45 = 0;
        goto LABEL_58;
      }
    }

    v38 = *(a4 + 4);
    if (*(a4 + 3) - v38 <= 0x14uLL)
    {
      return llvm::raw_ostream::write(a4, "<<UNKNOWN SSA VALUE>>", 0x15uLL);
    }

    qmemcpy(v38, "<<UNKNOWN SSA VALUE>>", 21);
    v18 = *(a4 + 4) + 21;
LABEL_47:
    *(a4 + 4) = v18;
    return result;
  }

  v11 = *(a4 + 4);
  if (*(a4 + 3) - v11 > 0xDuLL)
  {
    qmemcpy(v11, "<<NULL VALUE>>", 14);
    v18 = *(a4 + 4) + 14;
    goto LABEL_47;
  }

  return llvm::raw_ostream::write(a4, "<<NULL VALUE>>", 0xEuLL);
}

mlir::Operation *findParent(mlir::Operation *a1, int a2)
{
  do
  {
    v3 = a1;
    if (a2)
    {
      v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v3 + 6) + 32))(*(v3 + 6), v4))
      {
        break;
      }
    }

    v5 = *(v3 + 2);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    a1 = *(v6 + 16);
  }

  while (a1);
  return v3;
}

_anonymous_namespace_::OperationPrinter *anonymous namespace::OperationPrinter::OperationPrinter(_anonymous_namespace_::OperationPrinter *this, llvm::raw_ostream *a2, mlir::detail::AsmStateImpl *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  *(this + 2) = a2;
  *(this + 3) = a3;
  v4 = *(a3 + 39);
  v5 = *(a3 + 41);
  *(this + 3) = *(a3 + 40);
  *(this + 4) = v5;
  *(this + 2) = v4;
  *(this + 20) = 1;
  *this = &unk_286E772D8;
  *(this + 1) = this + 16;
  __src[0] = "builtin";
  __src[1] = 7;
  *(this + 11) = this + 104;
  *(this + 12) = 0x300000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(this + 22, __src, &v8);
  *(this + 38) = 0;
  return this;
}

void anonymous namespace::OperationPrinter::printFullOpWithIndentAndLoc(_anonymous_namespace_::OperationPrinter *this, uint64_t **a2)
{
  v4 = *(this + 38);
  v5 = *(*(this + 3) + 672);
  if (v5)
  {
    v6 = *(this + 20);
    *&v90[0] = 0;
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>,mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<mlir::Operation *>(*v5, *(v5 + 16), a2, v90);
    v9 = *&v90[0];
    if (v7)
    {
LABEL_8:
      *(v9 + 8) = v6;
      *(v9 + 12) = v4;
      v4 = *(this + 38);
      goto LABEL_9;
    }

    *&v92[0] = *&v90[0];
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    if (4 * v10 + 4 >= 3 * v11)
    {
      v11 *= 2;
    }

    else if (v11 + ~v10 - *(v5 + 12) > v11 >> 3)
    {
LABEL_5:
      *(v5 + 8) = v10 + 1;
      if (*v9 != -4096)
      {
        --*(v5 + 12);
      }

      *v9 = a2;
      *(v9 + 8) = 0;
      goto LABEL_8;
    }

    llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::grow(v5, v11, v8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>,mlir::Operation *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<unsigned int,unsigned int>>>::LookupBucketFor<mlir::Operation *>(*v5, *(v5 + 16), a2, v92);
    v10 = *(v5 + 8);
    v9 = *&v92[0];
    goto LABEL_5;
  }

LABEL_9:
  llvm::raw_ostream::indent(*(this + 2), v4);
  v12 = *(a2 + 9);
  if (!v12)
  {
    goto LABEL_54;
  }

  v13 = *(this + 3);
  v14 = *(v13 + 352);
  v15 = *(v13 + 368);
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::doFind<mlir::Operation const*>(v14, *(v13 + 368), a2);
  if (v16)
  {
    v17 = v16 == v14 + 32 * v15;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = *(v16 + 8);
      v86 = *(v16 + 16);
      v20 = v18 - 1;
      if (v20)
      {
        v21 = v20;
        v22 = *(this + 2);
        v23 = *v19;
        v24 = v19[1] - v23;
        if (v23 <= 5)
        {
          v25 = &a2[2 * ~v23];
        }

        else
        {
          v25 = &a2[-3 * (v23 - 5) - 12];
        }

        if (v24 >= 2)
        {
          v26 = *(this + 2);
          v27 = *(v26 + 4);
          if (v27 >= *(v26 + 3))
          {
            v26 = llvm::raw_ostream::write(v26, 58);
          }

          else
          {
            *(v26 + 4) = v27 + 1;
            *v27 = 58;
          }

          write_unsigned<unsigned long long>(v26, v24, 0, 0, 0);
        }

        if (v21 != 1)
        {
          v28 = v21 - 1;
          v29 = 0x100000000;
          do
          {
            v30 = *(v22 + 4);
            if (*(v22 + 3) - v30 > 1uLL)
            {
              *v30 = 8236;
              *(v22 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v22, ", ", 2uLL);
            }

            v31 = (v19 + (v29 >> 30));
            v32 = *v31;
            v33 = v31[1] - v32;
            v34 = v32 > 5;
            v35 = &a2[-3 * (v32 - 5) - 12];
            v36 = &a2[2 * ~v32];
            if (v34)
            {
              v37 = v35;
            }

            else
            {
              v37 = v36;
            }

            if (v33 >= 2)
            {
              v38 = *(this + 2);
              v39 = *(v38 + 4);
              if (v39 >= *(v38 + 3))
              {
                v38 = llvm::raw_ostream::write(v38, 58);
              }

              else
              {
                *(v38 + 4) = v39 + 1;
                *v39 = 58;
              }

              write_unsigned<unsigned long long>(v38, v33, 0, 0, 0);
            }

            v29 += 0x100000000;
            --v28;
          }

          while (v28);
        }
      }

      v40 = *(this + 2);
      v41 = *(v40 + 4);
      if (*(v40 + 3) - v41 > 1uLL)
      {
        *v41 = 8236;
        *(v40 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v40, ", ", 2uLL);
      }

      v42 = v19[v86 - 1];
      v12 -= v42;
      if (v42 <= 5)
      {
        v43 = &a2[2 * ~v42];
      }

      else
      {
        v43 = &a2[-3 * (v42 - 5) - 12];
      }

      if (v12 < 2)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }
  }

  if (v12 != 1)
  {
LABEL_47:
    v44 = *(this + 2);
    v45 = *(v44 + 4);
    if (v45 >= *(v44 + 3))
    {
      v44 = llvm::raw_ostream::write(v44, 58);
    }

    else
    {
      *(v44 + 4) = v45 + 1;
      *v45 = 58;
    }

    write_unsigned<unsigned long long>(v44, v12, 0, 0, 0);
  }

LABEL_51:
  v46 = *(this + 2);
  v47 = *(v46 + 4);
  if ((*(v46 + 3) - v47) > 2)
  {
    *(v47 + 2) = 32;
    *v47 = 15648;
    *(v46 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v46, " = ", 3uLL);
  }

LABEL_54:
  (*(*this + 208))(this, a2);
  mlir::AsmPrinter::Impl::printTrailingLocation(this + 16, a2[3], 1);
  if ((*(this + 36) & 0x40) == 0)
  {
    return;
  }

  v48 = *(a2 + 9);
  if (v48)
  {
    if (mlir::Operation::use_empty(a2))
    {
      v49 = *(this + 2);
      v50 = *(v49 + 4);
      if ((*(v49 + 3) - v50) > 9)
      {
        *(v50 + 8) = 25701;
        *v50 = *" // unused";
        *(v49 + 4) += 10;
      }

      else
      {

        llvm::raw_ostream::write(v49, " // unused", 0xAuLL);
      }

      return;
    }

    if (mlir::Operation::use_empty(a2))
    {
      return;
    }

    v95[0] = &v98;
    v95[1] = 1;
    v96 = 0;
    v53 = 1;
    v97 = 1;
    mlir::Operation::getUsers(v92, a2);
    v54 = v93;
    v55 = v94;
    v91 = v93;
    v90[0] = v92[0];
    v90[1] = v92[1];
    if (v93 != v94)
    {
      v56 = 0;
      v57 = 0;
      do
      {
        v58 = *(v54 + 16);
        llvm::SmallPtrSetImpl<mlir::Operation *>::insert(v95, v58, &v88);
        if (v89 == 1)
        {
          ++v57;
          v56 += *(v58 + 36);
        }

        mlir::ResultRange::UseIterator::operator++(v90);
        v54 = v91;
      }

      while (v91 != v55);
      v53 = v56 < 2 && v57 < 2;
    }

    if (v48 != 1)
    {
      v53 = 0;
    }

    v60 = *(this + 2);
    v61 = *(v60 + 4);
    if (*(v60 + 3) - v61 > 3uLL)
    {
      *v61 = 539963168;
      *(v60 + 4) += 4;
    }

    else
    {
      v60 = llvm::raw_ostream::write(v60, " // ", 4uLL);
    }

    if (v53)
    {
      v64 = 4;
    }

    else
    {
      v64 = 5;
    }

    if (v53)
    {
      v65 = "user";
    }

    else
    {
      v65 = "users";
    }

    v66 = llvm::raw_ostream::operator<<(v60, v65, v64);
    v67 = *(v66 + 4);
    if (*(v66 + 3) - v67 > 1uLL)
    {
      *v67 = 8250;
      *(v66 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v66, ": ", 2uLL);
    }

    v68 = *(a2 + 9);
    if (v68)
    {
      v69 = a2 - 2;
    }

    else
    {
      v69 = 0;
    }

    v87 = v69;
    if (v68)
    {
      v70 = *(this + 2);
      if (v48 == 1)
      {
      }

      else
      {
        v71 = *(v70 + 4);
        if (*(v70 + 3) == v71)
        {
          llvm::raw_ostream::write(*(this + 2), "(", 1uLL);
        }

        else
        {
          *v71 = 40;
          ++*(v70 + 4);
        }

        v72 = *(this + 2);
        v73 = *(v72 + 4);
        if (*(v72 + 3) == v73)
        {
          llvm::raw_ostream::write(v72, ")", 1uLL);
        }

        else
        {
          *v73 = 41;
          ++*(v72 + 4);
        }
      }

      if (v68 != 1)
      {
        v74 = (v87 - 2);
        v75 = 1;
        while (1)
        {
          v76 = *(v70 + 4);
          if (*(v70 + 3) - v76 > 1uLL)
          {
            *v76 = 8236;
            *(v70 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v70, ", ", 2uLL);
          }

          v77 = *(a2 - 1) & 7;
          v78 = a2 - 2;
          v79 = v75;
          if (v77 == 6)
          {
            goto LABEL_117;
          }

          v80 = (5 - v77);
          v81 = v74;
          v79 = v75 - v80;
          if (v75 > v80)
          {
            break;
          }

LABEL_118:
          if (v48 == 1)
          {
          }

          else
          {
            v82 = *(this + 2);
            v83 = *(v82 + 4);
            if (*(v82 + 3) == v83)
            {
              llvm::raw_ostream::write(v82, "(", 1uLL);
            }

            else
            {
              *v83 = 40;
              ++*(v82 + 4);
            }

            v84 = *(this + 2);
            v85 = *(v84 + 4);
            if (*(v84 + 3) == v85)
            {
              llvm::raw_ostream::write(v84, ")", 1uLL);
            }

            else
            {
              *v85 = 41;
              ++*(v84 + 4);
            }
          }

          ++v75;
          v74 -= 16;
          if (v68 == v75)
          {
            goto LABEL_127;
          }
        }

        v78 = &v87[-2 * v80];
LABEL_117:
        v81 = &v78[-3 * v79];
        goto LABEL_118;
      }
    }

LABEL_127:
    if ((v97 & 1) == 0)
    {
      free(v95[0]);
    }
  }

  else if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17))
  {
    v51 = *(this + 2);
    v52 = *(v51 + 4);
    if (*(v51 + 3) - v52 > 7uLL)
    {
      *v52 = 0x203A6469202F2F20;
      *(v51 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v51, " // id: ", 8uLL);
    }

    v62 = *(this + 2);
    v63 = *(this + 3);
  }
}

void anonymous namespace::OperationPrinter::~OperationPrinter(_anonymous_namespace_::OperationPrinter *this)
{
  *this = &unk_286E772D8;
  v2 = *(this + 11);
  if (v2 != this + 104)
  {
    free(v2);
  }
}

{
  *this = &unk_286E772D8;
  v2 = *(this + 11);
  if (v2 != this + 104)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::print(llvm::raw_ostream *this, mlir::Operation **a2, int a3, char a4)
{
  v4 = this;
  v74[12] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v6 = (this + 16);
    llvm::raw_ostream::indent(*(this + 2), *(this + 38));
    v7 = *v6;
    llvm::raw_ostream::operator<<(v7, v73.n128_u64[1], v74[0]);
    if (v5[6] != v5[7])
    {
      v8 = *v6;
      v9 = *(*v6 + 4);
      if (v9 >= *(*v6 + 3))
      {
        llvm::raw_ostream::write(v8, 40);
      }

      else
      {
        *(v8 + 4) = v9 + 1;
        *v9 = 40;
      }

      v10 = v5[6];
      v11 = v5[7];
      if (v11 != v10)
      {
        v12 = *v6;
        v13 = *v10;
        v14 = *(v4 + 16);
        v15 = *(v14 + 4);
        if (*(v14 + 3) - v15 > 1uLL)
        {
          *v15 = 8250;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ": ", 2uLL);
        }

        mlir::AsmPrinter::Impl::printType((v4 + 16), *(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
        mlir::AsmPrinter::Impl::printTrailingLocation(v4 + 16, *(v13 + 32), 0);
        if (v11 - v10 != 8)
        {
          v16 = v10 + 1;
          do
          {
            v17 = *(v12 + 4);
            if (*(v12 + 3) - v17 > 1uLL)
            {
              *v17 = 8236;
              *(v12 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v12, ", ", 2uLL);
            }

            v18 = *v16;
            v19 = *(v4 + 16);
            v20 = *(v19 + 4);
            if (*(v19 + 3) - v20 > 1uLL)
            {
              *v20 = 8250;
              *(v19 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v19, ": ", 2uLL);
            }

            mlir::AsmPrinter::Impl::printType((v4 + 16), *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
            mlir::AsmPrinter::Impl::printTrailingLocation(v4 + 16, *(v18 + 32), 0);
            ++v16;
          }

          while (v16 != v11);
        }
      }

      v21 = *v6;
      v22 = *(*v6 + 4);
      if (v22 >= *(*v6 + 3))
      {
        llvm::raw_ostream::write(v21, 41);
      }

      else
      {
        *(v21 + 4) = v22 + 1;
        *v22 = 41;
      }

      v5 = a2;
    }

    v23 = *v6;
    v24 = *(*v6 + 4);
    if (v24 >= *(*v6 + 3))
    {
      llvm::raw_ostream::write(v23, 58);
    }

    else
    {
      *(v23 + 4) = v24 + 1;
      *v24 = 58;
    }

    if ((v5[3] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v25 = *v5;
      if (*v5)
      {
        if (*v25 || (v26 = *(*(v25 + 2) + 16)) == 0)
        {
          v73.n128_u64[0] = v74;
          v73.n128_u64[1] = 0x400000000;
          do
          {
            v36 = &v72;
            v37 = v73.n128_u64[0];
            if (v73.n128_u32[2] >= v73.n128_u32[3])
            {
              if (v73.n128_u64[0] <= &v72 && v73.n128_u64[0] + 24 * v73.n128_u32[2] > &v72)
              {
                v41 = &v72 - v73.n128_u64[0];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v74, v73.n128_u32[2] + 1, 24);
                v37 = v73.n128_u64[0];
                v36 = &v41[v73.n128_u64[0]];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v74, v73.n128_u32[2] + 1, 24);
                v36 = &v72;
                v37 = v73.n128_u64[0];
              }
            }

            v38 = (v37 + 24 * v73.n128_u32[2]);
            v39 = *v36;
            v38[1].n128_u64[0] = v36[1].n128_u64[0];
            *v38 = v39;
            v40 = ++v73.n128_u32[2];
            v25 = *v25;
          }

          while (v25);
          v42 = 126 - 2 * __clz(v40);
          if (v40)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          v44 = *v6;
          v45 = *(*v6 + 4);
          if ((*(*v6 + 3) - v45) > 4)
          {
            *(v45 + 4) = 32;
            *v45 = 791617568;
            *(v44 + 4) += 5;
          }

          else
          {
            v44 = llvm::raw_ostream::write(*v6, "  // ", 5uLL);
          }

          write_unsigned<unsigned long long>(v44, v73.n128_u32[2], 0, 0, 0);
          v47 = *(v44 + 4);
          if (*(v44 + 3) - v47 > 7uLL)
          {
            *v47 = 0x203A736465727020;
            *(v44 + 4) += 8;
          }

          else
          {
            llvm::raw_ostream::write(v44, " preds: ", 8uLL);
          }

          v48 = v73.n128_u32[2];
          if (v73.n128_u32[2])
          {
            v49 = *v6;
            v50 = v73.n128_u64[0];
            llvm::raw_ostream::operator<<(*v6, *(v73.n128_u64[0] + 8), *(v73.n128_u64[0] + 16));
            if (v48 != 1)
            {
              v51 = 24 * v48 - 24;
              v52 = (v50 + 40);
              do
              {
                v53 = *(v49 + 4);
                if (*(v49 + 3) - v53 > 1uLL)
                {
                  *v53 = 8236;
                  *(v49 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(v49, ", ", 2uLL);
                }

                llvm::raw_ostream::operator<<(*v6, *(v52 - 1), *v52);
                v52 += 3;
                v51 -= 24;
              }

              while (v51);
            }
          }

          if (v73.n128_u64[0] != v74)
          {
            free(v73.n128_u64[0]);
          }
        }

        else
        {
          v27 = *v6;
          v28 = *(*v6 + 4);
          if ((*(*v6 + 3) - v28) > 0xA)
          {
            *(v28 + 7) = 540697701;
            *v28 = *"  // pred: ";
            *(v27 + 4) += 11;
          }

          else
          {
            llvm::raw_ostream::write(v27, "  // pred: ", 0xBuLL);
          }

          v54 = *(v4 + 16);
          llvm::raw_ostream::operator<<(v54, v73.n128_u64[1], v74[0]);
        }

        goto LABEL_72;
      }

      v33 = *((v5[3] & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v33)
      {
        v34 = (v33 - 8);
      }

      else
      {
        v34 = 0;
      }

      if (v34 == v5)
      {
LABEL_72:
        this = *(v4 + 16);
        ++*(v4 + 80);
        v55 = *(this + 4);
        if (v55 >= *(this + 3))
        {
          this = llvm::raw_ostream::write(this, 10);
        }

        else
        {
          *(this + 4) = v55 + 1;
          *v55 = 10;
        }

        goto LABEL_75;
      }

      v29 = *v6;
      v35 = *(*v6 + 4);
      if ((*(*v6 + 3) - v35) <= 0x13)
      {
        v31 = "  // no predecessors";
        v32 = 20;
        goto LABEL_40;
      }

      *(v35 + 16) = 1936879475;
      *v35 = *"  // no predecessors";
      v46 = *(v29 + 4) + 20;
    }

    else
    {
      v29 = *v6;
      v30 = *(*v6 + 4);
      if (*(*v6 + 3) - v30 <= 0x1DuLL)
      {
        v31 = "  // block is not in a region!";
        v32 = 30;
LABEL_40:
        llvm::raw_ostream::write(v29, v31, v32);
        goto LABEL_72;
      }

      qmemcpy(v30, "  // block is not in a region!", 30);
      v46 = *(v29 + 4) + 30;
    }

    *(v29 + 4) = v46;
    goto LABEL_72;
  }

LABEL_75:
  *(v4 + 152) += 2;
  if ((*(v4 + 72) & 0x40) != 0)
  {
    v56 = a2[6];
    for (i = a2[7]; v56 != i; v56 = (v56 + 8))
    {
      v58 = *v56;
      llvm::raw_ostream::indent(*(v4 + 16), *(v4 + 152));
      v59 = *(v4 + 16);
      v60 = *(v59 + 4);
      if ((*(v59 + 3) - v60) > 2)
      {
        *(v60 + 2) = 32;
        *v60 = 12079;
        *(v59 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v59, "// ", 3uLL);
      }

      v61 = *(v4 + 16);
      v62 = *(v61 + 4);
      v63 = *(v61 + 3) - v62;
      if (*v58)
      {
        if (v63 > 0xB)
        {
          *(v62 + 8) = 544825888;
          *v62 = *" is used by ";
          *(v61 + 4) += 12;
        }

        else
        {
          llvm::raw_ostream::write(v61, " is used by ", 0xCuLL);
        }
      }

      else if (v63 > 9)
      {
        *(v62 + 8) = 25701;
        *v62 = *" is unused";
        *(v61 + 4) += 10;
      }

      else
      {
        llvm::raw_ostream::write(v61, " is unused", 0xAuLL);
      }

      this = *(v4 + 16);
      ++*(v4 + 80);
      v64 = *(this + 4);
      if (v64 >= *(this + 3))
      {
        this = llvm::raw_ostream::write(this, 10);
      }

      else
      {
        *(this + 4) = v64 + 1;
        *v64 = 10;
      }
    }
  }

  v65 = a2 + 4;
  v66 = a2[4];
  if (v66 == (a2 + 4))
  {
    v68 = a2[5];
  }

  else
  {
    v67 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
    this = (*(**(v66 + 6) + 32))(*(v66 + 6), v67);
    v68 = a2[5];
    if (this && (a4 & 1) == 0)
    {
      v65 = *v65;
    }
  }

  for (; v68 != v65; v68 = *(v68 + 1))
  {
    this = *(v4 + 16);
    ++*(v4 + 80);
    v69 = *(this + 4);
    if (v69 >= *(this + 3))
    {
      this = llvm::raw_ostream::write(this, 10);
    }

    else
    {
      *(this + 4) = v69 + 1;
      *v69 = 10;
    }
  }

  *(v4 + 152) -= 2;
  return this;
}

void mlir::FallbackAsmResourceMap::ResourceCollection::~ResourceCollection(void **this)
{
  *this = &unk_286E77228;
  llvm::SmallVector<mlir::FallbackAsmResourceMap::OpaqueAsmResource,1u>::~SmallVector(this + 4);
  *this = &unk_286E771D8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286E77228;
  llvm::SmallVector<mlir::FallbackAsmResourceMap::OpaqueAsmResource,1u>::~SmallVector(this + 4);
  *this = &unk_286E771D8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpAsmDialectInterface::getAlias()
{
  return 0;
}

{
  return 0;
}

void *mlir::HeapAsmResourceBlob::allocate@<X0>(mlir::HeapAsmResourceBlob *this@<X0>, std::align_val_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  *&v9 = llvm::deallocate_buffer;
  v10 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
  *a4 = llvm::allocate_buffer(this, a2);
  *(a4 + 8) = this;
  *(a4 + 16) = a2;
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a4 + 24, &v9);
  *(a4 + 56) = v4;
  return llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(&v9);
}

uint64_t llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
      (*((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

void *llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

void mlir::AsmResourceBlob::~AsmResourceBlob(mlir::AsmResourceBlob *this)
{
  v1 = (this + 24);
  v2 = *(this + 6);
  if (v2 >= 8)
  {
    v3 = *this;
    v4 = *(this + 1);
    v5 = *(this + 2);
    v6 = this + 24;
    if ((v2 & 2) == 0)
    {
      v6 = *v1;
    }

    (*(v2 & 0xFFFFFFFFFFFFFFF8))(v6, v3, v4, v5);
  }

  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(v1);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallImpl<verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  {
    v3 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v5 = llvm::get_threadid(void)::Self();
    *v5 = v6;
  }

  return v1 == v3;
}

llvm::raw_ostream *anonymous namespace::SymbolAlias::print(_anonymous_namespace_::SymbolAlias *this, llvm::raw_ostream *a2)
{
  if ((*(this + 4) & 0x40000000) != 0)
  {
    v4 = "!";
  }

  else
  {
    v4 = "#";
  }

  v5 = llvm::raw_ostream::operator<<(a2, v4, 1uLL);
  result = llvm::raw_ostream::operator<<(v5, *this, *(this + 1));
  v7 = *(this + 4);
  if ((v7 & 0x3FFFFFFF) != 0)
  {

    return write_unsigned<unsigned long long>(a2, v7 & 0x3FFFFFFF, 0, 0, 0);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::doFind<void const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpAsmDialectInterface>();
      mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1472);
}

uint64_t llvm::getTypeName<mlir::OpAsmDialectInterface>()
{
  {
    llvm::getTypeName<mlir::OpAsmDialectInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpAsmDialectInterface>();
    *algn_27FC175D8 = v1;
  }

  return llvm::getTypeName<mlir::OpAsmDialectInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpAsmDialectInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmDialectInterface]";
  v6 = 89;
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

uint64_t mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DistinctAttr>();
      mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1512);
}

uint64_t llvm::getTypeName<mlir::DistinctAttr>()
{
  {
    llvm::getTypeName<mlir::DistinctAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DistinctAttr>();
    unk_27FC17600 = v1;
  }

  return llvm::getTypeName<mlir::DistinctAttr>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DistinctAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DistinctAttr]";
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::LookupBucketFor<mlir::DistinctAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

uint64_t *llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
      v16 = vdupq_n_s64(v14);
      v17 = result + 2;
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v18.i8[0])
        {
          *(v17 - 2) = -4096;
        }

        if (v18.i8[4])
        {
          *v17 = -4096;
        }

        v12 += 2;
        v17 += 4;
      }

      while (v15 != v12);
    }

    if (v4)
    {
      v19 = 16 * v4;
      v20 = v5;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::LookupBucketFor<mlir::DistinctAttr>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          v22[1] = v20[1];
          ++*(a1 + 8);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 2;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_25D0A0500)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -4096;
      }

      if (v30.i8[4])
      {
        *v29 = -4096;
      }

      v24 += 2;
      v29 += 4;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::APFloat::toString(_BYTE *a1, void *a2, unsigned int a3, unsigned int a4, int a5)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::toString(a1, a2);
  }

  else
  {
    llvm::detail::IEEEFloat::toString(a1, a2, a3, a4, a5);
  }
}

uint64_t llvm::APFloat::bitwiseIsEqual(llvm::APFloat **this, const llvm::APFloat **a2)
{
  if (*this != *a2)
  {
    return 0;
  }

  if (*this == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(this, a2);
  }

  return llvm::detail::IEEEFloat::bitwiseIsEqual(this, a2);
}

BOOL llvm::StringRef::contains(llvm::StringRef *this, int a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = *this;
  v4 = memchr(*this, a2, v2);
  if (v4)
  {
    v5 = &v4[-v3 + 1] == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

uint64_t *llvm::APFloat::bitcastToAPInt@<X0>(uint64_t *this@<X0>, llvm::APInt *a1@<X8>)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, this);
  }

  else
  {
    return llvm::detail::IEEEFloat::bitcastToAPInt(this, a1);
  }
}

void llvm::APFloat::Storage::~Storage(llvm::APFloat::Storage *this)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v3 = this + 8;
    v4 = *(this + 1);
    *(this + 1) = 0;
    if (v4)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v3, v4);
    }
  }

  else if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }
}

void std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = -24 * v2;
      v4 = (a2 + 24 * v2 - 24);
      do
      {
        llvm::APFloat::Storage::~Storage(v4);
        v4 = (v5 - 24);
        v3 += 24;
      }

      while (v3);
    }

    JUMPOUT(0x25F891010);
  }
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

void llvm::SmallVectorImpl<unsigned int>::assign(_DWORD *result, unint64_t a2, int a3)
{
  if (result[3] >= a2)
  {
    v3 = *result;
    v4 = result[2];
    if (v4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = result[2];
    }

    if (v5)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = (v3 + 8);
      do
      {
        v9 = vdupq_n_s64(v6);
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A0500)));
        if (vuzp1_s16(v10, *v7.i8).u8[0])
        {
          *(v8 - 2) = a3;
        }

        if (vuzp1_s16(v10, *&v7).i8[2])
        {
          *(v8 - 1) = a3;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A04F0)))).i32[1])
        {
          *v8 = a3;
          v8[1] = a3;
        }

        v6 += 4;
        v8 += 4;
      }

      while (((v5 + 3) & 0x1FFFFFFFCLL) != v6);
      v4 = result[2];
    }

    v11 = a2 - v4;
    if (a2 > v4)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v3 + 4 * v4 + 8);
      do
      {
        v15 = vdupq_n_s64(v12);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A0500)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 2) = a3;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 1) = a3;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A04F0)))).i32[1])
        {
          *v14 = a3;
          v14[1] = a3;
        }

        v12 += 4;
        v14 += 4;
      }

      while (((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
    }

    result[2] = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<unsigned int,true>::growAndAssign(_DWORD *a1, unint64_t a2, int a3)
{
  a1[2] = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 4);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vdupq_n_s64(v6);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A0500)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = a3;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = a3;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_25D0A04F0)))).i32[1])
      {
        *v8 = a3;
        v8[1] = a3;
      }

      v6 += 4;
      v8 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v6);
  }

  a1[2] = a2;
}

unint64_t mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*(*a1 + 16) + 8))();
  v5 = *(*result + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v7 = *(*a1 + 8);
    v8 = *(*a1 + 16);
    v9 = *(*a1 + 32);
    v10 = *(*a1 + 24);
    v11 = (*(v8 + 8))(v8, v7);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v11);
    v13 = *a1;
    v14 = (*(*(*a1 + 16) + 24))();
    if (v15)
    {
      v16 = 8 * v15;
      v17 = 1;
      do
      {
        v18 = *v14++;
        v17 *= v18;
        v16 -= 8;
      }

      while (v16);
    }

    else
    {
      v17 = 1;
    }

    v20 = *(v13 + 32);
    v21 = *(v13 + 24);
    v22 = (*(*(v13 + 16) + 8))();
    result = mlir::detail::getDenseElementBitWidth(v22);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = DenseElementBitWidth;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v17;
    *(a2 + 56) = result;
    v19 = 1;
    *(a2 + 64) = v7;
    *(a2 + 72) = v8;
  }

  else
  {
    v19 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v19;
  return result;
}

void *llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*a3 - *a2) >> 4;
  v7 = 1 << -__clz(v6 - 1);
  if (v6 <= 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = 1 << -__clz(v8 - 1);
  if (v8 >= 5)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::init(a1, v10, a3);
  v12 = *a2;
  v13 = *a3;
  while (v12 != v13)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v12++, v15, v11);
  }

  return a1;
}

uint64_t *llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::init(void *a1, unsigned int a2, unint64_t a3)
{
  if (a2 <= 4)
  {
    *a1 = 1;
  }

  else
  {
    *a1 &= ~1u;
    v4 = a2;
    result = llvm::allocate_buffer((16 * a2), 8uLL);
    a1[1] = result;
    a1[2] = v4;
    v6 = *a1;
    *a1 = *a1 & 1;
    if ((v6 & 1) == 0)
    {
      v7 = &result[2 * v4];
      goto LABEL_6;
    }
  }

  result = a1 + 1;
  v7 = a1 + 9;
  do
  {
LABEL_6:
    *result = xmmword_25D0A05E0;
    result += 2;
  }

  while (result != v7);
  return result;
}

void **llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, unint64_t *a4@<X3>)
{
  v16 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v16, a4);
  v9 = v16;
  if (result)
  {
    v10 = a1 + 8;
    if (*a1)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
    }

    v14 = 0;
    v15 = v10 + 16 * v11;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, v16, v8);
    v9 = result;
    *result = *a2;
    v12 = a1 + 8;
    if (*a1)
    {
      v13 = 4;
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
    }

    v15 = v12 + 16 * v13;
    v14 = 1;
  }

  *a3 = v9;
  *(a3 + 8) = v15;
  *(a3 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, uint64_t a2, void ***a3, unint64_t *a4)
{
  v6 = a1 + 8;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v10 = 0;
      result = 0;
      goto LABEL_7;
    }

    v6 = *(a1 + 8);
  }

  v8 = v7 - 1;
  v9 = (v7 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
  v10 = v6 + 16 * v9;
  if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
  {
    result = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    while (*v10 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v10 == -2;
      }

      if (v14)
      {
        v12 = v10;
      }

      v18 = v12;
      v15 = v13 + 1;
      v9 = (v9 + v13) & v8;
      v10 = v6 + 16 * v9;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
      v12 = v18;
      v17 = isEqual;
      result = 1;
      v13 = v15;
      if (v17)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v10 = v12;
    }
  }

LABEL_7:
  *a3 = v10;
  return result;
}

uint64_t llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(char *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__s2 == -2)
  {
    return a1 + 2 == 0;
  }

  if (__s2 == -1)
  {
    return a1 + 1 == 0;
  }

  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

void **llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(unsigned int *a1, uint64_t a2, void **a3, unint64_t *a4)
{
  v11 = a3;
  v6 = *a1;
  v7 = *a1 >> 1;
  if (*a1)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[4];
  }

  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
  }

  else if (v8 + ~v7 - a1[1] > v8 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v8, a3, a4);
  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v11, v10);
  v6 = *a1;
  a3 = v11;
LABEL_6:
  *a1 = v6 + 2;
  if (*a3 != -1)
  {
    --a1[1];
  }

  return a3;
}

int *llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t *a4)
{
  v16 = *MEMORY[0x277D85DE8];
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

  if ((*a1 & 1) == 0)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v8, &v8[v9], a4);

    JUMPOUT(0x25F891030);
  }

  v10 = v15;
  for (i = 8; i != 72; i += 16)
  {
    if (*(a1 + i) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      *v10++ = *(a1 + i);
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v15, v10, a4);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(int *result, _OWORD *a2, _OWORD *a3, unint64_t *a4)
{
  v6 = result;
  v7 = *result;
  *result = *result & 1;
  if (v7)
  {
    v9 = result + 2;
    v10 = result + 18;
  }

  else
  {
    v8 = result[4];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(result + 1);
    v10 = &v9[v8];
  }

  do
  {
    *v9++ = xmmword_25D0A05E0;
  }

  while (v9 != v10);
LABEL_10:
  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v6, a2, &v11, a4);
      *v11 = *a2;
      *v6 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t *llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::ArrayRef<mlir::NamedAttribute>,llvm::ArrayRef<llvm::StringRef>,BOOL)::$_1,std::bidirectional_iterator_tag>::findNextValid(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *result;
  if (*result != result[1])
  {
    v12 = v4;
    v13 = v5;
    v7 = result;
    do
    {
      v8 = v7[2];
      v11 = *(*v6 + 16);
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::find(v8, &v11, a3, a4);
      if (*v8)
      {
        v9 = (v8 + 72);
      }

      else
      {
        v9 = (*(v8 + 8) + 16 * *(v8 + 16));
      }

      if (v9 == result)
      {
        break;
      }

      v10 = v7[1];
      v6 = *v7 + 16;
      *v7 = v6;
    }

    while (v6 != v10);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::find(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(a1, a2, a3, a4);
  if (!result)
  {
    if (*a1)
    {
      return a1 + 72;
    }

    else
    {
      return *(a1 + 8) + 16 * *(a1 + 16);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      return 0;
    }

    v5 = *(a1 + 8);
  }

  v7 = v6 - 1;
  v8 = (v6 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
  v9 = v5 + 16 * v8;
  if ((llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8)) & 1) == 0)
  {
    v11 = 1;
    while (*v9 != -1)
    {
      v12 = v11 + 1;
      v8 = (v8 + v11) & v7;
      v9 = v5 + 16 * v8;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8));
      v11 = v12;
      if (isEqual)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void llvm::SmallVectorImpl<char>::resizeImpl<true>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    if (v2 <= a2 && result[2] < a2)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, a2, 1);
    }

    result[1] = a2;
  }
}

uint64_t llvm::SetVector<void const*,llvm::SmallVector<void const*,0u>,llvm::DenseSet<void const*,llvm::DenseMapInfo<void const*,void>>,0u>::insert(uint64_t a1, uint64_t *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, &v6);
  v4 = v7;
  if (v7 == 1)
  {
    llvm::SmallVectorTemplateBase<void const*,true>::push_back(a1 + 24, *a2);
  }

  return v4;
}

void llvm::SmallVectorTemplateBase<void const*,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::LookupBucketFor<void const*>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::InsertIntoBucketImpl<void const*>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::LookupBucketFor<void const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 8 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::InsertIntoBucketImpl<void const*>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::LookupBucketFor<void const*>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::grow(uint64_t **a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((8 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::moveFromOldBuckets(a1, v5, &v5[v4]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0x1FFFFFFFFFFFFFFFLL;
    v14 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 1;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
      if (v18.i8[0])
      {
        *(v17 - 1) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 2;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::LookupBucketFor<void const*>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

void *llvm::SetVector<void const*,llvm::SmallVector<void const*,0u>,llvm::DenseSet<void const*,llvm::DenseMapInfo<void const*,void>>,0u>::pop_back(int32x2_t *a1)
{
  result = llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::doFind<void const*>(a1, (*&a1[3] + 8 * a1[4].u32[0] - 8));
  if (result)
  {
    *result = -8192;
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  --a1[4].i32[0];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::doFind<void const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 8 * v5);
    if (*a2 == v6)
    {
      return v3 + 8 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 8 * v5);
      if (*a2 == v6)
      {
        return v3 + 8 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>,mlir::Operation *,llvm::SmallVector<int,1u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<int,1u>>>::doFind<mlir::Operation const*>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v4 = *(a1 + 32 * v3);
    if (v4 == a3)
    {
      return a1 + 32 * v3;
    }

    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v4 = *(a1 + 32 * v3);
      if (v4 == a3)
      {
        return a1 + 32 * v3;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 16 * v7);
    if (*a2 == v8)
    {
      return v3 + 16 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 16 * v7);
      if (*a2 == v8)
      {
        return v3 + 16 * v7;
      }
    }
  }

  return 0;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printNewline(_anonymous_namespace_::OperationPrinter *this)
{
  v2 = *(this + 2);
  ++*(this + 20);
  v3 = *(v2 + 4);
  if (v3 >= *(v2 + 3))
  {
    llvm::raw_ostream::write(v2, 10);
  }

  else
  {
    *(v2 + 4) = v3 + 1;
    *v3 = 10;
  }

  v4 = *(this + 2);
  v5 = *(this + 38);

  return llvm::raw_ostream::indent(v4, v5);
}

void anonymous namespace::OperationPrinter::printRegionArgument(llvm::raw_ostream **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  (*(*a1 + 20))(a1);
  if ((a5 & 1) == 0)
  {
    v10 = a1[2];
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8250;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ": ", 2uLL);
    }

    mlir::AsmPrinter::Impl::printType(a1 + 2, *(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  (*(*a1 + 24))(a1, a3, a4, 0, 0);
  v12 = *(a2 + 32);

  mlir::AsmPrinter::Impl::printTrailingLocation((a1 + 2), v12, 0);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printSuccessor(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2)
{
  v2 = *(this + 2);
  v3 = v6.n128_u64[1];
  v4 = v7;

  return llvm::raw_ostream::operator<<(v2, v3, v4);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printSuccessorAndUseList(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 16);
  v7 = (a1 + 16);
  result = llvm::raw_ostream::operator<<(v8, v26.n128_u64[1], v27);
  if (a4)
  {
    v10 = *v7;
    v11 = *(*v7 + 4);
    if (v11 >= *(*v7 + 3))
    {
      llvm::raw_ostream::write(v10, 40);
    }

    else
    {
      *(v10 + 4) = v11 + 1;
      *v11 = 40;
    }

    v12 = *v7;
    v13 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v14 = (a3 & 0xFFFFFFFFFFFFFFF8) == 0 || (a3 & 6) != 0;
    v26.n128_u64[0] = a3;
    if (v14)
    {
      v15 = a3 & 0xFFFFFFFFFFFFFFF8;
      if ((a3 & 6) == 2)
      {
        v15 = a3 & 0xFFFFFFFFFFFFFFF8;
        if (v13)
        {
          v15 = v13[3];
        }
      }
    }

    else
    {
      v15 = *v13;
    }

    v26.n128_u64[1] = 1;
    if (a4 != 1)
    {
      v16 = 1;
      do
      {
        v17 = *(v12 + 4);
        if (*(v12 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        v18 = mlir::ValueRange::dereference_iterator(&v26, v16);
        v26.n128_u64[1] = ++v16;
      }

      while (a4 != v16);
    }

    v19 = *v7;
    v20 = *(*v7 + 4);
    if ((*(*v7 + 3) - v20) > 2)
    {
      *(v20 + 2) = 32;
      *v20 = 14880;
      *(v19 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v19, " : ", 3uLL);
    }

    v21 = *v7;
    v26.n128_u64[0] = a3;
    if (v14)
    {
      if ((a3 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    mlir::AsmPrinter::Impl::printType(v7, v13[1] & 0xFFFFFFFFFFFFFFF8);
    v26.n128_u64[1] = 1;
    if (a4 != 1)
    {
      v22 = 1;
      do
      {
        v23 = *(v21 + 4);
        if (*(v21 + 3) - v23 > 1uLL)
        {
          *v23 = 8236;
          *(v21 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v21, ", ", 2uLL);
        }

        v24 = mlir::ValueRange::dereference_iterator(&v26, v22);
        mlir::AsmPrinter::Impl::printType(v7, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
        v26.n128_u64[1] = ++v22;
      }

      while (a4 != v22);
    }

    result = *v7;
    v25 = *(*v7 + 4);
    if (v25 >= *(*v7 + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v25 + 1;
      *v25 = 41;
    }
  }

  return result;
}

void *anonymous namespace::OperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::OperationPrinter *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((*(this + 36) & 4) != 0)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  v4 = *(a2 + 6);
  if (*(v4 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v5 = *(*v4 + 56);

    return v5();
  }

  v7 = *(*(v4 + 8) + 32);
  if (!v7)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  (*(*v7 + 72))(v25);
  if (v26 < 8)
  {
    llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &>::~UniqueFunctionBase(v25);
    return (*(*this + 216))(this, a2, 1);
  }

  v8 = *(*(a2 + 6) + 8);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (v9[v11] == 46)
      {
        ++v12;
      }

      ++v11;
    }

    while (v10 != v11);
    if (v12 == 1)
    {
      v13 = *(this + 11) + 16 * *(this + 24);
      v22 = 773;
      v15 = *(v13 - 16);
      v14 = *(v13 - 8);
      v21[0] = v15;
      v21[1] = v14;
      v21[2] = ".";
      llvm::Twine::str(v21, v23);
      v16 = v24;
      v17 = v23[0];
      if (v24 >= 0)
      {
        v18 = v23;
      }

      else
      {
        v18 = v23[0];
      }

      if (v24 >= 0)
      {
        v19 = v24;
      }

      else
      {
        v19 = v23[1];
      }

      if (v10 >= v19 && (!v19 || !memcmp(v9, v18, v19)))
      {
        v9 += v19;
        v10 -= v19;
      }

      if (v16 < 0)
      {
        operator delete(v17);
      }
    }
  }

  llvm::raw_ostream::operator<<(*(this + 2), v9, v10);
  if ((v26 & 2) != 0)
  {
    v20 = v25;
  }

  else
  {
    v20 = v25[0];
  }

  (*(v26 & 0xFFFFFFFFFFFFFFF8))(v20, a2, this);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &>::~UniqueFunctionBase(v25);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printGenericOp(llvm::raw_ostream **this, mlir::Operation *a2, int a3)
{
  v66[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    mlir::AsmPrinter::Impl::printEscapedString(this + 2, *(*(*(a2 + 6) + 8) + 16), *(*(*(a2 + 6) + 8) + 24));
  }

  v6 = this + 2;
  v5 = this[2];
  v7 = *(v5 + 4);
  if (v7 >= *(v5 + 3))
  {
    llvm::raw_ostream::write(v5, 40);
  }

  else
  {
    *(v5 + 4) = v7 + 1;
    *v7 = 40;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v8 = *(a2 + 17);
    if (v8)
    {
      v9 = *(a2 + 9);
      v10 = *v6;
      if (v8 != 1)
      {
        v11 = v8 - 1;
        v12 = (v9 + 56);
        do
        {
          v13 = *(v10 + 4);
          if (*(v10 + 3) - v13 > 1uLL)
          {
            *v13 = 8236;
            *(v10 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v10, ", ", 2uLL);
          }

          v14 = *v12;
          v12 += 4;
          --v11;
        }

        while (v11);
      }
    }
  }

  v15 = *v6;
  v16 = *(*v6 + 4);
  if (v16 >= *(*v6 + 3))
  {
    llvm::raw_ostream::write(v15, 41);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 41;
  }

  if (*(a2 + 10))
  {
    v17 = *v6;
    v18 = *(*v6 + 4);
    if (v18 >= *(*v6 + 3))
    {
      llvm::raw_ostream::write(v17, 91);
    }

    else
    {
      *(v17 + 4) = v18 + 1;
      *v18 = 91;
    }

    v19 = *(a2 + 10);
    if (v19)
    {
      v20 = (a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
      v21 = this[2];
      llvm::raw_ostream::operator<<(v21, *(&v54 + 1), v55);
      if (v19 != 1)
      {
        v22 = v19 - 1;
        v23 = (v20 + 56);
        do
        {
          v24 = *(v21 + 4);
          if (*(v21 + 3) - v24 > 1uLL)
          {
            *v24 = 8236;
            *(v21 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v21, ", ", 2uLL);
          }

          v25 = *v23;
          v23 += 4;
          v26 = this[2];
          llvm::raw_ostream::operator<<(v26, *(&v54 + 1), v55);
          --v22;
        }

        while (v22);
      }
    }

    v27 = *v6;
    v28 = *(*v6 + 4);
    if (v28 >= *(*v6 + 3))
    {
      llvm::raw_ostream::write(v27, 93);
    }

    else
    {
      *(v27 + 4) = v28 + 1;
      *v28 = 93;
    }
  }

  PropertiesAsAttribute = mlir::Operation::getPropertiesAsAttribute(a2);
  if (PropertiesAsAttribute)
  {
    v30 = PropertiesAsAttribute;
    v31 = *v6;
    v32 = *(*v6 + 4);
    if (*(*v6 + 3) - v32 > 1uLL)
    {
      *v32 = 15392;
      *(v31 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v31, " <", 2uLL);
    }

    mlir::AsmPrinter::Impl::printAttribute((this + 2), v30, 0);
    v33 = *v6;
    v34 = *(*v6 + 4);
    if (v34 >= *(*v6 + 3))
    {
      llvm::raw_ostream::write(v33, 62);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 62;
    }
  }

  v35 = *(a2 + 11);
  if ((v35 & 0x7FFFFF) != 0)
  {
    v36 = *v6;
    v37 = *(*v6 + 4);
    if (*(*v6 + 3) - v37 > 1uLL)
    {
      *v37 = 10272;
      *(v36 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v36, " (", 2uLL);
    }

    v38 = *(a2 + 11);
    v39 = v38 & 0x7FFFFF;
    if ((v38 & 0x7FFFFF) != 0)
    {
      v40 = ((a2 + 16 * ((v38 >> 23) & 1) + ((v38 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
      v41 = this[2];
      (*(*this + 28))(this, v40, 1, 1, 1);
      if (v39 != 1)
      {
        v42 = v40 + 24;
        v43 = 24 * v39 - 24;
        do
        {
          v44 = *(v41 + 4);
          if (*(v41 + 3) - v44 > 1uLL)
          {
            *v44 = 8236;
            *(v41 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v41, ", ", 2uLL);
          }

          (*(*this + 28))(this, v42, 1, 1, 1);
          v42 += 24;
          v43 -= 24;
        }

        while (v43);
      }
    }

    v45 = *v6;
    v46 = *(*v6 + 4);
    if (v46 >= *(*v6 + 3))
    {
      llvm::raw_ostream::write(v45, 41);
    }

    else
    {
      *(v45 + 4) = v46 + 1;
      *v46 = 41;
    }

    v35 = *(a2 + 11);
  }

  v47 = HIBYTE(v35);
  if (HIBYTE(v35))
  {
    mlir::Operation::getDiscardableAttrs(a2, &v54);
    v62[0] = v54;
    v62[1] = v55;
    v63 = v56;
    v60[0] = v57;
    v60[1] = v58;
    v61 = v59;
    v64 = v66;
    v65 = 0x300000000;
    llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(&v64, v62, v60);
    v49 = v64;
    v50 = v65;
  }

  else
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v49 = *(AttrDictionary + 8);
    v50 = *(AttrDictionary + 16);
  }

  (*(*this + 24))(this, v49, v50, 0, 0);
  if (v47 && v64 != v66)
  {
    free(v64);
  }

  v51 = *v6;
  v52 = *(*v6 + 4);
  if ((*(*v6 + 3) - v52) > 2)
  {
    *(v52 + 2) = 32;
    *v52 = 14880;
    *(v51 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v51, " : ", 3uLL);
  }

  return mlir::OpAsmPrinter::printFunctionalType(this, a2);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegion(_anonymous_namespace_::OperationPrinter *this, mlir::Region *a2, int a3, char a4, int a5)
{
  v6 = *(this + 36);
  result = *(this + 2);
  v9 = *(result + 3);
  v8 = *(result + 4);
  if ((v6 & 8) == 0)
  {
    if (v9 == v8)
    {
      result = llvm::raw_ostream::write(result, "{", 1uLL);
      v14 = *(result + 4);
    }

    else
    {
      *v8 = 123;
      v14 = (*(result + 4) + 1);
      *(result + 4) = v14;
    }

    ++*(this + 20);
    if (v14 >= *(result + 3))
    {
      llvm::raw_ostream::write(result, 10);
    }

    else
    {
      *(result + 4) = v14 + 1;
      *v14 = 10;
    }

    if (*a2 == a2)
    {
      goto LABEL_35;
    }

    if (llvm::DefaultDoCastIfPossible<mlir::OpAsmOpInterface,mlir::Operation *,llvm::CastInfo<mlir::OpAsmOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(a2 + 2)))
    {
      v19 = (*(v18 + 24))();
      v21 = v20;
      v22 = this + 88;
      v23 = v19;
      v24 = v21;
    }

    else
    {
      v23 = &byte_25D0A27DF;
      v22 = this + 88;
      v24 = 0;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(v22, v23, v24);
    v25 = *(a2 + 1);
    if (v25)
    {
      v26 = v25 - 8;
    }

    else
    {
      v26 = 0;
    }

    if (a5)
    {
      v27 = *(v26 + 32);
      v28 = v27 == v26 + 32;
      if (v27 == v26 + 32 || a3 == 0)
      {
        goto LABEL_28;
      }
    }

    else if (!a3)
    {
      v28 = 0;
LABEL_28:
      for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
      {
        if (i)
        {
          v31 = (i - 8);
        }

        else
        {
          v31 = 0;
        }
      }

      --*(this + 24);
LABEL_35:
      result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
      v32 = *(result + 4);
      if (*(result + 3) != v32)
      {
        *v32 = 125;
        v17 = *(result + 4) + 1;
        goto LABEL_37;
      }

      v15 = "}";
      v16 = 1;
      goto LABEL_39;
    }

    v28 = ((*(v26 + 56) - *(v26 + 48)) & 0x7FFFFFFF8) != 0;
    goto LABEL_28;
  }

  if ((v9 - v8) > 4)
  {
    v8[4] = 125;
    *v8 = 774778491;
    v17 = *(result + 4) + 5;
LABEL_37:
    *(result + 4) = v17;
    return result;
  }

  v15 = "{...}";
  v16 = 5;
LABEL_39:

  return llvm::raw_ostream::write(result, v15, v16);
}

void anonymous namespace::OperationPrinter::shadowRegionArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v31[0] = a3;
  v31[1] = a4;
  v28 = v30;
  v29 = xmmword_25D0A05B0;
  v5 = a4;
  if (a4)
  {
    v7 = 0;
    do
    {
      v8 = mlir::ValueRange::dereference_iterator(v31, v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(a2 + 8);
        if (v10)
        {
          v11 = v10 - 8;
        }

        else
        {
          v11 = 0;
        }

        v12 = *(*(v11 + 48) + 8 * v7);
        v26 = &v28;
        v27 = v12;
        *&v29 = 0;
        v20 = 2;
        v24 = 0;
        v25 = 1;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v19 = &unk_286E79DA0;
        llvm::raw_ostream::SetUnbuffered(&v19);
        v13 = 0;
        v14 = v26[1];
        v15 = v14 != 0;
        v16 = v14 - v15;
        if (v14 >= 2)
        {
          v17 = *v26;
          v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v4 + 54, v14 - v15, 0);
          memmove(v13, &v17[v15], v16);
        }

        v18 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](v4 + 38, &v27);
        *v18 = v13;
        v18[1] = v16;
        llvm::raw_ostream::~raw_ostream(&v19);
      }

      ++v7;
    }

    while (v5 != v7);
    if (v28 != v30)
    {
      free(v28);
    }
  }
}

double anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a3;
  v18[1] = a4;
  if (a2)
  {
    v4 = *(a2 + 8);
    v17 = *v4;
    v16[0] = &v17;
    v16[1] = a1;
    v16[2] = v18;
    v5 = v4[2];
    if (v5)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      if (v5 != 1)
      {
        v9 = 8 * v5;
        v10 = (v4 + 8);
        v11 = v9 - 8;
        do
        {
          v12 = *(v7 + 4);
          if (*(v7 + 3) - v12 > 1uLL)
          {
            *v12 = 8236;
            *(v7 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v7, ", ", 2uLL);
          }

          v13 = *v10++;
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 4);
    if ((*(v14 + 3) - v15) > 0x12)
    {
      *(v15 + 15) = 1044271169;
      result = *"<<NULL AFFINE MAP>>";
      *v15 = *"<<NULL AFFINE MAP>>";
      *(v14 + 4) += 19;
    }

    else
    {

      llvm::raw_ostream::write(v14, "<<NULL AFFINE MAP>>", 0x13uLL);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  v7[0] = a1;
  v7[1] = v9;
  v7[2] = v8;
}

void *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

double mlir::Operation::getDiscardableAttrs@<D0>(mlir::Operation *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 6);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v5 = 0uLL;
  }

  else
  {
    v5 = *(v4 + 96);
  }

  v10 = v2;
  v11 = v3;
  v9 = *(*(this + 7) + 8);
  v7 = this;
  v8 = v5;
  return llvm::make_filter_range<llvm::ArrayRef<mlir::NamedAttribute>,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1}>(&v9, &v7, a2);
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(uint64_t result, __int128 *a2, uint64_t *a3)
{
  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  v17 = *(a2 + 4);
  v7 = *a3;
  v8 = v15;
  if (v15 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      ++v9;
      *&v15 = v8 + 16;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>::findNextValid(&v15);
      v8 = v15;
    }

    while (v15 != v7);
  }

  v10 = *(result + 8);
  if (v9 + v10 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v9 + v10, 16);
    v10 = *(result + 8);
  }

  v11 = a2[1];
  v15 = *a2;
  v16 = v11;
  v17 = *(a2 + 4);
  v12 = *a3;
  v13 = v15;
  if (v15 != v12)
  {
    v14 = (*result + 16 * v10);
    do
    {
      *v14++ = *v13;
      *&v15 = v13 + 1;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>::findNextValid(&v15);
      v13 = v15;
    }

    while (v15 != v12);
    LODWORD(v10) = *(result + 8);
  }

  *(result + 8) = v10 + v9;
}

uint64_t llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (*result != v2)
  {
    v3 = *(result + 16);
    do
    {
      if (*(v3 + 47))
      {
        break;
      }

      v4 = *(result + 32);
      if (v4)
      {
        v5 = 8 * v4;
        for (i = *(result + 24); *i != *v1; ++i)
        {
          v5 -= 8;
          if (!v5)
          {
            return result;
          }
        }
      }

      else
      {
        i = *(result + 24);
      }

      if (i == (*(result + 24) + 8 * v4))
      {
        break;
      }

      v1 += 2;
      *result = v1;
    }

    while (v1 != v2);
  }

  return result;
}

double llvm::make_filter_range<llvm::ArrayRef<mlir::NamedAttribute>,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1}>@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *a1 + 16 * a1[1];
  v16 = *a2;
  v17 = *(a2 + 2);
  *&v15 = v6;
  *(&v15 + 1) = v7;
  llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>::findNextValid(&v15);
  v8 = *a1 + 16 * a1[1];
  v13 = *a2;
  v14 = *(a2 + 2);
  *&v12 = v8;
  *(&v12 + 1) = v8;
  llvm::filter_iterator_base<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>::findNextValid(&v12);
  v9 = v16;
  *a3 = v15;
  *(a3 + 16) = v9;
  *(a3 + 32) = v17;
  result = *&v12;
  v11 = v13;
  *(a3 + 40) = v12;
  *(a3 + 56) = v11;
  *(a3 + 72) = v14;
  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::OpAsmOpInterface,mlir::Operation *,llvm::CastInfo<mlir::OpAsmOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpAsmOpInterface>();
      mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1432);
}

uint64_t llvm::getTypeName<mlir::OpAsmOpInterface>()
{
  {
    llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpAsmOpInterface>();
    unk_27FC175B0 = v1;
  }

  return llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpAsmOpInterface>()
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

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](void *a1, unint64_t *a2)
{
  v11 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 4), *a2, &v11);
  v6 = v11;
  if (v4)
  {
    return v6 + 1;
  }

  v12 = v11;
  v7 = *(a1 + 2);
  v8 = *(a1 + 4);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 3) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::grow(a1, v8, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 4), *a2, &v12);
    v7 = *(a1 + 2);
    v6 = v12;
  }

  *(a1 + 2) = v7 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 3);
  }

  v9 = *a2;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = v9;
  return v6 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 24 * v7);
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
        v8 = (a1 + 24 * (v15 & v6));
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

uint64_t *llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::grow(uint64_t a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 16) = v9;
  result = llvm::allocate_buffer((24 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = 24 * v11 - 24;
      v14 = vdupq_n_s64(v13 / 0x18);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *result = -4096;
        }

        if (v15.i8[4])
        {
          result[3] = -4096;
        }

        v12 += 2;
        result += 6;
      }

      while (((v13 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v12);
    }

    if (v4)
    {
      v16 = 24 * v4;
      v17 = v5;
      do
      {
        v18 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v18, &v25);
          v19 = v25;
          *v25 = *v17;
          *(v19 + 1) = *(v17 + 8);
          ++*(a1 + 8);
        }

        v17 += 24;
        v16 -= 24;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 24 * v20 - 24;
    v23 = vdupq_n_s64(v22 / 0x18);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[3] = -4096;
      }

      v21 += 2;
      result += 6;
    }

    while (((v22 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(mlir::AffineMapAttr,mlir::ValueRange)::$_0>(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 8);
  if (a3)
  {
    v5 = **a1 + a2;
    v6 = *(v4 + 16);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 6uLL)
    {
      *(v7 + 3) = 678195042;
      *v7 = 1651341683;
      *(v6 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v6, "symbol(", 7uLL);
    }

    v12 = mlir::ValueRange::dereference_iterator(*(a1 + 16), v5);
    result = *(v4 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(*(a1 + 16), a2);
    v9 = *(v4 + 16);
    v10 = (*(v4 + 24) + 280);
  }

  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(unsigned int,BOOL)>::callback_fn<anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(mlir::AffineExpr,mlir::ValueRange,mlir::ValueRange)::$_0>(uint64_t *a1, unsigned int a2, char a3)
{
  v5 = *a1;
  if (a3)
  {
    v6 = *(v5 + 16);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 6uLL)
    {
      *(v7 + 3) = 678195042;
      *v7 = 1651341683;
      *(v6 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v6, "symbol(", 7uLL);
    }

    v12 = mlir::ValueRange::dereference_iterator(a1[2], a2);
    result = *(v5 + 16);
    v13 = *(result + 4);
    if (v13 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v13 + 1;
      *v13 = 41;
    }
  }

  else
  {
    v8 = mlir::ValueRange::dereference_iterator(a1[1], a2);
    v9 = *(v5 + 16);
    v10 = (*(v5 + 24) + 280);
  }

  return result;
}

uint64_t *llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::init(uint64_t *result, int a2, unint64_t a3)
{
  v3 = result;
  if (a2)
  {
    v4 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    LODWORD(v5) = (((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8)) + 1;
    *(result + 4) = v5;
    result = llvm::allocate_buffer((16 * v5), 8uLL);
    *v3 = result;
    v3[1] = 0;
    v6 = *(v3 + 4);
    if (v6)
    {
      v7 = 0;
      v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
      v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
      v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
      v11 = vdupq_n_s64(v9);
      v12 = result + 2;
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
        if (v13.i8[0])
        {
          *(v12 - 2) = -4096;
        }

        if (v13.i8[4])
        {
          *v12 = -4096;
        }

        v7 += 2;
        v12 += 4;
      }

      while (v10 != v7);
    }
  }

  else
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = 0;
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::DummyAliasOperationPrinter *this, uint64_t **a2)
{
  v4 = *(*(this + 2) + 40);
  if (v4)
  {
    v4 = *(*(this + 2) + 40);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(*this + 216);

    return v7(this, a2, 1);
  }

  else
  {
    v5 = *(*a2[6] + 56);

    return v5();
  }
}

void anonymous namespace::DummyAliasOperationPrinter::~DummyAliasOperationPrinter(_anonymous_namespace_::DummyAliasOperationPrinter *this)
{
  *this = &unk_286E773E8;
  llvm::raw_ostream::~raw_ostream((this + 32));
}

{
  *this = &unk_286E773E8;
  llvm::raw_ostream::~raw_ostream((this + 32));

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::printRegionArgument(void *a1, uint64_t a2)
{
  result = (*(*a1 + 32))(a1, *(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(a1[2] + 40))
  {
    v5 = a1[3];
    v6 = *(a2 + 32);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::DummyAliasOperationPrinter::printOperand(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3)
{
  v3 = *(a3 + 4);
  if (*(a3 + 3) == v3)
  {
    return llvm::raw_ostream::write(a3, "%", 1uLL);
  }

  *v3 = 37;
  ++*(a3 + 4);
  return result;
}

uint64_t *anonymous namespace::DummyAliasOperationPrinter::printOptionalAttrDict(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = result;
    if (a5)
    {
      v16[0] = a4;
      v17 = a4 + 16 * a5;
      llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v18, v16, &v17);
      v10 = (a2 + 8);
      v11 = 16 * a3;
      do
      {
        *v16 = *(*(v10 - 1) + 16);
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::find(&v18, v16, v8, v9);
        if (v18)
        {
          v12 = &v21;
        }

        else
        {
          v12 = (v19 + 16 * v20);
        }

        if (v12 == result)
        {
          result = (*(*v7 + 40))(v7, *v10);
        }

        v10 += 2;
        v11 -= 16;
      }

      while (v11);
      if ((v18 & 1) == 0)
      {
        return MEMORY[0x25F891030](v19, 8);
      }
    }

    else
    {
      v13 = 16 * a3;
      v14 = (a2 + 8);
      do
      {
        v15 = *v14;
        v14 += 2;
        result = (*(*v7 + 40))(v7, v15);
        v13 -= 16;
      }

      while (v13);
    }
  }

  return result;
}

unint64_t anonymous namespace::DummyAliasOperationPrinter::printGenericOp(_anonymous_namespace_::DummyAliasOperationPrinter *this, mlir::Operation *a2)
{
  if ((*(*(this + 2) + 40) & 8) == 0)
  {
    v4 = *(a2 + 11);
    if ((v4 & 0x7FFFFF) != 0)
    {
      v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
      v6 = 24 * (v4 & 0x7FFFFF);
      do
      {
        (*(*this + 224))(this, v5, 1, 1, 0);
        v5 += 24;
        v6 -= 24;
      }

      while (v6);
    }
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 17);
    if (v7)
    {
      v8 = (*(a2 + 9) + 24);
      do
      {
        v9 = *v8;
        v8 += 4;
        (*(*this + 32))(this, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v7;
      }

      while (v7);
    }
  }

  v10 = *(a2 + 9);
  if (v10)
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = 0;
    v13 = v11;
    while (1)
    {
      v14 = v11;
      if (v12)
      {
        v15 = *(a2 - 1) & 7;
        v16 = v11;
        v17 = v12;
        if (v15 == 6)
        {
          goto LABEL_18;
        }

        v18 = (5 - v15);
        v14 = v13;
        v17 = v12 - v18;
        if (v12 > v18)
        {
          break;
        }
      }

LABEL_19:
      (*(*this + 32))(this, *(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
      ++v12;
      v13 -= 16;
      if (v10 == v12)
      {
        goto LABEL_20;
      }
    }

    v16 = &v11[-16 * v18];
LABEL_18:
    v14 = &v16[-24 * v17];
    goto LABEL_19;
  }

LABEL_20:
  result = mlir::Operation::getAttrDictionary(a2);
  v20 = *(result + 16);
  if (v20)
  {
    v21 = 16 * v20;
    v22 = (*(result + 8) + 8);
    do
    {
      v23 = *v22;
      v22 += 2;
      result = (*(*this + 40))(this, v23);
      v21 -= 16;
    }

    while (v21);
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::DummyAliasOperationPrinter::printRegion(llvm::raw_ostream *this, mlir::Region *a2, BOOL a3, char a4)
{
  if (*a2 != a2)
  {
    v4 = this;
    if ((*(*(this + 2) + 40) & 8) != 0)
    {
      v10 = *(this + 8);
      if ((*(this + 7) - v10) > 4)
      {
        *(v10 + 4) = 125;
        *v10 = 774778491;
        *(this + 8) += 5;
      }

      else
      {
        v11 = (this + 32);

        return llvm::raw_ostream::write(v11, "{...}", 5uLL);
      }
    }

    else
    {
      v6 = *(a2 + 1);
      if (v6)
      {
        v7 = (v6 - 8);
      }

      else
      {
        v7 = 0;
      }

      for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
      {
        if (i)
        {
          v9 = (i - 8);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  return this;
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, uint64_t a2, int a3)
{
  v50[2] = *MEMORY[0x277D85DE8];
  LOBYTE(v44[0]) = 0;
  LOBYTE(v44[2]) = 0;
  LODWORD(v44[3]) = 0;
  v45 = v47;
  v46 = 0x600000000;
  *v30 = a2;
  *&v30[8] = *v44;
  *&v30[20] = *(&v44[1] + 4);
  v31 = &v33;
  v32 = 0x600000000;
  v8 = v7;
  if (v31 != &v33)
  {
    free(v31);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v8)
  {
    v29 = v6 - *(a1 + 5);
    v44[0] = &v44[3];
    *&v44[1] = xmmword_25D0A05C0;
    v9 = *(*a1 + 32);
    v10 = *(*a1 + 40);
    if (v9 != v10)
    {
      do
      {
        while (1)
        {
          v11 = (*(**v9 + 24))(*v9, a2, a1 + 112);
          if (v11)
          {
            break;
          }

          if (++v9 == v10)
          {
            goto LABEL_15;
          }
        }

        v12 = v11;
        llvm::SmallVectorImpl<char>::operator=(v44, a1 + 7);
        ++v9;
      }

      while (v12 != 2 && v9 != v10);
LABEL_15:
      v14 = v44[0];
      if (v44[1])
      {
        v48 = v50;
        v49 = xmmword_25D0A05B0;
        v15 = sanitizeIdentifier(v44[0], v44[1], &v48, "$_-", 3uLL, 0);
        v17 = v16;
        if (v16)
        {
          v18 = v15;
          v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 1), v16, 0);
          memmove(v19, v18, v17);
        }

        else
        {
          v19 = 0;
        }

        *v30 = v19;
        *&v30[8] = v17;
        v30[16] = 1;
        *&v30[24] = 1;
        *&v30[32] = &v32;
        v31 = 0x600000000;
        v21 = *v30;
        *(v6 + 20) = *&v30[12];
        *(v6 + 8) = v21;
        llvm::SmallVectorImpl<unsigned long>::operator=(v6 + 40, &v30[32]);
        if (*&v30[32] != &v32)
        {
          free(*&v30[32]);
        }

        if (v48 != v50)
        {
          free(v48);
        }

        v14 = v44[0];
      }

      if (v14 != &v44[3])
      {
        free(v14);
      }
    }

    if (a3)
    {
      v22 = -1073741824;
    }

    else
    {
      v22 = 0x40000000;
    }

    *(v6 + 32) = *(v6 + 32) & 0x3FFFFFFF | v22;
    v44[0] = &v44[2];
    v44[1] = 0x600000000;
    memset(&v30[8], 0, 28);
    *v30 = &unk_286E774F8;
    v31 = &v33;
    v32 = 0;
    v33 = a1;
    v34 = a3;
    v35 = v44;
    v36 = 0;
    v38 = 0;
    v42 = 0;
    v43 = 1;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v37 = &unk_286E79E20;
    v23 = *a2;
    v24 = **a2;
    if (v24[3] != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      (*(*v24 + 7))(v24, a2, v30);
LABEL_42:
      v26 = v36;
      v27 = *(a1 + 5) + v29;
      llvm::SmallVectorImpl<unsigned long>::operator=(v27 + 40, v44);
      if (v26)
      {
        v20 = *(v27 + 32) & 0xC0000000 | (v26 + 1) & 0x3FFFFFFF;
        *(v27 + 32) = v20;
      }

      else
      {
        v20 = *(v27 + 32);
      }

      *v30 = &unk_286E774F8;
      llvm::raw_ostream::~raw_ostream(&v37);
      if (v31 != &v33)
      {
        free(v31);
      }

      MEMORY[0x25F891030](*&v30[16], 8);
      if (v44[0] != &v44[2])
      {
        free(v44[0]);
      }

      return v20 & 0x3FFFFFFF;
    }

    if (v23[17] != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v48 = v30;
      (v23[13])(v23[14], a2, _ZN4llvm12function_refIFvN4mlir9AttributeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplENS1_4TypeEEUlT_E_EEvlS2_, &v48, _ZN4llvm12function_refIFvN4mlir4TypeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplES2_EUlT_E_EEvlS2_, &v48);
      goto LABEL_42;
    }

    v25 = *(a2 + 32);
    if (*(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      if ((*(*(a2 + 40) + 8))())
      {
        goto LABEL_40;
      }

      v25 = *(a2 + 32);
    }

    (*(*v30 + 40))(v30, v25);
LABEL_40:
    if (*(a2 + 48))
    {
      (*(*v30 + 40))(v30);
    }

    goto LABEL_42;
  }

  if ((a3 & 1) == 0)
  {
  }

  v20 = *(v6 + 32);
  return v20 & 0x3FFFFFFF;
}

uint64_t llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>>::insert(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 + 1);
  v13 = *a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>(&v15, a1, &v13, &v14);
  if (v16 != 1)
  {
    return *(a1 + 24) + 104 * *(v15 + 8);
  }

  v5 = *(a1 + 32);
  *(v15 + 8) = v5;
  v12 = v4;
  v13 = a2;
  if (v5 >= *(a1 + 36))
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v6 = (*(a1 + 24) + 104 * v5);
    *v6 = *a2;
    v7 = *v4;
    v8 = *(v4 + 12);
    v6[5] = v6 + 7;
    v9 = (v6 + 5);
    *(v9 - 20) = v8;
    *(v9 - 32) = v7;
    *(v9 + 8) = 0x600000000;
    if (*(a2 + 12))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v9, (a2 + 5));
    }

    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(a1 + 24) + 104 * v10 - 104;
}

_anonymous_namespace_::AliasInitializer *anonymous namespace::AliasInitializer::markAliasNonDeferrable(_anonymous_namespace_::AliasInitializer *this, uint64_t a2)
{
  v2 = *(this + 5) + 104 * a2;
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    *(v2 + 32) = v3 & 0x7FFFFFFF;
    v4 = *(v2 + 48);
    if (v4)
    {
      v5 = this;
      v6 = *(v2 + 40);
      v7 = 8 * v4;
      do
      {
        v8 = *v6++;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return this;
}

void anonymous namespace::DummyAliasDialectAsmPrinter::~DummyAliasDialectAsmPrinter(_anonymous_namespace_::DummyAliasDialectAsmPrinter *this)
{
  *this = &unk_286E774F8;
  llvm::raw_ostream::~raw_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  MEMORY[0x25F891030](*(this + 2), 8);
}

{
  *this = &unk_286E774F8;
  llvm::raw_ostream::~raw_ostream((this + 88));
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  MEMORY[0x25F891030](*(this + 2), 8);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::LookupBucketFor<void const*>(a2, a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::InsertIntoBucketImpl<void const*>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::LookupBucketFor<void const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::InsertIntoBucketImpl<void const*>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::LookupBucketFor<void const*>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::grow(uint64_t **a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((16 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::moveFromOldBuckets(a1, v5, v5 + 16 * v4);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0xFFFFFFFFFFFFFFFLL;
    v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 2;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
      if (v18.i8[0])
      {
        *(v17 - 2) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 4;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::LookupBucketFor<void const*>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<void const*&&>,std::tuple<anonymous namespace::AliasInitializer::InProgressAliasInfo&&>>(uint64_t a1, void **a2, __int128 **a3)
{
  v14 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 104, &v14);
  v8 = &v7[104 * *(a1 + 8)];
  v9 = *a3;
  *v8 = **a2;
  v10 = *v9;
  v11 = *(v9 + 12);
  *(v8 + 5) = v8 + 56;
  v12 = (v8 + 40);
  *(v12 - 20) = v11;
  *(v12 - 32) = v10;
  *(v12 + 8) = 0x600000000;
  if (*(v9 + 10))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(v12, (v9 + 2));
  }

  v13 = v14;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v13;
}

void llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (*a1 + 104 * v3 - 64);
    v5 = -104 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 13;
      v5 += 104;
    }

    while (v5);
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,false>::uninitialized_move<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 40);
    v5 = result + 40;
    do
    {
      v6 = v5 - 40;
      *(v4 - 5) = *(v5 - 40);
      v7 = *(v5 - 32);
      *(v4 - 20) = *(v5 - 20);
      *(v4 - 2) = v7;
      *v4 = v4 + 2;
      v4[1] = 0x600000000;
      if (*(v5 + 8))
      {
        result = llvm::SmallVectorImpl<unsigned long>::operator=(v4, v5);
      }

      v4 += 13;
      v5 += 104;
    }

    while (v6 + 104 != a2);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned long>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<unsigned long>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<unsigned long>::assignRemote(uint64_t a1, uint64_t a2)
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

char *sanitizeIdentifier(char *a1, uint64_t a2, unsigned __int8 **a3, void *__s, size_t __n, char a6)
{
  v10 = a1;
  v23[0] = a1;
  v23[1] = a2;
  v22[0] = __s;
  v22[1] = __n;
  v20[2] = a3;
  v21 = v22;
  v20[0] = v23;
  v20[1] = &v21;
  v11 = *a1;
  if ((v11 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x400) == 0) && (((v11 - 48) >= 0xA ? (v12 = ((v11 & 0xDF) - 65) >= 0x1Au) : (v12 = 0), !v12 || __n && ((v13 = memchr(__s, v11, __n), v13 - __s != -1) ? (v14 = v13 == 0) : (v14 = 1), !v14)) || v11 == 32))
  {
    if ((a6 & 1) == 0)
    {
      v15 = v10[a2 - 1];
      if ((v15 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x400) != 0)
      {
        sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v20);
        llvm::SmallVectorTemplateBase<char,true>::push_back(a3, 95);
        return *a3;
      }
    }

    if (!a2)
    {
      return v10;
    }

    v16 = 0;
    while (1)
    {
      v17 = v10[v16];
      v18 = (v17 - 48) >= 0xA && ((v10[v16] & 0xDF) - 65) >= 0x1Au;
      if (v18 && !llvm::StringRef::contains(v22, v17))
      {
        break;
      }

      if (a2 == ++v16)
      {
        return v10;
      }
    }
  }

  else
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(a3, 95);
  }

  sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(v20);
  return *a3;
}

uint64_t llvm::SmallVectorImpl<char>::operator=(uint64_t a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 3;
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = a2[1];
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, a2[1]);
        }
      }

      else
      {
        if (*(a1 + 16) >= v6)
        {
          if (v7)
          {
            memmove(*a1, v4, *(a1 + 8));
          }
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v6, 1);
          v7 = 0;
        }

        v8 = a2[1];
        if (v8 != v7)
        {
          memcpy((*a1 + v7), *a2 + v7, v8 - v7);
        }
      }

      *(a1 + 8) = v6;
      a2[1] = 0;
    }

    else
    {
      llvm::SmallVectorImpl<char>::assignRemote(a1, a2);
    }
  }

  return a1;
}

__n128 llvm::SmallVectorImpl<char>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 24);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a2 + 24;
  return result;
}

void llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v4 = result[1];
  if ((v4 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v4 + 1, 1);
    v4 = result[1];
  }

  *(*result + v4) = a2;
  ++result[1];
}

void sanitizeIdentifier(llvm::StringRef,llvm::SmallString<16u> &,llvm::StringRef,BOOL)::$_1::operator()(unsigned __int8 ***a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*a1)[1];
  if (v2)
  {
    v4 = *v1;
    v5 = &v2[*v1];
    do
    {
      v6 = *v4;
      v7 = (v6 - 48) >= 0xAu && ((v6 & 0xDF) - 65) >= 0x1Au;
      if (v7 && !llvm::StringRef::contains(*a1[1], v6))
      {
        v10 = a1[2];
        if (v6 != 32)
        {
          v11 = &v18;
          if (v6)
          {
            do
            {
              *--v11 = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 & 0xF];
              v12 = v6 > 0xF;
              v6 >>= 4;
            }

            while (v12);
          }

          else
          {
            v17 = 48;
            v11 = &v17;
          }

          std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, v11, &v18, &v18 - v11);
          v13 = v16;
          if (v16 >= 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = __p[0];
          }

          if (v16 < 0)
          {
            v13 = __p[1];
          }

          llvm::SmallVectorImpl<char>::append<char const*,void>(v10, v14, v13 + v14);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_11;
        }

        v8 = a1[2];
        v9 = 95;
      }

      else
      {
        v8 = a1[2];
        v9 = v6;
      }

      llvm::SmallVectorTemplateBase<char,true>::push_back(v8, v9);
LABEL_11:
      ++v4;
    }

    while (v4 != v5);
  }
}

void llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = result[1];
  v8 = v7 + a3 - __src;
  if (result[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = result[1];
  }

  if (__src != a3)
  {
    memcpy((*result + v7), __src, v6);
    v7 = result[1];
  }

  result[1] = v7 + v6;
}

void *std::string::__init_with_size[abi:nn200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void anonymous namespace::DummyAliasDialectAsmPrinter::printType(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(*(a1 + 72), v4);
  if (v3 > *(a1 + 80))
  {
    *(a1 + 80) = v3;
  }
}

void anonymous namespace::DummyAliasDialectAsmPrinter::printAttribute(uint64_t a1, uint64_t *a2)
{
  llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(*(a1 + 72), v4);
  if (v3 > *(a1 + 80))
  {
    *(a1 + 80) = v3;
  }
}

void anonymous namespace::DummyAliasDialectAsmPrinter::printAttributeWithoutType(uint64_t a1, uint64_t *a2)
{
  llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(*(a1 + 72), v4);
  if (v3 > *(a1 + 80))
  {
    *(a1 + 80) = v3;
  }
}

uint64_t anonymous namespace::DummyAliasDialectAsmPrinter::printAlias(uint64_t a1)
{
  (*(*a1 + 40))(a1);
  return 1;
}

{
  (*(*a1 + 32))(a1);
  return 1;
}

void llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v4 + 1, 8);
    LODWORD(v4) = *(result + 8);
  }

  *(*result + 8 * v4) = a2;
  ++*(result + 8);
}

uint64_t anonymous namespace::AliasInitializer::visit(_anonymous_namespace_::AliasInitializer *a1, uint64_t *a2, int a3, char a4)
{
  v69[2] = *MEMORY[0x277D85DE8];
  LOBYTE(v63[0]) = 0;
  LOBYTE(v63[2]) = 0;
  LODWORD(v63[3]) = 0;
  v64 = v66;
  v65 = 0x600000000;
  *v49 = a2;
  *&v49[8] = *v63;
  *&v49[20] = *(&v63[1] + 4);
  v50 = &v52;
  v51 = 0x600000000;
  v10 = v9;
  if (v50 != &v52)
  {
    free(v50);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  if (v10)
  {
    v47 = v8 - *(a1 + 5);
    v48 = a4;
    v63[0] = &v63[3];
    *&v63[1] = xmmword_25D0A05C0;
    v12 = *(*a1 + 32);
    v11 = *(*a1 + 40);
    if (v12 != v11)
    {
      do
      {
        while (1)
        {
          v13 = (*(**v12 + 16))(*v12, a2, a1 + 112);
          if (v13)
          {
            break;
          }

          if (++v12 == v11)
          {
            goto LABEL_15;
          }
        }

        v14 = v13;
        llvm::SmallVectorImpl<char>::operator=(v63, a1 + 7);
        ++v12;
      }

      while (v14 != 2 && v12 != v11);
LABEL_15:
      v16 = v63[0];
      if (v63[1])
      {
        v67 = v69;
        v68 = xmmword_25D0A05B0;
        v17 = sanitizeIdentifier(v63[0], v63[1], &v67, "$_-", 3uLL, 0);
        v19 = v18;
        if (v18)
        {
          v20 = v17;
          v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*(a1 + 1), v18, 0);
          memmove(v21, v20, v19);
        }

        else
        {
          v21 = 0;
        }

        *v49 = v21;
        *&v49[8] = v19;
        v49[16] = 1;
        *&v49[24] = 1;
        *&v49[32] = &v51;
        v50 = 0x600000000;
        v23 = *v49;
        *(v8 + 20) = *&v49[12];
        *(v8 + 8) = v23;
        llvm::SmallVectorImpl<unsigned long>::operator=(v8 + 40, &v49[32]);
        if (*&v49[32] != &v51)
        {
          free(*&v49[32]);
        }

        if (v67 != v69)
        {
          free(v67);
        }

        v16 = v63[0];
      }

      if (v16 != &v63[3])
      {
        free(v16);
      }
    }

    if (a3)
    {
      v24 = 0x80000000;
    }

    else
    {
      v24 = 0;
    }

    *(v8 + 32) = v24 & 0xC0000000 | *(v8 + 32) & 0x3FFFFFFF;
    v63[0] = &v63[2];
    v63[1] = 0x600000000;
    memset(&v49[8], 0, 28);
    *v49 = &unk_286E774F8;
    v50 = &v52;
    v51 = 0;
    v52 = a1;
    v53 = a3;
    v54 = v63;
    v55 = 0;
    v57 = 0;
    v61 = 0;
    v62 = 1;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v56 = &unk_286E79E20;
    v25 = **a2;
    if (v25[3] != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
    {
      (*(*v25 + 5))(v25, a2, v49);
      v26 = v48;
      goto LABEL_34;
    }

    v30 = *(*a2 + 136);
    v26 = v48;
    if (v30 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
LABEL_58:
      v36 = v55;
      v37 = *(a1 + 5) + v47;
      llvm::SmallVectorImpl<unsigned long>::operator=(v37 + 40, v63);
      if (v36)
      {
        v22 = *(v37 + 32) & 0xC0000000 | (v36 + 1) & 0x3FFFFFFF;
        *(v37 + 32) = v22;
      }

      else
      {
        v22 = *(v37 + 32);
      }

      *v49 = &unk_286E774F8;
      llvm::raw_ostream::~raw_ostream(&v56);
      if (v50 != &v52)
      {
        free(v50);
      }

      MEMORY[0x25F891030](*&v49[16], 8);
      if (v63[0] != &v63[2])
      {
        free(v63[0]);
      }

      return v22 & 0x3FFFFFFF;
    }

    if (v30 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID())
    {
      v39 = a2[1];
    }

    else
    {
      v31 = *(*a2 + 136);
      if (v31 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v40 = a2[2];
        if (v40)
        {
          v41 = a2[1];
          v42 = &v41[2 * v40];
          do
          {
            (*(*v49 + 40))(v49, *v41);
            (*(*v49 + 40))(v49, v41[1]);
            v41 += 2;
          }

          while (v41 != v42);
        }

        goto LABEL_34;
      }

      if (v31 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v43 = a2[2];
        if (v43)
        {
          v44 = a2[1];
          v45 = 8 * v43;
          do
          {
            v46 = *v44++;
            (*(*v49 + 40))(v49, v46);
            v45 -= 8;
          }

          while (v45);
        }

        goto LABEL_34;
      }

      if (v31 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        (*(*v49 + 32))(v49, a2[1]);
        goto LABEL_34;
      }

      if (v31 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
      {
        v39 = a2[3];
      }

      else
      {
        if (v31 != &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
        {
          if (v31 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
          {
            (*(*v49 + 40))(v49, a2[1]);
            (*(*v49 + 40))(v49, a2[2]);
          }

          else if (v31 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
          {
            if (a2[3])
            {
              (*(*v49 + 40))(v49);
            }

            v32 = a2[2];
            if (v32)
            {
              v33 = a2[1];
              v34 = 8 * v32;
              do
              {
                v35 = *v33++;
                (*(*v49 + 40))(v49, v35);
                v34 -= 8;
              }

              while (v34);
            }
          }

          goto LABEL_34;
        }

        v39 = a2[2];
        if (*(*v39 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
LABEL_34:
          if ((v26 & 1) == 0)
          {
            v27 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
            if (v27)
            {
              v29 = (*v28)(v28, v27);
              if (*(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
              {
                (*(*v49 + 32))(v49, v29);
              }
            }
          }

          goto LABEL_58;
        }
      }
    }

    (*(*v49 + 40))(v49, v39);
    goto LABEL_34;
  }

  if ((a3 & 1) == 0)
  {
  }

  v22 = *(v8 + 32);
  return v22 & 0x3FFFFFFF;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplENS1_4TypeEEUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 56))();
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeEEE11callback_fnIZN12_GLOBAL__N_127DummyAliasDialectAsmPrinter30printAndVisitNestedAliasesImplES2_EUlT_E_EEvlS2_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**result + 64))();
  }

  return result;
}

uint64_t anonymous namespace::DummyAliasOperationPrinter::print(uint64_t this, mlir::Block *a2, int a3, char a4)
{
  v6 = this;
  if (a3)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
    while (v7 != v8)
    {
      v9 = *v7;
      this = (*(*v6 + 32))(v6, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*(v6 + 16) + 40))
      {
      }

      ++v7;
    }
  }

  v10 = (a2 + 32);
  v11 = *(a2 + 4);
  if (v11 == (a2 + 32))
  {
    v13 = *(a2 + 5);
  }

  else
  {
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
    this = (*(*v11[6] + 32))(v11[6], v12);
    v13 = *(a2 + 5);
    if (this && (a4 & 1) == 0)
    {
      v10 = *v10;
    }
  }

  while (v13 != v10)
  {
    this = (*(*v6 + 208))(v6, v13);
    v13 = v13[1];
  }

  return this;
}

char ***llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[13 * v3 - 8];
    v5 = -104 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 13;
      v5 += 104;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::clear(uint64_t *result)
{
  if (result[1])
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      result[1] = 0;
    }

    else
    {
      return llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::shrink_and_clear(result);
    }
  }

  return result;
}

uint64_t *llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    result[1] = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    MEMORY[0x25F891030](*result, 8);

    return llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::init(v1, v5, v13);
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  v51[6] = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    return;
  }

  v5 = a2;
  v6 = a1;
  if (a3 != 2)
  {
    if (a3 > 0)
    {
      v12 = a4;
      v13 = a3 >> 1;
      v14 = &a1[13 * (a3 >> 1)];
      if (a3 > a5)
      {
        v15 = a3 - v13;

        return;
      }

      v47 = 0;
      v48 = a4;
      *v49 = &v47;
      v47 = a3 >> 1;
      v30 = &v12[13 * v13];
      v47 = a3;
      v31 = &v12[13 * a3];
      v32 = v30;
      while (1)
      {
        if (v32 == v31)
        {
          if (v12 != v30)
          {
            v42 = 0;
            do
            {
              v43 = &v6[v42];
              v44 = &v12[v42];
              *v43 = v12[v42];
              v45 = *&v12[v42 + 1];
              *(v43 + 20) = *(&v12[v42 + 2] + 4);
              *(v43 + 1) = v45;
              llvm::SmallVectorImpl<unsigned long>::operator=(&v6[v42 + 5], &v12[v42 + 5]);
              v42 += 13;
            }

            while (v44 + 13 != v30);
          }

LABEL_66:
          return;
        }

        v33 = *(v32 + 32);
        v34 = *(v12 + 8);
        if ((v33 & 0x3FFFFFFF) == (v34 & 0x3FFFFFFF))
        {
          v35 = v33 & 0x40000000;
          if (((v34 >> 30) & 1) == v35 >> 30)
          {
            if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((v32 + 8), v12 + 1))
            {
              goto LABEL_53;
            }
          }

          else if (!v35)
          {
LABEL_53:
            *v6 = *v12;
            v37 = *(v12 + 1);
            *(v6 + 20) = *(v12 + 20);
            *(v6 + 1) = v37;
            llvm::SmallVectorImpl<unsigned long>::operator=((v6 + 5), (v12 + 5));
            v12 += 13;
            goto LABEL_54;
          }
        }

        else if ((v33 & 0x3FFFFFFFu) >= (v34 & 0x3FFFFFFF))
        {
          goto LABEL_53;
        }

        *v6 = *v32;
        v36 = *(v32 + 8);
        *(v6 + 20) = *(v32 + 20);
        *(v6 + 1) = v36;
        llvm::SmallVectorImpl<unsigned long>::operator=((v6 + 5), v32 + 40);
        v32 += 104;
LABEL_54:
        v6 += 13;
        if (v12 == v30)
        {
          if (v32 != v31)
          {
            v38 = 0;
            do
            {
              v39 = v32 + v38;
              v40 = &v6[v38 / 8];
              *v40 = *(v32 + v38);
              v41 = *(v32 + v38 + 8);
              *(v40 + 20) = *(v32 + v38 + 20);
              *(v40 + 1) = v41;
              llvm::SmallVectorImpl<unsigned long>::operator=(&v6[v38 / 8 + 5], v32 + v38 + 40);
              v38 += 104;
            }

            while ((v39 + 104) != v31);
          }

          goto LABEL_66;
        }
      }
    }

    if (a1 == a2)
    {
      return;
    }

    v16 = a1 + 13;
    if (a1 + 13 == a2)
    {
      return;
    }

    v17 = 0;
    v18 = a1;
    while (1)
    {
      v19 = v18;
      v18 = v16;
      v20 = v19 + 1;
      v21 = *(v19 + 34);
      v22 = *(v19 + 8);
      if ((v21 & 0x3FFFFFFF) == (v22 & 0x3FFFFFFF))
      {
        v23 = v21 & 0x40000000;
        if (((v22 >> 30) & 1) == v23 >> 30)
        {
          if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v19 + 7, v19 + 1))
          {
            goto LABEL_42;
          }
        }

        else if (!v23)
        {
          goto LABEL_42;
        }
      }

      else if ((v21 & 0x3FFFFFFFu) >= (v22 & 0x3FFFFFFF))
      {
        goto LABEL_42;
      }

      v24 = *v18;
      *v49 = *(v19 + 7);
      *&v49[12] = *(v19 + 124);
      v48 = v24;
      v50[0] = v51;
      v50[1] = 0x600000000;
      if (*(v19 + 38))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v50, (v19 + 18));
      }

      v19[13] = *v19;
      *(v18 + 1) = *v20;
      *(v18 + 20) = *(v19 + 20);
      v25 = (v19 + 5);
      llvm::SmallVectorImpl<unsigned long>::operator=((v18 + 5), (v19 + 5));
      if (v19 == v6)
      {
        v19 = v6;
      }

      else
      {
        v26 = v17;
        do
        {
          v27 = *(v6 + v26 - 72);
          if ((*&v49[24] & 0x3FFFFFFF) == (v27 & 0x3FFFFFFF))
          {
            if (((v27 >> 30) & 1) == (*&v49[24] & 0x40000000u) >> 30)
            {
              if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v49, (v6 + v26 - 96)))
              {
                goto LABEL_39;
              }
            }

            else if ((*&v49[24] & 0x40000000) == 0)
            {
              goto LABEL_39;
            }
          }

          else if ((*&v49[24] & 0x3FFFFFFFu) >= (v27 & 0x3FFFFFFF))
          {
            v19 = (v6 + v26);
            v25 = v6 + v26 + 40;
            v20 = (v6 + v26 + 8);
            goto LABEL_39;
          }

          v20 = v19 - 12;
          v28 = v6 + v26;
          *v28 = *(v6 + v26 - 104);
          *(v28 + 8) = *(v6 + v26 - 96);
          *(v28 + 20) = *(v6 + v26 - 84);
          v25 = (v19 - 8);
          llvm::SmallVectorImpl<unsigned long>::operator=(v6 + v26 + 40, v6 + v26 - 64);
          v19 -= 13;
          v26 -= 104;
        }

        while (v26);
        v25 = (v6 + 5);
        v19 = v6;
LABEL_39:
        v5 = a2;
      }

      *v19 = v48;
      v29 = *v49;
      *(v20 + 12) = *&v49[12];
      *v20 = v29;
      llvm::SmallVectorImpl<unsigned long>::operator=(v25, v50);
      if (v50[0] != v51)
      {
        free(v50[0]);
      }

LABEL_42:
      v16 = v18 + 13;
      v17 += 104;
      if (v18 + 13 == v5)
      {
        return;
      }
    }
  }

  v7 = *(a2 - 18);
  v8 = *(a1 + 8);
  if ((v7 & 0x3FFFFFFF) == (v8 & 0x3FFFFFFF))
  {
    v9 = v7 & 0x40000000;
    if (((v8 >> 30) & 1) == v9 >> 30)
    {
      if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(a2 - 6, a1 + 1))
      {
        return;
      }
    }

    else if (!v9)
    {
      return;
    }
  }

  else if ((v7 & 0x3FFFFFFFu) >= (v8 & 0x3FFFFFFF))
  {
    return;
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo> *&>(uint64_t *a1, uint64_t *a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = (a2 + 1);
  *v7 = *(a1 + 1);
  *&v7[12] = *(a1 + 20);
  v8[0] = v9;
  v8[1] = 0x600000000;
  if (*(a1 + 12))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(v8, (a1 + 5));
  }

  v6 = *v5;
  *(a1 + 20) = *(v5 + 12);
  *(a1 + 1) = v6;
  llvm::SmallVectorImpl<unsigned long>::operator=((a1 + 5), (a2 + 5));
  *v5 = *v7;
  *(v5 + 12) = *&v7[12];
  llvm::SmallVectorImpl<unsigned long>::operator=((a2 + 5), v8);
  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::AliasInitializer::initializeAliases(llvm::MapVector<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>,0u>> &,llvm::MapVector<void const*,anonymous namespace::SymbolAlias,llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,llvm::SmallVector<std::pair<void const*,anonymous namespace::SymbolAlias>,0u>> &)::$_0 &,std::pair<void const*,anonymous namespace::AliasInitializer::InProgressAliasInfo>*>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v7 = result;
  if (a3 == 2)
  {
    v63 = a4;
    v64 = &v65;
    v65 = 0;
    v10 = a2 - 12;
    v11 = *(a2 - 18);
    v12 = *(result + 8);
    if ((v11 & 0x3FFFFFFF) == (v12 & 0x3FFFFFFF))
    {
      v13 = v11 & 0x40000000;
      if (((v12 >> 30) & 1) == v13 >> 30)
      {
        if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(a2 - 6, result + 1))
        {
          goto LABEL_39;
        }

LABEL_17:
        *v4 = *(a2 - 13);
        v16 = *v10;
        v17 = *(a2 - 84);
        *(v4 + 40) = v4 + 56;
        *(v4 + 20) = v17;
        *(v4 + 8) = v16;
        *(v4 + 48) = 0x600000000;
        if (*(a2 - 14))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v4 + 40, (a2 - 8));
        }

        ++v65;
        *(v4 + 104) = *v7;
        v18 = *(v7 + 1);
        v19 = *(v7 + 20);
        *(v4 + 144) = v4 + 160;
        v20 = v4 + 144;
        *(v20 - 20) = v19;
        *(v20 - 32) = v18;
        *(v20 + 8) = 0x600000000;
        if (!*(v7 + 12))
        {
          goto LABEL_84;
        }

        v21 = v7 + 5;
        goto LABEL_43;
      }

      if (v13)
      {
        goto LABEL_17;
      }
    }

    else if ((v11 & 0x3FFFFFFFu) < (v12 & 0x3FFFFFFF))
    {
      goto LABEL_17;
    }

LABEL_39:
    *v4 = *v7;
    v34 = *(v7 + 1);
    v35 = *(v7 + 20);
    *(v4 + 40) = v4 + 56;
    *(v4 + 20) = v35;
    *(v4 + 8) = v34;
    *(v4 + 48) = 0x600000000;
    if (*(v7 + 12))
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v4 + 40, (v7 + 5));
    }

    ++v65;
    *(v4 + 104) = *(a2 - 13);
    v36 = *v10;
    v37 = *(a2 - 84);
    *(v4 + 144) = v4 + 160;
    v20 = v4 + 144;
    *(v20 - 20) = v37;
    *(v20 - 32) = v36;
    *(v20 + 8) = 0x600000000;
    if (!*(a2 - 14))
    {
      goto LABEL_84;
    }

    v21 = a2 - 8;
LABEL_43:
    llvm::SmallVectorImpl<unsigned long>::operator=(v20, v21);
    goto LABEL_84;
  }

  if (a3 != 1)
  {
    if (a3 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v63 = a4;
      v64 = &v65;
      v65 = 0;
      *a4 = *result;
      v14 = *(result + 1);
      *(a4 + 20) = *(result + 20);
      *(a4 + 8) = v14;
      *(a4 + 40) = a4 + 56;
      *(a4 + 48) = 0x600000000;
      if (*(result + 12))
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(a4 + 40, (result + 5));
        v15 = v65 + 1;
      }

      else
      {
        v15 = 1;
      }

      v65 = v15;
      v47 = v7 + 13;
      if (v7 + 13 == a2)
      {
        goto LABEL_84;
      }

      v48 = 0;
      v49 = v4;
      while (1)
      {
        v50 = v47;
        v51 = *(v7 + 34);
        v52 = *(v49 + 32);
        if ((v51 & 0x3FFFFFFF) == (v52 & 0x3FFFFFFF))
        {
          v53 = v51 & 0x40000000;
          if (((v52 >> 30) & 1) == v53 >> 30)
          {
            if (std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v7 + 7, (v49 + 8)))
            {
              goto LABEL_65;
            }
          }

          else if (v53)
          {
LABEL_65:
            *(v49 + 104) = *v49;
            *(v49 + 112) = *(v49 + 8);
            *(v49 + 124) = *(v49 + 20);
            *(v49 + 144) = v49 + 160;
            *(v49 + 152) = 0x600000000;
            if (*(v49 + 48))
            {
              llvm::SmallVectorImpl<unsigned long>::operator=(v49 + 144, v49 + 40);
            }

            ++v65;
            v54 = v4;
            if (v49 != v4)
            {
              v55 = v48;
              v54 = v49;
              do
              {
                v56 = *(v7 + 34);
                v57 = *(v4 + v55 - 72);
                if ((v56 & 0x3FFFFFFF) == (v57 & 0x3FFFFFFF))
                {
                  v58 = v56 & 0x40000000;
                  if (((v57 >> 30) & 1) == v58 >> 30)
                  {
                    if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>(v7 + 7, (v4 + v55 - 96)))
                    {
                      v54 = v4 + v55;
                      goto LABEL_82;
                    }
                  }

                  else if (!v58)
                  {
                    goto LABEL_82;
                  }
                }

                else if ((v56 & 0x3FFFFFFFu) >= (v57 & 0x3FFFFFFF))
                {
                  goto LABEL_82;
                }

                v54 -= 104;
                v59 = v4 + v55;
                *v59 = *(v4 + v55 - 104);
                *(v59 + 8) = *(v4 + v55 - 96);
                *(v59 + 20) = *(v4 + v55 - 84);
                llvm::SmallVectorImpl<unsigned long>::operator=(v4 + v55 + 40, v4 + v55 - 64);
                v55 -= 104;
              }

              while (v55);
              v54 = v4;
            }

LABEL_82:
            *v54 = *v50;
            v62 = *(v7 + 7);
            *(v54 + 20) = *(v7 + 124);
            *(v54 + 8) = v62;
            llvm::SmallVectorImpl<unsigned long>::operator=(v54 + 40, (v7 + 18));
            goto LABEL_83;
          }
        }

        else if ((v51 & 0x3FFFFFFFu) < (v52 & 0x3FFFFFFF))
        {
          goto LABEL_65;
        }

        *(v49 + 104) = *v50;
        v60 = *(v7 + 7);
        v61 = *(v7 + 124);
        *(v49 + 144) = v49 + 160;
        *(v49 + 124) = v61;
        *(v49 + 112) = v60;
        *(v49 + 152) = 0x600000000;
        if (*(v7 + 38))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v49 + 144, (v7 + 18));
        }

        ++v65;
LABEL_83:
        v49 += 104;
        v47 = v50 + 13;
        v48 += 104;
        v7 = v50;
        if (v50 + 13 == a2)
        {
          goto LABEL_84;
        }
      }
    }

    v22 = 13 * (a3 >> 1);
    v23 = &result[v22];
    v63 = v4;
    v64 = &v65;
    v65 = 0;
    if (v23 != a2)
    {
      v24 = v4 + 104;
      v25 = v23;
      while (1)
      {
        v26 = *(v25 + 8);
        v27 = *(v7 + 8);
        if ((v26 & 0x3FFFFFFF) == (v27 & 0x3FFFFFFF))
        {
          v28 = v26 & 0x40000000;
          if (((v27 >> 30) & 1) == v28 >> 30)
          {
            if (!std::operator<[abi:nn200100]<llvm::StringRef,llvm::StringRef>((v25 + 1), v7 + 1))
            {
              goto LABEL_32;
            }
          }

          else if (!v28)
          {
LABEL_32:
            *(v24 - 104) = *v7;
            v32 = *(v7 + 1);
            v33 = *(v7 + 20);
            *(v24 - 64) = v24 - 48;
            *(v24 - 84) = v33;
            *(v24 - 96) = v32;
            *(v24 - 56) = 0x600000000;
            if (*(v7 + 12))
            {
              llvm::SmallVectorImpl<unsigned long>::operator=(v24 - 64, (v7 + 5));
            }

            v31 = ++v65;
            v7 += 13;
            goto LABEL_35;
          }
        }

        else if ((v26 & 0x3FFFFFFFu) >= (v27 & 0x3FFFFFFF))
        {
          goto LABEL_32;
        }

        *(v24 - 104) = *v25;
        v29 = *(v25 + 1);
        v30 = *(v25 + 20);
        *(v24 - 64) = v24 - 48;
        *(v24 - 84) = v30;
        *(v24 - 96) = v29;
        *(v24 - 56) = 0x600000000;
        if (*(v25 + 12))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v24 - 64, (v25 + 5));
        }

        v31 = ++v65;
        v25 += 13;
LABEL_35:
        if (v7 == v23)
        {
          if (v25 != a2)
          {
            v42 = 0;
            do
            {
              v43 = &v25[v42];
              *(v24 + v42 * 8) = v25[v42];
              v44 = *&v25[v42 + 1];
              v45 = *(&v25[v42 + 2] + 4);
              *(v24 + v42 * 8 + 40) = v24 + v42 * 8 + 56;
              v46 = v24 + v42 * 8 + 40;
              *(v46 - 20) = v45;
              *(v46 - 32) = v44;
              *(v46 + 8) = 0x600000000;
              if (LODWORD(v25[v42 + 6]))
              {
                llvm::SmallVectorImpl<unsigned long>::operator=(v46, (v43 + 5));
                v31 = v65;
              }

              v65 = ++v31;
              v42 += 13;
            }

            while (v43 + 13 != a2);
          }

          goto LABEL_84;
        }

        v24 += 104;
        if (v25 == a2)
        {
          v4 = v24 - 104;
          goto LABEL_45;
        }
      }
    }

    v31 = 0;
LABEL_45:
    if (v7 != v23)
    {
      v38 = (v4 + 40);
      v39 = (v7 + 5);
      do
      {
        v40 = v39 - 40;
        *(v38 - 5) = *(v39 - 40);
        v41 = *(v39 - 32);
        *(v38 - 20) = *(v39 - 20);
        *(v38 - 2) = v41;
        *v38 = v38 + 2;
        v38[1] = 0x600000000;
        if (*(v39 + 8))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v38, v39);
          v31 = v65;
        }

        v65 = ++v31;
        v38 += 13;
        v39 += 104;
      }

      while ((v40 + 104) != v23);
    }

LABEL_84:
    v63 = 0;
  }

  *a4 = *result;
  v8 = *(result + 1);
  v9 = *(result + 20);
  *(a4 + 40) = a4 + 56;
  *(a4 + 20) = v9;
  *(a4 + 8) = v8;
  *(a4 + 48) = 0x600000000;
  if (*(result + 12))
  {

    return llvm::SmallVectorImpl<unsigned long>::operator=(a4 + 40, (result + 5));
  }

  return result;
}