uint64_t mlir::detail::Parser::parseOptionalAttribute(mlir::detail::Parser *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v5 = *(*(a1 + 1) + 56);
  v6 = (v5 - 4) > 0x3C || ((1 << (v5 - 4)) & 0x10800060C01500E3) == 0;
  if (v6 && ((v9 = v5 - 72, v10 = v9 > 0xA, v11 = (1 << v9) & 0x481, !v10) ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    v16 = 0;
    v13 = mlir::detail::Parser::parseOptionalType(a1, &v16);
    if (v13 & 0x100) != 0 && (v13)
    {
      v14 = v13;
      v15 = mlir::TypeAttr::get(v16);
      v13 = v14;
      *a2 = v15;
    }

    return v13 | (HIBYTE(v13) << 8);
  }

  else
  {
    v7 = mlir::detail::Parser::parseAttribute(a1, a3, a3, a4);
    *a2 = v7;
    return (v7 != 0) | 0x100u;
  }
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3, unsigned int a4)
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

uint64_t buildAttributeAPInt(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v20[1] = a5;
  v21 = a2;
  v20[0] = a4;
  v19 = 1;
  v7 = 10;
  v18 = 0;
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

  result = llvm::StringRef::getAsInteger(v20, v7, &v18);
  if (!result)
  {
    result = mlir::Type::isIndex(&v21);
    if (result)
    {
      v9 = 64;
      v10 = v19;
      v12 = v19 - 64;
      v11 = v19 > 0x40;
      if (v19 >= 0x40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = mlir::Type::getIntOrFloatBitWidth(&v21);
      v9 = result;
      v10 = v19;
      v12 = v19 - result;
      v11 = v19 > result;
      if (v19 >= result)
      {
LABEL_10:
        if (v11)
        {
          if (v10 > 0x40)
          {
            result = llvm::APInt::countLeadingZerosSlowCase(&v18);
            if (result < v12)
            {
              goto LABEL_43;
            }
          }

          else
          {
            result = v10 + __clz(v18) - 64;
            if (result < v12)
            {
              goto LABEL_43;
            }
          }

          result = llvm::APInt::trunc(&v16, &v18, v9);
          if (v19 >= 0x41)
          {
            result = v18;
            if (v18)
            {
              result = MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
            }
          }

          v18 = v16;
          v10 = v17;
          v19 = v17;
        }

        if (!v9)
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
          if (v10 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(&v18);
          }

          else
          {
            v13 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
            if (!v10)
            {
              v13 = 0;
            }

            v18 = v13 & ~v18;
          }

          result = llvm::APInt::operator++(&v18);
          v10 = v19;
          v15 = (v18 + 8 * ((v19 - 1) >> 6));
          if (v19 < 0x41)
          {
            v15 = &v18;
          }

          if (((*v15 >> (v19 - 1)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          result = mlir::Type::isSignedInteger(&v21);
          if (result & 1) != 0 || (result = mlir::Type::isIndex(&v21), (result))
          {
            v10 = v19;
            v14 = (v18 + 8 * ((v19 - 1) >> 6));
            if (v19 < 0x41)
            {
              v14 = &v18;
            }

            if ((*v14 >> (v19 - 1)))
            {
LABEL_43:
              *a1 = 0;
              *(a1 + 16) = 0;
              if (v10 < 0x41)
              {
                return result;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v10 = v19;
          }
        }

LABEL_47:
        *(a1 + 8) = v10;
        *a1 = v18;
        *(a1 + 16) = 1;
        return result;
      }
    }

    llvm::APInt::zext(&v16, &v18, v9);
    if (v19 >= 0x41 && v18)
    {
      MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
    }

    v18 = v16;
    v10 = v17;
    v19 = v17;
    goto LABEL_26;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v19 < 0x41)
  {
    return result;
  }

LABEL_44:
  result = v18;
  if (v18)
  {
    return MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
  }

  return result;
}

void *mlir::detail::Parser::parseElementsLiteralType(mlir::detail::Parser *a1, void *a2)
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
      if (mlir::ElementsAttr::getShapedType(v25))
      {
        Shape = mlir::ShapedType::getShape(v25);
        if (!v5)
        {
          return v25[0];
        }

        v6 = 8 * v5;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
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
              MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
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
              MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
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
  v293 = *MEMORY[0x1E69E9840];
  *&v273 = a3;
  *(&v273 + 1) = a4;
  isSplat = mlir::ElementsAttr::isSplat(&v273);
  if (*(a1 + 104) == 1 && (mlir::Type::isIntOrIndexOrFloat(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    v277 = v273;
    v276 = mlir::ElementsAttr::isSplat(&v277);
    if (!mlir::Type::isIntOrIndexOrFloat(&v276) && *(*v276 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v36 = *a1;
      v281 = 257;
      mlir::detail::Parser::emitError(v36, a2, v280, &v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v278) = 3;
        *(&v278 + 1) = "expected floating-point, integer, or complex element type, got ";
        v279 = 63;
        v37 = &v278;
        v38 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v278 && v283 + 24 * v284 > &v278)
          {
            v260 = &v278 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v38 = v283;
            v37 = v283 + v260;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v37 = &v278;
            v38 = v283;
          }
        }

        v39 = &v38[24 * v284];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          v41 = &v278;
          mlir::DiagnosticArgument::DiagnosticArgument(&v278, v276);
          v42 = v283;
          if (v284 >= v285)
          {
            if (v283 <= &v278 && v283 + 24 * v284 > &v278)
            {
              v262 = &v278 - v283;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
              v42 = v283;
              v41 = v283 + v262;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
              v41 = &v278;
              v42 = v283;
            }
          }

          v43 = &v42[24 * v284];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          ++v284;
          if (v282.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v282);
          }
        }
      }

      if (v292[0] != 1)
      {
        return 0;
      }

      if (v291 != v292)
      {
        free(v291);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v290;
        v47 = __p;
        if (v290 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v290 = v45;
        operator delete(v47);
      }

      v31 = v287;
      if (!v287)
      {
        goto LABEL_236;
      }

      v48 = v288;
      v33 = v287;
      if (v288 == v287)
      {
        goto LABEL_235;
      }

      do
      {
        v50 = *--v48;
        v49 = v50;
        *v48 = 0;
        if (v50)
        {
          MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
        }
      }

      while (v48 != v31);
      goto LABEL_234;
    }

    memset(&v275, 0, sizeof(v275));
    v76 = *a1;
    v278 = *(a1 + 80);
    v279 = *(a1 + 96);
    mlir::Token::getHexStringValue(&v282, &v278);
    if (v283 == 1)
    {
      if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v275.__r_.__value_.__l.__data_);
      }

      v275 = v282;
    }

    else
    {
      SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v278);
      v281 = 259;
      mlir::detail::Parser::emitError(v76, SrcSymbol, v280, &v282);
      v78 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v282);
      }

      if (v292[0] == 1)
      {
        if (v291 != v292)
        {
          free(v291);
        }

        v79 = __p;
        if (__p)
        {
          v80 = v290;
          v81 = __p;
          if (v290 != __p)
          {
            do
            {
              v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
            }

            while (v80 != v79);
            v81 = __p;
          }

          v290 = v79;
          operator delete(v81);
        }

        v82 = v287;
        if (v287)
        {
          v83 = v288;
          v84 = v287;
          if (v288 != v287)
          {
            do
            {
              v86 = *--v83;
              v85 = v86;
              *v83 = 0;
              if (v86)
              {
                MEMORY[0x1AC55A040](v85, 0x1000C8077774924);
              }
            }

            while (v83 != v82);
            v84 = v287;
          }

          v288 = v82;
          operator delete(v84);
        }

        if (v283 != v286)
        {
          free(v283);
        }
      }

      if (!v78)
      {
        goto LABEL_334;
      }
    }

    if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v185 = &v275;
    }

    else
    {
      v185 = v275.__r_.__value_.__r.__words[0];
    }

    if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v275.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v275.__r_.__value_.__l.__size_;
    }

    v274 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v277, *(&v277 + 1), v185, size, &v274))
    {
      result = mlir::DenseElementsAttr::getFromRawBuffer(v277, *(&v277 + 1), v185, size);
      if ((SHIBYTE(v275.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_335:
      v215 = v275.__r_.__value_.__r.__words[0];
      goto LABEL_336;
    }

    v187 = *a1;
    v281 = 257;
    mlir::detail::Parser::emitError(v187, a2, v280, &v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      LODWORD(v278) = 3;
      *(&v278 + 1) = "elements hex data size is invalid for provided type: ";
      v279 = 53;
      v188 = &v278;
      v189 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v278 && v283 + 24 * v284 > &v278)
        {
          v261 = &v278 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v189 = v283;
          v188 = v283 + v261;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v188 = &v278;
          v189 = v283;
        }
      }

      v190 = &v189[24 * v284];
      v191 = *v188;
      *(v190 + 2) = *(v188 + 2);
      *v190 = v191;
      ++v284;
      if (v282.__r_.__value_.__r.__words[0])
      {
        v192 = &v278;
        mlir::DiagnosticArgument::DiagnosticArgument(&v278, v277);
        v193 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v278 && v283 + 24 * v284 > &v278)
          {
            v263 = &v278 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v193 = v283;
            v192 = v283 + v263;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v192 = &v278;
            v193 = v283;
          }
        }

        v194 = &v193[24 * v284];
        v195 = *v192;
        *(v194 + 2) = *(v192 + 2);
        *v194 = v195;
        ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v282);
        }
      }
    }

    if (v292[0] == 1)
    {
      if (v291 != v292)
      {
        free(v291);
      }

      v196 = __p;
      if (__p)
      {
        v197 = v290;
        v198 = __p;
        if (v290 != __p)
        {
          do
          {
            v197 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v197 - 1);
          }

          while (v197 != v196);
          v198 = __p;
        }

        v290 = v196;
        operator delete(v198);
      }

      v199 = v287;
      if (v287)
      {
        v200 = v288;
        v201 = v287;
        if (v288 != v287)
        {
          do
          {
            v203 = *--v200;
            v202 = v203;
            *v200 = 0;
            if (v203)
            {
              MEMORY[0x1AC55A040](v202, 0x1000C8077774924);
            }
          }

          while (v200 != v199);
          v201 = v287;
        }

        v288 = v199;
        operator delete(v201);
      }

      if (v283 != v286)
      {
        free(v283);
      }
    }

LABEL_334:
    result = 0;
    if ((SHIBYTE(v275.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_335;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 8);
    Shape = mlir::ShapedType::getShape(&v273);
    if (v10 != v7 || memcmp(v8, Shape, 8 * v7))
    {
      v11 = *a1;
      v281 = 257;
      mlir::detail::Parser::emitError(v11, a2, v280, &v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v278) = 3;
        *(&v278 + 1) = "inferred shape of elements literal ([";
        v279 = 37;
        v12 = &v278;
        v13 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v278 && v283 + 24 * v284 > &v278)
          {
            v257 = &v278 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v13 = v283;
            v12 = v283 + v257;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v12 = &v278;
            v13 = v283;
          }
        }

        v14 = &v13[24 * v284];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          v16 = *(a1 + 16);
          v17 = *(a1 + 8);
          *&v278 = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v17, &v17[v16], &v282.__r_.__value_.__l.__size_, &v282.__r_.__value_.__l.__size_, &v278);
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v278) = 3;
            *(&v278 + 1) = "]) does not match type ([";
            v279 = 25;
            v18 = &v278;
            v19 = v283;
            if (v284 >= v285)
            {
              if (v283 <= &v278 && v283 + 24 * v284 > &v278)
              {
                v259 = &v278 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v19 = v283;
                v18 = v283 + v259;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v18 = &v278;
                v19 = v283;
              }
            }

            v20 = &v19[24 * v284];
            v21 = *v18;
            *(v20 + 2) = *(v18 + 2);
            *v20 = v21;
            ++v284;
          }
        }
      }

      v22 = mlir::ShapedType::getShape(&v273);
      if (v282.__r_.__value_.__r.__words[0])
      {
        *&v278 = ", ";
        llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v22, &v22[v23], &v282.__r_.__value_.__l.__size_, &v282.__r_.__value_.__l.__size_, &v278);
        if (v282.__r_.__value_.__r.__words[0])
        {
          LODWORD(v278) = 3;
          *(&v278 + 1) = "])";
          v279 = 2;
          v24 = &v278;
          v25 = v283;
          if (v284 >= v285)
          {
            if (v283 <= &v278 && v283 + 24 * v284 > &v278)
            {
              v258 = &v278 - v283;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
              v25 = v283;
              v24 = v283 + v258;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
              v24 = &v278;
              v25 = v283;
            }
          }

          v26 = &v25[24 * v284];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v284;
          if (v282.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v282);
          }
        }
      }

      if (v292[0] != 1)
      {
        return 0;
      }

      if (v291 != v292)
      {
        free(v291);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v290;
        v30 = __p;
        if (v290 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v290 = v28;
        operator delete(v30);
      }

      v31 = v287;
      if (!v287)
      {
LABEL_236:
        if (v283 != v286)
        {
          free(v283);
        }

        return 0;
      }

      v32 = v288;
      v33 = v287;
      if (v288 == v287)
      {
LABEL_235:
        v288 = v31;
        operator delete(v33);
        goto LABEL_236;
      }

      do
      {
        v35 = *--v32;
        v34 = v35;
        *v32 = 0;
        if (v35)
        {
          MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
        }
      }

      while (v32 != v31);
LABEL_234:
      v33 = v287;
      goto LABEL_235;
    }
  }

  if ((*(a1 + 104) & 1) == 0 && *(a1 + 56) == *(a1 + 64))
  {
    v134 = mlir::ShapedType::getShape(&v273);
    if (mlir::ShapedType::getNumElements(v134, v135))
    {
      v136 = *a1;
      v281 = 257;
      mlir::detail::Parser::emitError(v136, a2, v280, &v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v278) = 3;
        *(&v278 + 1) = "parsed zero elements, but type (";
        v279 = 32;
        v137 = &v278;
        v138 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v278 && v283 + 24 * v284 > &v278)
          {
            v265 = &v278 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v138 = v283;
            v137 = v283 + v265;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v137 = &v278;
            v138 = v283;
          }
        }

        v139 = &v138[24 * v284];
        v140 = *v137;
        *(v139 + 2) = *(v137 + 2);
        *v139 = v140;
        ++v284;
        if (v282.__r_.__value_.__r.__words[0])
        {
          v141 = &v278;
          mlir::DiagnosticArgument::DiagnosticArgument(&v278, v273);
          v142 = v283;
          if (v284 >= v285)
          {
            if (v283 <= &v278 && v283 + 24 * v284 > &v278)
            {
              v267 = &v278 - v283;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
              v142 = v283;
              v141 = v283 + v267;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
              v141 = &v278;
              v142 = v283;
            }
          }

          v143 = &v142[24 * v284];
          v144 = *v141;
          *(v143 + 2) = *(v141 + 2);
          *v143 = v144;
          v145 = ++v284;
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v278) = 3;
            *(&v278 + 1) = ") expected at least 1";
            v279 = 21;
            v146 = &v278;
            v147 = v283;
            if (v145 >= v285)
            {
              if (v283 <= &v278 && v283 + 24 * v145 > &v278)
              {
                v269 = &v278 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v145 + 1, 24);
                v147 = v283;
                v146 = v283 + v269;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v145 + 1, 24);
                v146 = &v278;
                v147 = v283;
              }
            }

            v148 = &v147[24 * v284];
            v149 = *v146;
            *(v148 + 2) = *(v146 + 2);
            *v148 = v149;
            ++v284;
            if (v282.__r_.__value_.__r.__words[0])
            {
              mlir::InFlightDiagnostic::report(&v282);
            }
          }
        }
      }

      if (v292[0] != 1)
      {
        return 0;
      }

      if (v291 != v292)
      {
        free(v291);
      }

      v150 = __p;
      if (__p)
      {
        v151 = v290;
        v152 = __p;
        if (v290 != __p)
        {
          do
          {
            v151 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v151 - 1);
          }

          while (v151 != v150);
          v152 = __p;
        }

        v290 = v150;
        operator delete(v152);
      }

      v31 = v287;
      if (!v287)
      {
        goto LABEL_236;
      }

      v153 = v288;
      v33 = v287;
      if (v288 == v287)
      {
        goto LABEL_235;
      }

      do
      {
        v155 = *--v153;
        v154 = v155;
        *v153 = 0;
        if (v155)
        {
          MEMORY[0x1AC55A040](v154, 0x1000C8077774924);
        }
      }

      while (v153 != v31);
      goto LABEL_234;
    }
  }

  v51 = isSplat;
  v52 = *(*isSplat + 136);
  if (v52 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v51 = 0;
  }

  v282.__r_.__value_.__r.__words[0] = v51;
  if (v52 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    isSplat = mlir::AffineMapAttr::getValue(&v282);
    if (mlir::Type::isIntOrIndex(&isSplat))
    {
      goto LABEL_60;
    }

    goto LABEL_127;
  }

  if (!mlir::Type::isIntOrIndex(&isSplat))
  {
LABEL_127:
    v87 = *(*isSplat + 136);
    if (v87 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v87 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v252 = v273;
      mlir::ElementsAttr::isSplat(&v273);
      if (*(a1 + 104) != 1)
      {
        v255 = *(a1 + 56);
        v256 = *(a1 + 64);
        if (v256 != v255)
        {
          if (((v256 - v255) >> 5) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        return mlir::DenseStringElementsAttr::get(v252, *(&v252 + 1), 0, 0);
      }

      mlir::Token::getStringValue((a1 + 80), &v282);
      v253 = SHIBYTE(v282.__r_.__value_.__r.__words[2]);
      v254 = v282.__r_.__value_.__r.__words[0];
      if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v254 = &v282;
      }

      if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v253 = v282.__r_.__value_.__l.__size_;
      }

      v280[0] = v254;
      v280[1] = v253;
      result = mlir::DenseStringElementsAttr::get(v252, *(&v252 + 1), v280, 1);
      if ((SHIBYTE(v282.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v215 = v282.__r_.__value_.__r.__words[0];
LABEL_336:
      v216 = result;
      v217 = v215;
      goto LABEL_392;
    }

    v104 = v52;
    memset(&v275, 0, sizeof(v275));
    *&v277 = isSplat;
    std::vector<llvm::APFloat>::reserve(&v275, (*(a1 + 64) - *(a1 + 56)) >> 5);
    v108 = *(a1 + 56);
    v109 = *(a1 + 64);
    if (v108 == v109)
    {
LABEL_398:
      if (v104 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        result = mlir::DenseElementsAttr::get(v273, *(&v273 + 1), v275.__r_.__value_.__l.__data_, ((v275.__r_.__value_.__l.__size_ - v275.__r_.__value_.__r.__words[0]) >> 5) >> 1);
        v242 = v275.__r_.__value_.__r.__words[0];
        if (!v275.__r_.__value_.__r.__words[0])
        {
          return result;
        }
      }

      else
      {
        result = mlir::DenseElementsAttr::get(v273, *(&v273 + 1), v275.__r_.__value_.__l.__data_, (v275.__r_.__value_.__l.__size_ - v275.__r_.__value_.__r.__words[0]) >> 5);
        v242 = v275.__r_.__value_.__r.__words[0];
        if (!v275.__r_.__value_.__r.__words[0])
        {
          return result;
        }
      }

      goto LABEL_409;
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
          v281 = 257;
          mlir::detail::Parser::emitError(v157, v280, &v282);
          if (v282.__r_.__value_.__r.__words[0])
          {
            LODWORD(v278) = 3;
            *(&v278 + 1) = "expected floating-point elements, but parsed integer";
            v279 = 52;
            v158 = &v278;
            v159 = v283;
            if (v284 >= v285)
            {
              if (v283 <= &v278 && v283 + 24 * v284 > &v278)
              {
                v264 = &v278 - v283;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v159 = v283;
                v158 = v283 + v264;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
                v158 = &v278;
                v159 = v283;
              }
            }

            v160 = &v159[24 * v284];
            v161 = *v158;
            *(v160 + 2) = *(v158 + 2);
            *v160 = v161;
            ++v284;
          }

          v162 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
          if (v282.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v282);
          }

          if (v292[0] == 1)
          {
            if (v291 != v292)
            {
              free(v291);
            }

            v163 = __p;
            if (__p)
            {
              v164 = v290;
              v165 = __p;
              if (v290 != __p)
              {
                do
                {
                  v164 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v164 - 1);
                }

                while (v164 != v163);
                v165 = __p;
              }

              v290 = v163;
              operator delete(v165);
            }

            v166 = v287;
            if (v287)
            {
              v167 = v288;
              v168 = v287;
              if (v288 != v287)
              {
                do
                {
                  v170 = *--v167;
                  v169 = v170;
                  *v167 = 0;
                  if (v170)
                  {
                    MEMORY[0x1AC55A040](v169, 0x1000C8077774924);
                  }
                }

                while (v167 != v166);
                v168 = v287;
              }

              v288 = v166;
              operator delete(v168);
            }

            if (v283 != v286)
            {
              free(v283);
            }
          }

          if (v162)
          {
            goto LABEL_398;
          }

LABEL_408:
          result = 0;
          v242 = v275.__r_.__value_.__r.__words[0];
          if (!v275.__r_.__value_.__r.__words[0])
          {
            return result;
          }

LABEL_409:
          v243 = result;
          v244 = v275.__r_.__value_.__l.__size_;
          v245 = v242;
          if (v275.__r_.__value_.__l.__size_ != v242)
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
                  goto LABEL_414;
                }
              }

              llvm::detail::IEEEFloat::~IEEEFloat(v247);
              v251 = (v250 - 8);
              v247 = (v250 - 32);
            }

            while (v251 != v242);
LABEL_414:
            v245 = v275.__r_.__value_.__r.__words[0];
          }

          v275.__r_.__value_.__l.__size_ = v242;
          operator delete(v245);
          return v243;
        }

        v282.__r_.__value_.__s.__data_[0] = 0;
        LOBYTE(v284) = 0;
        v112 = *a1;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v277);
        Width = mlir::FloatType::getWidth(&v277);
        v115 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v112, &v282, (v108 + 8), v110, FloatSemantics, Width);
        v116 = v115;
        if (v115)
        {
          v117 = v275.__r_.__value_.__l.__size_;
          if (v275.__r_.__value_.__l.__size_ >= v275.__r_.__value_.__r.__words[2])
          {
            v115 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(&v275, &v282);
            v275.__r_.__value_.__l.__size_ = v115;
            if (v284 == 1)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v118 = v282.__r_.__value_.__l.__size_;
            if (llvm::APFloatBase::PPCDoubleDouble(v115) == v118)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat((v117 + 8), &v282.__r_.__value_.__r.__words[1]);
              v115 = v117 + 32;
              v275.__r_.__value_.__l.__size_ = v117 + 32;
              if (v284 == 1)
              {
                goto LABEL_201;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat((v117 + 8), &v282.__r_.__value_.__r.__words[1]);
              v115 = v117 + 32;
              v275.__r_.__value_.__l.__size_ = v117 + 32;
              if (v284 == 1)
              {
                goto LABEL_201;
              }
            }
          }
        }

        else if (v284 == 1)
        {
LABEL_201:
          v131 = v282.__r_.__value_.__l.__size_;
          if (llvm::APFloatBase::PPCDoubleDouble(v115) == v131)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v282.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v282.__r_.__value_.__r.__words[1]);
          }
        }

        if ((v116 & 1) == 0)
        {
          goto LABEL_408;
        }

        goto LABEL_181;
      }

      v119 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue((v108 + 8), v105, v106, v107));
      if ((v120 & 1) == 0)
      {
        v218 = *a1;
        v280[0] = "floating point value too large for attribute";
        v281 = 259;
        mlir::detail::Parser::emitError(v218, v280, &v282);
        v219 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
        if (v282.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v282);
        }

        if (v292[0] == 1)
        {
          if (v291 != v292)
          {
            free(v291);
          }

          v220 = __p;
          if (__p)
          {
            v221 = v290;
            v222 = __p;
            if (v290 != __p)
            {
              do
              {
                v221 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v221 - 1);
              }

              while (v221 != v220);
              v222 = __p;
            }

            v290 = v220;
            operator delete(v222);
          }

          v223 = v287;
          if (v287)
          {
            v224 = v288;
            v225 = v287;
            if (v288 != v287)
            {
              do
              {
                v227 = *--v224;
                v226 = v227;
                *v224 = 0;
                if (v227)
                {
                  MEMORY[0x1AC55A040](v226, 0x1000C8077774924);
                }
              }

              while (v224 != v223);
              v225 = v287;
            }

            v288 = v223;
            operator delete(v225);
          }

          if (v283 != v286)
          {
            free(v283);
          }
        }

        if (v219)
        {
          goto LABEL_398;
        }

        goto LABEL_408;
      }

      v123 = v119;
      if (v110)
      {
        v123 = -v119;
      }

      v124 = llvm::detail::IEEEFloat::IEEEFloat(v280, v123, v120, v121, v122);
      v125 = llvm::APFloatBase::IEEEdouble(v124);
      llvm::APFloat::Storage::Storage(&v282.__r_.__value_.__l.__size_, v280, v125);
      llvm::detail::IEEEFloat::~IEEEFloat(v280);
      isF64 = mlir::Type::isF64(&v277);
      if ((isF64 & 1) == 0)
      {
        LOBYTE(v280[0]) = 0;
        v127 = mlir::FloatType::getFloatSemantics(&v277);
        isF64 = llvm::APFloat::convert(&v282, v127, 1u, v280);
      }

      v128 = v275.__r_.__value_.__l.__size_;
      if (v275.__r_.__value_.__l.__size_ >= v275.__r_.__value_.__r.__words[2])
      {
        v132 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(&v275, &v282);
        v133 = llvm::APFloatBase::PPCDoubleDouble(v132);
        v275.__r_.__value_.__l.__size_ = v132;
        if (v133 != v282.__r_.__value_.__l.__size_)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v129 = v282.__r_.__value_.__l.__size_;
        v130 = llvm::APFloatBase::PPCDoubleDouble(isF64);
        if (v130 == v129)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat((v128 + 8), &v282.__r_.__value_.__r.__words[1]);
          v275.__r_.__value_.__l.__size_ = v128 + 32;
          if (v130 != v282.__r_.__value_.__l.__size_)
          {
LABEL_204:
            llvm::detail::IEEEFloat::~IEEEFloat(&v282.__r_.__value_.__r.__words[1]);
            goto LABEL_181;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat((v128 + 8), &v282.__r_.__value_.__r.__words[1]);
          v275.__r_.__value_.__l.__size_ = v128 + 32;
          if (v130 != v282.__r_.__value_.__l.__size_)
          {
            goto LABEL_204;
          }
        }
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v282.__r_.__value_.__r.__words[1]);
LABEL_181:
      v108 += 32;
      if (v108 == v109)
      {
        goto LABEL_398;
      }
    }
  }

LABEL_60:
  v271 = v52;
  memset(&v275, 0, sizeof(v275));
  *&v277 = isSplat;
  std::vector<llvm::APInt>::reserve(&v275, (*(a1 + 64) - *(a1 + 56)) >> 5);
  isUnsignedInteger = mlir::Type::isUnsignedInteger(&v277);
  v55 = *(a1 + 56);
  v54 = *(a1 + 64);
  if (v55 == v54)
  {
LABEL_377:
    if (v271 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      result = mlir::DenseElementsAttr::get(v273, *(&v273 + 1), v275.__r_.__value_.__l.__data_, ((v275.__r_.__value_.__l.__size_ - v275.__r_.__value_.__r.__words[0]) >> 4) >> 1);
      v239 = v275.__r_.__value_.__r.__words[0];
      if (v275.__r_.__value_.__r.__words[0])
      {
        goto LABEL_384;
      }
    }

    else
    {
      result = mlir::DenseElementsAttr::get(v273, *(&v273 + 1), v275.__r_.__value_.__l.__data_, (v275.__r_.__value_.__l.__size_ - v275.__r_.__value_.__r.__words[0]) >> 4);
      v239 = v275.__r_.__value_.__r.__words[0];
      if (v275.__r_.__value_.__r.__words[0])
      {
        goto LABEL_384;
      }
    }

    return result;
  }

  v56 = isUnsignedInteger;
  while (1)
  {
    v57 = (v55 + 8);
    v58 = *v55;
    v59 = ZinCcdmaLayerMirInfo::GetSrcSymbol((v55 + 8));
    if ((v58 & v56) == 1)
    {
      v171 = *a1;
      v281 = 257;
      mlir::detail::Parser::emitError(v171, v59, v280, &v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v278) = 3;
        *(&v278 + 1) = "expected unsigned integer elements, but parsed negative value";
        v279 = 61;
        v172 = &v278;
        v173 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v278 && v283 + 24 * v284 > &v278)
          {
            v266 = &v278 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v173 = v283;
            v172 = v283 + v266;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v172 = &v278;
            v173 = v283;
          }
        }

        v174 = &v173[24 * v284];
        v175 = *v172;
        *(v174 + 2) = *(v172 + 2);
        *v174 = v175;
        ++v284;
      }

      v176 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v282);
      }

      if (v292[0] == 1)
      {
        if (v291 != v292)
        {
          free(v291);
        }

        v177 = __p;
        if (__p)
        {
          v178 = v290;
          v179 = __p;
          if (v290 != __p)
          {
            do
            {
              v178 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v178 - 1);
            }

            while (v178 != v177);
            v179 = __p;
          }

          v290 = v177;
          operator delete(v179);
        }

        v180 = v287;
        if (!v287)
        {
          goto LABEL_374;
        }

        v181 = v288;
        v182 = v287;
        if (v288 == v287)
        {
          goto LABEL_373;
        }

        do
        {
          v184 = *--v181;
          v183 = v184;
          *v181 = 0;
          if (v184)
          {
            MEMORY[0x1AC55A040](v183, 0x1000C8077774924);
          }
        }

        while (v181 != v180);
        goto LABEL_372;
      }

      goto LABEL_376;
    }

    v60 = *v57;
    if (*v57 != 59 && v60 != 79)
    {
      break;
    }

    if (!mlir::Type::isInteger(&v277, 1))
    {
      v204 = *a1;
      v281 = 257;
      mlir::detail::Parser::emitError(v204, v59, v280, &v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        LODWORD(v278) = 3;
        *(&v278 + 1) = "expected i1 type for 'true' or 'false' values";
        v279 = 45;
        v205 = &v278;
        v206 = v283;
        if (v284 >= v285)
        {
          if (v283 <= &v278 && v283 + 24 * v284 > &v278)
          {
            v268 = &v278 - v283;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v206 = v283;
            v205 = v283 + v268;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
            v205 = &v278;
            v206 = v283;
          }
        }

        v207 = &v206[24 * v284];
        v208 = *v205;
        *(v207 + 2) = *(v205 + 2);
        *v207 = v208;
        ++v284;
      }

      v176 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
      if (v282.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v282);
      }

      if (v292[0] == 1)
      {
        if (v291 != v292)
        {
          free(v291);
        }

        v209 = __p;
        if (__p)
        {
          v210 = v290;
          v211 = __p;
          if (v290 != __p)
          {
            do
            {
              v210 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v210 - 1);
            }

            while (v210 != v209);
            v211 = __p;
          }

          v290 = v209;
          operator delete(v211);
        }

        v180 = v287;
        if (!v287)
        {
          goto LABEL_374;
        }

        v212 = v288;
        v182 = v287;
        if (v288 == v287)
        {
          goto LABEL_373;
        }

        do
        {
          v214 = *--v212;
          v213 = v214;
          *v212 = 0;
          if (v214)
          {
            MEMORY[0x1AC55A040](v213, 0x1000C8077774924);
          }
        }

        while (v212 != v180);
        goto LABEL_372;
      }

LABEL_376:
      if (v176)
      {
        goto LABEL_377;
      }

      goto LABEL_383;
    }

    v64 = *v57 == 79;
    LODWORD(v282.__r_.__value_.__r.__words[1]) = 1;
    v282.__r_.__value_.__r.__words[0] = v64;
    v65 = v275.__r_.__value_.__l.__size_;
    if (v275.__r_.__value_.__l.__size_ >= v275.__r_.__value_.__r.__words[2])
    {
      v275.__r_.__value_.__l.__size_ = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(&v275.__r_.__value_.__l.__data_, &v282);
      if (LODWORD(v282.__r_.__value_.__r.__words[1]) >= 0x41)
      {
LABEL_77:
        if (v282.__r_.__value_.__r.__words[0])
        {
          MEMORY[0x1AC55A040](v282.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
        }
      }
    }

    else
    {
      *(v275.__r_.__value_.__l.__size_ + 8) = 1;
      *v65 = v64;
      v275.__r_.__value_.__l.__size_ = (v65 + 2);
      if (LODWORD(v282.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        goto LABEL_77;
      }
    }

LABEL_63:
    v55 += 32;
    if (v55 == v54)
    {
      goto LABEL_377;
    }
  }

  if (v60 == 9)
  {
    v228 = *a1;
    v281 = 257;
    mlir::detail::Parser::emitError(v228, v59, v280, &v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      LODWORD(v278) = 3;
      *(&v278 + 1) = "expected integer elements, but parsed floating-point";
      v279 = 52;
      v229 = &v278;
      v230 = v283;
      if (v284 >= v285)
      {
        if (v283 <= &v278 && v283 + 24 * v284 > &v278)
        {
          v270 = &v278 - v283;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v230 = v283;
          v229 = v283 + v270;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v283, v286, v284 + 1, 24);
          v229 = &v278;
          v230 = v283;
        }
      }

      v231 = &v230[24 * v284];
      v232 = *v229;
      *(v231 + 2) = *(v229 + 2);
      *v231 = v232;
      ++v284;
    }

    v176 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

    if (v292[0] == 1)
    {
      if (v291 != v292)
      {
        free(v291);
      }

      v233 = __p;
      if (__p)
      {
        v234 = v290;
        v235 = __p;
        if (v290 != __p)
        {
          do
          {
            v234 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v234 - 1);
          }

          while (v234 != v233);
          v235 = __p;
        }

        v290 = v233;
        operator delete(v235);
      }

      v180 = v287;
      if (!v287)
      {
        goto LABEL_374;
      }

      v236 = v288;
      v182 = v287;
      if (v288 == v287)
      {
LABEL_373:
        v288 = v180;
        operator delete(v182);
LABEL_374:
        if (v283 != v286)
        {
          free(v283);
        }

        goto LABEL_376;
      }

      do
      {
        v238 = *--v236;
        v237 = v238;
        *v236 = 0;
        if (v238)
        {
          MEMORY[0x1AC55A040](v237, 0x1000C8077774924);
        }
      }

      while (v236 != v180);
LABEL_372:
      v182 = v287;
      goto LABEL_373;
    }

    goto LABEL_376;
  }

  buildAttributeAPInt(&v278, v277, v58 & 1, *(v55 + 2), *(v55 + 3));
  v61 = v279;
  if (v279)
  {
    v62 = v275.__r_.__value_.__l.__size_;
    if (v275.__r_.__value_.__l.__size_ >= v275.__r_.__value_.__r.__words[2])
    {
      v75 = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(&v275.__r_.__value_.__l.__data_, &v278);
    }

    else
    {
      v63 = DWORD2(v278);
      *(v275.__r_.__value_.__l.__size_ + 8) = DWORD2(v278);
      if (v63 > 0x40)
      {
        llvm::APInt::initSlowCase(v62, &v278);
      }

      *v62 = v278;
      v75 = (v62 + 16);
    }

    v275.__r_.__value_.__l.__size_ = v75;
  }

  else
  {
    v66 = *a1;
    v280[0] = "integer constant out of range for type";
    v281 = 259;
    mlir::detail::Parser::emitError(v66, v59, v280, &v282);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v282);
    if (v282.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v282);
    }

    if (v292[0] == 1)
    {
      if (v291 != v292)
      {
        free(v291);
      }

      v67 = __p;
      if (__p)
      {
        v68 = v290;
        v69 = __p;
        if (v290 != __p)
        {
          do
          {
            v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
          }

          while (v68 != v67);
          v69 = __p;
        }

        v290 = v67;
        operator delete(v69);
      }

      v70 = v287;
      if (v287)
      {
        v71 = v288;
        v72 = v287;
        if (v288 != v287)
        {
          do
          {
            v74 = *--v71;
            v73 = v74;
            *v71 = 0;
            if (v74)
            {
              MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
            }
          }

          while (v71 != v70);
          v72 = v287;
        }

        v288 = v70;
        operator delete(v72);
      }

      if (v283 != v286)
      {
        free(v283);
      }
    }
  }

  if (v279 == 1 && DWORD2(v278) >= 0x41 && v278)
  {
    MEMORY[0x1AC55A040](v278, 0x1000C8000313F17);
  }

  if (v61)
  {
    goto LABEL_63;
  }

  if (v4)
  {
    goto LABEL_377;
  }

LABEL_383:
  result = 0;
  v239 = v275.__r_.__value_.__r.__words[0];
  if (v275.__r_.__value_.__r.__words[0])
  {
LABEL_384:
    v216 = result;
    v240 = v275.__r_.__value_.__l.__size_;
    v217 = v239;
    if (v275.__r_.__value_.__l.__size_ != v239)
    {
      do
      {
        v241 = *(v240 - 2);
        v240 -= 2;
        if (v241 >= 0x41 && *v240)
        {
          MEMORY[0x1AC55A040](*v240, 0x1000C8000313F17);
        }
      }

      while (v240 != v239);
      v217 = v275.__r_.__value_.__r.__words[0];
    }

    v275.__r_.__value_.__l.__size_ = v239;
LABEL_392:
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

  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(v3);
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
  mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator() const(void)::{lambda(void)#1}::operator()(a1, SrcSymbol);
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
  v64 = *MEMORY[0x1E69E9840];
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
      mlir::detail::Parser::emitError(v2, v51, &v53);
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
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
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
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v51[0] = "expected integer or floating point literal";
  v52 = 259;
  mlir::detail::Parser::emitError(v21, v51, &v53);
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
        MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
      }
    }

    while (v44 != v29);
    goto LABEL_66;
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
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
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

void std::vector<llvm::APInt>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }
}

_DWORD *std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(void **a1, const llvm::APInt *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
        MEMORY[0x1AC55A040](*v9, 0x1000C8000313F17);
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

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
            MEMORY[0x1AC55A040](v8, 0x1000C8077774924);
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
  v72 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  LOBYTE(StringAttr) = 0;
  v57 = 0;
  v3 = *(v2 + 8);
  v4 = (v3 + 7);
  v5 = *(v3 + 14);
  if (v5 == 3 || v5 == 12)
  {
LABEL_6:
    v8 = v3[8];
    v7 = v3[9];
    LOWORD(v63) = 261;
    *&v60 = v8;
    *(&v60 + 1) = v7;
    v57 = 1;
    StringAttr = mlir::Builder::getStringAttr(v2, &v60);
    goto LABEL_7;
  }

  if (v5 != 11)
  {
    if (!mlir::Token::isKeyword(v4))
    {
      v58.__r_.__value_.__r.__words[0] = "expected attribute name";
      v59 = 259;
      mlir::detail::Parser::emitWrongTokenError(v2, &v58, &v60);
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v71 != 1)
      {
        return v22;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v69;
        v48 = __p;
        if (v69 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v69 = v46;
        operator delete(v48);
      }

      v26 = v66;
      if (v66)
      {
        v49 = v67;
        v28 = v66;
        if (v67 != v66)
        {
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

          while (v49 != v26);
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }

    v3 = *(v2 + 8);
    goto LABEL_6;
  }

  mlir::Token::getStringValue(v4, &v58);
  LOWORD(v63) = 260;
  *&v60 = &v58;
  v57 = 1;
  StringAttr = mlir::Builder::getStringAttr(v2, &v60);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_7:
  mlir::OpaqueAttr::getAttrData(&StringAttr);
  if (!v9)
  {
    v58.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v59 = 259;
    mlir::detail::Parser::emitError(v2, &v58, &v60);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v22;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v69;
      v25 = __p;
      if (v69 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v69 = v23;
      operator delete(v25);
    }

    v26 = v66;
    if (v66)
    {
      v27 = v67;
      v28 = v66;
      if (v67 != v66)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        goto LABEL_75;
      }

LABEL_76:
      v67 = v26;
      operator delete(v28);
    }

LABEL_77:
    if (v62 != v65)
    {
      free(v62);
    }

    return v22;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(a1 + 8), &StringAttr, &v60);
  if ((v61 & 1) == 0)
  {
    v54 = "duplicate key '";
    v55 = 259;
    mlir::detail::Parser::emitError(v2, &v54, &v60);
    AttrData = mlir::OpaqueAttr::getAttrData(&StringAttr);
    if (v60)
    {
      v59 = 261;
      v58.__r_.__value_.__r.__words[0] = AttrData;
      v58.__r_.__value_.__l.__size_ = v32;
      mlir::Diagnostic::operator<<(&v60 + 8, &v58.__r_.__value_.__l.__data_);
      if (v60)
      {
        LODWORD(v58.__r_.__value_.__l.__data_) = 3;
        v58.__r_.__value_.__l.__size_ = "' in dictionary attribute";
        v58.__r_.__value_.__r.__words[2] = 25;
        v33 = &v58;
        v34 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v63 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v34 = v62;
            v33 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v33 = &v58;
            v34 = v62;
          }
        }

        v35 = &v34[24 * v63];
        v36 = *&v33->__r_.__value_.__l.__data_;
        *(v35 + 2) = *(&v33->__r_.__value_.__l + 2);
        *v35 = v36;
        ++v63;
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v22;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v69;
      v39 = __p;
      if (v69 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v69 = v37;
      operator delete(v39);
    }

    v26 = v66;
    if (v66)
    {
      v40 = v67;
      v28 = v66;
      if (v67 != v66)
      {
        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v26);
LABEL_75:
        v28 = v66;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v10 = *(v2 + 8);
  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken(&v60, (*(v2 + 8) + 8));
  v11 = *(v2 + 8);
  *(v11 + 56) = v60;
  *(v11 + 72) = v61;
  *&v60 = mlir::OpaqueAttr::getAttrData(&StringAttr);
  *(&v60 + 1) = v12;
  v58.__r_.__value_.__s.__data_[0] = 46;
  v13 = llvm::StringRef::find(&v60, &v58, 1uLL, 0);
  if (v13 != -1 && *(&v60 + 1) > v13 + 1)
  {
    mlir::MLIRContext::getOrLoadDialect(***(v2 + 8), v60, v13);
  }

  v15 = *(v2 + 8);
  if (*(v15 + 56) == 18)
  {
    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken(&v60, (*(v2 + 8) + 8));
    v16 = *(v2 + 8);
    *(v16 + 56) = v60;
    *(v16 + 72) = v61;
    v17 = mlir::detail::Parser::parseAttribute(v2, 0);
    if (!v17)
    {
      return 0;
    }

    v18 = *(a1 + 16);
    ZinMirCacheTensors::ZinMirCacheTensors(&v60, StringAttr, v17);
    v20 = *(&v60 + 1);
    v19 = v60;
    v21 = v18;
  }

  else
  {
    v43 = *(a1 + 16);
    v44 = StringAttr;
    UnitAttr = mlir::Builder::getUnitAttr(v2, v14);
    ZinMirCacheTensors::ZinMirCacheTensors(&v60, v44, UnitAttr);
    v20 = *(&v60 + 1);
    v19 = v60;
    v21 = v43;
  }

  mlir::NamedAttrList::push_back(v21, v19, v20);
  return 1;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = &v7[2 * v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[2 * v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[2 * (v18 & v8)];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[2 * v14];
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

unsigned int *llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(unsigned int *result, unsigned int a2)
{
  v2 = result;
  v58[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v6 = *(result + 1);
    v7 = result[4];
    if (a2 > 4)
    {
      v23 = a2;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      *(v2 + 1) = buffer;
      *(v2 + 2) = v23;
      v25 = *v2;
      v8 = (v6 + 8 * v7);
      *v2 = *v2 & 1;
      if ((v25 & 1) == 0)
      {
        v26 = buffer + 2 * v23;
        v27 = 8 * v23 - 8;
        if (v27 < 0x18)
        {
          v29 = buffer;
          goto LABEL_28;
        }

LABEL_22:
        v28 = (v27 >> 3) + 1;
        v29 = buffer + 2 * (v28 & 0x3FFFFFFFFFFFFFFCLL);
        v30 = buffer + 1;
        v31 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30[-1] = v31;
          *v30 = v31;
          v30 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_29:
          if (v7)
          {
            v33 = v6;
            do
            {
              v39 = *v33;
              if ((*v33 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v2)
                {
                  v35 = 3;
                  v34 = v2 + 2;
                }

                else
                {
                  v34 = *(v2 + 1);
                  v35 = v2[4] - 1;
                }

                v36 = v35 & ((v39 >> 4) ^ (v39 >> 9));
                v37 = &v34[2 * v36];
                v38 = *v37;
                if (v39 != *v37)
                {
                  v40 = 0;
                  v41 = 1;
                  while (v38 != -4096)
                  {
                    if (v40)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      v42 = v38 == -8192;
                    }

                    if (v42)
                    {
                      v40 = v37;
                    }

                    v43 = v36 + v41++;
                    v36 = v43 & v35;
                    v37 = &v34[2 * (v43 & v35)];
                    v38 = *v37;
                    if (v39 == *v37)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v40)
                  {
                    v37 = v40;
                  }
                }

LABEL_33:
                *v37 = v39;
                *v2 += 2;
              }

              v33 = (v33 + 8);
            }

            while (v33 != v8);
          }

          llvm::deallocate_buffer(v6, (8 * v7));
        }

        do
        {
LABEL_28:
          *v29 = -4096;
          v29 += 2;
        }

        while (v29 != v26);
        goto LABEL_29;
      }
    }

    else
    {
      v8 = (v6 + 8 * v7);
      *result = 1;
    }

    v26 = v2 + 10;
    buffer = (v2 + 2);
    v27 = 24;
    goto LABEL_22;
  }

  v9 = &v57;
  if ((*(result + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(result + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v57 = *(result + 1);
    v9 = v58;
    v10 = *(result + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v11 = *(result + 3);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  *v9++ = v10;
  v11 = *(result + 3);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v12 = *(result + 4);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *v9++ = v11;
  v12 = *(result + 4);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v13 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *v9++ = v12;
  v13 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v13 & 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_58:
    v16 = v2 + 10;
    v15 = v2 + 2;
    v17 = 24;
    goto LABEL_16;
  }

LABEL_57:
  *result = v13 & 0xFFFFFFFE;
  v44 = a2;
  result = llvm::allocate_buffer(8 * a2, 8uLL);
  *(v2 + 1) = result;
  *(v2 + 2) = v44;
  v45 = *v2;
  *v2 = *v2 & 1;
  if (v45)
  {
    goto LABEL_58;
  }

LABEL_14:
  v14 = v2[4];
  if (!v14)
  {
    goto LABEL_61;
  }

  v15 = *(v2 + 1);
  v16 = &v15[2 * v14];
  v17 = v16 - v15 - 8;
  if (v17 < 0x18)
  {
    v19 = *(v2 + 1);
    do
    {
LABEL_60:
      *v19 = -4096;
      v19 += 2;
    }

    while (v19 != v16);
    goto LABEL_61;
  }

LABEL_16:
  v18 = (v17 >> 3) + 1;
  v19 = &v15[2 * (v18 & 0x3FFFFFFFFFFFFFFCLL)];
  v20 = (v15 + 4);
  v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20[-1] = v21;
    *v20 = v21;
    v20 += 2;
    v22 -= 4;
  }

  while (v22);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_60;
  }

LABEL_61:
  if (&v57 != v9)
  {
    v46 = &v57;
    do
    {
      v52 = *v46;
      if ((*v46 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v2)
        {
          v48 = 3;
          v47 = v2 + 2;
        }

        else
        {
          v47 = *(v2 + 1);
          v48 = v2[4] - 1;
        }

        v49 = v48 & ((v52 >> 4) ^ (v52 >> 9));
        v50 = &v47[2 * v49];
        v51 = *v50;
        if (v52 != *v50)
        {
          v53 = 0;
          v54 = 1;
          while (v51 != -4096)
          {
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v51 == -8192;
            }

            if (v55)
            {
              v53 = v50;
            }

            v56 = v49 + v54++;
            v49 = v56 & v48;
            v50 = &v47[2 * (v56 & v48)];
            v51 = *v50;
            if (v52 == *v50)
            {
              goto LABEL_65;
            }
          }

          if (v53)
          {
            v50 = v53;
          }
        }

LABEL_65:
        *v50 = v52;
        *v2 += 2;
      }

      ++v46;
    }

    while (v46 != v9);
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
          MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
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
          MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
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
          MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
        }
      }

      while (v30 != v22);
      goto LABEL_60;
    }
  }

LABEL_64:
  if (v44 == 1 && v43 >= 0x41 && v42)
  {
    MEMORY[0x1AC55A040](v42, 0x1000C8000313F17);
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
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
  v63 = *MEMORY[0x1E69E9840];
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
                v10 = COERCE_DOUBLE(MEMORY[0x1AC55A040](v50, 0x1000C8000313F17));
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
  mlir::detail::Parser::emitError(v2, v45, &v50);
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
            MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
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
  v49 = xmmword_1A75D94D0;
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
        if (v43 != v42)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
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
              MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
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
            MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
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
              MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
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
  v112 = *MEMORY[0x1E69E9840];
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

  *&v100 = v11;
  *(&v100 + 1) = v12 - (v12 != 0);
  if (v9 == 2 && v12 <= 1)
  {
    v44 = mlir::detail::Parser::codeCompleteDialectSymbol(a1);
    goto LABEL_69;
  }

  v88 = v5;
  LocRange = mlir::Token::getLocRange(v8);
  v89 = v15;
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 1) + 56));
  v17 = *(a1 + 1);
  *(v17 + 96) = *(v17 + 72);
  *(v17 + 80) = *(v17 + 56);
  mlir::Lexer::lexToken(&v101, (*(a1 + 1) + 8));
  v18 = *(a1 + 1);
  *(v18 + 56) = v101;
  *(v18 + 72) = v102;
  LOBYTE(v101) = 46;
  v19 = llvm::StringRef::find(&v100, &v101, 1uLL, 0);
  v90 = LocRange;
  if (v19 == -1)
  {
    v28 = SrcSymbol;
    v26 = 0;
    v98 = 0;
    v99 = 0;
    v97 = v100;
    v22 = *(&v100 + 1);
    v23 = v100;
  }

  else
  {
    v22 = *(&v100 + 1);
    v23 = v100;
    if (v19 >= *(&v100 + 1))
    {
      v24 = *(&v100 + 1);
    }

    else
    {
      v24 = v19;
    }

    if (*(&v100 + 1) >= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = *(&v100 + 1);
    }

    v26 = v100 + v25;
    *&v97 = v100;
    *(&v97 + 1) = v24;
    v27 = (*(&v100 + 1) - v25);
    v98 = v100 + v25;
    v99 = (*(&v100 + 1) - v25);
    v28 = SrcSymbol;
    if (*(&v100 + 1) != v25)
    {
      v29 = 1;
      v30 = v100 + v25;
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
          if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v98, &v101))
          {
            goto LABEL_68;
          }

          v30 = v98;
          v27 = v99;
        }
      }

      else
      {
        v98 = v97 + *(&v97 + 1);
        v99 = 0;
        LOBYTE(v101) = 0;
        if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v98, &v101))
        {
          goto LABEL_68;
        }

        v46 = v99 != 0;
        if (v99)
        {
          v30 = v98 + 1;
        }

        else
        {
          v30 = v98;
        }

        v27 = &v99[-v46];
        v98 = v30;
        v99 -= v46;
        if ((v101 & 1) == 0)
        {
          if (v27 >= v27 - 1)
          {
            --v27;
          }

          v99 = v27;
        }

        v26 = v28;
      }

      v47 = v97;
      v91[0] = v26;
      v48 = *(a1 + 1);
      v49 = a2;
      if (*(v48 + 56) != 15 || (*(v48 + 80) = *(v48 + 56), *(v48 + 96) = *(v48 + 72), mlir::Lexer::lexToken(&v101, (*(a1 + 1) + 8)), v50 = *(a1 + 1), *(v50 + 56) = v101, *(v50 + 72) = v102, (v49 = mlir::detail::Parser::parseType(a1)) != 0))
      {
        Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v47, *(&v47 + 1));
        if (!Dialect)
        {
          *&v94 = a1;
          *(&v94 + 1) = v91;
          LOWORD(v104) = 261;
          v101 = v47;
          v59 = mlir::StringAttr::get(v88, &v101);
          if (!v49)
          {
            v49 = mlir::NoneType::get(v88, v58);
          }

          mlir::OpaqueAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v94, v59, v30, v27, v49);
        }

        v52 = Dialect;
        v53 = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 1) + 56));
        v54 = *(a1 + 1);
        *(v54 + 40) = v30;
        mlir::Lexer::lexToken(&v101, (v54 + 8));
        v55 = *(a1 + 1);
        *(v55 + 56) = v101;
        *(v55 + 72) = v102;
        *(&v101 + 1) = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(a1 + 1) + 56));
        v102 = a1;
        LOBYTE(v103) = 0;
        *&v101 = &unk_1F19F9608;
        v104 = v30;
        v105[0] = v27;
        v44 = (*(*v52 + 32))(v52, &v101, v49);
        v56 = *(a1 + 1);
        *(v56 + 40) = v53;
        mlir::Lexer::lexToken(&v94, (v56 + 8));
        v57 = *(a1 + 1);
        *(v57 + 56) = v94;
        *(v57 + 72) = v95;
        ZinIrHalH13g::~ZinIrHalH13g(&v101);
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
    v93 = 1283;
    v91[0] = "undefined symbol alias id '";
    v92 = v100;
    *&v94 = v91;
    v95 = "'";
    v96 = 770;
    mlir::detail::Parser::emitWrongTokenError(a1, &v94, &v101);
    if (v101)
    {
      mlir::InFlightDiagnostic::report(&v101);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v109;
        v38 = __p;
        if (v109 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v109 = v36;
        operator delete(v38);
      }

      v39 = v106;
      if (v106)
      {
        v40 = v107;
        v41 = v106;
        if (v107 != v106)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
            }
          }

          while (v40 != v39);
          v41 = v106;
        }

        v107 = v39;
        operator delete(v41);
      }

      if (v103 != v105)
      {
        free(v103);
      }
    }

    goto LABEL_68;
  }

  v45 = *v7;
  if (v6)
  {
    mlir::AsmParserState::addAttrAliasUses(v6, v100, *(&v100 + 1), v90, v89);
  }

  v44 = *(*(v45 + 8 * v35) + 8);
LABEL_69:
  if (v44)
  {
    v60 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v44);
    *&v97 = v60;
    *(&v97 + 1) = v61;
    if (!a2)
    {
      return v44;
    }
  }

  else
  {
    v60 = 0;
    v97 = 0uLL;
    if (!a2)
    {
      return v44;
    }
  }

  if (v60 && mlir::FunctionOpInterface::getFunctionType(&v97) != a2)
  {
    *&v94 = "attribute type different than expected: expected ";
    v96 = 259;
    mlir::detail::Parser::emitError(a1, &v94, &v101);
    if (v101)
    {
      v62 = v91;
      mlir::DiagnosticArgument::DiagnosticArgument(v91, a2);
      v63 = v103;
      if (v104 >= HIDWORD(v104))
      {
        if (v103 <= v91 && v103 + 24 * v104 > v91)
        {
          v85 = v91 - v103;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 24);
          v63 = v103;
          v62 = v103 + v85;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 24);
          v62 = v91;
          v63 = v103;
        }
      }

      v64 = &v63[24 * v104];
      v65 = *v62;
      *(v64 + 2) = *(v62 + 2);
      *v64 = v65;
      v66 = (v104 + 1);
      LODWORD(v104) = v104 + 1;
      if (v101)
      {
        LODWORD(v91[0]) = 3;
        v91[1] = ", but got ";
        *&v92 = 10;
        v67 = v91;
        v68 = v103;
        if (v66 >= HIDWORD(v104))
        {
          if (v103 <= v91 && v103 + 24 * v66 > v91)
          {
            v87 = v91 - v103;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v66 + 1, 24);
            v68 = v103;
            v67 = v103 + v87;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v66 + 1, 24);
            v67 = v91;
            v68 = v103;
          }
        }

        v69 = &v68[24 * v104];
        v70 = *v67;
        *(v69 + 2) = *(v67 + 2);
        *v69 = v70;
        LODWORD(v104) = v104 + 1;
      }
    }

    FunctionType = mlir::FunctionOpInterface::getFunctionType(&v97);
    if (v101)
    {
      v72 = v91;
      mlir::DiagnosticArgument::DiagnosticArgument(v91, FunctionType);
      v73 = v103;
      if (v104 >= HIDWORD(v104))
      {
        if (v103 <= v91 && v103 + 24 * v104 > v91)
        {
          v86 = v91 - v103;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 24);
          v73 = v103;
          v72 = v103 + v86;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v105, v104 + 1, 24);
          v72 = v91;
          v73 = v103;
        }
      }

      v74 = &v73[24 * v104];
      v75 = *v72;
      *(v74 + 2) = *(v72 + 2);
      *v74 = v75;
      LODWORD(v104) = v104 + 1;
      if (v101)
      {
        mlir::InFlightDiagnostic::report(&v101);
      }
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v76 = __p;
      if (__p)
      {
        v77 = v109;
        v78 = __p;
        if (v109 != __p)
        {
          do
          {
            v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
          }

          while (v77 != v76);
          v78 = __p;
        }

        v109 = v76;
        operator delete(v78);
      }

      v79 = v106;
      if (v106)
      {
        v80 = v107;
        v81 = v106;
        if (v107 != v106)
        {
          do
          {
            v83 = *--v80;
            v82 = v83;
            *v80 = 0;
            if (v83)
            {
              MEMORY[0x1AC55A040](v82, 0x1000C8077774924);
            }
          }

          while (v80 != v79);
          v81 = v106;
        }

        v107 = v79;
        operator delete(v81);
      }

      if (v103 != v105)
      {
        free(v103);
      }
    }

    return 0;
  }

  return v44;
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
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
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

    v23 = v63 + v22;
    *&v60 = v63;
    *(&v60 + 1) = v21;
    v24 = (*(&v63 + 1) - v22);
    v61 = v63 + v22;
    v62 = (*(&v63 + 1) - v22);
    if (*(&v63 + 1) != v22)
    {
      v25 = 1;
      v26 = v63 + v22;
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
          v54[0] = v23;
          Dialect = mlir::MLIRContext::getOrLoadDialect(v3, v60, *(&v60 + 1));
          if (!Dialect)
          {
            *&v57 = this;
            *(&v57 + 1) = v54;
            LOWORD(v67) = 261;
            v64 = v60;
            v51 = mlir::StringAttr::get(v3, &v64);
            mlir::OpaqueType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v57, v51, v26, v24);
          }

          v44 = Dialect;
          v45 = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
          v46 = *(this + 1);
          *(v46 + 40) = v26;
          mlir::Lexer::lexToken(&v64, (v46 + 8));
          v47 = *(this + 1);
          *(v47 + 56) = v64;
          *(v47 + 72) = v65;
          *(&v64 + 1) = ZinCcdmaLayerMirInfo::GetSrcSymbol((*(this + 1) + 56));
          v65 = this;
          LOBYTE(v66) = 0;
          *&v64 = &unk_1F19F9608;
          v67 = v26;
          v68 = v24;
          v48 = (*(*v44 + 48))(v44, &v64);
          v49 = *(this + 1);
          *(v49 + 40) = v45;
          mlir::Lexer::lexToken(&v57, (v49 + 8));
          v50 = *(this + 1);
          *(v50 + 56) = v57;
          *(v50 + 72) = v58;
          ZinIrHalH13g::~ZinIrHalH13g(&v64);
          return v48;
        }

        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v61, &v64))
        {
          v26 = v61;
          v24 = v62;
          goto LABEL_60;
        }
      }

      else
      {
        v61 = v60 + *(&v60 + 1);
        v62 = 0;
        LOBYTE(v64) = 0;
        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v61, &v64))
        {
          v42 = v62 != 0;
          if (v62)
          {
            v26 = v61 + 1;
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

          v23 = SrcSymbol;
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
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
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

void mlir::parseAttribute(mlir::MLIRContext ****a1, uint64_t **a2, uint64_t **a3, void *a4, uint64_t ***a5, int a6)
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
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v39);
    v16 = (SrcSymbol - ZinCcdmaLayerMirInfo::GetSrcSymbol(&v41));
    if (a5)
    {
      *a5 = v16;
    }

    else if (v16 != a2)
    {
      v17 = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v39);
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
          v54 = v22 + a1;
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
                MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
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

void mlir::parseType(uint64_t ***a1, uint64_t **a2, uint64_t **a3, uint64_t ***a4, int a5)
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
    SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v35);
    v12 = (SrcSymbol - ZinCcdmaLayerMirInfo::GetSrcSymbol(&v37));
    if (a4)
    {
      *a4 = v12;
    }

    else if (v12 != a2)
    {
      v13 = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v35);
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
          v50 = v18 + a1;
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
                MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
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
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
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
                  MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
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
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(void *a1, ZinMirL2Config::Tile *a2, uint64_t a3)
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
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(&v56);
  if (v56 == 10)
  {
    v29 = v8 == 24;
    LOBYTE(v58) = 0;
    v61 = 0;
    v30 = a1[2];
    OverlapPadBottom = ZinMirL2Config::Tile::GetOverlapPadBottom(a2);
    v32 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v30, &v58, &v56, v29, a2, OverlapPadBottom);
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
    v14 = SrcSymbol;
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
            MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
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
      (*(*a1 + 24))(&v58, a1, SrcSymbol, &v53);
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
            MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
          }
        }

        while (v42 != v41);
        goto LABEL_47;
      }
    }
  }

  return v33;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeyword(void *a1, const char *a2, const char *a3, const char **a4)
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
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
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

  if (__src)
  {
    v4 = __len;
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
  v18 = *(v2 + 56);
  v19 = *(v2 + 72);
  if (v18 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v18, __p);
  v17 = 260;
  *&v15 = __p;
  *a2 = mlir::Builder::getStringAttr(v5, &v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = a1[2];
  v7 = *(v6 + 8);
  *(v7 + 80) = *(v7 + 56);
  *(v7 + 96) = *(v7 + 72);
  mlir::Lexer::lexToken(&v15, (*(v6 + 8) + 8));
  v8 = *(v6 + 8);
  *(v8 + 56) = v15;
  *(v8 + 72) = v16;
  v9 = *(*(a1[2] + 8) + 152);
  if (v9)
  {
    v10 = mlir::SymbolRefAttr::get(*a2);
    *&v15 = mlir::Token::getLocRange(&v18);
    *(&v15 + 1) = v11;
    mlir::AsmParserState::addUses(v9, v10, &v15, 1);
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
              MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
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

llvm::APFloatBase *std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](llvm::APFloatBase *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = llvm::APFloatBase::PPCDoubleDouble(result);
      v4 = 32 * v2 + v1 - 24;
      v5 = -32 * v2;
      do
      {
        while (v3 == *v4)
        {
          std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100]((v4 + 8));
          v4 -= 32;
          v5 += 32;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v4);
        v4 -= 32;
        v5 += 32;
      }

      while (v5);
    }

LABEL_7:

    JUMPOUT(0x1AC55A040);
  }

  return result;
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