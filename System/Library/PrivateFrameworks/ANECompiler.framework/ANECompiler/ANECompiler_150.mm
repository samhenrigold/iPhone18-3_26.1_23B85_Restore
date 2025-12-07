void mlir::getStridesAndOffset(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
  v7 = 0;
  __src = v10;
  v9 = 0x600000000;
  mlir::getStridesAndOffset(a1, &__src, &v7);
  v3 = (a2 + 16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (&__src == a2)
  {
    goto LABEL_9;
  }

  v4 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  if (v9 < 7)
  {
    v5 = v9;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8);
  v5 = v9;
  if (v9)
  {
    v3 = *a2;
LABEL_7:
    memcpy(v3, __src, 8 * v5);
  }

  *(a2 + 8) = v4;
LABEL_9:
  v6 = __src;
  *(a2 + 64) = v7;
  if (v6 != v10)
  {
    free(v6);
  }
}

uint64_t mlir::canonicalizeStridedLayout(uint64_t a1)
{
  v1 = a1;
  v14 = a1;
  v12 = *(a1 + 32);
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v12);
  if ((mlir::AffineMap::isIdentity(&FunctionType) & 1) == 0 && mlir::arith::FastMathFlagsAttr::getValue(&FunctionType) <= 1)
  {
    if (mlir::AffineMap::getNumDims(&FunctionType) || mlir::AffineMap::getNumSymbols(&FunctionType))
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = *(v1 + 8);
        Context = mlir::Attribute::getContext(&v14);
        mlir::makeCanonicalStridedLayoutExpr(v3, v2, Context);
        v5 = mlir::AffineMap::getResult(&FunctionType, 0);
        NumDims = mlir::AffineMap::getNumDims(&FunctionType);
        NumSymbols = mlir::AffineMap::getNumSymbols(&FunctionType);
        mlir::simplifyAffineExpr(v5, NumDims, NumSymbols);
      }
    }

    else
    {
      v8 = mlir::AffineMap::getResult(&FunctionType, 0);
      *&v12 = v8;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v12) == 5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v12, v9);
      v11 = v12;
      if (v12 && !mlir::AffineBinaryOpExpr::getLHS(&v11))
      {
        return mlir::MemRefType::get(*(v1 + 8), *(v1 + 16), *(v1 + 24), 0, 0, *(v1 + 48));
      }
    }
  }

  return v1;
}

mlir::MLIRContext **mlir::makeCanonicalStridedLayoutExpr(uint64_t a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v13 = v15;
  v14 = 0x400000000;
  if (a2 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, a2, 8);
  }

  if (a2)
  {
    v6 = 0;
    do
    {
      AffineDimExpr = mlir::getAffineDimExpr(v6, a3, a3);
      v8 = v14;
      if (v14 >= HIDWORD(v14))
      {
        v10 = AffineDimExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v14 + 1, 8);
        AffineDimExpr = v10;
        v8 = v14;
      }

      *(v13 + v8) = AffineDimExpr;
      v9 = v14 + 1;
      LODWORD(v14) = v14 + 1;
      v6 = (v6 + 1);
    }

    while (a2 != v6);
  }

  else
  {
    v9 = v14;
  }

  result = mlir::makeCanonicalStridedLayoutExpr(a1, a2, v13, v9, a3);
  if (v13 != v15)
  {
    v12 = result;
    free(v13);
    return v12;
  }

  return result;
}

mlir::MLIRContext **mlir::makeCanonicalStridedLayoutExpr(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, mlir::MLIRContext *a5)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = a4;
  if (a2)
  {
    mlir::AffineMap::inferFromExprList(&v27, 1uLL, a5, v29);
    NumDims = mlir::AffineMap::getNumDims(v29[0]);
    NumSymbols = mlir::AffineMap::getNumSymbols(v29[0]);
    v26 = 0;
    if (!v28)
    {
      v18 = 0;
LABEL_19:
      mlir::simplifyAffineExpr(v18, NumDims, NumSymbols);
    }

    v10 = 0;
    v11 = v27;
    v12 = 8 * a2 - 8;
    v13 = 8 * v28 - 8;
    v14 = 1;
    while (1)
    {
      v15 = *(a1 + v12);
      v25 = *(v11 + v13);
      if (v10)
      {
        break;
      }

      AffineConstantExpr = mlir::getAffineConstantExpr(v14, a5, v8);
      v20 = v26;
      v18 = mlir::AffineExpr::operator*(&v25, AffineConstantExpr);
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_9:
      v26 = v18;
      if (v15 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v15;
      }

      if (v13)
      {
        v14 *= v21;
        v10 |= v15 < 1;
        v22 = v12;
        v12 -= 8;
        v13 -= 8;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    AffineSymbolExpr = mlir::getAffineSymbolExpr(NumSymbols, a5, v8);
    NumSymbols = (NumSymbols + 1);
    v17 = v26;
    v18 = mlir::AffineExpr::operator*(&v25, AffineSymbolExpr);
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = mlir::AffineExpr::operator+(&v26, v18);
    goto LABEL_9;
  }

  return mlir::getAffineConstantExpr(0, a5, a3);
}

uint64_t mlir::isStrided(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = v5;
  v4[1] = 0x400000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v4, &v3);
  if (v4[0] != v5)
  {
    free(v4[0]);
  }

  return StridesAndOffset & 1;
}

uint64_t extractStrides(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v26 = a2;
  RHS = a1;
  if (mlir::arith::FastMathFlagsAttr::getValue(&RHS) >= 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&RHS, 0);
    v25 = RHS;
    if (RHS)
    {
      goto LABEL_3;
    }

LABEL_8:
    v27 = a1;
    RHS = a1;
    if (mlir::arith::FastMathFlagsAttr::getValue(&RHS) == 6)
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&RHS, a1);
      if (RHS)
      {
LABEL_10:
        Position = mlir::AffineDimExpr::getPosition(&RHS);
        v12 = mlir::AffineExpr::operator+((a3 + 8 * Position), a2);
        v13 = &RHS;
LABEL_11:
        *(a3 + 8 * mlir::AffineDimExpr::getPosition(v13)) = v12;
        return 1;
      }
    }

    else
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&RHS, 0);
      if (RHS)
      {
        goto LABEL_10;
      }
    }

    v14 = mlir::AffineExpr::operator*(&v27, a2);
    *a5 = mlir::AffineExpr::operator+(a5, v14);
    return 1;
  }

  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&RHS, a1);
  v25 = RHS;
  if (!RHS)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (mlir::arith::FastMathFlagsAttr::getValue(&v25) == 4 || mlir::arith::FastMathFlagsAttr::getValue(&v25) == 3 || mlir::arith::FastMathFlagsAttr::getValue(&v25) == 2)
  {
    return 0;
  }

  if (mlir::arith::FastMathFlagsAttr::getValue(&v25) == 1)
  {
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v25);
    RHS = LHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&RHS) == 6)
    {
      v16 = LHS;
    }

    else
    {
      v16 = 0;
    }

    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&RHS, v16);
    v27 = RHS;
    if (RHS)
    {
      v20 = (a3 + 8 * mlir::AffineDimExpr::getPosition(&v27));
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v25);
      v21 = mlir::AffineExpr::operator*(&RHS, a2);
      v12 = mlir::AffineExpr::operator+(v20, v21);
      v13 = &v27;
      goto LABEL_11;
    }

    RHS = mlir::AffineBinaryOpExpr::getLHS(&v25);
    if (mlir::AffineExpr::isSymbolicOrConstant(&RHS))
    {
      v22 = mlir::AffineBinaryOpExpr::getRHS(&v25);
      v23 = mlir::AffineBinaryOpExpr::getLHS(&v25);
    }

    else
    {
      v22 = mlir::AffineBinaryOpExpr::getLHS(&v25);
      v23 = mlir::AffineBinaryOpExpr::getRHS(&v25);
    }

    v24 = mlir::AffineExpr::operator*(&v26, v23);
    return extractStrides(v22, v24, a3, a4, a5);
  }

  else
  {
    mlir::arith::FastMathFlagsAttr::getValue(&v25);
    v17 = mlir::AffineBinaryOpExpr::getLHS(&v25);
    Strides = extractStrides(v17, a2, a3, a4, a5);
    v19 = mlir::AffineBinaryOpExpr::getRHS(&v25);
    return Strides & extractStrides(v19, a2, a3, a4, a5) & 1;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    v71 = mlir::TypeRange::dereference_iterator(a1, a2);
    v73 = a4;
    v74 = (v71 >> 4) ^ (v71 >> 9);
    v94 = v74;
    if (a2 + 1 == a4)
    {
      v12 = 8;
      v50 = a4;
    }

    else
    {
      v80 = mlir::TypeRange::dereference_iterator(a1, a2 + 1);
      v73 = a4;
      v4 = (v80 >> 4) ^ (v80 >> 9);
      v95 = v4;
      if (a2 + 2 == a4)
      {
        v12 = 16;
        v50 = a4;
      }

      else
      {
        v81 = mlir::TypeRange::dereference_iterator(a1, a2 + 2);
        v73 = a4;
        v9 = (v81 >> 4) ^ (v81 >> 9);
        v96 = v9;
        if (a2 + 3 == a4)
        {
          v12 = 24;
          v50 = a4;
        }

        else
        {
          v82 = mlir::TypeRange::dereference_iterator(a1, a2 + 3);
          v73 = a4;
          v6 = (v82 >> 4) ^ (v82 >> 9);
          v97 = v6;
          if (a2 + 4 == a4)
          {
            v12 = 32;
            v50 = a4;
          }

          else
          {
            v83 = mlir::TypeRange::dereference_iterator(a1, a2 + 4);
            v73 = a4;
            v7 = (v83 >> 4) ^ (v83 >> 9);
            v98 = v7;
            if (a2 + 5 == a4)
            {
              v12 = 40;
              v50 = a4;
            }

            else
            {
              v84 = mlir::TypeRange::dereference_iterator(a1, a2 + 5);
              v73 = a4;
              v72 = (v84 >> 4) ^ (v84 >> 9);
              v99 = v72;
              if (a2 + 6 == a4)
              {
                v12 = 48;
                v50 = a4;
              }

              else
              {
                v85 = (v84 >> 4) ^ (v84 >> 9);
                v86 = mlir::TypeRange::dereference_iterator(a1, a2 + 6);
                v73 = a4;
                v8 = (v86 >> 4) ^ (v86 >> 9);
                v100 = v8;
                if (a2 + 7 == a4)
                {
                  v12 = 56;
                  v50 = a4;
                }

                else
                {
                  v87 = mlir::TypeRange::dereference_iterator(a1, a2 + 7);
                  v73 = a4;
                  v5 = (v87 >> 4) ^ (v87 >> 9);
                  v101 = v5;
                  v50 = a2 + 8;
                  if (v50 == a4)
                  {
                    v12 = 64;
                    v50 = a4;
                  }

                  else
                  {
                    mlir::TypeRange::dereference_iterator(a1, v50);
                    v73 = a4;
                    v12 = 64;
                  }
                }

                v72 = v85;
              }
            }
          }
        }
      }
    }

    v88 = v74 + 0x298DF016A9F64655;
    v89 = v7 + 0x4BF62CB950C3753ALL;
    if (v50 == v73)
    {
      return llvm::hashing::detail::hash_short(&v94, v12, 0xFF51AFD7ED558CCDLL);
    }

    v13 = (0xB492B66FBE98F273 * __ROR8__(v4 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v14 = v72 - 0x4B6D499041670D8DLL * __ROR8__(v8 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v15 = __ROR8__(v88 + v4 + v9, 44) + v88 + __ROR8__(v13 + v88 + v6 - 0xAE502812AB8D92, 21);
    v16 = v88 + v4 + v9 + v6;
    v17 = v72 + v8 + v89;
    v18 = __ROR8__(v17, 44) + v89 + __ROR8__(v14 + v9 + v89 + v5, 21);
    v19 = v17 + v5;
    v90 = ~&v94;
    v20 = 0x544962662A7EE1A4;
    v21 = 64;
    while (1)
    {
      v91 = v13;
      v92 = v18;
      v22 = mlir::TypeRange::dereference_iterator(a1, v50);
      v23 = a4;
      v94 = (v22 >> 4) ^ (v22 >> 9);
      if (v50 + 1 == a4)
      {
        v24 = 1;
        v25 = 56;
        v26 = 8;
        goto LABEL_29;
      }

      v27 = mlir::TypeRange::dereference_iterator(a1, v50 + 1);
      v23 = a4;
      v95 = (v27 >> 4) ^ (v27 >> 9);
      if (v50 + 2 == a4)
      {
        v24 = 2;
        v25 = 48;
        v26 = 16;
        goto LABEL_29;
      }

      v28 = mlir::TypeRange::dereference_iterator(a1, v50 + 2);
      v23 = a4;
      v96 = (v28 >> 4) ^ (v28 >> 9);
      if (v50 + 3 == a4)
      {
        v24 = 3;
        v25 = 40;
        v26 = 24;
        do
        {
LABEL_29:
          v39 = v26;
          v26 = v25;
          v25 = v39 % v25;
        }

        while (v25);
        v40 = (&v94 + v26);
        do
        {
          v42 = *(v40 - 1);
          v40 = (v40 - 1);
          v41 = v42;
          v43 = &v40[v24];
          v44 = v40;
          do
          {
            v45 = v44;
            v44 = v43;
            *v45 = *v43;
            v46 = (&v102 - v43);
            v47 = __OFSUB__(v24 * 8, v46);
            v49 = v24 * 8 - v46;
            v48 = (v49 < 0) ^ v47;
            v43 = (&v94 + v49);
            if (v48)
            {
              v43 = &v44[v24];
            }
          }

          while (v43 != v40);
          *v44 = v41;
        }

        while (v40 != &v94);
        goto LABEL_36;
      }

      v29 = mlir::TypeRange::dereference_iterator(a1, v50 + 3);
      v23 = a4;
      v97 = (v29 >> 4) ^ (v29 >> 9);
      if (v50 + 4 != a4)
      {
        v30 = mlir::TypeRange::dereference_iterator(a1, v50 + 4);
        v23 = a4;
        v98 = (v30 >> 4) ^ (v30 >> 9);
        if (v50 + 5 == a4)
        {
          v24 = 5;
          v25 = 24;
          v26 = 40;
        }

        else
        {
          v31 = mlir::TypeRange::dereference_iterator(a1, v50 + 5);
          v23 = a4;
          v99 = (v31 >> 4) ^ (v31 >> 9);
          if (v50 + 6 == a4)
          {
            v24 = 6;
            v25 = 16;
            v26 = 48;
          }

          else
          {
            v32 = mlir::TypeRange::dereference_iterator(a1, v50 + 6);
            v23 = a4;
            v100 = (v32 >> 4) ^ (v32 >> 9);
            if (v50 + 7 != a4)
            {
              v70 = mlir::TypeRange::dereference_iterator(a1, v50 + 7);
              v23 = a4;
              v101 = (v70 >> 4) ^ (v70 >> 9);
              v50 += 8;
              if (v50 == a4)
              {
                v50 = a4;
              }

              else
              {
                mlir::TypeRange::dereference_iterator(a1, v50);
                v23 = a4;
              }

              v24 = 8;
              goto LABEL_37;
            }

            v24 = 7;
            v25 = 8;
            v26 = 56;
          }
        }

        goto LABEL_29;
      }

      v24 = 4;
      v33 = 31;
      if (&v98 + v90 < 0x1F)
      {
        v33 = &v98 + v90;
      }

      v34 = &v94;
      if (v33 < 3 || &v94 < (&v98 + v33 + 1) && &v98 < (&v94 + v33 + 1))
      {
        break;
      }

      v56 = v33 + 1;
      if (v33 >= 0xF)
      {
        v57 = v56 & 0x70;
        v58 = v94;
        v59 = v95;
        v94 = v98;
        v95 = v99;
        v98 = v58;
        v99 = v59;
        if (v57 != 16)
        {
          v60 = v96;
          v61 = v97;
          v96 = v100;
          v97 = v101;
          v100 = v60;
          v101 = v61;
          if (v57 != 32)
          {
            v62 = v98;
            v63 = v99;
            v98 = v102;
            v99 = v103;
            v102 = v62;
            v103 = v63;
            if (v57 != 48)
            {
              v64 = v100;
              v65 = v101;
              v100 = v104;
              v101 = v105;
              v104 = v64;
              v105 = v65;
            }
          }
        }

        if (v56 == v57)
        {
          goto LABEL_36;
        }

        if ((v56 & 0xC) == 0)
        {
          v34 = &v94 + v57;
          v35 = v57 + 32;
LABEL_24:
          v36 = (v34 + 1);
          do
          {
            v37 = *(v36 - 1);
            *(v36 - 1) = *(&v94 + v35);
            *(&v94 + v35) = v37;
            if (v36 == &v98)
            {
              break;
            }

            v36 = (v36 + 1);
          }

          while (v35++ != 63);
          goto LABEL_36;
        }
      }

      else
      {
        v57 = 0;
      }

      v35 = (v56 & 0x7C) + 32;
      v34 = &v94 + (v56 & 0x7C);
      v66 = (&v98 + v57);
      v67 = (&v94 + v57);
      v68 = v57 - (v56 & 0x7C);
      do
      {
        v69 = *v67;
        *v67++ = *v66;
        *v66++ = v69;
        v68 += 4;
      }

      while (v68);
      if (v56 != (v56 & 0x7C))
      {
        goto LABEL_24;
      }

LABEL_36:
      v50 = v23;
LABEL_37:
      v51 = v14 + v16 + v20 + v95;
      v14 = v99 + v16 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v15 + v100, 42);
      v52 = v94 - 0x4B6D499041670D8DLL * v15;
      v53 = (0xB492B66FBE98F273 * __ROR8__(v51, 37)) ^ v92;
      v54 = __ROR8__(v91 + v19, 33);
      v15 = __ROR8__(v52 + v95 + v96, 44) + v52 + __ROR8__(v53 + v19 + v52 + v97, 21);
      v20 = 0xB492B66FBE98F273 * v54;
      v16 = v52 + v95 + v96 + v97;
      v55 = 0xB492B66FBE98F273 * v54 + v92 + v98;
      v18 = __ROR8__(v14 + v96 + v55 + v101, 21) + v55 + __ROR8__(v99 + v100 + v55, 44);
      v19 = v99 + v100 + v55 + v101;
      v21 += v24 * 8;
      v13 = v53;
      if (v50 == v23)
      {
        v75 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v19)));
        v76 = v53 - 0x4B6D499041670D8DLL * (v14 ^ (v14 >> 47)) - 0x622015F714C7D297 * (v75 ^ (v75 >> 47));
        v77 = 0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v18)));
        v78 = 0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47)) - 0x4B6D499041670D8DLL * ((v21 ^ (v21 >> 47)) + v54);
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ v76)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ v76)))) ^ ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ v76)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ v76)))) >> 47));
      }
    }

    v35 = 32;
    goto LABEL_24;
  }

  v12 = 0;
  return llvm::hashing::detail::hash_short(&v94, v12, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((*a1)[1] != v3)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = 0;
  if (v3)
  {
    v7 = *v2;
    v8 = 8 * v3 - 8;
    v9 = *(a2 + 16);
    while (*v9 == mlir::TypeRange::dereference_iterator(v7, v6))
    {
      ++v6;
      ++v9;
      if (!v8)
      {
        goto LABEL_10;
      }

      v8 -= 8;
    }

    return 0;
  }

  v9 = *(a2 + 16);
LABEL_10:
  result = 0;
  if (v6 == v3 && v9 == (v5 + 8 * v3))
  {
    v11 = a2;
    v12 = *(a2 + 12);
    if (v2[3] != v12)
    {
      return 0;
    }

    v13 = *(v11 + 16);
    v14 = *(v11 + 8);
    v15 = v13 + 8 * v14;
    v16 = 0;
    if (v12)
    {
      v17 = v2[2];
      v18 = 8 * v12 - 8;
      v19 = (v13 + 8 * v14);
      while (*v19 == mlir::TypeRange::dereference_iterator(v17, v16))
      {
        ++v16;
        ++v19;
        if (!v18)
        {
          return v16 == v12 && v19 == (v15 + 8 * v12);
        }

        v18 -= 8;
      }

      return 0;
    }

    v19 = (v13 + 8 * v14);
    return v16 == v12 && v19 == (v15 + 8 * v12);
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::FunctionTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

unint64_t mlir::detail::FunctionTypeStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v37[16] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v35 = v37;
  v36 = 0x1000000000;
  if (v6 + v4 < 0x11)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4;
    if (v4 <= 0x10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v6 + v4, 8);
  v7 = v36;
  v8 = v36;
  v9 = v4 + v36;
  if (v9 > HIDWORD(v36))
  {
LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v9, 8);
    v8 = v36;
    v7 = v36;
  }

LABEL_6:
  if (v4)
  {
    v10 = 0;
    v11 = v35 + 8 * v8;
    do
    {
      *&v11[8 * v10] = mlir::TypeRange::dereference_iterator(v3, v10);
      ++v10;
    }

    while (v4 != v10);
    v7 = v36;
  }

  v12 = (v7 + v4);
  LODWORD(v36) = v12;
  if (v6 + v12 > HIDWORD(v36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v6 + v12, 8);
    v12 = v36;
  }

  v13 = v35;
  if (v6)
  {
    v14 = 0;
    v15 = v35 + 8 * v12;
    do
    {
      *&v15[8 * v14] = mlir::TypeRange::dereference_iterator(v5, v14);
      ++v14;
    }

    while (v6 != v14);
    LODWORD(v12) = v36;
    v13 = v35;
  }

  v16 = *a1;
  v17 = (v12 + v6);
  LODWORD(v36) = v12 + v6;
  if (v12 + v6)
  {
    v18 = 8 * v17;
    a1[10] += 8 * v17;
    if (v16 && (Slow = (v16 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + v18 <= a1[1]))
    {
      *a1 = Slow + v18;
      v20 = v18 - 8;
      v21 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v22 = v13;
      if ((v18 - 8) >= 0x18)
      {
LABEL_20:
        v21 = Slow;
        v22 = v13;
        if (Slow - v13 >= 0x20)
        {
          v23 = (v20 >> 3) + 1;
          v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
          v21 = (Slow + v24);
          v22 = &v13[v24];
          v25 = (v13 + 16);
          v26 = (Slow + 16);
          v27 = v23 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v25 += 2;
            v26 += 2;
            v27 -= 4;
          }

          while (v27);
          if (v23 == (v23 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_25;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v17, 8 * v17, 3);
      v20 = v18 - 8;
      v21 = Slow;
      v22 = v13;
      if ((v18 - 8) >= 0x18)
      {
        goto LABEL_20;
      }
    }

    do
    {
LABEL_24:
      v29 = *v22;
      v22 += 8;
      *v21++ = v29;
    }

    while (v22 != &v13[8 * v17]);
LABEL_25:
    v16 = *a1;
    goto LABEL_27;
  }

  Slow = 0;
LABEL_27:
  a1[10] += 24;
  v30 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 24;
  if (v16)
  {
    v32 = v31 > a1[1];
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v30 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
    *v30 = 0;
    *(v30 + 8) = v4;
    *(v30 + 12) = v6;
    *(v30 + 16) = Slow;
    v33 = v35;
    if (v35 == v37)
    {
      return v30;
    }

    goto LABEL_32;
  }

  *a1 = v31;
  *v30 = 0;
  *(v30 + 8) = v4;
  *(v30 + 12) = v6;
  *(v30 + 16) = Slow;
  v33 = v35;
  if (v35 != v37)
  {
LABEL_32:
    free(v33);
  }

  return v30;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (v3 != v2[2])
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(a2 + 16), v2[1], v3) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::detail::OpaqueTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::OpaqueTypeStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (!v3)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v4 = a2[1];
  a1[10] += v3 + 1;
  Slow = *a1;
  v6 = v3 + 1 + *a1;
  if (*a1)
  {
    v7 = v6 > a1[1];
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *a1 = v6;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v8 = Slow;
    v9 = v4;
    goto LABEL_22;
  }

  v19 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v3 + 1, v3 + 1, 0);
  a1 = v19;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v8 = Slow;
  v9 = v4;
  if ((Slow - v4) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v10 = v3 & 0xFFFFFFFFFFFFFFE0;
    v11 = (v4 + 16);
    v12 = (Slow + 16);
    v13 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
    if (v3 == v10)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v8 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
      v9 = (v4 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v15 = (v4 + v10);
      v16 = (Slow + v10);
      v17 = v10 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 += 8;
      }

      while (v17);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = (v4 + v10);
    v8 = (Slow + v10);
  }

  do
  {
LABEL_22:
    v20 = *v9++;
    *v8++ = v20;
  }

  while (v9 != (v4 + v3));
LABEL_23:
  *(Slow + v3) = 0;
LABEL_24:
  a1[10] += 32;
  v21 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = (v21 + 4);
  if (*a1)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = Slow;
  v21[3] = v3;
  return v21;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::RankedTensorTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

unint64_t mlir::detail::RankedTensorTypeStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 1);
  v4 = *a1;
  if (!v2)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = 8 * v2;
  a1[10] += 8 * v2;
  v7 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8 * v2;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    v27 = v3;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
    v3 = v27;
    v7 = Slow;
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = v7;
      v12 = v5;
      if (v7 - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (v7 + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (v7 + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = v7;
  v12 = v5;
  do
  {
LABEL_15:
    v21 = *v12++;
    *v11++ = v21;
  }

  while (v12 != (v5 + 8 * v2));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 40;
  v22 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 40;
  if (v4)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = v3;
    v26 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    v3 = v28;
    v22 = v26;
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  *(v22 + 8) = v7;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  return v22;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail23RankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_16RankedTensorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*a1)[1] != v2)
  {
    return 0;
  }

  v3 = a2 + 16;
  v4 = 0;
  if (v2)
  {
    v5 = **a1;
    v6 = 8 * v2 - 8;
    v7 = (a2 + 16);
    while (*v7 == mlir::TypeRange::dereference_iterator(v5, v4))
    {
      ++v4;
      ++v7;
      if (!v6)
      {
        return v4 == v2 && v7 == (v3 + 8 * v2);
      }

      v6 -= 8;
    }

    return 0;
  }

  v7 = (a2 + 16);
  return v4 == v2 && v7 == (v3 + 8 * v2);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = 8 * v4 + 16;
  a2[10] += v5;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v5;
  if (*a2)
  {
    v8 = v7 > a2[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8 * v4 + 16, v5, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = v7;
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *(Slow + 16 + 8 * i) = mlir::TypeRange::dereference_iterator(v3, i);
  }

LABEL_8:
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(v10[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*a1)[1] != v2)
  {
    return 0;
  }

  v3 = a2 + 16;
  v4 = 0;
  if (v2)
  {
    v5 = **a1;
    v6 = 8 * v2 - 8;
    v7 = (a2 + 16);
    while (*v7 == mlir::TypeRange::dereference_iterator(v5, v4))
    {
      ++v4;
      ++v7;
      if (!v6)
      {
        return v4 == v2 && v7 == (v3 + 8 * v2);
      }

      v6 -= 8;
    }

    return 0;
  }

  v7 = (a2 + 16);
  return v4 == v2 && v7 == (v3 + 8 * v2);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = 8 * v4 + 16;
  a2[10] += v5;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v5;
  if (*a2)
  {
    v8 = v7 > a2[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8 * v4 + 16, v5, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = v7;
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *(Slow + 16 + 8 * i) = mlir::TypeRange::dereference_iterator(v3, i);
  }

LABEL_8:
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(v10[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && (v5 = *(a2 + 40), v5 == *(v2 + 32)))
  {
    return memcmp(*(a2 + 32), *(v2 + 24), v5) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::detail::VectorTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::VectorTypeStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v5 = a2[3];
  v4 = a2[4];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (Slow = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + v8 <= a1[1]))
    {
      *a1 = Slow + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = Slow;
        v12 = v7;
        if (Slow - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (Slow + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
          v16 = (Slow + 16);
          v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 4;
          }

          while (v17);
          if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_15:
            v6 = *a1;
            if (v4)
            {
              goto LABEL_16;
            }

LABEL_11:
            v19 = 0;
            goto LABEL_35;
          }
        }

        do
        {
LABEL_14:
          v21 = *v12++;
          *v11++ = v21;
        }

        while (v12 != (v7 + 8 * v2));
        goto LABEL_15;
      }
    }

    else
    {
      v20 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v20;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = Slow;
    v12 = v7;
    goto LABEL_14;
  }

  Slow = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  a1[10] += v4;
  if (v6 && v4 + v6 <= a1[1])
  {
    *a1 = v4 + v6;
    if (v4 >= 8)
    {
      goto LABEL_19;
    }

LABEL_32:
    v22 = v6;
    v23 = v5;
    goto LABEL_33;
  }

  v33 = a1;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v4, v4, 0);
  a1 = v33;
  if (v4 < 8)
  {
    goto LABEL_32;
  }

LABEL_19:
  v22 = v6;
  v23 = v5;
  if ((v6 - v5) >= 0x20)
  {
    if (v4 < 0x20)
    {
      v24 = 0;
      goto LABEL_26;
    }

    v24 = v4 & 0xFFFFFFFFFFFFFFE0;
    v25 = (v5 + 16);
    v26 = (v6 + 16);
    v27 = v4 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v28 = *v25;
      *(v26 - 1) = *(v25 - 1);
      *v26 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 32;
    }

    while (v27);
    if (v4 == v24)
    {
      goto LABEL_34;
    }

    if ((v4 & 0x18) != 0)
    {
LABEL_26:
      v22 = (v6 + (v4 & 0xFFFFFFFFFFFFFFF8));
      v23 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
      v29 = (v5 + v24);
      v30 = (v6 + v24);
      v31 = v24 - (v4 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v32 = *v29++;
        *v30++ = v32;
        v31 += 8;
      }

      while (v31);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v23 = (v5 + v24);
    v22 = (v6 + v24);
  }

  do
  {
LABEL_33:
    v34 = *v23++;
    *v22++ = v34;
  }

  while (v23 != (v5 + v4));
LABEL_34:
  v19 = v6;
  v6 = *a1;
LABEL_35:
  a1[10] += 48;
  v35 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = (v35 + 6);
  if (v6)
  {
    v37 = v36 > a1[1];
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  }

  else
  {
    *a1 = v36;
  }

  *v35 = 0;
  v35[1] = Slow;
  v35[2] = v2;
  v35[3] = v3;
  v35[4] = v19;
  v35[5] = v4;
  return v35;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

void mlir::Dialect::addType<mlir::ComplexType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::ComplexType,mlir::Type,mlir::detail::ComplexTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSB_18ComplexTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSA_18ComplexTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v23 = "builtin.complex";
  v24 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E5M2Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E5M2Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E5M2TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E5M2TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v24 = "builtin.f8E5M2";
  v25 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E5M2TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E4M3Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E4M3TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E4M3TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v24 = "builtin.f8E4M3";
  v25 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E4M3TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E4M3FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float8E4M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float8E4M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v24 = "builtin.f8E4M3FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float8E4M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E5M2FNUZType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E5M2FNUZType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E5M2FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E5M2FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v24 = "builtin.f8E5M2FNUZ";
  v25 = 18;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E5M2FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E4M3FNUZType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3FNUZType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E4M3FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E4M3FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v24 = "builtin.f8E4M3FNUZ";
  v25 = 18;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E4M3FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E4M3B11FNUZType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3B11FNUZType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_21Float8E4M3B11FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_21Float8E4M3B11FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v24 = "builtin.f8E4M3B11FNUZ";
  v25 = 21;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_21Float8E4M3B11FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float8E3M4Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E3M4Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E3M4TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E3M4TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v24 = "builtin.f8E3M4";
  v25 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E3M4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float4E2M1FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float4E2M1FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float4E2M1FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float4E2M1FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
  v24 = "builtin.f4E2M1FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float4E2M1FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float6E2M3FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float6E2M3FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E2M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E2M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v24 = "builtin.f6E2M3FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E2M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float6E3M2FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float6E3M2FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E3M2FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E3M2FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v24 = "builtin.f6E3M2FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E3M2FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::BFloat16Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::BFloat16Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12BFloat16TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12BFloat16TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v24 = "builtin.bf16";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12BFloat16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float16Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float16Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float16TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float16TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v24 = "builtin.f16";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::FloatTF32Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::FloatTF32Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13FloatTF32TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13FloatTF32TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v24 = "builtin.tf32";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_13FloatTF32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float32Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float32Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float32TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float32TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v24 = "builtin.f32";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float64Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float64Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float64TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float64TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  v24 = "builtin.f64";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float64TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float80Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float80Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float80TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float80TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
  v24 = "builtin.f80";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float80TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t *mlir::Dialect::addType<mlir::Float128Type>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float128Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12Float128TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12Float128TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v24 = "builtin.f128";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12Float128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::FunctionType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::FunctionType,mlir::Type,mlir::detail::FunctionTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSB_19FunctionTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSA_19FunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v23 = "builtin.function";
  v24 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addType<mlir::IndexType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::IndexType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9IndexTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9IndexTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v24 = "builtin.index";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_9IndexTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::IntegerType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::IntegerType,mlir::Type,mlir::detail::IntegerTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSB_18IntegerTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSA_18IntegerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v23 = "builtin.integer";
  v24 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, 0, v9);
}

void mlir::Dialect::addType<mlir::MemRefType>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractType::get<mlir::MemRefType>(a1, &v10);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, 0, v9);
}

uint64_t *mlir::Dialect::addType<mlir::NoneType>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::NoneType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8NoneTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8NoneTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  v24 = "builtin.none";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_8NoneTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::OpaqueType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSB_17OpaqueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSA_17OpaqueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v23 = "builtin.opaque";
  v24 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, 0, v9);
}

void mlir::Dialect::addType<mlir::RankedTensorType>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractType::get<mlir::RankedTensorType>(a1, &v10);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, 0, v9);
}

void mlir::Dialect::addType<mlir::TupleType>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::TupleType,mlir::Type,mlir::detail::TupleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSB_16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSA_16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v23 = "builtin.tuple";
  v24 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, 0, v9);
}

void mlir::Dialect::addType<mlir::UnrankedMemRefType>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractType::get<mlir::UnrankedMemRefType>(a1, &v10);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, 0, v9);
}

void mlir::Dialect::addType<mlir::UnrankedTensorType>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractType::get<mlir::UnrankedTensorType>(a1, &v10);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, 0, v9);
}

void mlir::Dialect::addType<mlir::VectorType>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractType::get<mlir::VectorType>(a1, &v10);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSB_18ComplexTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSA_18ComplexTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ComplexType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ComplexType>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v7);
  v8 = v3;
  Context = mlir::Attribute::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v9[1] = &Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E5M2TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E4M3TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float8E4M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E5M2FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E4M3FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_21Float8E4M3B11FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E3M4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float4E2M1FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E2M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E3M2FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12BFloat16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_13FloatTF32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float64TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float80TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12Float128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t mlir::detail::walkImmediateSubElementsImpl<mlir::FunctionType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  v12 = v9 + 8 * v10;
  mlir::ValueRange::ValueRange(&v23, v9, v10);
  result = mlir::ValueRange::ValueRange(&v25, v12, v11);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v14 = v24;
  if (v24)
  {
    v15 = 0;
    v16 = v23;
    do
    {
      v17 = mlir::TypeRange::dereference_iterator(v16, v15);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v22, v17);
      ++v15;
    }

    while (v14 != v15);
  }

  v18 = v26;
  if (v26)
  {
    v19 = 0;
    v20 = v25;
    do
    {
      v21 = mlir::TypeRange::dereference_iterator(v20, v19);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v22, v21);
      ++v19;
    }

    while (v18 != v19);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSA_19FunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FunctionType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FunctionType>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = v4 + 8 * v5;
  mlir::ValueRange::ValueRange(&v27, v4, v5);
  mlir::ValueRange::ValueRange(&v29, v7, v6);
  v8 = *a3;
  v9 = a3[1];
  v10 = v9 - v28;
  if (v9 >= v28)
  {
    v11 = v28;
  }

  else
  {
    v11 = a3[1];
  }

  v12 = v8 + 8 * v28;
  v13 = mlir::ValueRange::ValueRange(v31, v8, v11);
  v20 = v31[0];
  if (v10 >= v30)
  {
    v14 = v30;
  }

  else
  {
    v14 = v10;
  }

  mlir::ValueRange::ValueRange(v13, v12, v14);
  v19 = v31[0];
  Context = mlir::Attribute::getContext(&v21);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v22[1] = &Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v26[1] = v22;
  v31[0] = v20;
  v31[1] = v19;
  v16 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v20, 0, v20, *(&v20 + 1));
  v17 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v19, 0, v19, *(&v19 + 1))) | (v16 << 32));
  v24[0] = v31;
  v24[1] = v26;
  v25 = v31;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v17 >> 31) ^ v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_9IndexTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSA_18IntegerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v5);
  return mlir::IntegerType::get(Context, v2 & 0x3FFFFFFF, v2 >> 30);
}

void mlir::AbstractType::get<mlir::MemRefType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::MemRefType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSB_17MemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSA_17MemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  *(a2 + 144) = "builtin.memref";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::MemRefType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::getShape;
  {
    v5 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::cloneWith(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v7 = a2[5];
    v8 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v9 = a4;
    v10 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v8 = a2[2];
    v9 = a4;
    v10 = 0;
    v7 = 0;
LABEL_7:
    v12 = mlir::MemRefType::get(v5, v6, v9, v10, v7, v8);
    return mlir::BaseMemRefType::operator mlir::ShapedType(&v12);
  }

  v12 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return mlir::BaseMemRefType::operator mlir::ShapedType(&v12);
}

void *mlir::BaseMemRefType::operator mlir::ShapedType(void **a1)
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
      mlir::Builder::getZeroAttr();
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

BOOL mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType::Trait<Empty>]";
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

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSB_17MemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSA_17MemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::MemRefType>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::MemRefType>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = a1;
  v11 = *a2;
  v12 = v3;
  v10 = *a3;
  v17[0] = &v11;
  v17[1] = &v10;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::MemRefLayoutAttrInterface const&,mlir::Attribute const&)#1}::operator()(v17, &v12, &v13, &v14, &v15, &v23);
  mlir::Attribute::getContext(&v16);
  v18 = v20;
  v19 = 0x600000000;
  v4 = v24;
  if (!v24)
  {
    v4 = 0;
    v7 = v20;
    goto LABEL_9;
  }

  if (v24 < 7)
  {
    v6 = v20;
    v5 = v24;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v24, 8);
  v5 = v24;
  if (v24)
  {
    v6 = v18;
LABEL_7:
    memcpy(v6, v23, 8 * v5);
  }

  LODWORD(v19) = v4;
  v7 = v18;
LABEL_9:
  v21 = v27;
  v20[6] = v26;
  v22 = v28;
  v8 = mlir::MemRefType::get(v7, v4, v26, v27, *(&v27 + 1), v28);
  if (v18 != v20)
  {
    free(v18);
  }

  if (v23 != &v25)
  {
    free(v23);
  }

  return v8;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::MemRefLayoutAttrInterface const&,mlir::Attribute const&)#1}::operator()(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  v11 = a1[1];
  if (!*a3)
  {
    v13 = 0;
    v14 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(*a4, a4[1], *a1);
    if (*a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v12 = *v11;
  *v11 = vaddq_s64(*v11, xmmword_1A75DAC00);
  v13 = *v12.i64[0];
  v14 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(*a4, a4[1], *a1);
  if (!*a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = **a1;
  **a1 = vaddq_s64(v16, xmmword_1A75DAC00);
  v17 = *v16.i64[0];
LABEL_6:
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v18 = v25;
  v19 = __src;
  if (v25 && &__src != a6)
  {
    if (__src == v27)
    {
      v21 = v15;
      v22 = v14;
      v23 = v25;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 16), v25, 8), v23 = v25, v19 = __src, v25))
      {
        memcpy(*a6, v19, 8 * v23);
        v19 = __src;
      }

      *(a6 + 8) = v18;
      v14 = v22;
      v15 = v21;
    }

    else
    {
      *a6 = __src;
      v20 = v26;
      *(a6 + 8) = v18;
      *(a6 + 12) = v20;
      __src = v27;
      v26 = 0;
      v19 = v27;
    }

    v25 = 0;
  }

  *(a6 + 64) = v13;
  *(a6 + 72) = v14;
  *(a6 + 80) = v15;
  *(a6 + 88) = v17;
  if (v19 != v27)
  {
    free(v19);
  }
}

void *mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(void *result, uint64_t a2, int64x2_t *a3)
{
  if (result)
  {
    v3 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_1A75DAC00);
    result = *v3.i64[0];
    if (*v3.i64[0])
    {
      v4 = *result;
      {
        v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        v14 = v4;
        v15 = result;
        mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace();
        result = v15;
        v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v6 = *(v14 + 8);
        v7 = *(v14 + 16);
        if (!v7)
        {
          return result;
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
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_8NoneTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1, a3);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSB_17OpaqueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSA_17OpaqueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueType>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueType>(void *a1, uint64_t **a2)
{
  v11 = a1;
  v2 = a1[2];
  v3 = a1[3];
  if (a1[1])
  {
    v4 = **a2;
  }

  else
  {
    v4 = 0;
  }

  mlir::Attribute::getContext(&v11);
  v12 = v4;
  Context = mlir::Attribute::getContext(&v12);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v13[1] = &Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v13;
  v17[0] = v12;
  v17[1] = v2;
  v17[2] = v3;
  v6 = (v12 >> 4) ^ (v12 >> 9);
  v7 = llvm::hash_value(v2, v3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::AbstractType::get<mlir::RankedTensorType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::RankedTensorType>,mlir::ValueSemantics<mlir::RankedTensorType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSB_23RankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSA_23RankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  *(a2 + 144) = "builtin.tensor";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::RankedTensorType>,mlir::ValueSemantics<mlir::RankedTensorType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::getShape;
  {
    v5 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::cloneWith(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return mlir::TensorType::operator mlir::ShapedType(&v8);
}

BOOL mlir::detail::storage_user_base_impl::hasTrait<mlir::ShapedType::Trait,mlir::ValueSemantics>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  else
  {
    v5 = a1;
    mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
    a1 = v5;
    v1 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  mlir::detail::storage_user_base_impl::hasTrait<mlir::ShapedType::Trait,mlir::ValueSemantics>();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSB_23RankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSA_23RankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::RankedTensorType>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::RankedTensorType>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = v3;
  v4 = *a2;
  v11 = *a3;
  v12 = v4;
  v15 = a1;
  v16[0] = &v12;
  v16[1] = &v11;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::Attribute const&)#1}::operator()(v16, &v13, &v14, &v14 + 1, &v20);
  mlir::Attribute::getContext(&v15);
  v17 = v19;
  v18 = 0x600000000;
  v5 = v21;
  if (!v21)
  {
    v5 = 0;
    v8 = v19;
    goto LABEL_9;
  }

  if (v21 < 7)
  {
    v7 = v19;
    v6 = v21;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v21, 8);
  v6 = v21;
  if (v21)
  {
    v7 = v17;
LABEL_7:
    memcpy(v7, v20, 8 * v6);
  }

  LODWORD(v18) = v5;
  v8 = v17;
LABEL_9:
  v19[6] = v23;
  v19[7] = v24;
  v9 = mlir::RankedTensorType::get(v8, v5, v23, v24);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != &v22)
  {
    free(v20);
  }

  return v9;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::Attribute const&)#1}::operator()(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v21[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  if (!*a3)
  {
    v11 = 0;
    if (*a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v9 = a1[1];
  v10 = *v9;
  *v9 = vaddq_s64(*v9, xmmword_1A75DAC00);
  v11 = *v10.i64[0];
  if (!*a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = **a1;
  **a1 = vaddq_s64(v12, xmmword_1A75DAC00);
  v13 = *v12.i64[0];
LABEL_6:
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v14 = v19;
  v15 = __src;
  if (v19 && &__src != a5)
  {
    if (__src == v21)
    {
      v17 = v19;
      if (v19 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v19, 8), v17 = v19, v15 = __src, v19))
      {
        memcpy(*a5, v15, 8 * v17);
        v15 = __src;
      }

      *(a5 + 8) = v14;
    }

    else
    {
      *a5 = __src;
      v16 = v20;
      *(a5 + 8) = v14;
      *(a5 + 12) = v16;
      __src = v21;
      v20 = 0;
      v15 = v21;
    }

    v19 = 0;
  }

  *(a5 + 64) = v11;
  *(a5 + 72) = v13;
  if (v15 != v21)
  {
    free(v15);
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSB_16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  result = mlir::ValueRange::ValueRange(&v15, a2 + 16, *(a2 + 8));
  v11 = v15;
  v12 = v16;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = mlir::TypeRange::dereference_iterator(v11, i);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(&v15, v14);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSA_16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::TupleType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::TupleType>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a1;
  mlir::ValueRange::ValueRange(&v16, a1 + 16, *(a1 + 8));
  if (a3[1] >= v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = a3[1];
  }

  mlir::ValueRange::ValueRange(&v16, *a3, v4);
  v5 = v16;
  v6 = v17;
  Context = mlir::Attribute::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v11[1] = &Context;
  v16 = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17 = v11;
  v15[0] = v5;
  v15[1] = v6;
  v8 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v5, 0, v5, v6);
  v13[1] = &v16;
  v14 = v15;
  v13[0] = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void mlir::AbstractType::get<mlir::UnrankedMemRefType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedMemRefType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSB_25UnrankedMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSA_25UnrankedMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  *(a2 + 144) = "builtin.unranked_memref";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedMemRefType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::getShape;
  {
    v5 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::cloneWith(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v7 = a2[5];
    v8 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v9 = a4;
    v10 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v8 = a2[2];
    v9 = a4;
    v10 = 0;
    v7 = 0;
LABEL_7:
    v12 = mlir::MemRefType::get(v5, v6, v9, v10, v7, v8);
    return mlir::BaseMemRefType::operator mlir::ShapedType(&v12);
  }

  v12 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return mlir::BaseMemRefType::operator mlir::ShapedType(&v12);
}

BOOL mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSB_25UnrankedMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSA_25UnrankedMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v5 = *(a2 + 16);
  if (!*(a2 + 8))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = *a5;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *a3;
LABEL_6:
  mlir::Attribute::getContext(&v9);
  return mlir::UnrankedMemRefType::get(v6, v7);
}

void mlir::AbstractType::get<mlir::UnrankedTensorType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedTensorType>,mlir::ValueSemantics<mlir::UnrankedTensorType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::UnrankedTensorType,mlir::TensorType,mlir::detail::UnrankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSB_25UnrankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSA_25UnrankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  *(a2 + 144) = "builtin.unranked_tensor";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedTensorType>,mlir::ValueSemantics<mlir::UnrankedTensorType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::getShape;
  {
    v5 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::cloneWith(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return mlir::TensorType::operator mlir::ShapedType(&v8);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSB_25UnrankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSA_25UnrankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::UnrankedTensorType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::UnrankedTensorType>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Attribute::getContext(&v7);
  v8 = v3;
  Context = mlir::Attribute::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v9[1] = &Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void mlir::AbstractType::get<mlir::VectorType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x1E69E9840];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::VectorType>,mlir::ValueSemantics<mlir::VectorType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSB_17VectorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSA_17VectorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  *(a2 + 144) = "builtin.vector";
  *(a2 + 152) = 14;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::VectorType>,mlir::ValueSemantics<mlir::VectorType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::getShape;
  {
    v5 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v4 = *a3;
    v5 = (a3 + 8);
  }

  else
  {
    v5 = (a2 + 16);
    v4 = *(a2 + 8);
  }

  result = mlir::VectorType::get(v4, *v5, a4, *(a2 + 32), *(a2 + 40));
  if (result)
  {
    v7 = *result;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        return result;
      }
    }

    else
    {
      v17 = v7;
      v18 = result;
      mlir::Builder::getZeroAttr();
      result = v18;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v17 + 8);
      v10 = *(v17 + 16);
      if (!v10)
      {
        return result;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSB_17VectorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSA_17VectorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::VectorType>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::VectorType>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v15 = *a2;
  v16 = v3;
  v14 = *a3;
  v19 = a1;
  v20[0] = &v15;
  v20[1] = &v14;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,llvm::ArrayRef<BOOL> const&)#1}::operator()(v20, &v16, &v17, &v18, &v28);
  mlir::Attribute::getContext(&v19);
  v21 = v23;
  v22 = 0x600000000;
  v4 = v29;
  if (v29)
  {
    if (v29 < 7)
    {
      v6 = v23;
      v5 = v29;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v29, 8);
      v5 = v29;
      if (!v29)
      {
LABEL_7:
        LODWORD(v22) = v4;
        goto LABEL_8;
      }

      v6 = v21;
    }

    memcpy(v6, v28, 8 * v5);
    goto LABEL_7;
  }

LABEL_8:
  v7 = v31;
  v8 = v33;
  v24 = v31;
  v25 = v27;
  v26 = xmmword_1A75D9A70;
  if (!v33)
  {
    v11 = v27;
    goto LABEL_16;
  }

  if (v33 < 0x29)
  {
    v10 = v27;
    v9 = v33;
    goto LABEL_14;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v25, v27, v33, 1);
  v9 = v33;
  if (v33)
  {
    v10 = v25;
LABEL_14:
    memcpy(v10, v32, v9);
  }

  *&v26 = v8;
  v4 = v22;
  v7 = v24;
  v11 = v25;
LABEL_16:
  v12 = mlir::VectorType::get(v21, v4, v7, v11, v8);
  if (v25 != v27)
  {
    free(v25);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v28 != &v30)
  {
    free(v28);
  }

  return v12;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,llvm::ArrayRef<BOOL> const&)#1}::operator()(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X3>, uint64_t a5@<X8>)
{
  v25[6] = *MEMORY[0x1E69E9840];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  v9 = a1[1];
  if (*a3)
  {
    v10 = *v9;
    *v9 = vaddq_s64(*v9, xmmword_1A75DAC00);
    v11 = *v10.i64[0];
  }

  else
  {
    v11 = 0;
  }

  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<BOOL>,void>::replace(*a4, a4[1], &v18);
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v12 = v23;
  if (v23 && &__src != a5)
  {
    if (__src == v25)
    {
      v14 = v23;
      if (v23 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v23, 8), (v14 = v23) != 0))
      {
        memcpy(*a5, __src, 8 * v14);
      }

      *(a5 + 8) = v12;
    }

    else
    {
      *a5 = __src;
      v13 = v24;
      *(a5 + 8) = v12;
      *(a5 + 12) = v13;
      __src = v25;
      v24 = 0;
    }

    v23 = 0;
  }

  *(a5 + 72) = a5 + 96;
  *(a5 + 64) = v11;
  *(a5 + 80) = xmmword_1A75D9A70;
  v15 = v18;
  if ((a5 + 72) != &v18)
  {
    v16 = v19;
    if (v19)
    {
      if (v18 != v21)
      {
        *(a5 + 72) = v18;
        *(a5 + 80) = v16;
        *(a5 + 88) = v20;
        goto LABEL_23;
      }

      v17 = v19;
      if (v19 < 0x29 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(a5 + 72, (a5 + 96), v19, 1), v15 = v18, (v17 = v19) != 0))
      {
        memcpy(*(a5 + 72), v15, v17);
        v15 = v18;
      }

      *(a5 + 80) = v16;
      v19 = 0;
    }
  }

  if (v15 != v21)
  {
    free(v15);
  }

LABEL_23:
  if (__src != v25)
  {
    free(__src);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<BOOL>,void>::replace(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v3 = xmmword_1A75D9A70;
  v16 = xmmword_1A75D9A70;
  if (a2)
  {
    do
    {
      while (1)
      {
        v4 = v16;
        if (v16 >= *(&v16 + 1))
        {
          break;
        }

        v5 = *a1++;
        *(v15 + v16) = v5;
        *&v16 = v4 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v6 = a1;
      v7 = a2;
      v8 = a3;
      v14 = v3;
      llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(&v15, a1);
      v3 = v14;
      a3 = v8;
      a1 = v6 + 1;
      a2 = v7 - 1;
    }

    while (v7 != 1);
LABEL_6:
    v9 = v15;
    v10 = v16;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v10 && &v15 != a3)
    {
      if (v9 != v17)
      {
        *a3 = v9;
        *(a3 + 8) = v10;
        *(a3 + 16) = *(&v16 + 1);
        return;
      }

      v11 = v10;
      if (v10 < 0x29 || (v12 = a3, llvm::SmallVectorBase<unsigned long long>::grow_pod(a3, (a3 + 24), v10, 1), a3 = v12, v9 = v15, (v11 = v16) != 0))
      {
        v13 = a3;
        memcpy(*a3, v9, v11);
        a3 = v13;
        v9 = v15;
      }

      *(a3 + 8) = v10;
      *&v16 = 0;
    }

    if (v9 != v17)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_1A75D9A70;
  }
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
  v9 = (37 * *a2) & (v6 - 1);
  v10 = &v7[v9];
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
    *(a3 + 8) = &v4[v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -1)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -2;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[v18 & v8];
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
    llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -1)
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
  *(a3 + 8) = &v4[v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 4 * v6);
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
        v7 = (v3 + 4 * (v13 & v5));
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

char *llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(char *__b, unsigned int a2)
{
  v2 = a2;
  v3 = __b;
  *&v45[12] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*__b & 1) == 0)
  {
    v8 = __b + 8;
    v7 = *(__b + 1);
    v9 = *(__b + 4);
    if (v2 > 4)
    {
      buffer = llvm::allocate_buffer(4 * v2, 4uLL);
      *(v3 + 1) = buffer;
      *(v3 + 2) = v2;
      v19 = (*v3 & 1) == 0;
      *v3 = *v3 & 1;
      if (v19)
      {
        v20 = v2;
      }

      else
      {
        v20 = 4;
      }

      if (!v19)
      {
        buffer = v3 + 8;
      }

      memset(buffer, 255, 4 * v20);
      if (!v9)
      {
LABEL_44:

        llvm::deallocate_buffer(v7, (4 * v9));
      }
    }

    else
    {
      *__b = 1;
      memset(__b + 8, 255, 0x10uLL);
      if (!v9)
      {
        goto LABEL_44;
      }
    }

    v21 = v7;
    while (1)
    {
      v27 = *v21;
      if (*v21 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_30:
      v21 = (v21 + 4);
      if (v21 == (v7 + 4 * v9))
      {
        goto LABEL_44;
      }
    }

    if (*v3)
    {
      v23 = 3;
      v22 = v3 + 8;
      v24 = (37 * v27) & 3;
      v25 = &v8[4 * v24];
      v26 = *v25;
      if (v27 == *v25)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(v3 + 1);
      v23 = *(v3 + 4) - 1;
      v24 = v23 & (37 * v27);
      v25 = &v22[4 * v24];
      v26 = *v25;
      if (v27 == *v25)
      {
LABEL_29:
        *v25 = v27;
        *v3 += 2;
        goto LABEL_30;
      }
    }

    v28 = 0;
    v29 = 1;
    while (v26 != -1)
    {
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v26 == -2;
      }

      if (v30)
      {
        v28 = v25;
      }

      v31 = v24 + v29++;
      v24 = v31 & v23;
      v25 = &v22[4 * (v31 & v23)];
      v26 = *v25;
      if (v27 == *v25)
      {
        goto LABEL_29;
      }
    }

    if (v28)
    {
      v25 = v28;
    }

    goto LABEL_29;
  }

  v10 = __b + 8;
  v11 = &v44;
  if (*(__b + 2) <= 0xFFFFFFFD)
  {
    v44 = *(__b + 2);
    v11 = v45;
    v12 = *(__b + 3);
    if (v12 > 0xFFFFFFFD)
    {
LABEL_11:
      v13 = *(__b + 4);
      if (v13 > 0xFFFFFFFD)
      {
        goto LABEL_12;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v12 = *(__b + 3);
    if (v12 > 0xFFFFFFFD)
    {
      goto LABEL_11;
    }
  }

  *v11++ = v12;
  v13 = *(__b + 4);
  if (v13 > 0xFFFFFFFD)
  {
LABEL_12:
    v14 = *(__b + 5);
    if (v14 > 0xFFFFFFFD)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *v11++ = v13;
  v14 = *(__b + 5);
  if (v14 > 0xFFFFFFFD)
  {
LABEL_13:
    v15 = *__b;
    if (v2 < 5)
    {
      goto LABEL_14;
    }

LABEL_51:
    *__b = v15 & 0xFFFFFFFE;
    __b = llvm::allocate_buffer(4 * v2, 4uLL);
    *(v3 + 1) = __b;
    *(v3 + 2) = v2;
    v32 = *v3;
    *v3 = *v3 & 1;
    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_52:
    v16 = 4;
    v17 = v3 + 8;
    goto LABEL_53;
  }

LABEL_50:
  *v11++ = v14;
  v15 = *__b;
  if (v2 >= 5)
  {
    goto LABEL_51;
  }

LABEL_14:
  *__b = v15 & 1;
  if (v15)
  {
    goto LABEL_52;
  }

LABEL_15:
  v16 = *(v3 + 4);
  if (!v16)
  {
    goto LABEL_54;
  }

  v17 = *(v3 + 1);
LABEL_53:
  __b = memset(v17, 255, 4 * v16);
LABEL_54:
  if (&v44 != v11)
  {
    v33 = &v44;
    while (1)
    {
      v39 = *v33;
      if (*v33 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_62:
      if (++v33 == v11)
      {
        return __b;
      }
    }

    if (*v3)
    {
      v35 = 3;
      v34 = v3 + 8;
      v36 = (37 * v39) & 3;
      v37 = &v10[4 * v36];
      v38 = *v37;
      if (v39 == *v37)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v34 = *(v3 + 1);
      v35 = *(v3 + 4) - 1;
      v36 = v35 & (37 * v39);
      v37 = &v34[4 * v36];
      v38 = *v37;
      if (v39 == *v37)
      {
LABEL_61:
        *v37 = v39;
        *v3 += 2;
        goto LABEL_62;
      }
    }

    v40 = 0;
    v41 = 1;
    while (v38 != -1)
    {
      if (v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = v38 == -2;
      }

      if (v42)
      {
        v40 = v37;
      }

      v43 = v36 + v41++;
      v36 = v43 & v35;
      v37 = &v34[4 * (v43 & v35)];
      v38 = *v37;
      if (v39 == *v37)
      {
        goto LABEL_61;
      }
    }

    if (v40)
    {
      v37 = v40;
    }

    goto LABEL_61;
  }

  return __b;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v3 = mlir::detail::MemRefTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

unint64_t mlir::detail::MemRefTypeStorage::construct(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 3);
  v5 = a2[5];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v9 + v8 <= a1[1]))
    {
      *a1 = v9 + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = v9;
        v12 = v7;
        if (v9 - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (v9 + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
          v16 = (v9 + 16);
          v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v18 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *v16 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 4;
          }

          while (v17);
          if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_14;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      v19 = a1;
      v25 = v4;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      v4 = v25;
      v9 = Slow;
      a1 = v19;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = v9;
    v12 = v7;
    do
    {
LABEL_13:
      v21 = *v12++;
      *v11++ = v21;
    }

    while (v12 != (v7 + 8 * v2));
LABEL_14:
    v6 = *a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  a1[10] += 56;
  if (v6 && (v22 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v22 + 56 <= a1[1]))
  {
    *a1 = v22 + 56;
  }

  else
  {
    v26 = v4;
    v24 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 56, 56, 3);
    v4 = v26;
    v22 = v24;
  }

  *v22 = 0;
  *(v22 + 8) = v9;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  *(v22 + 32) = v4;
  *(v22 + 48) = v5;
  return v22;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, void **a7, void *a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v34[0] = a2;
  v34[1] = a3;
  v30 = *a5;
  v10 = *a7;
  v31.i64[0] = *a6;
  v31.i64[1] = v10;
  if (v10)
  {
    v11 = *v10;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (v14)
      {
LABEL_4:
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
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v10 = v15[1];
          goto LABEL_16;
        }
      }
    }

    else
    {
      v27 = v11;
      v28 = a8;
      mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace();
      a8 = v28;
      v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v13 = *(v27 + 8);
      v14 = *(v27 + 16);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
  }

LABEL_16:
  v21 = *a8;
  v32 = v10;
  v33 = v21;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v41 = 0xFF51AFD7ED558CCDLL;
  memset(v38, 0, sizeof(v38));
  v35 = llvm::hashing::detail::hash_combine_range_impl<char const>(v30, v30 + 8 * *(&v30 + 1));
  v22 = vmovn_s64(v31);
  v23 = veor_s8(vshl_u32(v22, 0xFFFFFFFCFFFFFFF7), vshl_u32(v22, 0xFFFFFFF7FFFFFFFCLL));
  *&v24 = v23.u32[0];
  *(&v24 + 1) = v23.u32[1];
  v36 = v24;
  v37 = (v21 >> 4) ^ (v21 >> 9);
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v35, 0, v38, v39);
  v29 = &v30;
  v35 = &v30;
  *&v36 = v34;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, v25, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v3 = mlir::detail::MemRefTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_13AffineMapAttrERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_(uint64_t a1, uint64_t *a2, BOOL a3)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8), a3);
  *a2 = result;
  return result;
}

uint64_t mlir::ShapedType::cloneWith(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  return v5(v3, v4, &v7, a3);
}

uint64_t mlir::ShapedType::getNumElements(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v2)
    {
      v3 = v2 + 1;
      v4 = (v2 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v5 = &a1[v4];
      v6 = a1 + 1;
      v7 = 1;
      v8 = v4;
      v9 = 1;
      do
      {
        v7 *= *(v6 - 1);
        v9 *= *v6;
        v6 += 2;
        v8 -= 2;
      }

      while (v8);
      v10 = v9 * v7;
      if (v3 == v4)
      {
        return v10;
      }
    }

    else
    {
      v10 = 1;
      v5 = a1;
    }

    do
    {
      v12 = *v5++;
      v10 *= v12;
    }

    while (v5 != &a1[a2]);
    return v10;
  }

  return 1;
}

uint64_t mlir::DiagnosticArgument::DiagnosticArgument(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  return result;
}

{
  *result = 4;
  *(result + 8) = a2;
  return result;
}

void mlir::DiagnosticArgument::print(mlir::Attribute *this, llvm::raw_ostream *a2, __n128 a3)
{
  v3 = *this;
  if (*this > 2)
  {
    switch(v3)
    {
      case 3:
        v7 = *(this + 1);
        v6 = *(this + 2);
        v8 = *(a2 + 4);
        if (v6 <= *(a2 + 3) - v8)
        {
          if (v6)
          {
            v11 = a2;
            v12 = v6;
            memcpy(v8, v7, v6);
            *(v11 + 4) += v12;
          }
        }

        else
        {

          llvm::raw_ostream::write(a2, v7, v6);
        }

        break;
      case 4:
        v10 = *(a2 + 4);
        if (v10 >= *(a2 + 3))
        {
          v13 = this;
          a2 = llvm::raw_ostream::write(a2, 39);
          this = v13;
        }

        else
        {
          *(a2 + 4) = v10 + 1;
          *v10 = 39;
        }

        v16 = *(this + 1);
        v14 = a2;
        mlir::Type::print(&v16, a2);
        v15 = *(v14 + 4);
        if (v15 >= *(v14 + 3))
        {
          llvm::raw_ostream::write(v14, 39);
        }

        else
        {
          *(v14 + 4) = v15 + 1;
          *v15 = 39;
        }

        break;
      case 5:
        v5 = *(this + 1);

        llvm::raw_ostream::operator<<(a2, v5);
        break;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v9 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v9);
    }

    else if (v3 == 2)
    {
      v4 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v4);
    }
  }

  else
  {
    v16 = *(this + 1);
    mlir::Attribute::print(&v16, a2, 0);
  }
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, char a2)
{
  v13 = 264;
  LOBYTE(v12[0]) = a2;
  v3 = twineToStrRef(v12, a1 + 128);
  v4 = *(a1 + 16);
  v14 = 3;
  v15 = v3;
  v16 = v5;
  v6 = *(a1 + 24);
  v7 = &v14;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v14 && v4 + 24 * v6 > &v14)
    {
      v11 = &v14 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v14;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, const char **a2)
{
  v3 = twineToStrRef(a2, a1 + 128);
  v4 = *(a1 + 16);
  v12 = 3;
  v13 = v3;
  v14 = v5;
  v6 = *(a1 + 24);
  v7 = &v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= &v12 && v4 + 24 * v6 > &v12)
    {
      v11 = &v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

const char *twineToStrRef(const char **a1, uint64_t a2)
{
  v12[8] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = xmmword_1A75DA830;
  if (*(a1 + 33) == 1)
  {
    v2 = *(a1 + 32);
    if (v2 > 4)
    {
      if (v2 - 5 < 2)
      {
        v4 = *a1;
        v7 = a1[1];
        v6 = v12;
        if (v7)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      switch(v2)
      {
        case 1u:
          return 0;
        case 3u:
          v4 = *a1;
          if (!*a1)
          {
            return v4;
          }

          v9 = strlen(*a1);
          v6 = v12;
          if (!v9)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        case 4u:
          v3 = (*a1)[23];
          if (v3 >= 0)
          {
            v4 = *a1;
          }

          else
          {
            v4 = **a1;
          }

          if (v3 >= 0)
          {
            v5 = (*a1)[23];
          }

          else
          {
            v5 = *(*a1 + 1);
          }

          v6 = v12;
          if (!v5)
          {
            goto LABEL_19;
          }

LABEL_18:
          operator new[]();
      }
    }
  }

  llvm::Twine::toVector(a1, &v10);
  v6 = v10;
  v4 = v10;
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v6 != v12)
  {
    free(v6);
  }

  return v4;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10 = 0;
  v11 = a2;
  v3 = *(a1 + 24);
  v4 = &v10;
  if (v3 >= *(a1 + 28))
  {
    if (v2 <= &v10 && v2 + 24 * v3 > &v10)
    {
      v8 = &v10 - v2;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v3 + 1, 24);
      a1 = v9;
      v2 = *(v9 + 16);
      v4 = &v8[v2];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v3 + 1, 24);
      a1 = v7;
      v2 = *(v7 + 16);
      v4 = &v10;
    }
  }

  v5 = (v2 + 24 * *(a1 + 24));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 24);
  return result;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  v12[0] = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v12);
  v4 = *(a1 + 16);
  LODWORD(v12[0]) = 3;
  v12[1] = AttrData;
  v12[2] = v5;
  v6 = *(a1 + 24);
  v7 = v12;
  if (v6 >= *(a1 + 28))
  {
    if (v4 <= v12 && v4 + 24 * v6 > v12)
    {
      v11 = v12 - v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = &v11[v4];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v6 + 1, 24);
      v4 = *(a1 + 16);
      v7 = v12;
    }
  }

  v8 = v4 + 24 * *(a1 + 24);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  ++*(a1 + 24);
  return a1;
}

{
  v28 = 0;
  v29 = a2;
  v27[0] = 0;
  v27[1] = 0;
  v20 = 0;
  v24 = 0;
  v25 = 1;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v19 = &unk_1F1A362A8;
  v26 = v27;
  llvm::raw_ostream::SetBufferAndMode(&v19, 0, 0, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(&v14);
  v3 = *(a1 + 8);
  mlir::OpPrintingFlags::useLocalScope(&v14);
  ZinBondedInfo::SetPieceId(&v14, 16);
  if (v3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v14, 1);
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  mlir::Value::print(&v29, &v19, v17);
  LOWORD(v18) = 260;
  *&v17[0] = v27;
  v4 = twineToStrRef(v17, a1 + 128);
  v5 = a1 + 16;
  v6 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = v4;
  *&v15 = v7;
  v8 = *(a1 + 24);
  v9 = &v14;
  if (v8 >= *(a1 + 28))
  {
    if (v6 <= &v14 && v6 + 24 * v8 > &v14)
    {
      v13 = &v14 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v13[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 32), v8 + 1, 24);
      v6 = *(a1 + 16);
      v9 = &v14;
    }
  }

  v10 = v6 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  llvm::raw_ostream::~raw_ostream(&v19);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return a1;
}

void mlir::Diagnostic::appendOp(mlir::Diagnostic *this, mlir::Block **a2, const mlir::OpPrintingFlags *a3)
{
  memset(&v19, 0, sizeof(v19));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_1F1A362A8;
  v18 = &v19;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = *(a3 + 1);
  v7 = *a3;
  v8 = v6;
  v9 = *(a3 + 2);
  LODWORD(a3) = *(this + 2);
  mlir::OpPrintingFlags::useLocalScope(&v7);
  ZinBondedInfo::SetPieceId(&v7, 16);
  if (a3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v7, 1);
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  mlir::Operation::print(a2, &v11, v10);
}

void mlir::Diagnostic::print(mlir::Attribute *this, llvm::raw_ostream *a2, __n128 a3)
{
  v3 = *(this + 6);
  if (v3)
  {
    v5 = *(this + 2);
    v6 = 24 * v3;
    do
    {
      mlir::DiagnosticArgument::print(v5, a2, a3);
      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }
}

void mlir::Diagnostic::str(mlir::Diagnostic *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0;
  v12 = 0;
  v13 = 1;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v7 = &unk_1F1A362A8;
  v14 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v7, 0, 0, 0);
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(this + 2);
    v6 = 24 * v4;
    do
    {
      mlir::DiagnosticArgument::print(v5, &v7, v3);
      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  llvm::raw_ostream::~raw_ostream(&v7);
}

void std::vector<std::unique_ptr<mlir::Diagnostic>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void mlir::InFlightDiagnostic::report(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::detail::DiagnosticEngineImpl::emit(**this, this + 1);
    *this = 0;
  }

  if (*(this + 200) == 1)
  {
    mlir::Diagnostic::~Diagnostic((this + 8));
    *(this + 200) = 0;
  }
}

void mlir::detail::DiagnosticEngineImpl::emit(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(a1);
  v5 = *(a1 + 120);
  v6 = *(a1 + 112) + 40 * v5;
  v7 = v6 - 32;
  v8 = -40 * v5;
  while (v8)
  {
    v9 = *(v6 - 8);
    v6 -= 40;
    v4 = (*(v9 & 0xFFFFFFFFFFFFFFF8))();
    v7 -= 40;
    v8 += 40;
    if (v4)
    {
      goto LABEL_21;
    }
  }

  if (*(a2 + 2) != 2)
  {
    goto LABEL_21;
  }

  v10 = llvm::errs(v4);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_9:
    v13 = *(v10 + 4);
    if (*(v10 + 3) - v13 <= 6uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v18 = *a2;
  v11.n128_f64[0] = mlir::Attribute::print(&v18, v10, 0);
  v12 = *(v10 + 4);
  if (*(v10 + 3) - v12 <= 1uLL)
  {
    llvm::raw_ostream::write(v10, ": ", 2uLL);
    goto LABEL_9;
  }

  *v12 = 8250;
  *(v10 + 4) += 2;
  v13 = *(v10 + 4);
  if (*(v10 + 3) - v13 <= 6uLL)
  {
LABEL_10:
    llvm::raw_ostream::write(v10, "error: ", 7uLL);
    v14 = *(a2 + 6);
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_14:
    v15 = a2[2];
    v16 = 24 * v14;
    do
    {
      mlir::DiagnosticArgument::print(v15, v10, v11);
      v15 = (v15 + 24);
      v16 -= 24;
    }

    while (v16);
    goto LABEL_16;
  }

LABEL_13:
  *(v13 + 3) = 540701295;
  *v13 = 1869771365;
  *(v10 + 4) += 7;
  v14 = *(a2 + 6);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_16:
  v17 = *(v10 + 4);
  if (v17 < *(v10 + 3))
  {
    *(v10 + 4) = v17 + 1;
    *v17 = 10;
    if (*(v10 + 4) == *(v10 + 2))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  llvm::raw_ostream::write(v10, 10);
  if (*(v10 + 4) != *(v10 + 2))
  {
LABEL_20:
    llvm::raw_ostream::flush_nonempty(v10);
  }

LABEL_21:
  std::recursive_mutex::unlock(a1);
}

void mlir::DiagnosticEngine::~DiagnosticEngine(std::recursive_mutex **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<mlir::detail::DiagnosticEngineImpl>::operator()[abi:nn200100](this, v1);
  }
}

uint64_t mlir::DiagnosticEngine::registerHandler(std::recursive_mutex **a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v6 = *&(*a1)[3].__m_.__opaque[8];
  *&v5[3].__m_.__opaque[8] = v6 + 1;
  v7 = *(a2 + 3);
  v11 = v6;
  v14 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 2) != 0 && (v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 8))(&v12, a2);
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v12 = *a2;
      v13 = *(a2 + 2);
    }

    *(a2 + 3) = 0;
  }

  llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::try_emplace<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>(v5[1].__m_.__opaque, &v11, &v12);
  v8 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
    }

    if ((v8 & 2) == 0)
    {
      llvm::deallocate_buffer(v12, *(&v12 + 1));
    }
  }

  std::recursive_mutex::unlock(v4);
  return v6;
}

void mlir::DiagnosticEngine::eraseHandler(std::recursive_mutex **this, uint64_t a2)
{
  v4 = *this;
  std::recursive_mutex::lock(*this);
  v5 = *this;
  v6 = *(*this)[1].__m_.__opaque;
  if (v6)
  {
    v7 = &v5[1].__m_.__opaque[8];
    v8 = 2;
  }

  else
  {
    v7 = *&v5[1].__m_.__opaque[8];
    v8 = *&v5[1].__m_.__opaque[16];
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
LABEL_4:
      v11 = &v7[16 * v10];
      v12 = &v7[16 * v9];
      goto LABEL_17;
    }
  }

  v13 = v8 - 1;
  v14 = (v8 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v15 = *&v7[16 * v14];
  if (v15 == a2)
  {
LABEL_7:
    v11 = &v7[16 * v14];
    if ((v6 & 1) == 0)
    {
      v12 = *&v5[1].__m_.__opaque[8] + 16 * *&v5[1].__m_.__opaque[16];
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 1;
    while (v15 != -1)
    {
      v17 = v14 + v16++;
      v14 = v17 & v13;
      v15 = *&v7[16 * v14];
      if (v15 == a2)
      {
        goto LABEL_7;
      }
    }

    if ((v6 & 1) == 0)
    {
      v7 = *&v5[1].__m_.__opaque[8];
      v9 = *&v5[1].__m_.__opaque[16];
      v10 = v9;
      goto LABEL_4;
    }

    v11 = &v5[1].__m_.__opaque[40];
  }

  v12 = &v5[1].__m_.__opaque[40];
LABEL_17:
  v18 = v11 == v12;
  v19 = &v5[1].__m_.__opaque[48];
  if (!v18)
  {
    v19 = v11 + 8;
  }

  v20 = *v19;
  if (v20 != *&v5[1].__m_.__opaque[48])
  {
    llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase((*this)[1].__m_.__opaque, (*&v5[1].__m_.__opaque[40] + 40 * v20));
  }

  std::recursive_mutex::unlock(v4);
}

void emitDiag(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v30 = a2;
  Context = mlir::Attribute::getContext(&v30);
  DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
  v9 = v30;
  *a1 = DiagEngine;
  *(a1 + 8) = v9;
  *(a1 + 16) = a3;
  *(a1 + 24) = a1 + 40;
  v10 = (a1 + 24);
  *(a1 + 136) = 0u;
  *(a1 + 32) = 0x400000000;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0;
  if (*(a4 + 32) >= 2u)
  {
    LODWORD(v19) = 3;
    v20 = twineToStrRef(a4, a1 + 136);
    v21 = v11;
    v12 = *(a1 + 32);
    v13 = *(a1 + 24);
    v14 = &v19;
    if (v12 >= *(a1 + 36))
    {
      if (v13 <= &v19 && v13 + 24 * v12 > &v19)
      {
        v18 = &v19 - v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v12 + 1, 24);
        v13 = *v10;
        v14 = &v18[*v10];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v12 + 1, 24);
        v13 = *v10;
        v14 = &v19;
      }
    }

    v15 = v13 + 24 * *(a1 + 32);
    v16 = *v14;
    *(v15 + 16) = v14[2];
    *v15 = v16;
    ++*(a1 + 32);
  }

  if (mlir::MLIRContext::shouldPrintStackTraceOnDiagnostic(Context))
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v20) = 0;
    v24 = 0;
    v25 = 1;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v19 = &unk_1F1A362A8;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v19, 0, 0, 0);
    llvm::sys::PrintStackTrace(&v19, 0);
    llvm::raw_ostream::~raw_ostream(&v19);
    v17 = HIBYTE(v29);
    if (v29 < 0)
    {
      v17 = v28;
    }

    if (v17)
    {
      operator new();
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }
  }
}

void mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(mlir::MLIRContext **this)
{
  if (*this)
  {
    DiagEngine = mlir::MLIRContext::getDiagEngine(this[1]);
    mlir::DiagnosticEngine::eraseHandler(DiagEngine, *this);
  }
}

void mlir::ParallelDiagnosticHandler::~ParallelDiagnosticHandler(mlir::ParallelDiagnosticHandler *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void mlir::ParallelDiagnosticHandler::setOrderIDForThread(mlir::ParallelDiagnosticHandler *this, uint64_t a2)
{
  v3 = *this;
  threadid = llvm::get_threadid(this);
  std::recursive_mutex::lock((v3 + 24));
  *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](v3 + 96, &threadid) = a2;
  std::recursive_mutex::unlock((v3 + 24));
}

void mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(mlir::ParallelDiagnosticHandler *this)
{
  v1 = *this;
  threadid = llvm::get_threadid(this);
  std::recursive_mutex::lock((v1 + 24));
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v1 + 96);
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid));
    v7 = *(v4 + 16 * v6);
    if (threadid == v7)
    {
LABEL_3:
      *(v4 + 16 * v6) = -2;
      *(v1 + 104) = vadd_s32(*(v1 + 104), 0x1FFFFFFFFLL);
    }

    else
    {
      v8 = 1;
      while (v7 != -1)
      {
        v9 = v6 + v8++;
        v6 = v9 & v5;
        v7 = *(v4 + 16 * v6);
        if (threadid == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  std::recursive_mutex::unlock((v1 + 24));
}

void std::vector<std::unique_ptr<char []>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

mlir::detail::ParallelDiagnosticHandlerImpl *mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::detail::ParallelDiagnosticHandlerImpl *this, mlir::MLIRContext *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = llvm::PrettyStackTraceEntry::PrettyStackTraceEntry(this, 0);
  *v4 = &unk_1F19FE990;
  MEMORY[0x1AC559C60](v4 + 3);
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = a2;
  DiagEngine = mlir::MLIRContext::getDiagEngine(a2);
  *&v10 = this;
  v11 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1},mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1},void>::Callbacks + 2;
  *(this + 18) = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v10);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      if ((v11 & 2) != 0)
      {
        v8 = &v10;
      }

      else
      {
        v8 = v10;
      }

      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10, *(&v10 + 1));
    }
  }

  return this;
}

void mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl(mlir::detail::ParallelDiagnosticHandlerImpl *this)
{
  mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl(this);
}

{
  *this = &unk_1F19FE990;
  DiagEngine = mlir::MLIRContext::getDiagEngine(*(this + 19));
  mlir::DiagnosticEngine::eraseHandler(DiagEngine, *(this + 18));
  v3 = *(this + 15);
  if (v3 != *(this + 16))
  {
    v7 = this;
    mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(this, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::~ParallelDiagnosticHandlerImpl()::{lambda(mlir::Diagnostic &)#1}>, &v7);
    v3 = *(this + 15);
  }

  if (v3)
  {
    v4 = *(this + 16);
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 200;
        mlir::Diagnostic::~Diagnostic((v4 - 192));
        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(this + 15);
    }

    *(this + 16) = v3;
    operator delete(v5);
  }

  llvm::deallocate_buffer(*(this + 12), (16 * *(this + 28)));
}

void sub_1A6C0823C()
{

  JUMPOUT(0x1AC55A070);
}

void mlir::detail::ParallelDiagnosticHandlerImpl::print(uint64_t this, llvm::raw_ostream *a2)
{
  if (*(this + 120) != *(this + 128))
  {
    v7[3] = v2;
    v7[4] = v3;
    v4 = *(a2 + 4);
    if (*(a2 + 3) - v4 > 0x16uLL)
    {
      qmemcpy(v4, "In-Flight Diagnostics:\n", 23);
      *(a2 + 4) += 23;
    }

    else
    {
      v5 = this;
      v6 = a2;
      llvm::raw_ostream::write(a2, "In-Flight Diagnostics:\n", 0x17uLL);
      a2 = v6;
      this = v5;
    }

    v7[0] = a2;
    mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(this, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ParallelDiagnosticHandlerImpl::print(llvm::raw_ostream &)::{lambda(mlir::Diagnostic const&)#1}>, v7);
  }
}

uint64_t mlir::detail::ParallelDiagnosticHandlerImpl::ParallelDiagnosticHandlerImpl(mlir::MLIRContext *)::{lambda(mlir::Diagnostic &)#1}::operator()(llvm *a1, uint64_t *a2)
{
  v3 = *a1;
  threadid = llvm::get_threadid(a1);
  v18 = threadid;
  std::recursive_mutex::lock((v3 + 24));
  v5 = *(v3 + 112);
  if (!v5)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *(v3 + 96);
  v7 = v5 - 1;
  v8 = v7 & (((0xBF58476D1CE4E5B9 * threadid) >> 31) ^ (484763065 * threadid));
  v9 = *(v6 + 16 * v8);
  if (threadid != v9)
  {
    v15 = 1;
    while (v9 != -1)
    {
      v16 = v8 + v15++;
      v8 = v16 & v7;
      v9 = *(v6 + 16 * (v16 & v7));
      if (threadid == v9)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_11;
  }

LABEL_3:
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](v3 + 96, &v18);
  v11 = *(v3 + 128);
  v12 = (v3 + 120);
  if (v11 >= *(v3 + 136))
  {
    v13 = std::vector<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::__emplace_back_slow_path<unsigned long &,mlir::Diagnostic>(v12, v10, a2);
  }

  else
  {
    std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(v12, *(v3 + 128), v10, a2);
    v13 = v11 + 200;
  }

  *(v3 + 128) = v13;
  v14 = 1;
LABEL_12:
  std::recursive_mutex::unlock((v3 + 24));
  return v14;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v2 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t std::vector<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::__emplace_back_slow_path<unsigned long &,mlir::Diagnostic>(void **a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3) + 1;
  if (v3 > 0x147AE147AE147AELL)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v5 = 0x147AE147AE147AELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(a1, v6, a2, a3);
  v7 = a1[1];
  v8 = (v6 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>,mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = (v6 + 200);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6 + 200;
}

void std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>::construct[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic,unsigned long &,mlir::Diagnostic>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v24 = *a4;
  v25 = *(a4 + 2);
  __src = v28;
  v27 = 0x400000000;
  if (*(a4 + 6))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(&__src, a4 + 2);
  }

  *v29 = *(a4 + 8);
  v7 = a4[18];
  a4[16] = 0;
  a4[17] = 0;
  __p = *(a4 + 19);
  v8 = a4[21];
  v30 = v7;
  a4[18] = 0;
  a4[19] = 0;
  a4[20] = 0;
  a4[21] = 0;
  v32 = v8;
  v33 = &v35;
  v34 = 0;
  if (*(a4 + 46))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(&v33, a4 + 22);
  }

  *a2 = v6;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0x400000000;
  if ((a2 + 24) != &__src)
  {
    v9 = v27;
    if (v27)
    {
      if (__src != v28)
      {
        *(a2 + 24) = __src;
        v10 = HIDWORD(v27);
        *(a2 + 32) = v9;
        *(a2 + 36) = v10;
        __src = v28;
        HIDWORD(v27) = 0;
LABEL_15:
        LODWORD(v27) = 0;
        goto LABEL_16;
      }

      if (v27 < 5)
      {
        v11 = v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 24, (a2 + 40), v27, 24);
        v11 = v27;
        if (!v27)
        {
          goto LABEL_14;
        }
      }

      memcpy(*(a2 + 24), __src, 24 * v11);
LABEL_14:
      *(a2 + 32) = v9;
      goto LABEL_15;
    }
  }

LABEL_16:
  *(a2 + 184) = a2 + 200;
  v13 = v32;
  v12 = v33;
  *(a2 + 152) = v30;
  *(a2 + 136) = *v29;
  v29[0] = 0;
  v29[1] = 0;
  *(a2 + 160) = __p;
  *(a2 + 176) = v13;
  v30 = 0;
  __p = 0uLL;
  v32 = 0;
  *(a2 + 192) = 0;
  if ((a2 + 184) != &v33)
  {
    v14 = v34;
    if (v34)
    {
      if (v12 == &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 184, (a2 + 200), v34, 24);
        v12 = v33;
        if (v34)
        {
          memcpy(*(a2 + 184), v33, 24 * v34);
          v12 = v33;
        }

        *(a2 + 192) = v14;
      }

      else
      {
        *(a2 + 184) = v12;
        v15 = HIDWORD(v34);
        *(a2 + 192) = v14;
        *(a2 + 196) = v15;
        v33 = &v35;
        HIDWORD(v34) = 0;
        v12 = &v35;
      }

      LODWORD(v34) = 0;
    }
  }

  if (v12 != &v35)
  {
    free(v12);
  }

  v16 = __p;
  if (__p)
  {
    v17 = *(&__p + 1);
    v18 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    *(&__p + 1) = v16;
    operator delete(v18);
  }

  v19 = v29[0];
  if (v29[0])
  {
    v20 = v29[1];
    v21 = v29[0];
    if (v29[1] != v29[0])
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
      v21 = v29[0];
    }

    v29[1] = v19;
    operator delete(v21);
  }

  if (__src != v28)
  {
    free(__src);
  }
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>,mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *(a4 + v7) = *(v6 + v7);
      v10 = *(v6 + v7 + 8);
      v11 = *(v6 + v7 + 16);
      *(a4 + v7 + 24) = a4 + v7 + 40;
      v12 = a4 + v7 + 24;
      *(v12 - 8) = v11;
      *(v12 - 16) = v10;
      *(v12 + 8) = 0x400000000;
      if (*(v6 + v7 + 32))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v12, (v8 + 24));
      }

      v9[17] = 0;
      v9[18] = 0;
      v9[19] = 0;
      *(v9 + 17) = *(v8 + 136);
      v9[19] = *(v8 + 152);
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      v9[20] = 0;
      v9[21] = 0;
      v9[22] = 0;
      *(v9 + 10) = *(v8 + 160);
      v9[22] = *(v8 + 176);
      *(v8 + 160) = 0;
      *(v8 + 168) = 0;
      *(v8 + 176) = 0;
      v9[23] = v9 + 25;
      v9[24] = 0;
      v13 = (v9 + 23);
      if (*(v8 + 192))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v13, (v6 + v7 + 184));
      }

      v7 += 200;
    }

    while (v8 + 200 != a3);
    while (v6 != a3)
    {
      mlir::Diagnostic::~Diagnostic((v6 + 8));
      v6 += 200;
    }
  }
}

void *llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::grow(uint64_t a1, int a2)
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
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
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
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v16 & (((0xBF58476D1CE4E5B9 * v25) >> 31) ^ (484763065 * v25));
          v23 = &result[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
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
      *(v20 - 2) = -1;
      *v20 = -1;
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
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void mlir::detail::ParallelDiagnosticHandlerImpl::emitDiagnostics(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  if (v7 - v6 < 1)
  {
    v11 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v7, &v16, 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3), 0, v11);
    v14 = *(a1 + 120);
    i = *(a1 + 128);
    if (v14 != i)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E5398];
    v9 = 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3);
    while (1)
    {
      v10 = operator new(200 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v15 = v10;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v7, &v16, 0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3), v10, v9);
    operator delete(v15);
    v14 = *(a1 + 120);
    for (i = *(a1 + 128); v14 != i; v14 += 200)
    {
LABEL_10:
      a2(a3, v14 + 8);
    }
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(mlir::Diagnostic *result, unint64_t *a2, uint64_t a3, unint64_t a4, void *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v6 = result;
    if (a4 == 2)
    {
      v8 = *(a2 - 25);
      v7 = (a2 - 25);
      if (v8 < *result)
      {

        std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(result, v7);
      }
    }

    else
    {
      v9 = a4;
      if (a4 <= 0)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, a2);
      }

      else
      {
        v12 = a4 >> 1;
        v13 = (result + 200 * (a4 >> 1));
        v14 = a4 - (a4 >> 1);
        if (a4 <= a6)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, v13, a3, a4 >> 1, a5);
          v18 = &a5[25 * v12];
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6 + 200 * (v9 >> 1), a2, a3, v9 - (v9 >> 1), v18);
          v19 = &a5[25 * v9];
          v20 = v18;
          v21 = a5;
          while (v20 != v19)
          {
            if (*v20 >= *v21)
            {
              *v6 = *v21;
              mlir::Diagnostic::operator=(v6 + 8, v21 + 1);
              v21 += 25;
              v6 = (v6 + 200);
              if (v21 == v18)
              {
                goto LABEL_21;
              }
            }

            else
            {
              *v6 = *v20;
              mlir::Diagnostic::operator=(v6 + 8, v20 + 1);
              v20 += 25;
              v6 = (v6 + 200);
              if (v21 == v18)
              {
LABEL_21:
                if (v20 != v19)
                {
                  v22 = 0;
                  do
                  {
                    v23 = &v20[v22 + 25];
                    *(v6 + v22 * 8) = v20[v22];
                    mlir::Diagnostic::operator=(v6 + v22 * 8 + 8, &v20[v22 + 1]);
                    v22 += 25;
                  }

                  while (v23 != v19);
                }

                goto LABEL_28;
              }
            }
          }

          if (v21 != v18)
          {
            v24 = 0;
            do
            {
              v25 = &v21[v24 + 25];
              *(v6 + v24 * 8) = v21[v24];
              mlir::Diagnostic::operator=(v6 + v24 * 8 + 8, &v21[v24 + 1]);
              v24 += 25;
            }

            while (v25 != v18);
          }

LABEL_28:
          if (a5)
          {
            v26 = (a5 + 1);
            do
            {
              mlir::Diagnostic::~Diagnostic(v26);
              v26 = (v27 + 200);
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, v13, a3, v12, a5, a6);
          std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v13, a2, a3, v14, a5, a6);

          std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v6, v13, a2, a3, v12, v14, a5, a6);
        }
      }
    }
  }
}

void std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(unint64_t *a1, unint64_t *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  v4 = a1 + 25;
  if (a1 + 25 == a2)
  {
    return;
  }

  v5 = &v56;
  v6 = a1;
  while (2)
  {
    v7 = v4;
    v8 = *v4;
    if (v8 >= *v6)
    {
      goto LABEL_4;
    }

    v47 = v6[26];
    v48 = *(v6 + 54);
    v46 = v8;
    v49[0] = v50;
    v49[1] = 0x400000000;
    if (*(v6 + 58))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v49, v6 + 28);
    }

    *v51 = *(v6 + 21);
    v52 = v6[44];
    v6[42] = 0;
    v6[43] = 0;
    *__p = *(v6 + 45);
    v9 = v6[47];
    v6[44] = 0;
    v6[45] = 0;
    v6[46] = 0;
    v6[47] = 0;
    v54 = v9;
    v55[0] = v5;
    v10 = v5;
    v55[1] = 0;
    if (*(v6 + 98))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v55, v6 + 48);
    }

    v11 = *v6;
    v12 = v7;
    while (1)
    {
      v13 = v6;
      *v12 = v11;
      v15 = (v6 + 1);
      v14 = v6[1];
      *(v12 + 4) = *(v6 + 4);
      v12[1] = v14;
      v16 = v6[3];
      v17 = v6 + 5;
      if (v16 == v17)
      {
        v20 = *(v13 + 8);
        v21 = *(v12 + 8);
        if (v21 >= v20)
        {
          if (v20)
          {
            memmove(v12[3], v16, 24 * v20);
          }
        }

        else
        {
          if (*(v12 + 9) < v20)
          {
            *(v12 + 8) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod((v12 + 3), v12 + 5, v20, 24);
            v21 = 0;
            v22 = *(v13 + 8);
            if (!*(v13 + 8))
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          if (v21)
          {
            memmove(v12[3], v16, 24 * v21);
            v22 = *(v13 + 8) - v21;
            if (!v22)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          v21 = 0;
          v22 = *(v13 + 8);
          if (*(v13 + 8))
          {
LABEL_24:
            memcpy((v12[3] + 24 * v21), (v13[3] + 24 * v21), 24 * v22);
          }
        }

LABEL_25:
        *(v12 + 8) = v20;
        *(v13 + 8) = 0;
        v19 = v12[17];
        if (!v19)
        {
          goto LABEL_33;
        }

LABEL_26:
        v23 = v12 + 18;
        v24 = v12[18];
        v25 = v19;
        if (v24 != v19)
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

          while (v24 != v19);
          v25 = v12[17];
        }

        *v23 = v19;
        operator delete(v25);
        *v23 = 0;
        v12[19] = 0;
        goto LABEL_33;
      }

      v18 = v12[3];
      if (v18 != v12 + 5)
      {
        free(v18);
        v16 = v13[3];
      }

      v12[3] = v16;
      v12[4] = v13[4];
      v13[3] = v17;
      v13[4] = 0;
      v19 = v12[17];
      if (v19)
      {
        goto LABEL_26;
      }

LABEL_33:
      *(v12 + 17) = *(v13 + 17);
      v12[19] = v13[19];
      v13[17] = 0;
      v13[18] = 0;
      v13[19] = 0;
      v28 = v12[20];
      if (v28)
      {
        v30 = v12 + 21;
        v29 = v12[21];
        v31 = v12[20];
        if (v29 != v28)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v31 = v12[20];
        }

        *v30 = v28;
        operator delete(v31);
        *v30 = 0;
        v12[22] = 0;
      }

      v33 = (v13 + 24);
      v32 = *(v13 + 48);
      *(v12 + 10) = *(v13 + 10);
      v12[22] = v13[22];
      v13[20] = 0;
      v13[21] = 0;
      v13[22] = 0;
      if (v32)
      {
        break;
      }

      *(v12 + 48) = 0;
      v36 = v46;
      if (v13 == a1)
      {
        goto LABEL_48;
      }

LABEL_44:
      v6 = v13 - 25;
      v11 = *(v13 - 25);
      v12 = v13;
      if (v36 >= v11)
      {
        goto LABEL_49;
      }
    }

    v34 = v12[23];
    if (v34 != v12 + 25)
    {
      free(v34);
      v32 = *v33;
    }

    v12[23] = v13[23];
    v35 = *(v13 + 49);
    *(v12 + 48) = v32;
    *(v12 + 49) = v35;
    v13[23] = (v13 + 25);
    *(v13 + 49) = 0;
    *v33 = 0;
    v36 = v46;
    if (v13 != a1)
    {
      goto LABEL_44;
    }

LABEL_48:
    v13 = a1;
LABEL_49:
    *v13 = v36;
    mlir::Diagnostic::operator=(v15, &v47);
    v5 = v10;
    if (v55[0] != v10)
    {
      free(v55[0]);
    }

    v37 = __p[0];
    v2 = a2;
    if (__p[0])
    {
      v38 = __p[1];
      v39 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p[0];
      }

      __p[1] = v37;
      operator delete(v39);
    }

    v40 = v51[0];
    if (v51[0])
    {
      v41 = v51[1];
      v42 = v51[0];
      if (v51[1] != v51[0])
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
        v42 = v51[0];
      }

      v51[1] = v40;
      operator delete(v42);
    }

    if (v49[0] != v50)
    {
      free(v49[0]);
    }

LABEL_4:
    v4 = v7 + 25;
    v6 = v7;
    if (v7 + 25 != v2)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return result;
  }

  v7 = result;
  if (a4 == 2)
  {
    v13 = *(a2 - 25);
    v14 = a5 + 40;
    if (v13 >= *result)
    {
      *a5 = *result;
      v18 = *(result + 8);
      *(a5 + 16) = *(result + 16);
      *(a5 + 8) = v18;
      *(a5 + 24) = v14;
      *(a5 + 32) = 0x400000000;
      if (*(result + 32))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 24, (result + 24));
      }

      *(a5 + 136) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      *(a5 + 136) = *(v7 + 136);
      *(a5 + 152) = *(v7 + 152);
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(v7 + 160);
      *(a5 + 176) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(a5 + 184) = a5 + 200;
      *(a5 + 192) = 0;
      if (*(v7 + 192))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 184, (v7 + 184));
      }

      *(a5 + 200) = *(a2 - 25);
      v19 = *(a2 - 24);
      v20 = *(a2 - 46);
      *(a5 + 224) = a5 + 240;
      result = a5 + 224;
      *(a5 + 216) = v20;
      *(a5 + 208) = v19;
      *(a5 + 232) = 0x400000000;
      if (*(a2 - 42))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, a2 - 22);
      }

      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 352) = 0;
      *(a5 + 336) = *(a2 - 4);
      *(a5 + 352) = *(a2 - 6);
      *(a2 - 8) = 0;
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a5 + 360) = 0;
      *(a5 + 368) = 0;
      *(a5 + 376) = 0;
      *(a5 + 360) = *(a2 - 5);
      *(a5 + 376) = *(a2 - 3);
      *(a2 - 5) = 0;
      *(a2 - 4) = 0;
      *(a2 - 3) = 0;
      *(a5 + 384) = a5 + 400;
      *(a5 + 392) = 0;
      if (*(a2 - 2))
      {
        v11 = (a2 - 2);
        v12 = a5 + 384;
        goto LABEL_29;
      }
    }

    else
    {
      *a5 = v13;
      v15 = *(a2 - 24);
      *(a5 + 16) = *(a2 - 46);
      *(a5 + 8) = v15;
      *(a5 + 24) = v14;
      *(a5 + 32) = 0x400000000;
      if (*(a2 - 42))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 24, a2 - 22);
      }

      *(a5 + 136) = 0;
      *(a5 + 144) = 0;
      *(a5 + 152) = 0;
      *(a5 + 136) = *(a2 - 4);
      *(a5 + 152) = *(a2 - 6);
      *(a2 - 8) = 0;
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a5 + 160) = 0;
      *(a5 + 168) = 0;
      *(a5 + 176) = 0;
      *(a5 + 160) = *(a2 - 5);
      *(a5 + 176) = *(a2 - 3);
      *(a2 - 5) = 0;
      *(a2 - 4) = 0;
      *(a2 - 3) = 0;
      *(a5 + 184) = a5 + 200;
      *(a5 + 192) = 0;
      if (*(a2 - 2))
      {
        llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a5 + 184, a2 - 2);
      }

      *(a5 + 200) = *v7;
      v16 = *(v7 + 8);
      v17 = *(v7 + 16);
      *(a5 + 224) = a5 + 240;
      result = a5 + 224;
      *(a5 + 216) = v17;
      *(a5 + 208) = v16;
      *(a5 + 232) = 0x400000000;
      if (*(v7 + 32))
      {
        result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v7 + 24));
      }

      *(a5 + 336) = 0;
      *(a5 + 344) = 0;
      *(a5 + 352) = 0;
      *(a5 + 336) = *(v7 + 136);
      *(a5 + 352) = *(v7 + 152);
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(a5 + 360) = 0;
      *(a5 + 368) = 0;
      *(a5 + 376) = 0;
      *(a5 + 360) = *(v7 + 160);
      *(a5 + 376) = *(v7 + 176);
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 176) = 0;
      *(a5 + 384) = a5 + 400;
      *(a5 + 392) = 0;
      if (*(v7 + 192))
      {
        v12 = a5 + 384;
        v11 = (v7 + 184);
        goto LABEL_29;
      }
    }
  }

  else if (a4 == 1)
  {
    *a5 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    *(a5 + 24) = a5 + 40;
    result = a5 + 24;
    *(a5 + 16) = v9;
    *(a5 + 8) = v8;
    *(a5 + 32) = 0x400000000;
    if (*(v7 + 32))
    {
      result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v7 + 24));
    }

    *(a5 + 136) = 0;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 136) = *(v7 + 136);
    *(a5 + 152) = *(v7 + 152);
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    *(a5 + 176) = 0;
    *(a5 + 160) = *(v7 + 160);
    *(a5 + 176) = *(v7 + 176);
    *(v7 + 160) = 0;
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(a5 + 184) = a5 + 200;
    *(a5 + 192) = 0;
    v10 = a5 + 184;
    if (*(v7 + 192))
    {
      v11 = (v7 + 184);
      v12 = v10;
LABEL_29:

      return llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v12, v11);
    }
  }

  else if (a4 > 8)
  {
    v21 = a4 >> 1;
    v22 = 200 * (a4 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, v22 + result, a3, v21, a5, v21);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>((v22 + v7), a2, a3, a4 - v21, (a5 + v22), a4 - v21);

    return std::__merge_move_construct[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v7, v22 + v7, v22 + v7, a2, a5);
  }

  else
  {

    return std::__insertion_sort_move[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, a2, a5);
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (!a6)
  {
    return;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v10 = 0;
    v11 = -a5;
    while (*a2 >= *&v10[result])
    {
      v10 += 200;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    v13 = -v11;
    v54 = &v10[result];
    if (-v11 >= a6)
    {
      if (v11 == -1)
      {
        v46 = &v10[result];

        std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v46, a2);
        return;
      }

      v22 = v13 / 2;
      v16 = &v10[200 * (v13 / 2) + result];
      v15 = a2;
      if (a2 != a3)
      {
        v24 = 0x8F5C28F5C28F5C29 * ((a3 - a2) >> 3);
        v15 = a2;
        do
        {
          v25 = v24 >> 1;
          v26 = &v15[200 * (v24 >> 1)];
          v28 = *v26;
          v27 = v26 + 200;
          v24 += ~(v24 >> 1);
          if (v28 < *v16)
          {
            v15 = v27;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
      }

      v14 = 0x8F5C28F5C28F5C29 * ((v15 - a2) >> 3);
      v23 = v15;
      if (a2 != v16)
      {
LABEL_27:
        v23 = v16;
        if (a2 != v15)
        {
          v47 = v14;
          v48 = a8;
          v49 = a4;
          v52 = a6;
          v53 = result;
          v51 = a3;
          std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v16, a2);
          v23 = (v16 + 25);
          v29 = a2 + 200;
          for (i = a7; v29 != v15; v29 += 200)
          {
            if (v23 == a2)
            {
              a2 = v29;
            }

            std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v23, v29);
            v23 += 200;
          }

          if (v23 != a2)
          {
            v30 = v23;
            v31 = a2;
            while (1)
            {
              std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v30, v31);
              v31 += 200;
              v32 = v30 + 200 == a2;
              if (v31 == v15)
              {
                if (v30 + 200 == a2)
                {
                  break;
                }

                v31 = a2 + 200;
                v30 += 400;
                while (1)
                {
                  std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(v30 - 25, a2);
                  v32 = v30 == a2;
                  if (v31 != v15)
                  {
                    break;
                  }

                  v33 = v30 == a2;
                  v30 += 200;
                  if (v33)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                v30 += 200;
              }

              if (v32)
              {
                a2 = v31;
              }
            }
          }

LABEL_44:
          a3 = v51;
          a6 = v52;
          result = v53;
          a4 = v49;
          a7 = i;
          v14 = v47;
          a8 = v48;
        }
      }
    }

    else
    {
      v14 = a6 / 2;
      v15 = &a2[200 * (a6 / 2)];
      v16 = a2;
      if (&a2[-result] != v10)
      {
        v17 = 0x8F5C28F5C28F5C29 * ((&a2[-result] - v10) >> 3);
        v16 = &v10[result];
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[25 * (v17 >> 1)];
          v21 = *v19;
          v20 = v19 + 25;
          v17 += ~(v17 >> 1);
          if (*v15 < v21)
          {
            v17 = v18;
          }

          else
          {
            v16 = v20;
          }
        }

        while (v17);
      }

      v22 = 0x8F5C28F5C28F5C29 * ((v16 - result - v10) >> 3);
      v23 = &a2[200 * (a6 / 2)];
      if (a2 != v16)
      {
        goto LABEL_27;
      }
    }

    v34 = -v11 - v22;
    v35 = a6 - v14;
    if ((v22 + v14) >= (a6 - (v22 + v14) - v11))
    {
      v38 = a4;
      v44 = v22;
      v41 = a7;
      v45 = a7;
      v43 = a8;
      v35 = v14;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v23, v15, a3, a4, v34, a6 - v14, v45, a8);
      a2 = v16;
      a5 = v44;
      a3 = v23;
      result = v54;
    }

    else
    {
      v36 = &v10[result];
      v37 = a3;
      v38 = a4;
      v39 = v34;
      v40 = v22;
      v41 = a7;
      v42 = a7;
      v43 = a8;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(v36, v16, v23, a4, v40, v14, v42, a8);
      a5 = v39;
      a3 = v37;
      result = v23;
      a2 = v15;
    }

    a6 = v35;
    a4 = v38;
    a8 = v43;
    a7 = v41;
    if (!v35)
    {
      return;
    }
  }

  std::__buffered_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(result, a2, a3, a4, a5, a6, a7);
}

void std::swap[abi:nn200100]<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic>(uint64_t *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a1 + 1;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 4);
  v17[0] = v18;
  v17[1] = 0x400000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v17, a1 + 3);
  }

  *v19 = *(a1 + 17);
  v20 = a1[19];
  a1[17] = 0;
  a1[18] = 0;
  *__p = *(a1 + 10);
  v5 = a1[22];
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[22] = 0;
  v22 = v5;
  v23[0] = &v24;
  v23[1] = 0;
  if (*(a1 + 48))
  {
    llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v23, a1 + 23);
  }

  *a1 = *a2;
  mlir::Diagnostic::operator=(v4, a2 + 1);
  *a2 = v14;
  mlir::Diagnostic::operator=((a2 + 1), &v15);
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  v6 = __p[0];
  if (__p[0])
  {
    v7 = __p[1];
    v8 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
      }

      while (v7 != v6);
      v8 = __p[0];
    }

    __p[1] = v6;
    operator delete(v8);
  }

  v9 = v19[0];
  if (v19[0])
  {
    v10 = v19[1];
    v11 = v19[0];
    if (v19[1] != v19[0])
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
      v11 = v19[0];
    }

    v19[1] = v9;
    operator delete(v11);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }
}

uint64_t mlir::Diagnostic::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a1 + 16, a2 + 2);
  v5 = (a1 + 128);
  v6 = *(a1 + 128);
  if (v6)
  {
    v7 = *(a1 + 136);
    v8 = *(a1 + 128);
    if (v7 != v6)
    {
      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
        }
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 136) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 128) = *(a2 + 8);
  *(a1 + 144) = a2[18];
  a2[16] = 0;
  a2[17] = 0;
  a2[18] = 0;
  v11 = (a1 + 152);
  v12 = *(a1 + 152);
  if (v12)
  {
    v13 = *(a1 + 160);
    v14 = *(a1 + 152);
    if (v13 != v12)
    {
      do
      {
        v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 160) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  *(a1 + 152) = *(a2 + 19);
  *(a1 + 168) = a2[21];
  a2[19] = 0;
  a2[20] = 0;
  a2[21] = 0;
  if (a1 != a2)
  {
    v16 = a2 + 23;
    v15 = *(a2 + 46);
    if (v15)
    {
      v17 = *(a1 + 176);
      if (v17 != (a1 + 192))
      {
        free(v17);
        v15 = *v16;
      }

      *(a1 + 176) = a2[22];
      v18 = *(a2 + 47);
      *(a1 + 184) = v15;
      *(a1 + 188) = v18;
      a2[22] = (a2 + 24);
      *(a2 + 47) = 0;
    }

    else
    {
      v16 = (a1 + 184);
    }

    *v16 = 0;
  }

  return a1;
}

uint64_t std::__insertion_sort_move[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<mlir::detail::ParallelDiagnosticHandlerImpl::ThreadDiagnostic *>>(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    *a3 = *result;
    v6 = *(result + 8);
    v7 = *(result + 16);
    *(a3 + 24) = a3 + 40;
    *(a3 + 16) = v7;
    *(a3 + 8) = v6;
    *(a3 + 32) = 0x400000000;
    if (*(result + 32))
    {
      llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(a3 + 24, (result + 24));
    }

    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 136) = *(v5 + 136);
    *(a3 + 152) = *(v5 + 152);
    *(v5 + 136) = 0;
    *(v5 + 144) = 0;
    *(v5 + 152) = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 160) = *(v5 + 160);
    *(a3 + 176) = *(v5 + 176);
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    *(v5 + 176) = 0;
    *(a3 + 184) = a3 + 200;
    *(a3 + 192) = 0;
    result = a3 + 184;
    if (*(v5 + 192))
    {
      result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(result, (v5 + 184));
    }

    v8 = (v5 + 200);
    if ((v5 + 200) != a2)
    {
      v9 = a3;
      do
      {
        v11 = v5;
        v5 = v8;
        v12 = *v8;
        v13 = v9 + 240;
        if (v12 >= *v9)
        {
          *(v9 + 200) = v12;
          v39 = *(v11 + 208);
          *(v9 + 216) = *(v11 + 216);
          *(v9 + 208) = v39;
          *(v9 + 224) = v13;
          *(v9 + 232) = 0x400000000;
          if (*(v11 + 232))
          {
            result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 224, (v11 + 224));
          }

          *(v9 + 336) = 0;
          *(v9 + 344) = 0;
          *(v9 + 352) = 0;
          *(v9 + 336) = *(v11 + 336);
          *(v9 + 352) = *(v11 + 352);
          *(v11 + 336) = 0;
          *(v11 + 344) = 0;
          *(v11 + 352) = 0;
          *(v9 + 360) = 0;
          *(v9 + 368) = 0;
          *(v9 + 376) = 0;
          *(v9 + 360) = *(v11 + 360);
          *(v9 + 368) = *(v11 + 368);
          *(v11 + 360) = 0;
          *(v11 + 368) = 0;
          *(v11 + 376) = 0;
          *(v9 + 384) = v9 + 400;
          *(v9 + 392) = 0;
          if (*(v11 + 392))
          {
            result = llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 384, (v11 + 384));
          }
        }

        else
        {
          v14 = *(v9 + 8);
          *(v9 + 200) = *v9;
          *(v9 + 208) = v14;
          *(v9 + 216) = *(v9 + 16);
          *(v9 + 224) = v13;
          *(v9 + 232) = 0x400000000;
          if (*(v9 + 32))
          {
            llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 224, (v9 + 24));
          }

          *(v9 + 336) = *(v9 + 136);
          *(v9 + 352) = *(v9 + 152);
          *(v9 + 136) = 0;
          *(v9 + 144) = 0;
          *(v9 + 360) = *(v9 + 160);
          v15 = *(v9 + 176);
          *(v9 + 152) = 0;
          *(v9 + 160) = 0;
          *(v9 + 168) = 0;
          *(v9 + 176) = 0;
          *(v9 + 376) = v15;
          *(v9 + 384) = v9 + 400;
          *(v9 + 392) = 0;
          if (*(v9 + 192))
          {
            llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(v9 + 384, (v9 + 184));
          }

          v10 = a3;
          if (v9 != a3)
          {
            v10 = v9;
            v16 = v9;
            while (1)
            {
              v18 = *(v16 - 200);
              v16 -= 200;
              v17 = v18;
              if (*v5 >= v18)
              {
                break;
              }

              v19 = *(v10 - 192);
              *v10 = v17;
              *(v10 + 8) = v19;
              *(v10 + 16) = *(v10 - 184);
              v20 = *(v10 - 176);
              if (v20 != (v10 - 160))
              {
                v21 = *(v10 + 24);
                if (v21 != (v10 + 40))
                {
                  free(v21);
                  v20 = *(v10 - 176);
                }

                *(v10 + 24) = v20;
                *(v10 + 32) = *(v10 - 168);
                *(v10 - 176) = v10 - 160;
                *(v10 - 168) = 0;
                v22 = *(v10 + 136);
                if (!v22)
                {
                  goto LABEL_42;
                }

LABEL_35:
                v26 = *(v10 + 144);
                v27 = v22;
                if (v26 != v22)
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

                  while (v26 != v22);
                  v27 = *(v10 + 136);
                }

                *(v10 + 144) = v22;
                operator delete(v27);
                goto LABEL_42;
              }

              v23 = *(v10 - 168);
              v24 = *(v10 + 32);
              if (v24 >= v23)
              {
                if (v23)
                {
                  memmove(*(v10 + 24), v20, 24 * v23);
                }
              }

              else if (*(v10 + 36) >= v23)
              {
                if (v24)
                {
                  memmove(*(v10 + 24), v20, 24 * v24);
                  v25 = *(v10 - 168) - v24;
                  if (!v25)
                  {
                    goto LABEL_34;
                  }

LABEL_33:
                  memcpy((*(v10 + 24) + 24 * v24), (*(v10 - 176) + 24 * v24), 24 * v25);
                  goto LABEL_34;
                }

                v24 = 0;
                v25 = *(v10 - 168);
                if (*(v10 - 168))
                {
                  goto LABEL_33;
                }
              }

              else
              {
                *(v10 + 32) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v10 + 24, (v10 + 40), v23, 24);
                v24 = 0;
                v25 = *(v10 - 168);
                if (*(v10 - 168))
                {
                  goto LABEL_33;
                }
              }

LABEL_34:
              *(v10 + 32) = v23;
              *(v10 - 168) = 0;
              v22 = *(v10 + 136);
              if (v22)
              {
                goto LABEL_35;
              }

LABEL_42:
              v30 = (v10 - 64);
              *(v10 + 136) = *(v10 - 64);
              *(v10 + 152) = *(v10 - 48);
              v30[1] = 0;
              v30[2] = 0;
              *v30 = 0;
              v31 = *(v10 + 160);
              if (v31)
              {
                v32 = *(v10 + 168);
                v33 = *(v10 + 160);
                if (v32 != v31)
                {
                  do
                  {
                    v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
                  }

                  while (v32 != v31);
                  v33 = *(v10 + 160);
                }

                *(v10 + 168) = v31;
                operator delete(v33);
              }

              v34 = (v10 - 40);
              v36 = (v10 - 8);
              v35 = *(v10 - 8);
              *(v10 + 160) = *(v10 - 40);
              *(v10 + 176) = *(v10 - 24);
              v34[1] = 0;
              v34[2] = 0;
              *v34 = 0;
              if (v35)
              {
                v37 = *(v10 + 184);
                if (v37 != (v10 + 200))
                {
                  free(v37);
                  v35 = *v36;
                }

                *(v10 + 184) = *(v10 - 16);
                v38 = *(v10 - 4);
                *(v10 + 192) = v35;
                *(v10 + 196) = v38;
                *(v10 - 16) = v10;
                *(v10 - 4) = 0;
                *v36 = 0;
                v10 = v16;
                if (v16 == a3)
                {
LABEL_8:
                  v10 = a3;
                  break;
                }
              }

              else
              {
                *(v10 + 192) = 0;
                v10 = v16;
                if (v16 == a3)
                {
                  goto LABEL_8;
                }
              }
            }
          }

          *v10 = *v5;
          result = mlir::Diagnostic::operator=(v10 + 8, (v11 + 208));
        }

        v9 += 200;
        v8 = (v5 + 200);
      }

      while ((v5 + 200) != a2);
    }
  }

  return result;
}