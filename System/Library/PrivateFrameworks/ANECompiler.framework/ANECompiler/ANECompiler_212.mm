_BYTE *std::optional<llvm::APFloat>::operator=[abi:nn200100]<llvm::APFloat,void>(_BYTE *a1, uint64_t a2)
{
  if (a1[32] == 1)
  {
    llvm::APFloat::Storage::operator=((a1 + 8), (a2 + 8));
  }

  else
  {
    v4 = *(a2 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), (a2 + 8));
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), a2 + 8);
    }

    a1[32] = 1;
  }

  return a1;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, const llvm::APFloat *a2)
{
  v3 = (a2 + 8);
  v4 = *(a2 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(this + 1, v3);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((this + 8), v3);
  }

  return this;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldPowerOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85[11] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (!v5)
  {
    v68 = 0;
    v69 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    v68 = 0;
    v69 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v68 = v5;
  v69 = v6;
  v7 = *a3;
  if (!*a3 || !mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
  {
    v11 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v71 = v11;
    v72 = v12;
    if (!mlir::ElementsAttr::isSplat(&v68))
    {
      return 0;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v68);
    mlir::ElementsAttr::value_begin<mlir::Attribute>(&v68, &Type);
    if (BYTE1(Type))
    {
      v13 = 0;
    }

    else
    {
      v13 = v85[1];
    }

    if (Type == 1)
    {
      v14 = *(v85[0] + v13);
    }

    else
    {
      v14 = (*(*v85[0] + 24))(v85[0], v13);
      if ((Type & 1) == 0)
      {
        v15 = v85[0];
        v85[0] = 0;
        if (v15)
        {
          v16 = v14;
          (*(*v15 + 8))(v15);
          v14 = v16;
        }
      }
    }

    v17 = *(*v14 + 136);
    if (v17 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      if (v17 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        return 0;
      }

      v82 = v14;
      mlir::FloatAttr::getValue(&Type, &v82);
      v39 = llvm::detail::IEEEFloat::IEEEFloat(&v80, 1.0, v36, v37, v38);
      v40 = llvm::APFloatBase::IEEEsingle(v39);
      llvm::APFloat::Storage::Storage(&v83, &v80, v40);
      llvm::detail::IEEEFloat::~IEEEFloat(&v80);
      v41 = v85[0];
      v42 = v83;
      v44 = llvm::APFloatBase::PPCDoubleDouble(v43);
      if (v41 == v42)
      {
        if (v44 == v41)
        {
          IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(v85, &v83);
        }

        else
        {
          IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(v85, &v83);
        }

        v45 = IsEqual;
      }

      else
      {
        v45 = 0;
      }

      if (v44 == v83)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v83);
        if (v45)
        {
          goto LABEL_90;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v83);
        if (v45)
        {
LABEL_90:
          v47 = *(*(a2 + 72) + 24) | 4;
LABEL_91:
          if (v44 == v85[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v85);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v85);
          }

          return v47;
        }
      }

      llvm::detail::IEEEFloat::IEEEFloat(&v80, 0.0, v57, v58, v59);
      llvm::APFloat::Storage::Storage(&v83, &v80, v40);
      llvm::detail::IEEEFloat::~IEEEFloat(&v80);
      if (v85[0] != v83)
      {
        goto LABEL_95;
      }

      if (v44 == v85[0])
      {
        if (llvm::detail::DoubleAPFloat::bitwiseIsEqual(v85, &v83))
        {
          goto LABEL_111;
        }
      }

      else if (llvm::detail::IEEEFloat::bitwiseIsEqual(v85, &v83))
      {
LABEL_111:
        hasStaticShape = mlir::ShapedType::hasStaticShape(&v71);
        llvm::APFloat::~APFloat(&v82);
        if (hasStaticShape)
        {
          llvm::APFloat::APFloat(&v82, 1.0, v64, v65, v66);
          LOBYTE(v80) = 0;
          llvm::APFloat::convert(&v82, v85[0], 1u, &v80);
          llvm::APFloat::APFloat(&v80, &v82);
          v67 = mlir::DenseElementsAttr::get(v71, v72, &v80, 1);
          if (v44 == v81[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v81);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v81);
          }

          v47 = v67 & 0xFFFFFFFFFFFFFFFBLL;
          llvm::APFloat::~APFloat(&v82);
          goto LABEL_91;
        }

LABEL_96:
        llvm::APFloat::~APFloat(&Type);
        return 0;
      }

LABEL_95:
      llvm::APFloat::~APFloat(&v82);
      goto LABEL_96;
    }

    v82 = v14;
    mlir::IntegerAttr::getValue(&v82, &Type);
    v19 = v85[0];
    if (LODWORD(v85[0]) > 0x40)
    {
      v46 = llvm::APInt::countLeadingZerosSlowCase(&Type);
      if (v46 == v19 - 1)
      {
LABEL_63:
        result = *(*(a2 + 72) + 24) | 4;
        if (v19 < 0x41)
        {
          return result;
        }

LABEL_64:
        if (!Type)
        {
          return result;
        }

        v47 = result;
        MEMORY[0x1AC55A040](Type, 0x1000C8000313F17);
        return v47;
      }

      if (v46 != v19)
      {
LABEL_80:
        if (Type)
        {
          MEMORY[0x1AC55A040](Type, 0x1000C8000313F17);
          return 0;
        }

        return 0;
      }
    }

    else if (Type)
    {
      if (Type != 1)
      {
        return 0;
      }

      goto LABEL_63;
    }

    if (mlir::ElementsAttr::getShapedType(&v71))
    {
      Shape = mlir::ShapedType::getShape(&v71);
      if (!v52)
      {
LABEL_75:
        v54 = v85[0];
        isSignedInteger = mlir::Type::isSignedInteger(&ElementTypeOrSelf);
        llvm::APInt::APInt(&v82, v54, 1, isSignedInteger, 1);
        LODWORD(v81[0]) = v83;
        if (v83 > 0x40)
        {
          llvm::APInt::initSlowCase(&v80, &v82);
        }

        v80 = v82;
        v60 = mlir::DenseElementsAttr::get(v71, v72, &v80, 1);
        if (LODWORD(v81[0]) >= 0x41 && v80)
        {
          v61 = v60;
          MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
          v60 = v61;
        }

        result = v60 & 0xFFFFFFFFFFFFFFFBLL;
        if (v83 >= 0x41 && v82)
        {
          v62 = result;
          MEMORY[0x1AC55A040](v82, 0x1000C8000313F17);
          result = v62;
        }

        if (LODWORD(v85[0]) < 0x41)
        {
          return result;
        }

        goto LABEL_64;
      }

      v53 = 8 * v52;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v53 -= 8;
        if (!v53)
        {
          goto LABEL_75;
        }
      }
    }

    if (LODWORD(v85[0]) < 0x41)
    {
      return 0;
    }

    goto LABEL_80;
  }

  mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v9 = *a3;
  if (*a3)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v78 = v9;
  v79 = v10;
  v20 = *(a3 + 8);
  if (v20)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v20 + 8))
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v20 + 8);
      goto LABEL_41;
    }

    v20 = 0;
  }

  v21 = 0;
LABEL_41:
  result = 0;
  v76 = v20;
  v77 = v21;
  if (v9 && v20)
  {
    v22 = *(a2 + 36) ? a2 - 16 : 0;
    v23 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8) : 0;
    v74 = v23;
    v75 = v24;
    Type = mlir::ElementsAttr::getType(&v78);
    v85[0] = mlir::ElementsAttr::getType(&v76);
    if (result)
    {
      v25 = result;
      mlir::mps::CPUNDArray::CPUNDArray(&Type, v78, v79);
      mlir::mps::CPUNDArray::CPUNDArray(&v82, v76, v77);
      v73[0] = 0;
      v73[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v74))
      {
        v26 = mlir::ShapedType::getShape(&v74);
        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = 8 * v27;
        while (*v26 != 0x8000000000000000)
        {
          ++v26;
          v28 -= 8;
          if (!v28)
          {
            goto LABEL_58;
          }
        }
      }

      v29 = mlir::ElementsAttr::getType(&v78);
      v30 = mlir::ElementsAttr::getType(&v76);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v29, v30, 0);
      if (BroadcastedType)
      {
        v32 = BroadcastedType;
        v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v74 = v32;
        v75 = v33;
LABEL_58:
        if (v25 == mlir::ElementsAttr::isSplat(&v74))
        {
          v34 = v74;
          v35 = v75;
        }

        else
        {
          v48 = mlir::ShapedType::getShape(&v74);
          v34 = mlir::RankedTensorType::get(v48, v49, v25, 0);
          if (v34)
          {
            v50 = v34;
            v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
            v34 = v50;
          }

          else
          {
            v35 = 0;
          }

          v74 = v34;
          v75 = v35;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v34, v35, v73, &v80);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(&v71, 4);
        operator new();
      }

      v47 = 0;
      v74 = 0;
      v75 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(&v82);
      mlir::mps::CPUNDArray::~CPUNDArray(&Type);
      return v47;
    }
  }

  return result;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, float a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = llvm::detail::IEEEFloat::IEEEFloat(v9, a2, a3, a4, a5);
  v7 = llvm::APFloatBase::IEEEsingle(v6);
  llvm::APFloat::Storage::Storage(this + 8, v9, v7);
  llvm::detail::IEEEFloat::~IEEEFloat(v9);
  return this;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldTransposeOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
      goto LABEL_6;
    }

    v4 = 0;
  }

  v5 = 0;
LABEL_6:

  return mlir::mps::foldTransposeOp(a2, v4, v5, 0);
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldPermuteOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73[4] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (!v5)
  {
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v7 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8) : 0;
  v61[0] = v7;
  v61[1] = v8;
  if (!mlir::ElementsAttr::getShapedType(v61))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v61);
  v10 = v9;
  v71 = v73;
  v72 = 0x400000000;
  mlir::getIntValues<long long>(v5, v6, &v71, 1);
  if (v72)
  {
    v11 = v71;
    v12 = 8 * v72;
    do
    {
      *v11 = mlir::getPositiveAxis(*v11, v10);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  v68 = v70;
  v69 = 0x400000000;
  if (!v10)
  {
    v17 = 0;
    v18 = 1;
    v19 = v70;
    v14 = v70;
    goto LABEL_30;
  }

  if (v10 < 5)
  {
    v13 = 0;
    v14 = v70;
    v15 = v10;
    goto LABEL_20;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v10, 8);
  v13 = v69;
  v14 = v68;
  v15 = v10 - v69;
  if (v10 != v69)
  {
LABEL_20:
    bzero(v14 + 8 * v13, 8 * v15);
  }

  LODWORD(v69) = v10;
  v19 = (v14 + 8 * v10);
  if (!v10)
  {
    v17 = 0;
    v18 = 1;
    goto LABEL_30;
  }

  v20 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v20 >= 3)
  {
    v23 = v20 + 1;
    v21 = (v20 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v22 = (v14 + 8 * v21);
    v24 = xmmword_1A7598670;
    v25 = v14 + 1;
    v26 = vdupq_n_s64(2uLL);
    v27 = vdupq_n_s64(4uLL);
    v28 = v21;
    do
    {
      v25[-1] = v24;
      *v25 = vaddq_s64(v24, v26);
      v24 = vaddq_s64(v24, v27);
      v25 += 2;
      v28 -= 4;
    }

    while (v28);
    if (v23 == v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 0;
    v22 = v14;
  }

  do
  {
    v22->i64[0] = v21;
    v22 = (v22 + 8);
    ++v21;
  }

  while (v22 != v19);
LABEL_29:
  v18 = 0;
  v17 = 8 * v10;
LABEL_30:
  if (v72 == v10 && !memcmp(v71, v14, v17) || (v18 & 1) != 0)
  {
LABEL_33:
    v16 = (*(*(a2 + 72) + 24) | 4);
  }

  else
  {
    while (1)
    {
      if (v71[v14->i64[0]] != v68->i64[v14->i64[0]])
      {
        v30 = v14->i64[0];
        if (*(mlir::ShapedType::getShape(v61) + 8 * v30) != 1)
        {
          break;
        }
      }

      v14 = (v14 + 8);
      if (v14 == v19)
      {
        goto LABEL_33;
      }
    }

    ShapedType = *(*(a2 + 72) + 24);
    if (mlir::Value::getDefiningOp(&ShapedType))
    {
      __s1 = *(*(a2 + 72) + 24);
      if (*(*(mlir::Value::getDefiningOp(&__s1) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
      {
        v35 = *(*(a2 + 72) + 24);
        if (*v35)
        {
          if (!**v35)
          {
            ShapedType = *(*(a2 + 72) + 24);
            DefiningOp = mlir::Value::getDefiningOp(&ShapedType);
            if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
            {
              v37 = DefiningOp;
            }

            else
            {
              v37 = 0;
            }

            ShapedType = v67;
            v66 = 0x400000000;
            if (mlir::matchConstantWithIntVector<long long>(*(*(v37 + 72) + 56), &ShapedType))
            {
              __s1 = v64;
              v63 = 0x400000000;
              if (v72)
              {
                v38 = 0;
                v39 = v71;
                v40 = 8 * v72;
                do
                {
                  v41 = *(ShapedType + *v39);
                  if (v38 >= HIDWORD(v63))
                  {
                    v55 = *(ShapedType + *v39);
                    v56 = v40;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, v64, v38 + 1, 8);
                    v41 = v55;
                    v40 = v56;
                    v38 = v63;
                  }

                  *(__s1 + v38) = v41;
                  v38 = v63 + 1;
                  LODWORD(v63) = v63 + 1;
                  ++v39;
                  v40 -= 8;
                }

                while (v40);
                v53 = __s1;
              }

              else
              {
                v38 = 0;
                v53 = v64;
              }

              if (v38 == v69 && !memcmp(v53, v68, 8 * v38))
              {
                v54 = *(*(v37 + 72) + 24);
                if (v53 != v64)
                {
                  free(v53);
                }

                v16 = (v54 | 4);
                if (ShapedType != v67)
                {
                  free(ShapedType);
                }

                goto LABEL_34;
              }

              if (v53 != v64)
              {
                free(v53);
              }
            }

            if (ShapedType != v67)
            {
              free(ShapedType);
            }
          }
        }
      }
    }

    if (*(a2 + 36))
    {
      v31 = a2 - 16;
    }

    else
    {
      v31 = 0;
    }

    v32 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v32)
    {
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v60[0] = v32;
    v60[1] = v33;
    if (mlir::ElementsAttr::getShapedType(v60))
    {
      v16 = *a3;
      if (v16)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        if (v34)
        {
          v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      v58 = v16;
      v59 = v34;
      if (v16)
      {
        Shape = mlir::ShapedType::getShape(v60);
        v44 = v43;
        ShapedType = mlir::ElementsAttr::getShapedType(&v58);
        v66 = v45;
        isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
        v47 = mlir::RankedTensorType::get(Shape, v44, isSplat, 0);
        if (mlir::ElementsAttr::isSplat(&v58))
        {
          v48 = v58;
          v49 = v59;
          if (v47)
          {
            v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
          }

          else
          {
            v50 = 0;
          }

          v16 = (mlir::reshapeElementsAttr(v48, v49, v47, v50) & 0xFFFFFFFFFFFFFFFBLL);
        }

        else
        {
          mlir::mps::CPUNDArray::CPUNDArray(&ShapedType, v58, v59);
          v57[0] = 0;
          v57[1] = 0;
          if (v47)
          {
            v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
          }

          else
          {
            v51 = 0;
          }

          mlir::mps::CPUNDArray::tryMakeAliasedArray(v47, v51, v57, &__s1);
          mlir::mps::transpose(&ShapedType, &__s1, v71, v72);
          n128_u64 = v57[0]->n128_u64;
          if (!v57[0])
          {
            n128_u64 = mlir::mps::CPUNDArray::getElementsAttr(&__s1, 0, 0);
          }

          v16 = (n128_u64 & 0xFFFFFFFFFFFFFFFBLL);
          mlir::mps::CPUNDArray::~CPUNDArray(&__s1);
          mlir::mps::CPUNDArray::~CPUNDArray(&ShapedType);
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_34:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  return v16;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldScatterOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = *MEMORY[0x1E69E9840];
  v89 = a2;
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v87 = 0;
    v88 = 0;
    return 0;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  v87 = v7;
  v88 = v8;
  if (!v7 || !mlir::ElementsAttr::getShapedType(&v87) || mlir::mps::PadOp::getPaddingMode(&v89) != 6)
  {
    return 0;
  }

  v9 = *a3;
  if (*a3)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v85 = v9;
  v86 = v10;
  v11 = *(a3 + 8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v11 + 8);
    if (v12)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v11 + 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v84[0] = v11;
  v84[1] = v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    goto LABEL_25;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8))
  {
    v13 = 0;
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
LABEL_26:
  result = 0;
  v82 = v13;
  v83 = v14;
  if (v85 && v84[0] && v13)
  {
    ShapedType = mlir::ElementsAttr::getShapedType(&v85);
    v91 = v16;
    isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
    v79 = mlir::ElementsAttr::getShapedType(v84);
    v80 = v17;
    v94 = mlir::ElementsAttr::isSplat(&v79);
    Shape = mlir::ShapedType::getShape(&v87);
    v21 = mlir::RankedTensorType::get(Shape, v20, ElementTypeWithLargestPrecision, 0);
    isSplat = mlir::ElementsAttr::getShapedType(&v85);
    v94 = v22;
    if (*(*mlir::ElementsAttr::isSplat(&isSplat) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      isSplat = mlir::ElementsAttr::getShapedType(&v85);
      v94 = v23;
      v24 = *(*mlir::ElementsAttr::isSplat(&isSplat) + 136);
      if (v24 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        return 0;
      }

      isSplat = ElementTypeWithLargestPrecision;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&isSplat);
      mlir::ElementsAttr::value_begin<llvm::APFloat>(&v85, &v79);
      v76 = 257;
      v77 = 0;
      NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
      llvm::SmallVector<llvm::APFloat,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(&isSplat, &v79, &v76);
      if ((v76 & 1) == 0)
      {
        v26 = v77;
        v77 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      if ((v79 & 1) == 0)
      {
        v27 = v80;
        v80 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      if (v94)
      {
        v28 = isSplat;
        v29 = 32 * v94;
        do
        {
          LOBYTE(ShapedType) = 0;
          llvm::APFloat::convert(v28, FloatSemantics, 1u, &ShapedType);
          v28 += 4;
          v29 -= 32;
        }

        while (v29);
      }

      if (mlir::ElementsAttr::getNumElements(v82, v83) >= 1)
      {
        v30 = 0;
        while (1)
        {
          mlir::ElementsAttr::value_begin<llvm::APInt>(&v82, &v73);
          LOWORD(ShapedType) = v73;
          if (v73 == 1)
          {
            break;
          }

          (*(*v74 + 16))(&v91);
          v31 = v91;
          v92 = v30 + v75;
          if ((ShapedType & 0x100) != 0)
          {
            v32 = 0;
          }

          else
          {
            v32 = v30 + v75;
          }

          if (ShapedType)
          {
            goto LABEL_70;
          }

          (*(*v91 + 24))(&v70);
          v34 = v71;
          if (v71 <= 0x40)
          {
            v35 = v70;
            goto LABEL_75;
          }

          v37 = *v70;
          MEMORY[0x1AC55A040]();
          if (ShapedType)
          {
            goto LABEL_83;
          }

LABEL_81:
          v38 = v91;
          v91 = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }

LABEL_83:
          if ((v73 & 1) == 0)
          {
            v39 = v74;
            v74 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }

          if (v37 < 0 || v37 >= mlir::ElementsAttr::getNumElements(v85, v86))
          {
            goto LABEL_61;
          }

          mlir::ElementsAttr::value_begin<llvm::APFloat>(v84, &v70);
          LOWORD(v73) = v70;
          if (v70)
          {
            v40 = v71;
            v74 = v71;
            v75 = v30 + v72;
            if (BYTE1(v70))
            {
              v41 = 0;
            }

            else
            {
              v41 = v30 + v72;
            }

LABEL_96:
            v42 = v40 + 32 * v41;
            v44 = *(v42 + 1);
            v43 = (v42 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v40) == v44)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v43);
              if ((v73 & 1) == 0)
              {
                goto LABEL_102;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v91, v43);
              if ((v73 & 1) == 0)
              {
                goto LABEL_102;
              }
            }

            goto LABEL_104;
          }

          (*(*v71 + 16))(&v74);
          v40 = v74;
          v75 = v30 + v72;
          if ((v73 & 0x100) != 0)
          {
            v41 = 0;
          }

          else
          {
            v41 = v30 + v72;
          }

          if (v73)
          {
            goto LABEL_96;
          }

          (*(*v74 + 24))(&ShapedType);
          if ((v73 & 1) == 0)
          {
LABEL_102:
            v45 = v74;
            v74 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }
          }

LABEL_104:
          if ((v70 & 1) == 0)
          {
            v46 = v71;
            v71 = 0;
            if (v46)
            {
              (*(*v46 + 8))(v46);
            }
          }

          LOBYTE(v73) = 0;
          llvm::APFloat::convert(&ShapedType, FloatSemantics, 1u, &v73);
          v47 = llvm::APFloat::Storage::operator=(&isSplat[4 * v37 + 1], &v91);
          v48 = v91;
          if (llvm::APFloatBase::PPCDoubleDouble(v47) == v48)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v91);
          }

LABEL_61:
          if (++v30 >= mlir::ElementsAttr::getNumElements(v82, v83))
          {
            goto LABEL_109;
          }
        }

        v31 = v74;
        v91 = v74;
        v92 = v30 + v75;
        if (BYTE1(v73))
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 + v75;
        }

LABEL_70:
        v33 = v31 + 16 * v32;
        v34 = *(v33 + 2);
        LODWORD(v71) = v34;
        if (v34 > 0x40)
        {
          llvm::APInt::initSlowCase(&v70, v33);
        }

        v35 = *v33;
        v70 = *v33;
LABEL_75:
        v36 = (v35 << -v34) >> -v34;
        if (v34)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        if (ShapedType)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

LABEL_109:
      v49 = mlir::createElementsAttr(v21, isSplat, v94) & 0xFFFFFFFFFFFFFFFBLL;
      llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&isSplat);
      return v49;
    }

    mlir::ElementsAttr::value_begin<llvm::APInt>(&v85, &ShapedType);
    v50 = mlir::ElementsAttr::getNumElements(v85, v86);
    LOWORD(v79) = 257;
    v80 = 0;
    v81 = v50;
    llvm::SmallVector<llvm::APInt,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(&isSplat, &ShapedType, &v79);
    if ((v79 & 1) == 0)
    {
      v51 = v80;
      v80 = 0;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }
    }

    if ((ShapedType & 1) == 0)
    {
      v52 = v91;
      v91 = 0;
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }
    }

    if (mlir::ElementsAttr::getNumElements(v82, v83) < 1)
    {
LABEL_170:
      v49 = mlir::createElementsAttr(v21, isSplat, v94) & 0xFFFFFFFFFFFFFFFBLL;
      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&isSplat);
      return v49;
    }

    v53 = 0;
    while (1)
    {
      mlir::ElementsAttr::value_begin<llvm::APInt>(&v82, &v73);
      v76 = v73;
      if (v73 == 1)
      {
        break;
      }

      (*(*v74 + 16))(&v77);
      v54 = v77;
      NumElements = v53 + v75;
      if ((v76 & 0x100) != 0)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53 + v75;
      }

      if (v76)
      {
        goto LABEL_127;
      }

      (*(*v77 + 24))(&v70);
      v57 = v71;
      if (v71 <= 0x40)
      {
        v58 = v70;
        goto LABEL_132;
      }

      v60 = *v70;
      MEMORY[0x1AC55A040]();
      if (v76)
      {
        goto LABEL_140;
      }

LABEL_138:
      v61 = v77;
      v77 = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

LABEL_140:
      if ((v73 & 1) == 0)
      {
        v62 = v74;
        v74 = 0;
        if (v62)
        {
          (*(*v62 + 8))(v62);
        }
      }

      if (v60 < 0 || v60 >= mlir::ElementsAttr::getNumElements(v85, v86))
      {
        goto LABEL_118;
      }

      mlir::ElementsAttr::value_begin<llvm::APInt>(v84, &v73);
      v76 = v73;
      if (v73 == 1)
      {
        v63 = v74;
        v77 = v74;
        NumElements = v53 + v75;
        if (BYTE1(v73))
        {
          v64 = 0;
        }

        else
        {
          v64 = v53 + v75;
        }
      }

      else
      {
        (*(*v74 + 16))(&v77);
        v63 = v77;
        NumElements = v53 + v75;
        if ((v76 & 0x100) != 0)
        {
          v64 = 0;
        }

        else
        {
          v64 = v53 + v75;
        }

        if ((v76 & 1) == 0)
        {
          (*(*v77 + 24))(&v70);
          if (v76)
          {
            goto LABEL_160;
          }

LABEL_158:
          v66 = v77;
          v77 = 0;
          if (v66)
          {
            (*(*v66 + 8))(v66);
          }

          goto LABEL_160;
        }
      }

      v65 = v63 + 16 * v64;
      LODWORD(v71) = *(v65 + 2);
      if (v71 > 0x40)
      {
        llvm::APInt::initSlowCase(&v70, v65);
      }

      v70 = *v65;
      if ((v76 & 1) == 0)
      {
        goto LABEL_158;
      }

LABEL_160:
      if ((v73 & 1) == 0)
      {
        v67 = v74;
        v74 = 0;
        if (v67)
        {
          (*(*v67 + 8))(v67);
        }
      }

      v68 = &isSplat[2 * v60];
      if (v68[2] > 0x40 || v71 > 0x40)
      {
        llvm::APInt::assignSlowCase(v68, &v70);
        if (v71 >= 0x41)
        {
LABEL_168:
          if (v70)
          {
            MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
          }
        }
      }

      else
      {
        *v68 = v70;
        v69 = v71;
        v68[2] = v71;
        if (v69 >= 0x41)
        {
          goto LABEL_168;
        }
      }

LABEL_118:
      if (++v53 >= mlir::ElementsAttr::getNumElements(v82, v83))
      {
        goto LABEL_170;
      }
    }

    v54 = v74;
    v77 = v74;
    NumElements = v53 + v75;
    if (BYTE1(v73))
    {
      v55 = 0;
    }

    else
    {
      v55 = v53 + v75;
    }

LABEL_127:
    v56 = v54 + 16 * v55;
    v57 = *(v56 + 2);
    LODWORD(v71) = v57;
    if (v57 > 0x40)
    {
      llvm::APInt::initSlowCase(&v70, v56);
    }

    v58 = *v56;
    v70 = *v56;
LABEL_132:
    v59 = (v58 << -v57) >> -v57;
    if (v57)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    if (v76)
    {
      goto LABEL_140;
    }

    goto LABEL_138;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::verifyTriviallyFoldable(void **a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a1;
  v3 = &a1[a2];
  while (1)
  {
    v4 = *v2;
    if (!*v2)
    {
      v17 = 0;
      v18 = 0;
      return 0;
    }

    if (!mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v4 + 8))
    {
      v17 = 0;
      v18 = 0;
      return 0;
    }

    v5 = mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v4 + 8);
    v17 = v4;
    v18 = v5;
    if (!v4)
    {
      return 0;
    }

    FunctionType = mlir::FunctionOpInterface::getFunctionType(&v17);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*FunctionType + 8))
    {
      v15 = 0;
      v16 = 0;
      return 0;
    }

    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*FunctionType + 8);
    v15 = FunctionType;
    v16 = v7;
    if (!FunctionType)
    {
      return 0;
    }

    if (!mlir::ElementsAttr::getShapedType(&v15))
    {
      return 0;
    }

    mlir::ShapedType::getShape(&v15);
    if (v8 > 1 || !mlir::ElementsAttr::getShapedType(&v15))
    {
      return 0;
    }

    Shape = mlir::ShapedType::getShape(&v15);
    if (v10)
    {
      break;
    }

LABEL_20:
    v12 = mlir::ShapedType::getShape(&v15);
    if (mlir::ShapedType::getNumElements(v12, v13) >= 1025)
    {
      return 0;
    }

    if (++v2 == v3)
    {
      return 1;
    }
  }

  v11 = 8 * v10;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

void *mlir::ElementsAttr::value_begin<llvm::APInt>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<llvm::APInt>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<llvm::APInt>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

void *mlir::ElementsAttr::value_begin<llvm::APFloat>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<llvm::APFloat>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<llvm::APFloat>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::ElementsAttr::try_value_begin<llvm::APInt>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void *llvm::SmallVector<llvm::APInt,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APInt>::append<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

llvm::APInt *llvm::SmallVectorImpl<llvm::APInt>::append<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(uint64_t a1, char *a2, char *a3)
{
  v33 = *a2;
  v34 = a2[1];
  if (v33 == 1)
  {
    v35[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v35);
  }

  v35[1] = *(a2 + 2);
  v30 = *a3;
  v31 = a3[1];
  if (v30 == 1)
  {
    v6 = a3 + 16;
    v32 = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v32);
    v6 = a3 + 16;
    *(&v32 + 1) = *(a3 + 2);
    if ((v30 & 1) == 0)
    {
      v7 = v32;
      *&v32 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  if ((v33 & 1) == 0)
  {
    v8 = v35[0];
    v35[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v26 = *a2;
  v27 = a2[1];
  if (v26 == 1)
  {
    v28 = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(&v28);
  }

  v29 = *(a2 + 2);
  v22 = *a3;
  v23 = a3[1];
  if (v22 == 1)
  {
    v24 = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v24);
  }

  v25 = *v6;
  v40 = v26;
  v41 = v27;
  if (v26 == 1)
  {
    v42 = v28;
  }

  else
  {
    (*(*v28 + 16))(&v42);
  }

  v9 = v29;
  v43 = v29;
  v36 = v22;
  v37 = v23;
  if (v22 == 1)
  {
    v10 = v25;
    v38 = v24;
    v39 = v25;
  }

  else
  {
    (*(*v24 + 16))(&v38);
    v9 = v43;
    v10 = v25;
    v39 = v25;
    if ((v36 & 1) == 0)
    {
      v11 = v38;
      v38 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if ((v40 & 1) == 0)
  {
    v12 = v42;
    v42 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if ((v22 & 1) == 0)
  {
    v13 = v24;
    v24 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v10 - v9;
  if ((v26 & 1) == 0)
  {
    v15 = v28;
    v28 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = v14 + *(a1 + 8);
  if (v16 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v16);
  }

  v20[0] = *a2;
  v20[1] = a2[1];
  if (v20[0] == 1)
  {
    v21[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v21);
  }

  v21[1] = *(a2 + 2);
  v18[0] = *a3;
  v18[1] = a3[1];
  if (v18[0] == 1)
  {
    v19[0] = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(v19);
  }

  v19[1] = *v6;
  result = llvm::SmallVectorTemplateBase<llvm::APInt,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(v20, v18, (*a1 + 16 * *(a1 + 8)));
  if ((v18[0] & 1) == 0)
  {
    result = v19[0];
    v19[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v20[0] & 1) == 0)
  {
    result = v21[0];
    v21[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) += v14;
  return result;
}

llvm::APInt *llvm::SmallVectorTemplateBase<llvm::APInt,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(uint64_t a1, uint64_t a2, llvm::APInt *this)
{
  v9[0] = *a1;
  v9[1] = *(a1 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a1 + 8);
  }

  else
  {
    (*(**(a1 + 8) + 16))(v10);
  }

  v10[1] = *(a1 + 16);
  v7[0] = *a2;
  v7[1] = *(a2 + 1);
  if (v7[0] == 1)
  {
    v8[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v8);
  }

  v8[1] = *(a2 + 16);
  result = std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(v9, v7, this);
  if ((v7[0] & 1) == 0)
  {
    result = v8[0];
    v8[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v9[0] & 1) == 0)
  {
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

llvm::APInt *std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(unsigned __int8 *a1, unsigned __int8 *a2, llvm::APInt *this)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = *(a1 + 1);
    v6 = v5;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 1);
    *(a1 + 1) = 0;
  }

  v7 = a1[1];
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = *(a2 + 1);
  if (v9 != 1)
  {
    *(a2 + 1) = 0;
  }

  for (i = *(a2 + 2); i != v8; this = (this + 16))
  {
    if (v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v8;
    }

    if (v4)
    {
      v14 = v6 + 16 * v13;
      v15 = *(v14 + 8);
      *(this + 2) = v15;
      if (v15 > 0x40)
      {
        llvm::APInt::initSlowCase(this, v14);
      }

      *this = *v14;
    }

    else
    {
      (*(*v6 + 24))(v6);
    }

    ++v8;
  }

  if ((v9 & 1) == 0 && v10)
  {
    (*(*v10 + 8))(v10);
  }

  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return this;
}

uint64_t mlir::ElementsAttr::try_value_begin<llvm::APFloat>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

unsigned int *llvm::SmallVector<llvm::APFloat,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 4;
  *(a1 + 1) = 0x400000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APFloat>::append<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::APFloat>::append<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(unsigned int *a1, char *a2, char *a3)
{
  v34 = *a2;
  v35 = a2[1];
  if (v34 == 1)
  {
    v36[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v36);
  }

  v36[1] = *(a2 + 2);
  v31 = *a3;
  v32 = a3[1];
  if (v31 == 1)
  {
    v6 = a3 + 16;
    v33 = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v33);
    v6 = a3 + 16;
    *(&v33 + 1) = *(a3 + 2);
    if ((v31 & 1) == 0)
    {
      v7 = v33;
      *&v33 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  if ((v34 & 1) == 0)
  {
    v8 = v36[0];
    v36[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v28 = *a2;
  if (v28 == 1)
  {
    v29 = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(&v29);
  }

  v30 = *(a2 + 2);
  v24 = *a3;
  v25 = a3[1];
  if (v24 == 1)
  {
    v26 = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v26);
  }

  v27 = *v6;
  LOWORD(v41) = v28;
  if (v28 == 1)
  {
    v42 = v29;
  }

  else
  {
    (*(*v29 + 16))(&v42);
  }

  v9 = v30;
  v43 = v30;
  v37 = v24;
  v38 = v25;
  if (v24 == 1)
  {
    v10 = v27;
    v39 = v26;
    v40 = v27;
  }

  else
  {
    (*(*v26 + 16))(&v39);
    v9 = v43;
    v10 = v27;
    v40 = v27;
    if ((v37 & 1) == 0)
    {
      v11 = v39;
      v39 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if ((v41 & 1) == 0)
  {
    v12 = v42;
    v42 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if ((v24 & 1) == 0)
  {
    v13 = v26;
    v26 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v10 - v9;
  if ((v28 & 1) == 0)
  {
    v15 = v29;
    v29 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = v14 + a1[2];
  if (v16 > a1[3])
  {
    v41 = 0;
    v17 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v16, 32, &v41);
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v17);
    v18 = v41;
    if (*a1 != a1 + 4)
    {
      free(*a1);
    }

    *a1 = v17;
    a1[3] = v18;
  }

  v22[0] = *a2;
  v22[1] = a2[1];
  if (v22[0] == 1)
  {
    v23[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v23);
  }

  v23[1] = *(a2 + 2);
  v20[0] = *a3;
  v20[1] = a3[1];
  if (v20[0] == 1)
  {
    v21[0] = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(v21);
  }

  v21[1] = *v6;
  result = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(v22, v20, *a1 + 32 * a1[2]);
  if ((v20[0] & 1) == 0)
  {
    result = v21[0];
    v21[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v22[0] & 1) == 0)
  {
    result = v23[0];
    v23[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  a1[2] += v14;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::APFloat,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *a1;
  v9[1] = *(a1 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a1 + 8);
  }

  else
  {
    (*(**(a1 + 8) + 16))(v10);
  }

  v10[1] = *(a1 + 16);
  v7[0] = *a2;
  v7[1] = *(a2 + 1);
  if (v7[0] == 1)
  {
    v8[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v8);
  }

  v8[1] = *(a2 + 16);
  result = std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(v9, v7, a3);
  if ((v7[0] & 1) == 0)
  {
    result = v8[0];
    v8[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v9[0] & 1) == 0)
  {
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(_DWORD *a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 4;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  a1[3] = v5;
}

llvm::APFloatBase *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(llvm::APFloatBase *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = llvm::APFloatBase::PPCDoubleDouble(result);
    result = (a2 + 8);
    v7 = 32 * v2;
    v8 = (v5 + 8);
    do
    {
      if (v6 == v8->n128_u64[0])
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(result, v8);
      }

      else
      {
        v9 = llvm::detail::IEEEFloat::IEEEFloat(result, v8);
      }

      result = (v9 + 32);
      v8 += 2;
      v7 -= 32;
    }

    while (v7);
    v10 = *(v4 + 2);
    if (v10)
    {
      v11 = 32 * v10;
      result = (v11 + *v4 - 24);
      v12 = -v11;
      do
      {
        if (v6 == *result)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(result);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(result);
        }

        result = (v13 - 32);
        v12 += 32;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = *(a1 + 1);
    v16 = v5;
  }

  else
  {
    v16 = 0;
    v5 = *(a1 + 1);
    *(a1 + 1) = 0;
  }

  v6 = a1[1];
  v7 = *(a1 + 2);
  v8 = *a2;
  v9 = *(a2 + 1);
  if (v8 != 1)
  {
    *(a2 + 1) = 0;
  }

  for (i = *(a2 + 2); i != v7; a3 += 32)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    if (v4)
    {
      v13 = v5 + 32 * v12;
      v15 = *(v13 + 8);
      v14 = (v13 + 8);
      if (llvm::APFloatBase::PPCDoubleDouble(a1) == v15)
      {
        a1 = llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v14);
      }

      else
      {
        a1 = llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v14);
      }
    }

    else
    {
      a1 = (*(*v5 + 24))(v5);
    }

    ++v7;
  }

  if ((v8 & 1) == 0 && v9)
  {
    (*(*v9 + 8))(v9);
  }

  if ((v4 & 1) == 0)
  {
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  return a3;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldGatherOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v98 = a2;
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v97 = v5;
  if (!v5 || !mlir::TensorType::hasRank(&v97))
  {
    return 0;
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v95 = v6;
  v96 = v7;
  v8 = *a3;
  if (!v8)
  {
    v93 = 0;
    v94 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v93 = 0;
    v94 = 0;
    return 0;
  }

  v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
  v93 = v8;
  v94 = v9;
  ShapedType = mlir::ElementsAttr::getShapedType(&v93);
  v109 = v10;
  mlir::ShapedType::getShape(&ShapedType);
  if (v11 > 1)
  {
    return 0;
  }

  if (!v95)
  {
    return 0;
  }

  v87 = mlir::ElementsAttr::getShapedType(&v95);
  v88 = v12;
  mlir::ShapedType::getShape(&v87);
  if (v13 > 1 || mlir::ElementsAttr::getNumElements(v95, v96) > 64)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v97);
  v16 = v15;
  ShapedType = mlir::ElementsAttr::getShapedType(&v93);
  v109 = v17;
  isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
  v19 = mlir::RankedTensorType::get(Value, v16, isSplat, 0);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98);
  ShapedType = mlir::ElementsAttr::getShapedType(&v93);
  v109 = v21;
  if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ShapedType = mlir::ElementsAttr::getShapedType(&v93);
    v109 = v22;
    v87 = mlir::ElementsAttr::isSplat(&ShapedType);
    if (llvm::isa<mlir::FloatType,mlir::Type>(&v87))
    {
      ShapedType = mlir::ElementsAttr::getShapedType(&v93);
      v109 = v23;
      mlir::ShapedType::getShape(&ShapedType);
      if (v24 <= 1)
      {
        ShapedType = v110;
        v109 = 0x400000000;
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v93, &v87);
        v102 = v87;
        if (v87 == 1)
        {
          v103 = v88;
        }

        else
        {
          (*(*v88 + 16))(&v103);
        }

        v104 = v89;
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v102, &v111);
        llvm::APFloat::APFloat(&v105, v112, 0);
        llvm::APFloat::~APFloat(&v111);
        if ((v102 & 1) == 0)
        {
          v54 = v103;
          v103 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v95, &v87);
        v82 = v87;
        if (v87 == 1)
        {
          v83 = v88;
        }

        else
        {
          (*(*v88 + 16))(&v83);
        }

        v55 = v89;
        v84 = v89;
        LOWORD(v79) = v90;
        if (v90 == 1)
        {
          v80 = v91;
        }

        else
        {
          (*(*v91 + 16))(&v80);
          v55 = v84;
        }

        v81 = v92;
        if (v55 == v92)
        {
LABEL_137:
          if ((v79 & 1) == 0)
          {
            v56 = v80;
            v80 = 0;
            if (v56)
            {
              (*(*v56 + 8))(v56);
            }
          }

          if ((v82 & 1) == 0)
          {
            v57 = v83;
            v83 = 0;
            if (v57)
            {
              (*(*v57 + 8))(v57);
            }
          }

          mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
          v58 = mlir::createElementsAttr(v19, ShapedType, v109) & 0xFFFFFFFFFFFFFFFBLL;
          llvm::APFloat::~APFloat(&v105);
          llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ShapedType);
          return v58;
        }

        while (1)
        {
          if (HIBYTE(v82))
          {
            v59 = 0;
          }

          else
          {
            v59 = v55;
          }

          v60 = v83;
          if (v82 == 1)
          {
            v61 = v83 + 16 * v59;
            v62 = *(v61 + 2);
            v86 = v62;
            if (v62 > 0x40)
            {
              llvm::APInt::initSlowCase(&v85, v61);
            }

            v63 = *v61;
            v85 = *v61;
          }

          else
          {
            v60 = (*(*v83 + 24))(&v85);
            v62 = v86;
            if (v86 > 0x40)
            {
              v65 = *v85;
              goto LABEL_160;
            }

            v63 = v85;
          }

          v64 = (v63 << -v62) >> -v62;
          if (v62)
          {
            v65 = v64;
          }

          else
          {
            v65 = 0;
          }

LABEL_160:
          v66 = *v106;
          v67 = llvm::APFloatBase::PPCDoubleDouble(v60);
          if (v67 == v66)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&v103, v106);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&v103, v106);
          }

          if (v65 < 0 && InferredResultTypes)
          {
            v65 += mlir::ElementsAttr::getNumElements(v93, v94);
          }

          if ((v65 & 0x8000000000000000) == 0 && v65 < mlir::ElementsAttr::getNumElements(v93, v94))
          {
            mlir::ElementsAttr::getValues<llvm::APFloat>(&v93, &v111);
            LOWORD(v74) = v111;
            v69 = v111;
            v70 = HIBYTE(v111);
            if (v111 == 1)
            {
              v75 = v112;
            }

            else
            {
              (*(*v112 + 16))(&v75);
              v69 = v74;
              v70 = BYTE1(v74);
            }

            v71 = v113;
            v76 = v113;
            LOBYTE(v77) = v69;
            BYTE1(v77) = v70;
            if (v69)
            {
              v78[0] = v75;
            }

            else
            {
              (*(*v75 + 16))(v78);
              v71 = v76;
            }

            v78[1] = v71 + v65;
            mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v77, &v99);
            llvm::APFloat::Storage::operator=(&v103, &v101);
            llvm::APFloat::~APFloat(&v99);
            if ((v77 & 1) == 0)
            {
              v72 = v78[0];
              v78[0] = 0;
              if (v72)
              {
                (*(*v72 + 8))(v72);
              }
            }

            if ((v74 & 1) == 0)
            {
              v73 = v75;
              v75 = 0;
              if (v73)
              {
                (*(*v73 + 8))(v73);
              }
            }

            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v111);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&ShapedType, &v102);
          if (v67 == v103)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v103);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v103);
          }

          if (v86 >= 0x41 && v85)
          {
            MEMORY[0x1AC55A040](v85, 0x1000C8000313F17);
          }

          v55 = v84 + 1;
          v84 = v55;
          if (v55 == v81)
          {
            goto LABEL_137;
          }
        }
      }
    }

    return 0;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(&v93);
  v109 = v25;
  mlir::ShapedType::getShape(&ShapedType);
  if (v26 > 1)
  {
    return 0;
  }

  ShapedType = v110;
  v109 = 0x400000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(&v93, &v87);
  v111 = v87;
  if (v87 == 1)
  {
    v112 = v88;
  }

  else
  {
    (*(*v88 + 16))(&v112);
  }

  v113 = v89;
  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v111, &v105);
  llvm::APInt::APInt(&v79, v106[0], 0, 0, 1);
  if (v106[0] >= 0x41 && v105)
  {
    MEMORY[0x1AC55A040](v105, 0x1000C8000313F17);
  }

  if ((v111 & 1) == 0)
  {
    v28 = v112;
    v112 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
  mlir::ElementsAttr::getValues<llvm::APInt>(&v95, &v87);
  LOWORD(v105) = v87;
  if (v87 == 1)
  {
    *v106 = v88;
  }

  else
  {
    (*(*v88 + 16))(v106);
  }

  v29 = v89;
  v107 = v89;
  v102 = v90;
  if (v90 == 1)
  {
    v103 = v91;
  }

  else
  {
    (*(*v91 + 16))(&v103);
    v29 = v107;
  }

  v104 = v92;
  while (v29 != v104)
  {
    if (BYTE1(v105))
    {
      v33 = 0;
    }

    else
    {
      v33 = v29;
    }

    if (v105 == 1)
    {
      v34 = *v106 + 16 * v33;
      v35 = *(v34 + 8);
      LODWORD(v78[0]) = v35;
      if (v35 > 0x40)
      {
        llvm::APInt::initSlowCase(&v77, v34);
      }

      v36 = *v34;
      v77 = *v34;
    }

    else
    {
      (*(**v106 + 24))(&v77);
      v35 = v78[0];
      if (LODWORD(v78[0]) > 0x40)
      {
        v38 = *v77;
        goto LABEL_71;
      }

      v36 = v77;
    }

    v37 = (v36 << -v35) >> -v35;
    if (v35)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

LABEL_71:
    LODWORD(v75) = v80;
    if (v80 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, &v79);
    }

    v74 = v79;
    if (v38 < 0 && InferredResultTypes)
    {
      v38 += mlir::ElementsAttr::getNumElements(v93, v94);
    }

    if (v38 < 0 || v38 >= mlir::ElementsAttr::getNumElements(v93, v94))
    {
      goto LABEL_111;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(&v93, &v111);
    v82 = v111;
    v40 = v111;
    v41 = HIBYTE(v111);
    if (v111 == 1)
    {
      v83 = v112;
    }

    else
    {
      (*(*v112 + 16))(&v83);
      v40 = v82;
      v41 = HIBYTE(v82);
    }

    v84 = v113;
    v99 = v40;
    v100 = v41;
    if (v40)
    {
      v42 = v83;
      v101.n128_u64[0] = v83;
      v101.n128_u64[1] = v113 + v38;
      if (v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = v113 + v38;
      }

LABEL_92:
      v44 = v42 + 16 * v43;
      v86 = *(v44 + 8);
      if (v86 > 0x40)
      {
        llvm::APInt::initSlowCase(&v85, v44);
      }

      v85 = *v44;
      goto LABEL_96;
    }

    (*(*v83 + 16))(&v101);
    v42 = v101.n128_u64[0];
    v101.n128_u64[1] = v84 + v38;
    if (v100)
    {
      v43 = 0;
    }

    else
    {
      v43 = v84 + v38;
    }

    if (v99)
    {
      goto LABEL_92;
    }

    (*(*v101.n128_u64[0] + 24))(&v85);
LABEL_96:
    if (v75 >= 0x41 && v74)
    {
      MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
    }

    v74 = v85;
    LODWORD(v75) = v86;
    v86 = 0;
    if ((v99 & 1) == 0)
    {
      v45 = v101.n128_u64[0];
      v101.n128_u64[0] = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }
    }

    if ((v82 & 1) == 0)
    {
      v46 = v83;
      v83 = 0;
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }
    }

    if ((v114 & 1) == 0)
    {
      v47 = v115;
      v115 = 0;
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }
    }

    if ((v111 & 1) == 0)
    {
      v48 = v112;
      v112 = 0;
      if (v48)
      {
        (*(*v48 + 8))(v48);
      }
    }

LABEL_111:
    v49 = ShapedType;
    if (v109 >= HIDWORD(v109))
    {
      if (ShapedType <= &v74 && &ShapedType[16 * v109] > &v74)
      {
        v53 = &v74 - ShapedType;
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ShapedType, v109 + 1);
        v49 = ShapedType;
        v50 = &ShapedType[v53];
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ShapedType, v109 + 1);
        v50 = &v74;
        v49 = ShapedType;
      }
    }

    else
    {
      v50 = &v74;
    }

    v51 = &v49[16 * v109];
    v52 = *(v50 + 2);
    *(v51 + 2) = v52;
    if (v52 > 0x40)
    {
      llvm::APInt::initSlowCase(v51, v50);
    }

    *v51 = *v50;
    LODWORD(v109) = v109 + 1;
    if (v75 >= 0x41 && v74)
    {
      MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
    }

    if (LODWORD(v78[0]) >= 0x41 && v77)
    {
      MEMORY[0x1AC55A040](v77, 0x1000C8000313F17);
    }

    v29 = v107 + 1;
    v107 = v29;
  }

  if ((v102 & 1) == 0)
  {
    v30 = v103;
    v103 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  if ((v105 & 1) == 0)
  {
    v31 = *v106;
    *v106 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
  v32 = mlir::createElementsAttr(v19, ShapedType, v109) & 0xFFFFFFFFFFFFFFFBLL;
  if (v80 >= 0x41 && v79)
  {
    MEMORY[0x1AC55A040](v79, 0x1000C8000313F17);
  }

  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&ShapedType);
  return v32;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2, llvm::APInt *a3)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2, a3);
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, a2, a3, v6);
  return a1;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldSliceOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (!*a3)
  {
    v26 = 0;
    v27 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
  {
    v26 = 0;
    v27 = 0;
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
  v26 = v4;
  v27 = v5;
  if (!v4)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v26);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v25[0] = v7;
  v25[1] = Type;
  v8 = *(a2 + 36) ? a2 - 16 : 0;
  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8) : 0;
  v23 = v9;
  v24 = v10;
  if (!mlir::ElementsAttr::getShapedType(&v23))
  {
    return 0;
  }

  if (!mlir::ElementsAttr::getShapedType(v25))
  {
    return 0;
  }

  mlir::ShapedType::getShape(&v23);
  if (v11 != 1)
  {
    return 0;
  }

  mlir::ShapedType::getShape(v25);
  if (v12 != 1)
  {
    return 0;
  }

  v13 = *mlir::ShapedType::getShape(v25);
  v14 = *(*(a2 + 72) + 88);
  isSplat = 0;
  v31 = 0;
  v28 = &isSplat;
  v29 = v14;
  DefiningOp = mlir::Value::getDefiningOp(&v29);
  if (!DefiningOp)
  {
    return 0;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v28, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  SingleInt = mlir::getSingleIntValue<int>(isSplat, v31);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 0;
  }

  PositiveAxis = mlir::getPositiveAxis(SingleInt, v13);
  if (mlir::ShapedType::hasStaticShape(&v23))
  {
    v19 = *mlir::ShapedType::getShape(&v23);
  }

  else
  {
    matched = mlir::matchConstantWithIntValue<int>(*(*(a2 + 72) + 120));
    if ((matched & 0x180000000) != 0x100000000)
    {
      return 0;
    }

    v19 = matched & 0x7FFFFFFF;
    if ((v19 + PositiveAxis) > v13)
    {
      return 0;
    }

    isSplat = matched & 0x7FFFFFFF;
    v23 = mlir::ShapedType::clone(&v23, &isSplat, 1);
    v24 = v22;
  }

  if (*(*mlir::ElementsAttr::isSplat(v25) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v20 & 0xFFFFFFFFFFFFFFFBLL;
  }

  isSplat = mlir::ElementsAttr::isSplat(v25);
  if (!llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
  {
    return 0;
  }

  return v20 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::matchConstantWithIntValue<int>(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v8, v9);
    v3 = SingleInt & 0xFF00000000;
    v4 = SingleInt & 0xFFFFFF00;
    v5 = SingleInt;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  return v5 | v3 | v4;
}

__n128 *mlir::mps::anonymous namespace::getFoldedSliceResult<llvm::APInt>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v53[8] = *MEMORY[0x1E69E9840];
  v50[0] = a1;
  v50[1] = a2;
  v49[0] = a3;
  v49[1] = a4;
  v51 = v53;
  v52 = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v51, a6);
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(v50, &ShapedType);
  v8 = ShapedType;
  LOWORD(v43) = ShapedType;
  v9 = BYTE1(ShapedType);
  if (ShapedType == 1)
  {
    v44 = v39;
  }

  else
  {
    (*(*v39 + 16))(&v44);
    v8 = v43;
    v9 = BYTE1(v43);
  }

  v45 = v40;
  LOBYTE(v46) = v8;
  HIBYTE(v46) = v9;
  if (v8)
  {
    v47 = v44;
    v48 = v40 + a5;
  }

  else
  {
    (*(*v44 + 16))(&v47);
    v48 = v45 + a5;
    if ((v43 & 1) == 0)
    {
      v10 = v44;
      v44 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  if ((v41 & 1) == 0)
  {
    v11 = v42;
    v42 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  if ((ShapedType & 1) == 0)
  {
    v12 = v39;
    v39 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if (v6 >= 1)
  {
    while (1)
    {
      LOWORD(ShapedType) = v46;
      if (v46 == 1)
      {
        break;
      }

      (*(*v47 + 16))(&v39);
      v13 = v39;
      v16 = v48;
      v40 = v48++;
      if ((ShapedType & 0x100) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = v16;
      }

      if (ShapedType)
      {
        goto LABEL_28;
      }

      (*(*v39 + 24))(&v43);
LABEL_32:
      v18 = v51;
      if (v52 >= HIDWORD(v52))
      {
        if (v51 <= &v43 && v51 + 16 * v52 > &v43)
        {
          v22 = &v43 - v51;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v51, v52 + 1);
          v18 = v51;
          v19 = (v51 + v22);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v51, v52 + 1);
          v19 = &v43;
          v18 = v51;
        }
      }

      else
      {
        v19 = &v43;
      }

      v20 = &v18[16 * v52];
      *(v20 + 2) = *(v19 + 2);
      *v20 = *v19;
      *(v19 + 2) = 0;
      LODWORD(v52) = v52 + 1;
      if (v44 >= 0x41 && v43)
      {
        MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
      }

      if ((ShapedType & 1) == 0)
      {
        v21 = v39;
        v39 = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }

      if (!--v6)
      {
        goto LABEL_44;
      }
    }

    v13 = v47;
    v14 = v48;
    v39 = v47;
    v40 = v48++;
    if (HIBYTE(v46))
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

LABEL_28:
    v17 = v13 + 16 * v15;
    LODWORD(v44) = *(v17 + 8);
    if (v44 > 0x40)
    {
      llvm::APInt::initSlowCase(&v43, v17);
    }

    v43 = *v17;
    goto LABEL_32;
  }

LABEL_44:
  Shape = mlir::ShapedType::getShape(v49);
  v25 = v24;
  ShapedType = mlir::ElementsAttr::getShapedType(v50);
  v39 = v26;
  isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
  v28 = mlir::RankedTensorType::get(Shape, v25, isSplat, 0);
  ElementsAttr = mlir::createElementsAttr(v28, v51, v52);
  if ((v46 & 1) == 0)
  {
    v30 = v47;
    v47 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  v31 = v51;
  if (v52)
  {
    v32 = (v51 + 16 * v52 - 8);
    v33 = -16 * v52;
    v34 = v32;
    do
    {
      v35 = *v34;
      v34 -= 4;
      if (v35 >= 0x41)
      {
        v36 = *(v32 - 1);
        if (v36)
        {
          MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
        }
      }

      v32 = v34;
      v33 += 16;
    }

    while (v33);
    v31 = v51;
  }

  if (v31 != v53)
  {
    free(v31);
  }

  return ElementsAttr;
}

llvm::APFloatBase *mlir::mps::anonymous namespace::getFoldedSliceResult<llvm::APFloat>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v56[16] = *MEMORY[0x1E69E9840];
  v48[0] = a1;
  v48[1] = a2;
  v47[0] = a3;
  v47[1] = a4;
  v54 = v56;
  v55 = 0x400000000;
  if (a6 >= 5)
  {
    ShapedType = 0;
    v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v54, v56, a6, 32, &ShapedType);
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(&v54, v8);
    v9 = ShapedType;
    if (v54 != v56)
    {
      free(v54);
    }

    v54 = v8;
    HIDWORD(v55) = v9;
  }

  mlir::ElementsAttr::getValues<llvm::APFloat>(v48, &ShapedType);
  v10 = ShapedType;
  v40 = ShapedType;
  v11 = BYTE1(ShapedType);
  if (ShapedType == 1)
  {
    v42 = v50;
  }

  else
  {
    (*(*v50 + 16))(&v42);
    v10 = v40;
    v11 = HIBYTE(v40);
  }

  v43 = v51;
  LOBYTE(v44) = v10;
  HIBYTE(v44) = v11;
  if (v10)
  {
    v45 = v42;
    v46 = v51 + a5;
  }

  else
  {
    (*(*v42 + 16))(&v45);
    v46 = v43 + a5;
    if ((v40 & 1) == 0)
    {
      v12 = v42;
      v42 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if ((v52 & 1) == 0)
  {
    v13 = v53;
    v53 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  if ((ShapedType & 1) == 0)
  {
    v14 = v50;
    v50 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if (v6 >= 1)
  {
    do
    {
      v41 = v44;
      if (v44 == 1)
      {
        v15 = v45;
        v16 = v46;
        v42 = v45;
        v43 = v46++;
        if (HIBYTE(v44))
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }
      }

      else
      {
        (*(*v45 + 16))(&v42);
        v15 = v42;
        v18 = v46;
        v43 = v46++;
        if ((v41 & 0x100) != 0)
        {
          v17 = 0;
        }

        else
        {
          v17 = v18;
        }

        if ((v41 & 1) == 0)
        {
          (*(*v42 + 24))(&ShapedType);
          goto LABEL_34;
        }
      }

      v19 = v15 + 32 * v17;
      v21 = *(v19 + 1);
      v20 = (v19 + 8);
      if (llvm::APFloatBase::PPCDoubleDouble(v15) == v21)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v50, v20);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v50, v20);
      }

LABEL_34:
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v54, &ShapedType);
      v22 = v50;
      if (llvm::APFloatBase::PPCDoubleDouble(v23) == v22)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
        if ((v41 & 1) == 0)
        {
LABEL_38:
          v24 = v42;
          v42 = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v50);
        if ((v41 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      --v6;
    }

    while (v6);
  }

  Shape = mlir::ShapedType::getShape(v47);
  v27 = v26;
  ShapedType = mlir::ElementsAttr::getShapedType(v48);
  v50 = v28;
  isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
  v30 = mlir::RankedTensorType::get(Shape, v27, isSplat, 0);
  ElementsAttr = mlir::createElementsAttr(v30, v54, v55);
  v32 = ElementsAttr;
  if ((v44 & 1) == 0)
  {
    ElementsAttr = v45;
    v45 = 0;
    if (ElementsAttr)
    {
      ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
    }
  }

  v33 = v54;
  v34 = v55;
  if (v55)
  {
    v35 = llvm::APFloatBase::PPCDoubleDouble(ElementsAttr);
    v36 = &v33[32 * v34 - 24];
    v37 = -32 * v34;
    do
    {
      if (v35 == *v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v36);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v36);
      }

      v36 = (v38 - 32);
      v37 += 32;
    }

    while (v37);
    v33 = v54;
  }

  if (v33 != v56)
  {
    free(v33);
  }

  return v32;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldStridedSliceOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v79 = a2;
  v4 = *a3;
  if (*a3)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
    if (v5)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v78[0] = v4;
  v78[1] = v5;
  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v77[0] = v6;
  v77[1] = v7;
  v8 = *(a3 + 24);
  if (!v8)
  {
    goto LABEL_15;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v8 = 0;
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
LABEL_16:
  result = 0;
  v76[0] = v8;
  v76[1] = v9;
  if (!v4 || !v6 || !v8)
  {
    return result;
  }

  v11 = *a3;
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  isSplat = v11;
  v81 = v12;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&isSplat);
  v14 = FunctionType;
  if (FunctionType)
  {
    FunctionType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*FunctionType + 8);
  }

  v75[0] = v14;
  v75[1] = FunctionType;
  if (*(v79 + 36))
  {
    v15 = v79 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v74[0] = v16;
  v74[1] = v17;
  if (!mlir::ElementsAttr::getShapedType(v75))
  {
    return 0;
  }

  if (!mlir::ElementsAttr::getShapedType(v74))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v74);
  if (v18 > 1)
  {
    return 0;
  }

  mlir::ShapedType::getShape(v75);
  if (v19 > 1)
  {
    return 0;
  }

  Index = mlir::pdl::ResultOp::getIndex(&v79);
  mlir::ShapedType::getShape(v74);
  if (v21 == 1)
  {
    v22 = *mlir::ShapedType::getShape(v74);
  }

  else
  {
    v22 = 1;
  }

  mlir::ShapedType::getShape(v75);
  if (v23 == 1)
  {
    v24 = *mlir::ShapedType::getShape(v75);
  }

  else
  {
    v24 = 1;
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(v77, &isSplat);
  LOWORD(ShapedType) = isSplat;
  if (isSplat)
  {
    v25 = v81;
    v86 = v81;
    v87 = v82;
    if (BYTE1(isSplat))
    {
      v26 = 0;
    }

    else
    {
      v26 = v82;
    }
  }

  else
  {
    (*(*v81 + 16))(&v86);
    v25 = v86;
    v87 = v82;
    if ((ShapedType & 0x100) != 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = v82;
    }

    if ((ShapedType & 1) == 0)
    {
      (*(*v86 + 24))(&v71);
      goto LABEL_52;
    }
  }

  v27 = v25 + 16 * v26;
  LODWORD(v72) = *(v27 + 8);
  if (v72 > 0x40)
  {
    llvm::APInt::initSlowCase(&v71, v27);
  }

  v71 = *v27;
LABEL_52:
  if (v72 > 0x40)
  {
    v28 = *v71;
    MEMORY[0x1AC55A040]();
  }

  else if (v72)
  {
    v28 = (v71 << -v72) >> -v72;
  }

  else
  {
    v28 = 0;
  }

  if ((ShapedType & 1) == 0)
  {
    v29 = v86;
    v86 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  if ((v83 & 1) == 0)
  {
    v30 = v84;
    v84 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  if ((isSplat & 1) == 0)
  {
    v31 = v81;
    v81 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(v76, &isSplat);
  LOWORD(ShapedType) = isSplat;
  if (isSplat)
  {
    v32 = v81;
    v86 = v81;
    v87 = v82;
    if (BYTE1(isSplat))
    {
      v33 = 0;
    }

    else
    {
      v33 = v82;
    }
  }

  else
  {
    (*(*v81 + 16))(&v86);
    v32 = v86;
    v87 = v82;
    if ((ShapedType & 0x100) != 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v82;
    }

    if ((ShapedType & 1) == 0)
    {
      (*(*v86 + 24))(&v71);
      goto LABEL_78;
    }
  }

  v34 = v32 + 16 * v33;
  LODWORD(v72) = *(v34 + 8);
  if (v72 > 0x40)
  {
    llvm::APInt::initSlowCase(&v71, v34);
  }

  v71 = *v34;
LABEL_78:
  if (v72 > 0x40)
  {
    v35 = *v71;
    MEMORY[0x1AC55A040]();
  }

  else if (v72)
  {
    v35 = (v71 << -v72) >> -v72;
  }

  else
  {
    v35 = 0;
  }

  if ((ShapedType & 1) == 0)
  {
    v36 = v86;
    v86 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  if ((v83 & 1) == 0)
  {
    v37 = v84;
    v84 = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }
  }

  if ((isSplat & 1) == 0)
  {
    v38 = v81;
    v81 = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }
  }

  PositiveAxis = mlir::getPositiveAxis(v28, v24);
  if (PositiveAxis >= v24 - 1)
  {
    v40 = v24 - 1;
  }

  else
  {
    v40 = PositiveAxis;
  }

  if (PositiveAxis < 0)
  {
    v40 = 0;
  }

  if (Index)
  {
    v41 = (v24 - 1) & (v35 >> 63);
  }

  else
  {
    v41 = v40;
  }

  if (*(*mlir::ElementsAttr::isSplat(v75) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    isSplat = mlir::ElementsAttr::isSplat(v75);
    if (llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
    {
      isSplat = &v82;
      v81 = 0x400000000;
      mlir::ElementsAttr::getValues<llvm::APFloat>(v78, &ShapedType);
      LOWORD(v71) = ShapedType;
      if (ShapedType == 1)
      {
        v72 = v86;
      }

      else
      {
        (*(*v86 + 16))(&v72);
      }

      v73 = v87;
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ShapedType);
      v56 = v73 + v41;
      v73 += v41;
      if (v22 >= 1)
      {
        do
        {
          if (BYTE1(v71))
          {
            v65 = 0;
          }

          else
          {
            v65 = v56;
          }

          if (v71 == 1)
          {
            v66 = v72 + 32 * v65;
            v68 = *(v66 + 1);
            v67 = (v66 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v72) == v68)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v86, v67);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v86, v67);
            }
          }

          else
          {
            (*(*v72 + 24))(&ShapedType);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&isSplat, &ShapedType);
          v69 = v86;
          if (llvm::APFloatBase::PPCDoubleDouble(v70) == v69)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v86);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v86);
          }

          v56 = v73 + v35;
          v73 += v35;
          --v22;
        }

        while (v22);
      }

      Shape = mlir::ShapedType::getShape(v74);
      v59 = v58;
      ShapedType = mlir::ElementsAttr::getShapedType(v78);
      v86 = v60;
      v61 = mlir::ElementsAttr::isSplat(&ShapedType);
      v62 = mlir::RankedTensorType::get(Shape, v59, v61, 0);
      v63 = mlir::createElementsAttr(v62, isSplat, v81) & 0xFFFFFFFFFFFFFFFBLL;
      if ((v71 & 1) == 0)
      {
        v64 = v72;
        v72 = 0;
        if (v64)
        {
          (*(*v64 + 8))(v64);
        }
      }

      llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&isSplat);
      return v63;
    }

    return 0;
  }

  isSplat = &v82;
  v81 = 0x400000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(v78, &ShapedType);
  LOWORD(v71) = ShapedType;
  if (ShapedType == 1)
  {
    v72 = v86;
  }

  else
  {
    (*(*v86 + 16))(&v72);
  }

  v73 = v87;
  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ShapedType);
  v42 = v73 + v41;
  v73 += v41;
  if (v22 >= 1)
  {
    do
    {
      if (BYTE1(v71))
      {
        v50 = 0;
      }

      else
      {
        v50 = v42;
      }

      if (v71 == 1)
      {
        v51 = v72 + 16 * v50;
        LODWORD(v86) = *(v51 + 2);
        if (v86 > 0x40)
        {
          llvm::APInt::initSlowCase(&ShapedType, v51);
        }

        ShapedType = *v51;
      }

      else
      {
        (*(*v72 + 24))(&ShapedType);
      }

      v52 = isSplat;
      if (v81 >= HIDWORD(v81))
      {
        if (isSplat <= &ShapedType && &isSplat[16 * v81] > &ShapedType)
        {
          v55 = &ShapedType - isSplat;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&isSplat, v81 + 1);
          v52 = isSplat;
          p_ShapedType = &isSplat[v55];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&isSplat, v81 + 1);
          p_ShapedType = &ShapedType;
          v52 = isSplat;
        }
      }

      else
      {
        p_ShapedType = &ShapedType;
      }

      v54 = &v52[16 * v81];
      *(v54 + 2) = *(p_ShapedType + 2);
      *v54 = *p_ShapedType;
      *(p_ShapedType + 2) = 0;
      LODWORD(v81) = v81 + 1;
      if (v86 >= 0x41 && ShapedType)
      {
        MEMORY[0x1AC55A040](ShapedType, 0x1000C8000313F17);
      }

      v42 = v73 + v35;
      v73 += v35;
      --v22;
    }

    while (v22);
  }

  v43 = mlir::ShapedType::getShape(v74);
  v45 = v44;
  v46 = mlir::ElementsAttr::isSplat(v74);
  v47 = mlir::RankedTensorType::get(v43, v45, v46, 0);
  v48 = mlir::createElementsAttr(v47, isSplat, v81) & 0xFFFFFFFFFFFFFFFBLL;
  if ((v71 & 1) == 0)
  {
    v49 = v72;
    v72 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }
  }

  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&isSplat);
  return v48;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldCropOp>::externalFold(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  {
    return 0;
  }

  v6 = *a3;
  if (!v6)
  {
    v24 = 0;
    v25 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8))
  {
    v24 = 0;
    v25 = 0;
    return 0;
  }

  v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
  v24 = v6;
  v25 = v7;
  Type = mlir::ElementsAttr::getType(&v24);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v23[0] = v9;
  v23[1] = Type;
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v21 = v11;
  v22 = v12;
  if (!mlir::ElementsAttr::getShapedType(&v21))
  {
    return 0;
  }

  mlir::ShapedType::getShape(&v21);
  if (v13 != 1)
  {
    return 0;
  }

  v14 = *mlir::ShapedType::getShape(&v21);
  v15 = *(*(a2 + 72) + 88);
  isSplat = 0;
  v28 = 0;
  v26 = &isSplat;
  v29 = v15;
  DefiningOp = mlir::Value::getDefiningOp(&v29);
  if (!DefiningOp)
  {
    return 0;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  SingleInt = mlir::getSingleIntValue<int>(isSplat, v28);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 0;
  }

  v18 = SingleInt;
  if (*(*mlir::ElementsAttr::isSplat(v23) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v19 & 0xFFFFFFFFFFFFFFFBLL;
  }

  isSplat = mlir::ElementsAttr::isSplat(v23);
  if (!llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
  {
    return 0;
  }

  return v19 & 0xFFFFFFFFFFFFFFFBLL;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldConcatOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v110[4] = *MEMORY[0x1E69E9840];
  v100 = a2;
  v5 = a4 - 1;
  if (a4 == 2)
  {
    v6 = *(*(a2 + 72) + 24);
    v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    v105 = v7;
    v106 = v8;
    if (mlir::ElementsAttr::getShapedType(&v105))
    {
      mlir::ShapedType::getShape(&v105);
      if (v9 >= 1)
      {
        return (v6 | 4);
      }
    }

    a2 = v100;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    if (v13)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v99[0] = v12;
  v99[1] = v13;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v100);
  result = 0;
  if (!InferredResultTypes && v99[0])
  {
    if (!mlir::ElementsAttr::getShapedType(v99))
    {
      return 0;
    }

    v108 = v110;
    v109 = 0x400000000;
    v15 = &a3[v5];
    if (v5)
    {
      v16 = a3;
      do
      {
        v17 = *v16;
        if (!*v16)
        {
          v105 = 0;
          v106 = 0;
          goto LABEL_134;
        }

        if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8))
        {
          v105 = 0;
          v106 = 0;
          goto LABEL_134;
        }

        v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
        v105 = v17;
        v106 = v18;
        if (!v17)
        {
          goto LABEL_134;
        }

        Type = mlir::ElementsAttr::getType(&v105);
        if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8))
        {
          v93 = 0;
          v94 = 0;
          goto LABEL_134;
        }

        v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        v93 = Type;
        v94 = v20;
        if (!Type)
        {
          goto LABEL_134;
        }

        if (!mlir::ElementsAttr::getShapedType(&v93))
        {
          goto LABEL_134;
        }

        mlir::ShapedType::getShape(&v93);
        if (v21 > 1 || !mlir::ElementsAttr::getShapedType(&v93))
        {
          goto LABEL_134;
        }

        Shape = mlir::ShapedType::getShape(&v93);
        if (v23)
        {
          v24 = 8 * v23;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_134;
        }

LABEL_39:
        v25 = v93;
        v26 = v109;
        if (v109 >= HIDWORD(v109))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v109 + 1, 8);
          v26 = v109;
        }

        v108[v26] = v25;
        v27 = (v109 + 1);
        LODWORD(v109) = v109 + 1;
        ++v16;
      }

      while (v16 != v15);
      if (result)
      {
        goto LABEL_45;
      }

      goto LABEL_185;
    }

    if (result)
    {
LABEL_45:
      v28 = result;
      v29 = *(*mlir::ElementsAttr::isSplat(v99) + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v105 = v107;
        v106 = 0x400000000;
        if (v5)
        {
          do
          {
            v66 = *a3;
            if (*a3)
            {
              v67 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v66 + 8);
            }

            else
            {
              v67 = 0;
            }

            v85 = v66;
            v86 = v67;
            mlir::ElementsAttr::getValues<llvm::APInt>(&v85, &v93);
            LOWORD(v102) = v93;
            if (v93 == 1)
            {
              v103 = v94;
            }

            else
            {
              (*(*v94 + 16))(&v103);
            }

            v68 = v95;
            v104 = v95;
            v90 = v96;
            if (v96 == 1)
            {
              v91 = v97;
            }

            else
            {
              (*(*v97 + 16))(&v91);
              v68 = v104;
            }

            v69 = v98;
            v92 = v98;
            while (v68 != v69)
            {
              if (BYTE1(v102))
              {
                v70 = 0;
              }

              else
              {
                v70 = v68;
              }

              if (v102 == 1)
              {
                v71 = v103 + 16 * v70;
                LODWORD(v89) = *(v71 + 2);
                if (v89 > 0x40)
                {
                  llvm::APInt::initSlowCase(&v88, v71);
                }

                v88 = *v71;
              }

              else
              {
                (*(*v103 + 24))(&v88);
              }

              v72 = v105;
              if (v106 >= HIDWORD(v106))
              {
                if (v105 <= &v88 && &v105[16 * v106] > &v88)
                {
                  v76 = &v88 - v105;
                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v105, v106 + 1);
                  v72 = v105;
                  v73 = &v105[v76];
                }

                else
                {
                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v105, v106 + 1);
                  v73 = &v88;
                  v72 = v105;
                }
              }

              else
              {
                v73 = &v88;
              }

              v74 = &v72[16 * v106];
              v75 = *(v73 + 2);
              *(v74 + 2) = v75;
              if (v75 > 0x40)
              {
                llvm::APInt::initSlowCase(v74, v73);
              }

              *v74 = *v73;
              LODWORD(v106) = v106 + 1;
              if (v89 >= 0x41 && v88)
              {
                MEMORY[0x1AC55A040](v88, 0x1000C8000313F17);
              }

              v68 = ++v104;
              v69 = v92;
            }

            if ((v90 & 1) == 0)
            {
              v77 = v91;
              v91 = 0;
              if (v77)
              {
                (*(*v77 + 8))(v77);
              }
            }

            if ((v102 & 1) == 0)
            {
              v78 = v103;
              v103 = 0;
              if (v78)
              {
                (*(*v78 + 8))(v78);
              }
            }

            if ((v96 & 1) == 0)
            {
              v79 = v97;
              v97 = 0;
              if (v79)
              {
                (*(*v79 + 8))(v79);
              }
            }

            if ((v93 & 1) == 0)
            {
              v80 = v94;
              v94 = 0;
              if (v80)
              {
                (*(*v80 + 8))(v80);
              }
            }

            ++a3;
          }

          while (a3 != v15);
        }

        v81 = mlir::ShapedType::getShape(v99);
        v83 = mlir::RankedTensorType::get(v81, v82, v28, 0);
        v65 = (mlir::createElementsAttr(v83, v105, v106) & 0xFFFFFFFFFFFFFFFBLL);
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v105);
      }

      else
      {
        if (v29 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
LABEL_134:
          result = 0;
          goto LABEL_185;
        }

        v105 = v107;
        v106 = 0x400000000;
        v93 = v28;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v93);
        if (v5)
        {
          v47 = FloatSemantics;
          do
          {
            v48 = *a3;
            if (*a3)
            {
              v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v48 + 8);
            }

            else
            {
              v49 = 0;
            }

            v88 = v48;
            v89 = v49;
            mlir::ElementsAttr::getValues<llvm::APFloat>(&v88, &v93);
            v90 = v93;
            if (v93 == 1)
            {
              v91 = v94;
            }

            else
            {
              (*(*v94 + 16))(&v91);
            }

            v50 = v95;
            v92 = v95;
            LOWORD(v85) = v96;
            if (v96 == 1)
            {
              v86 = v97;
            }

            else
            {
              (*(*v97 + 16))(&v86);
              v50 = v92;
            }

            v51 = v98;
            v87 = v98;
            while (v50 != v51)
            {
              if (HIBYTE(v90))
              {
                v52 = 0;
              }

              else
              {
                v52 = v50;
              }

              if (v90 == 1)
              {
                v53 = v91 + 32 * v52;
                v55 = *(v53 + 1);
                v54 = (v53 + 8);
                if (llvm::APFloatBase::PPCDoubleDouble(v91) == v55)
                {
                  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v103, v54);
                }

                else
                {
                  llvm::detail::IEEEFloat::IEEEFloat(&v103, v54);
                }
              }

              else
              {
                (*(*v91 + 24))(&v102);
              }

              v101 = 0;
              llvm::APFloat::convert(&v102, v47, 1u, &v101);
              v56 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v105, &v102);
              v57 = v103;
              if (llvm::APFloatBase::PPCDoubleDouble(v56) == v57)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v103);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(&v103);
              }

              v50 = ++v92;
              v51 = v87;
            }

            if ((v85 & 1) == 0)
            {
              v58 = v86;
              v86 = 0;
              if (v58)
              {
                (*(*v58 + 8))(v58);
              }
            }

            if ((v90 & 1) == 0)
            {
              v59 = v91;
              v91 = 0;
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }

            if ((v96 & 1) == 0)
            {
              v60 = v97;
              v97 = 0;
              if (v60)
              {
                (*(*v60 + 8))(v60);
              }
            }

            if ((v93 & 1) == 0)
            {
              v61 = v94;
              v94 = 0;
              if (v61)
              {
                (*(*v61 + 8))(v61);
              }
            }

            ++a3;
          }

          while (a3 != v15);
        }

        v62 = mlir::ShapedType::getShape(v99);
        v64 = mlir::RankedTensorType::get(v62, v63, v28, 0);
        v65 = (mlir::createElementsAttr(v64, v105, v106) & 0xFFFFFFFFFFFFFFFBLL);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v105);
      }

      result = v65;
    }

LABEL_185:
    if (v108 != v110)
    {
      v84 = result;
      free(v108);
      return v84;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldReshapeOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v41[0] = v5;
  v41[1] = v6;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v40[0] = v8;
  v40[1] = v9;
  v10 = *a3;
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8))
  {
    v10 = 0;
LABEL_14:
    v38 = v10;
    v39 = 0;
    goto LABEL_21;
  }

  v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8);
  v38 = v10;
  v39 = v11;
  if (mlir::ElementsAttr::getShapedType(v40))
  {
    Shape = mlir::ShapedType::getShape(v40);
    if (!v13)
    {
LABEL_20:
      Type = mlir::ElementsAttr::getType(&v38);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(Type);
      LOBYTE(v42) = 0;
      v43 = 0;
      v17 = mlir::ShapedType::cloneWith(v40, &v42, ElementTypeOrSelf);
      return mlir::reshapeElementsAttr(v10, v11, v17, v18) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v14 = 8 * v13;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (!mlir::ElementsAttr::getShapedType(v41))
  {
    return 0;
  }

  if (!mlir::ElementsAttr::getShapedType(v40))
  {
    return 0;
  }

  v20 = mlir::ShapedType::getShape(v41);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v40);
  if (v22 != v24 || memcmp(v20, v23, 8 * v22))
  {
    return 0;
  }

  v25 = mlir::ShapedType::getShape(v40);
  if (v26)
  {
    v27 = (v26 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v27 >= 3)
    {
      v30 = v27 + 1;
      v31 = (v27 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v29 = (v25 + 8 * v31);
      v32 = (v25 + 16);
      v33 = 0uLL;
      v34 = vnegq_f64(0);
      v35 = v31;
      v36 = 0uLL;
      do
      {
        v33 = vsubq_s64(v33, vceqq_s64(v32[-1], v34));
        v36 = vsubq_s64(v36, vceqq_s64(*v32, v34));
        v32 += 2;
        v35 -= 4;
      }

      while (v35);
      v28 = vaddvq_s64(vaddq_s64(v36, v33));
      if (v30 == v31)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v28 = 0;
      v29 = v25;
    }

    do
    {
      v37 = *v29++;
      if (v37 == 0x8000000000000000)
      {
        ++v28;
      }
    }

    while (v29 != (v25 + 8 * v26));
LABEL_35:
    if (v28 > 1)
    {
      return 0;
    }
  }

  return *(*(a2 + 72) + 24) | 4;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldGetCoordOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v6 = *a3;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(**a3 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v32[0] = v6;
  v32[1] = v7;
  v8 = *(a3 + 8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  result = 0;
  v31[0] = v8;
  v31[1] = v9;
  if (v6 && v8)
  {
    if (mlir::ElementsAttr::getNumElements(v6, v7) != 1 || mlir::ElementsAttr::getNumElements(v8, v9) != 1)
    {
      return 0;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v31, &v34);
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v34, 0, &ElementTypeOrSelf);
    if (v30 > 0x40)
    {
      v11 = *ElementTypeOrSelf;
      MEMORY[0x1AC55A040]();
    }

    else if (v30)
    {
      v11 = (ElementTypeOrSelf << -v30) >> -v30;
    }

    else
    {
      v11 = 0;
    }

    if ((v37 & 1) == 0)
    {
      v12 = v38;
      v38 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    if ((v34 & 1) == 0)
    {
      v13 = v35;
      v35 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (v11)
    {
      return 0;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v32, &v34);
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v34, 0, &ElementTypeOrSelf);
    if (v30 > 0x40)
    {
      v14 = *ElementTypeOrSelf;
      MEMORY[0x1AC55A040]();
    }

    else if (v30)
    {
      v14 = (ElementTypeOrSelf << -v30) >> -v30;
    }

    else
    {
      v14 = 0;
    }

    if ((v37 & 1) == 0)
    {
      v15 = v38;
      v38 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    if ((v34 & 1) == 0)
    {
      v16 = v35;
      v35 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v32[0]);
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) == 32)
    {
      v34 = &v36;
      v35 = 0xC00000000;
      if (v14 < 1)
      {
        v17 = 0;
      }

      else
      {
        LODWORD(v17) = 0;
        for (i = 0; i != v14; ++i)
        {
          if (v17 >= HIDWORD(v35))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, &v36, v17 + 1, 4);
            LODWORD(v17) = v35;
          }

          *(v34 + v17) = i;
          v17 = (v35 + 1);
          LODWORD(v35) = v35 + 1;
        }
      }

      v33 = v17;
      Context = mlir::Attribute::getContext((a2 + 24));
      v22 = mlir::IntegerType::get(Context, 0x20u, 1u);
      v23 = mlir::RankedTensorType::get(&v33, 1, v22, 0);
      v24 = v34;
      v25 = 4 * v35;
    }

    else
    {
      v34 = &v36;
      v35 = 0x600000000;
      if (v14 < 1)
      {
        v19 = 0;
      }

      else
      {
        LODWORD(v19) = 0;
        for (j = 0; j != v14; ++j)
        {
          if (v19 >= HIDWORD(v35))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, &v36, v19 + 1, 8);
            LODWORD(v19) = v35;
          }

          *(v34 + v19) = j;
          v19 = (v35 + 1);
          LODWORD(v35) = v35 + 1;
        }
      }

      v33 = v19;
      v26 = mlir::Attribute::getContext((a2 + 24));
      v27 = mlir::IntegerType::get(v26, 0x40u, 1u);
      v23 = mlir::RankedTensorType::get(&v33, 1, v27, 0);
      v24 = v34;
      v25 = 8 * v35;
    }

    RawElementsAttr = mlir::createRawElementsAttr(v23, v24, v25);
    if (v34 != &v36)
    {
      free(v34);
    }

    return RawElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldInitRandomPhiloxStateOp>::externalFold(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
LABEL_5:
    v8 = *a3;
    if (*a3)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v10 = a3[1];
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 0;
      v10 = a3[1];
      if (v10)
      {
LABEL_7:
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8);
        v12 = a3[2];
        if (v12)
        {
LABEL_8:
          v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
LABEL_13:
          v35[0] = v36;
          v35[1] = 0x100000000;
          v33[0] = &v34;
          v33[1] = 0x100000000;
          v31[0] = &v32;
          v31[1] = 0x100000000;
          mlir::getIntValues<long long>(v8, v9, v35, 1);
          mlir::getIntValues<long long>(v10, v11, v33, 1);
          mlir::getIntValues<long long>(v12, v13, v31, 1);
          v27 = 1;
          v15 = *v33[0];
          v16 = *v31[0];
          v28 = *v35[0];
          v29 = v15;
          v30 = v16;
          if (*(a2 + 36))
          {
            v17 = a2 - 16;
          }

          else
          {
            v17 = 0;
          }

          v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v18)
          {
            v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
          }

          else
          {
            v19 = 0;
          }

          v26[0] = v18;
          v26[1] = v19;
          if (mlir::ElementsAttr::getShapedType(v26))
          {
            Shape = mlir::ShapedType::getShape(v26);
            v22 = v21;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v26[0]);
            v24 = mlir::RankedTensorType::get(Shape, v22, ElementTypeOrSelf, 0);
            v14 = mlir::createRawElementsAttr(v24, &v27, 0x1CuLL) & 0xFFFFFFFFFFFFFFFBLL;
          }

          else
          {
            v14 = 0;
          }

          if (v31[0] != &v32)
          {
            free(v31[0]);
          }

          if (v33[0] != &v34)
          {
            free(v33[0]);
          }

          if (v35[0] != v36)
          {
            free(v35[0]);
          }

          return v14;
        }

LABEL_12:
        v13 = 0;
        goto LABEL_13;
      }
    }

    v11 = 0;
    v12 = a3[2];
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v6 = 8 * a4;
  v7 = a3;
  while (*v7)
  {
    ++v7;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldPadOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78[6] = *MEMORY[0x1E69E9840];
  v61 = a2;
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v59 = 0;
    v60 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  v59 = v5;
  v60 = v6;
  if (!v5 || !mlir::ElementsAttr::getShapedType(&v59) || !mlir::ElementsAttr::getShapedType(&v59))
  {
    return 0;
  }

  Shape = mlir::ShapedType::getShape(&v59);
  if (v8)
  {
    v9 = 8 * v8;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  v10 = mlir::ShapedType::getShape(&v59);
  if (mlir::ShapedType::getNumElements(v10, v11) > 64)
  {
    return 0;
  }

  v12 = *a3;
  if (*a3)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
    if (v13)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v58[0] = v12;
  v58[1] = v13;
  v14 = *(a3 + 8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
    if (v15)
    {
      v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v57[0] = v14;
  v57[1] = v15;
  if (!v58[0])
  {
    return 0;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(v58);
  v77 = v16;
  if (!mlir::ElementsAttr::getShapedType(&ShapedType))
  {
    return 0;
  }

  isSplat = mlir::ElementsAttr::getShapedType(v58);
  v72 = v17;
  mlir::ShapedType::getShape(&isSplat);
  if (v18 > 1 || !v57[0])
  {
    return 0;
  }

  PaddingMode = mlir::mps::PadOp::getPaddingMode(&v61);
  mlir::ElementsAttr::getValues<llvm::APInt>(v57, &ShapedType);
  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&ShapedType, 0, &isSplat);
  if (v72 > 0x40)
  {
    v20 = *isSplat;
    MEMORY[0x1AC55A040]();
  }

  else if (v72)
  {
    v20 = isSplat << -v72 >> -v72;
  }

  else
  {
    v20 = 0;
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ShapedType);
  mlir::ElementsAttr::getValues<llvm::APInt>(v57, &ShapedType);
  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&ShapedType, 1, &isSplat);
  if (v72 > 0x40)
  {
    v21 = *isSplat;
    MEMORY[0x1AC55A040]();
  }

  else if (v72)
  {
    v21 = isSplat << -v72 >> -v72;
  }

  else
  {
    v21 = 0;
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ShapedType);
  ShapedType = mlir::ElementsAttr::getShapedType(v58);
  v77 = v22;
  if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ShapedType = mlir::ElementsAttr::getShapedType(v58);
    v77 = v23;
    isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
    if (llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
    {
      v69.n128_u64[0] = v70;
      v69.n128_u64[1] = 0x100000000;
      mlir::ElementsAttr::getValues<llvm::APFloat>(v58, &ShapedType);
      v54 = ShapedType;
      if (ShapedType == 1)
      {
        v55 = v77;
      }

      else
      {
        (*(*v77 + 16))(&v55);
      }

      v56 = v78[0];
      mlir::ElementsAttr::getValues<llvm::APFloat>(v58, &isSplat);
      LOWORD(v52) = v73;
      if (v73 == 1)
      {
        v53[0] = v74;
      }

      else
      {
        (*(*v74 + 16))(v53);
      }

      v53[1] = v75;
      llvm::SmallVector<llvm::APFloat,1u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(&v64, &v54, &v52);
      if ((v52 & 1) == 0)
      {
        v28 = v53[0];
        v53[0] = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&isSplat);
      if ((v54 & 1) == 0)
      {
        v29 = v55;
        v55 = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ShapedType);
      if (PaddingMode > 1)
      {
        if (PaddingMode == 2)
        {
          v42 = v64;
          if (v20)
          {
            v43 = 32 * v20;
            v44 = -32 * v20;
            v45 = v64 + v43 - 32;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v45);
              v45 -= 32;
              v44 += 32;
            }

            while (v44);
            v42 = v64;
          }

          llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v69, v42, &v42[32 * v65]);
          if (v21)
          {
            v46 = -32 * v21;
            v47 = v64 + 32 * v65 - 32;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v47);
              v47 -= 32;
              v46 += 32;
            }

            while (v46);
          }

          goto LABEL_108;
        }

        if (PaddingMode != 3)
        {
LABEL_108:
          ShapedType = v69.n128_u32[2];
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v58[0]);
          v49 = mlir::RankedTensorType::get(&ShapedType, 1, ElementTypeOrSelf, 0);
          v40 = mlir::createElementsAttr(v49, v69.n128_i64[0], v69.n128_u32[2]) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_109:
          llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v64);
          llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v69);
          return v40;
        }

        llvm::APFloat::APFloat(&isSplat, v64);
        llvm::APFloat::APFloat(&v62, (v64 + 32 * v65 - 32));
        ShapedType = v78;
        v77 = 0x100000000;
        llvm::SmallVectorImpl<llvm::APFloat>::assign(&ShapedType, v20, &isSplat);
        llvm::SmallVectorImpl<llvm::APFloat>::operator=(&v69, &ShapedType);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ShapedType);
        llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v69, v64, v64 + 32 * v65);
        llvm::SmallVectorImpl<llvm::APFloat>::append(&v69, v21, &v62);
        llvm::APFloat::~APFloat(&v62);
      }

      else
      {
        if (PaddingMode)
        {
          if (PaddingMode == 1)
          {
            v30 = v64;
            if (v20)
            {
              v31 = 32 * v20;
              v32 = -32 * v20;
              v33 = v64 + v31;
              do
              {
                llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v33);
                v33 -= 32;
                v32 += 32;
              }

              while (v32);
              v30 = v64;
            }

            llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v69, v30, &v30[32 * v65]);
            if (v21)
            {
              v34 = -32 * v21;
              v35 = v64 + 32 * v65 - 64;
              do
              {
                llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v35);
                v35 -= 32;
                v34 += 32;
              }

              while (v34);
            }
          }

          goto LABEL_108;
        }

        v62 = llvm::dyn_cast_or_null<mlir::ElementsAttr,mlir::Attribute>((a3 + 16));
        v63[0] = v41;
        if (!v62 || (mlir::ElementsAttr::isSplat(&v62) & 1) == 0)
        {
          v40 = 0;
          goto LABEL_109;
        }

        mlir::ElementsAttr::getSplatValue<llvm::APFloat>(&v62, &isSplat);
        ShapedType = v78;
        v77 = 0x100000000;
        llvm::SmallVectorImpl<llvm::APFloat>::assign(&ShapedType, v20, &isSplat);
        llvm::SmallVectorImpl<llvm::APFloat>::operator=(&v69, &ShapedType);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ShapedType);
        llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v69, v64, v64 + 32 * v65);
        llvm::SmallVectorImpl<llvm::APFloat>::append(&v69, v21, &isSplat);
      }

      llvm::APFloat::~APFloat(&isSplat);
      goto LABEL_108;
    }

    return 0;
  }

  ShapedType = v78;
  v77 = 0x300000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(v58, &v69);
  LOWORD(v62) = v69.n128_u16[0];
  if (v69.n128_u8[0] == 1)
  {
    v63[0] = v69.n128_u64[1];
  }

  else
  {
    (*(*v69.n128_u64[1] + 16))(v63);
  }

  v63[1] = v70[0];
  mlir::ElementsAttr::getValues<llvm::APInt>(v58, &v64);
  v54 = v66;
  if (v66 == 1)
  {
    v55 = v67;
  }

  else
  {
    (*(*v67 + 16))(&v55);
  }

  v56 = v68;
  llvm::SmallVector<llvm::APInt,3u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(&isSplat, &v62, &v54);
  if ((v54 & 1) == 0)
  {
    v25 = v55;
    v55 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v64);
  if ((v62 & 1) == 0)
  {
    v26 = v63[0];
    v63[0] = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v69);
  if (PaddingMode > 1)
  {
    if (PaddingMode == 2)
    {
      std::reverse_copy[abi:nn200100]<llvm::APInt *,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(isSplat, (isSplat + 16 * v20), &ShapedType);
      llvm::SmallVectorImpl<llvm::APInt>::append(&ShapedType, &isSplat);
      v27 = (isSplat + 16 * v72);
      goto LABEL_94;
    }

    if (PaddingMode != 3)
    {
      goto LABEL_95;
    }

    LODWORD(v65) = *(isSplat + 8);
    if (v65 > 0x40)
    {
      llvm::APInt::initSlowCase(&v64, isSplat);
    }

    v64 = *isSplat;
    v50 = (isSplat + 16 * v72);
    v51 = v50 - 2;
    LODWORD(v53[0]) = *(v50 - 2);
    if (LODWORD(v53[0]) > 0x40)
    {
      llvm::APInt::initSlowCase(&v52, v51);
    }

    v52 = *v51;
    v69.n128_u64[0] = v70;
    v69.n128_u64[1] = 0x300000000;
    llvm::SmallVectorImpl<llvm::APInt>::assign(&v69, v20, &v64);
    llvm::SmallVectorImpl<llvm::APInt>::operator=(&ShapedType, &v69);
    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v69);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ShapedType, &isSplat);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ShapedType, v21, &v52);
    if (LODWORD(v53[0]) >= 0x41 && v52)
    {
      MEMORY[0x1AC55A040](v52, 0x1000C8000313F17);
    }

    if (v65 < 0x41)
    {
      goto LABEL_95;
    }

    v37 = v64;
    if (!v64)
    {
      goto LABEL_95;
    }

    goto LABEL_122;
  }

  if (!PaddingMode)
  {
    v64 = llvm::dyn_cast_or_null<mlir::ElementsAttr,mlir::Attribute>((a3 + 16));
    v65 = v36;
    if (!v64 || (mlir::ElementsAttr::isSplat(&v64) & 1) == 0)
    {
      v40 = 0;
      goto LABEL_96;
    }

    mlir::ElementsAttr::getSplatValue<llvm::APInt>(&v64, &v52);
    v69.n128_u64[0] = v70;
    v69.n128_u64[1] = 0x300000000;
    llvm::SmallVectorImpl<llvm::APInt>::assign(&v69, v20, &v52);
    llvm::SmallVectorImpl<llvm::APInt>::operator=(&ShapedType, &v69);
    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v69);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ShapedType, &isSplat);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ShapedType, v21, &v52);
    if (LODWORD(v53[0]) < 0x41)
    {
      goto LABEL_95;
    }

    v37 = v52;
    if (!v52)
    {
      goto LABEL_95;
    }

LABEL_122:
    MEMORY[0x1AC55A040](v37, 0x1000C8000313F17);
    goto LABEL_95;
  }

  if (PaddingMode == 1)
  {
    std::reverse_copy[abi:nn200100]<llvm::APInt *,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>((isSplat + 16), (isSplat + 16 + 16 * v20), &ShapedType);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ShapedType, &isSplat);
    v27 = (isSplat + 16 * v72 - 16);
LABEL_94:
    std::copy[abi:nn200100]<std::reverse_iterator<llvm::APInt *>,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(v27, v27, &v27[-2 * v21], &v27[-2 * v21], &ShapedType);
  }

LABEL_95:
  v69.n128_u64[0] = v77;
  v38 = mlir::getElementTypeOrSelf(v58[0]);
  v39 = mlir::RankedTensorType::get(&v69, 1, v38, 0);
  v40 = mlir::createElementsAttr(v39, ShapedType, v77) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_96:
  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&isSplat);
  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&ShapedType);
  return v40;
}

uint64_t mlir::ElementsAttr::getSplatValue<llvm::APInt>@<X0>(mlir::BranchOpInterface *a1@<X0>, llvm::APInt *a2@<X8>)
{
  mlir::ElementsAttr::value_begin<llvm::APInt>(a1, v7);
  result = v8;
  if (v7[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = v9;
  }

  if (v7[0] != 1)
  {
    result = (*(*v8 + 24))();
    if (v7[0])
    {
      return result;
    }

    goto LABEL_11;
  }

  v5 = v8 + 16 * v4;
  v6 = *(v5 + 8);
  *(a2 + 2) = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, v5);
  }

  *a2 = *v5;
  if ((v7[0] & 1) == 0)
  {
LABEL_11:
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::SmallVectorImpl<llvm::APInt>::append(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a1 + 8);
  if (v5 + v4 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v5 + v4);
    v5 = *(a1 + 8);
  }

  if (v4)
  {
    v6 = (*a1 + 16 * v5);
    v7 = 16 * v4;
    do
    {
      v8 = *(v3 + 8);
      *(v6 + 2) = v8;
      if (v8 > 0x40)
      {
        llvm::APInt::initSlowCase(v6, v3);
      }

      *v6 = *v3;
      v3 += 16;
      v6 = (v6 + 16);
      v7 -= 16;
    }

    while (v7);
    LODWORD(v5) = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v4;
}

void llvm::SmallVectorImpl<llvm::APInt>::append(uint64_t a1, uint64_t a2, llvm::APInt *a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = v6 + a2;
  if (v7 > *(a1 + 12))
  {
    v12 = *a1 + 16 * v6;
    if (*a1 <= a3 && v12 > a3)
    {
      v14 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v7);
      v3 = &v14[*a1];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v7);
    }
  }

  v8 = *(a1 + 8);
  if (a2)
  {
    v9 = (*a1 + 16 * v8);
    v10 = a2;
    do
    {
      v11 = *(v3 + 2);
      *(v9 + 2) = v11;
      if (v11 > 0x40)
      {
        llvm::APInt::initSlowCase(v9, v3);
      }

      *v9 = *v3;
      v9 = (v9 + 16);
      --v10;
    }

    while (v10);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + a2;
}

uint64_t std::reverse_copy[abi:nn200100]<llvm::APInt *,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(const llvm::APInt *a1, const llvm::APInt *a2, uint64_t a3)
{
  if (a2 != a1)
  {
    v4 = a2;
    v6 = *(a3 + 8);
    do
    {
      v4 = (v4 - 16);
      v7 = *a3;
      v8 = v4;
      if (v6 >= *(a3 + 12))
      {
        if (v7 <= v4 && v7 + 16 * v6 > v4)
        {
          v12 = v4 - v7;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a3, v6 + 1);
          v7 = *a3;
          v8 = &v12[*a3];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a3, v6 + 1);
          v7 = *a3;
          v8 = v4;
        }
      }

      v9 = (v7 + 16 * *(a3 + 8));
      v10 = *(v8 + 2);
      *(v9 + 2) = v10;
      if (v10 > 0x40)
      {
        llvm::APInt::initSlowCase(v9, v8);
      }

      *v9 = *v8;
      v6 = *(a3 + 8) + 1;
      *(a3 + 8) = v6;
    }

    while (v4 != a1);
  }

  return a3;
}

uint64_t std::copy[abi:nn200100]<std::reverse_iterator<llvm::APInt *>,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(uint64_t a1, const llvm::APInt *a2, uint64_t a3, const llvm::APInt *a4, uint64_t a5)
{
  if (a2 != a4)
  {
    v8 = a2;
    v9 = *(a5 + 8);
    do
    {
      v8 = (v8 - 16);
      v10 = *a5;
      v11 = v8;
      if (v9 >= *(a5 + 12))
      {
        if (v10 <= v8 && v10 + 16 * v9 > v8)
        {
          v15 = v8 - v10;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a5, v9 + 1);
          v10 = *a5;
          v11 = &v15[*a5];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a5, v9 + 1);
          v10 = *a5;
          v11 = v8;
        }
      }

      v12 = (v10 + 16 * *(a5 + 8));
      v13 = *(v11 + 2);
      *(v12 + 2) = v13;
      if (v13 > 0x40)
      {
        llvm::APInt::initSlowCase(v12, v11);
      }

      *v12 = *v11;
      v9 = *(a5 + 8) + 1;
      *(a5 + 8) = v9;
    }

    while (v8 != a4);
  }

  return a5;
}

llvm::APFloatBase *mlir::ElementsAttr::getSplatValue<llvm::APFloat>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::ElementsAttr::value_begin<llvm::APFloat>(a1, v8);
  if (v8[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v10;
  }

  if (v8[0] == 1)
  {
    v4 = v9 + 32 * v3;
    v6 = *(v4 + 1);
    v5 = (v4 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(v9) == v6)
    {
      result = llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v5);
      if (v8[0])
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v5);
      if (v8[0])
      {
        return result;
      }
    }
  }

  else
  {
    result = (*(*v9 + 24))();
    if (v8[0])
    {
      return result;
    }
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void llvm::SmallVectorImpl<llvm::APFloat>::append(llvm::APFloatBase *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 2);
  v7 = v6 + a2;
  if (v7 > *(a1 + 3))
  {
    v15 = *a1 + 32 * v6;
    if (*a1 <= a3 && v15 > a3)
    {
      v17 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v7);
      v3 = *a1 + v17;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v7);
    }
  }

  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = *a1;
    v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v11 = (v9 + 32 * v8 + 8);
    v12 = a2;
    do
    {
      v14 = (v3 + 8);
      if (v10 == *(v3 + 8))
      {
        v13 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v14);
      }

      else
      {
        v13 = llvm::detail::IEEEFloat::IEEEFloat(v11, v14);
      }

      v11 = (v13 + 4);
      --v12;
    }

    while (v12);
    LODWORD(v8) = *(a1 + 2);
  }

  *(a1 + 2) = v8 + a2;
}

void *llvm::SmallVector<llvm::APInt,3u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APInt>::append<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

void llvm::SmallVectorImpl<llvm::APInt>::assign(uint64_t result, unint64_t a2, llvm::APInt *a3)
{
  if (*(result + 12) >= a2)
  {
    v6 = *(result + 8);
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(result + 8);
    }

    if (v7)
    {
      v8 = *result;
      do
      {
        if (v8[2] > 0x40 || *(a3 + 2) > 0x40u)
        {
          llvm::APInt::assignSlowCase(v8, a3);
        }

        else
        {
          *v8 = *a3;
          v8[2] = *(a3 + 2);
        }

        v8 += 4;
        --v7;
      }

      while (v7);
      v6 = *(result + 8);
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v13 = 16 * v6;
        v14 = 16 * v6 + *result - 8;
        v15 = 16 * a2 - v13;
        v16 = v14;
        do
        {
          v17 = *v16;
          v16 -= 4;
          if (v17 >= 0x41)
          {
            v18 = *(v14 - 8);
            if (v18)
            {
              MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
            }
          }

          v14 = v16;
          v15 += 16;
        }

        while (v15);
      }
    }

    else
    {
      v10 = (*result + 16 * v6);
      do
      {
        v12 = *(a3 + 2);
        *(v10 + 2) = v12;
        if (v12 > 0x40)
        {
          llvm::APInt::initSlowCase(v10, a3);
        }

        *v10 = *a3;
        v10 = (v10 + 16);
      }

      while (!__CFADD__(v9++, 1));
    }

    *(result + 8) = a2;
  }

  else
  {

    llvm::SmallVectorTemplateBase<llvm::APInt,false>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<llvm::APInt,false>::growAndAssign(uint64_t a1, unint64_t a2, const llvm::APInt *a3)
{
  v21 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v21);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    v10 = a2;
    do
    {
      v11 = *(a3 + 2);
      *(v9 + 2) = v11;
      if (v11 > 0x40)
      {
        llvm::APInt::initSlowCase(v9, a3);
      }

      *v9 = *a3;
      v9 = (v9 + 16);
      --v10;
    }

    while (v10);
  }

  v12 = *a1;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = 16 * v13;
    v15 = v12 + 16 * v13 - 8;
    v16 = -v14;
    v17 = v15;
    do
    {
      v18 = *v17;
      v17 -= 4;
      if (v18 >= 0x41)
      {
        v19 = *(v15 - 8);
        if (v19)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
        }
      }

      v15 = v17;
      v16 += 16;
    }

    while (v16);
    v12 = *a1;
  }

  v20 = v21;
  if (v12 != v6)
  {
    free(v12);
  }

  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = v20;
}

unsigned int *llvm::SmallVectorImpl<llvm::APInt>::operator=(unsigned int *a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    v4 = (a2 + 2);
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = a1[2];
      if (v7)
      {
        v8 = 16 * v7;
        v9 = &v6[4 * v7 - 2];
        v10 = -v8;
        v11 = v9;
        do
        {
          v12 = *v11;
          v11 -= 4;
          if (v12 >= 0x41)
          {
            v13 = *(v9 - 8);
            if (v13)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
            }
          }

          v9 = v11;
          v10 += 16;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != a1 + 4)
      {
        free(v6);
      }

      *a1 = *a2;
      v14 = (a2 + 1);
      *(a1 + 1) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_13:
      *v14 = 0;
      return a1;
    }

    v14 = (a2 + 1);
    v16 = *(a2 + 2);
    v17 = a1[2];
    if (v17 >= v16)
    {
      v23 = *a1;
      if (v16)
      {
        v24 = &v5[2 * v16];
        do
        {
          if (v23[2] >= 0x41 && *v23)
          {
            MEMORY[0x1AC55A040](*v23, 0x1000C8000313F17);
          }

          *v23 = *v5;
          v23[2] = *(v5 + 2);
          *(v5 + 2) = 0;
          v5 += 2;
          v23 += 4;
        }

        while (v5 != v24);
        v25 = *a1;
        v17 = a1[2];
      }

      else
      {
        v25 = *a1;
      }

      v42 = &v25[4 * v17];
      while (v42 != v23)
      {
        v43 = *(v42 - 2);
        v42 -= 4;
        if (v43 >= 0x41 && *v42)
        {
          MEMORY[0x1AC55A040](*v42, 0x1000C8000313F17);
        }
      }

      a1[2] = v16;
      v44 = *(a2 + 2);
      if (v44)
      {
        v45 = 16 * v44;
        v46 = &(*a2)[2 * v44 - 1];
        v47 = -v45;
        v48 = v46;
        do
        {
          v49 = *v48;
          v48 -= 4;
          if (v49 >= 0x41)
          {
            v50 = *(v46 - 8);
            if (v50)
            {
              MEMORY[0x1AC55A040](v50, 0x1000C8000313F17);
            }
          }

          v46 = v48;
          v47 += 16;
        }

        while (v47);
      }

      goto LABEL_13;
    }

    if (a1[3] >= v16)
    {
      if (v17)
      {
        v26 = &v5[2 * v17];
        v27 = (*a1 + 8);
        do
        {
          if (*v27 >= 0x41u)
          {
            v28 = *(v27 - 1);
            if (v28)
            {
              MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
            }
          }

          *(v27 - 1) = *v5;
          *v27 = *(v5 + 2);
          v27 += 4;
          *(v5 + 2) = 0;
          v5 += 2;
        }

        while (v5 != v26);
        goto LABEL_38;
      }
    }

    else
    {
      if (v17)
      {
        v18 = 16 * v17 + *a1 - 8;
        v19 = -16 * v17;
        v20 = v18;
        do
        {
          v21 = *v20;
          v20 -= 4;
          if (v21 >= 0x41)
          {
            v22 = *(v18 - 8);
            if (v22)
            {
              MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
            }
          }

          v18 = v20;
          v19 += 16;
        }

        while (v19);
      }

      a1[2] = 0;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v16);
    }

    v17 = 0;
LABEL_38:
    v29 = *a2;
    v30 = *(a2 + 2);
    if (v17 != v30)
    {
      v31 = (16 * v17) | 8;
      v32 = (*a1 + v31);
      v33 = 16 * v30 - 16 * v17;
      v34 = (v29 + v31);
      do
      {
        *v32 = *v34;
        *(v32 - 1) = *(v34 - 1);
        *v34 = 0;
        v34 += 4;
        v32 += 4;
        v33 -= 16;
      }

      while (v33);
      v29 = *a2;
    }

    a1[2] = v16;
    v35 = *v14;
    if (v35)
    {
      v36 = 2 * v35;
      v37 = &v29[v36 - 1];
      v38 = -(v36 * 8);
      v39 = v37;
      do
      {
        v40 = *v39;
        v39 -= 4;
        if (v40 >= 0x41)
        {
          v41 = *(v37 - 8);
          if (v41)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8000313F17);
          }
        }

        v37 = v39;
        v38 += 16;
      }

      while (v38);
    }

    goto LABEL_13;
  }

  return a1;
}

unsigned int *llvm::SmallVector<llvm::APFloat,1u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 4;
  *(a1 + 1) = 0x100000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APFloat>::append<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

unsigned int *llvm::SmallVectorImpl<llvm::APFloat>::operator=(__n128 *this, llvm::APFloatBase *a2)
{
  v2 = this;
  if (this != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (*a2 == (a2 + 16))
    {
      v12 = (a2 + 8);
      v14 = *(a2 + 2);
      v15 = this->n128_u32[2];
      if (v15 >= v14)
      {
        v21 = this->n128_u64[0];
        if (v14)
        {
          v22 = 32 * v14;
          v23 = (v4 + 8);
          do
          {
            this = llvm::APFloat::Storage::operator=((v21 + 8), v23);
            v21 += 32;
            v23 += 2;
            v22 -= 32;
          }

          while (v22);
          v24 = *v2;
          v15 = v2[2];
        }

        else
        {
          v24 = this->n128_u64[0];
        }

        v30 = &v24[2 * v15];
        if (v30 != v21)
        {
          v31 = llvm::APFloatBase::PPCDoubleDouble(this);
          this = (v30 - 24);
          do
          {
            if (v31 == this->n128_u64[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(this);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(this);
            }

            v33 = v32 - 8;
            this = (v32 - 32);
          }

          while (v33 != v21);
        }

        v2[2] = v14;
        v34 = *(a2 + 2);
        if (v34)
        {
          v35 = *a2;
          v36 = llvm::APFloatBase::PPCDoubleDouble(this);
          v37 = (32 * v34 + v35 - 24);
          v38 = -32 * v34;
          do
          {
            if (v36 == *v37)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v37);
            }

            v37 = (v39 - 32);
            v38 += 32;
          }

          while (v38);
        }
      }

      else
      {
        if (this->n128_u32[3] >= v14)
        {
          if (v15)
          {
            v25 = (this->n128_u64[0] + 8);
            v26 = 32 * v15;
            v27 = (v4 + 8);
            do
            {
              this = llvm::APFloat::Storage::operator=(v25, v27);
              v25 = (v25 + 32);
              v27 += 2;
              v26 -= 32;
            }

            while (v26);
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          if (v15)
          {
            v16 = this->n128_u64[0];
            v17 = llvm::APFloatBase::PPCDoubleDouble(this);
            v18 = (32 * v15 + v16 - 24);
            v19 = -32 * v15;
            do
            {
              if (v17 == *v18)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(v18);
              }

              v18 = (v20 - 32);
              v19 += 32;
            }

            while (v19);
          }

          v2[2] = 0;
          v53 = 0;
          v28 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v2, v2 + 4, v14, 32, &v53);
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(v2, v28);
          v29 = v53;
          this = *v2;
          if (*v2 != v2 + 4)
          {
            free(this);
          }

          v15 = 0;
          *v2 = v28;
          v2[3] = v29;
        }

        v40 = *a2;
        v41 = *(a2 + 2);
        if (v15 != v41)
        {
          v42 = *v2;
          v43 = llvm::APFloatBase::PPCDoubleDouble(this);
          v44 = (32 * v15) | 8;
          this = (v42 + v44);
          v45 = 32 * v41 - 32 * v15;
          v46 = (v40 + v44);
          do
          {
            if (v43 == v46->n128_u64[0])
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(this, v46);
            }

            else
            {
              v47 = llvm::detail::IEEEFloat::IEEEFloat(this, v46);
            }

            this = (v47 + 32);
            v46 += 2;
            v45 -= 32;
          }

          while (v45);
          v40 = *a2;
        }

        v2[2] = v14;
        v48 = *v12;
        if (v48)
        {
          v49 = llvm::APFloatBase::PPCDoubleDouble(this);
          v50 = (32 * v48 + v40 - 24);
          v51 = -32 * v48;
          do
          {
            if (v49 == *v50)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v50);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v50);
            }

            v50 = (v52 - 32);
            v51 += 32;
          }

          while (v51);
        }
      }
    }

    else
    {
      v6 = this->n128_u64[0];
      v7 = this->n128_u32[2];
      if (v7)
      {
        v8 = llvm::APFloatBase::PPCDoubleDouble(this);
        v9 = &v6[8 * v7 - 6];
        v10 = -32 * v7;
        do
        {
          if (v8 == *v9)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v9);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v9);
          }

          v9 = (v11 - 32);
          v10 += 32;
        }

        while (v10);
        v6 = *v2;
      }

      if (v6 != v2 + 4)
      {
        free(v6);
      }

      *v2 = *a2;
      v12 = (a2 + 8);
      *(v2 + 1) = *(a2 + 1);
      *a2 = v5;
      *(a2 + 3) = 0;
    }

    *v12 = 0;
  }

  return v2;
}

void llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(unsigned int *a1, char *a2, char *a3)
{
  v5 = a1;
  v6 = a3 - a2;
  v7 = a1[2];
  v8 = v7 + ((a3 - a2) >> 5);
  if (v8 > a1[3])
  {
    v19 = 0;
    v9 = a1 + 4;
    v10 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v8, 32, &v19);
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(v5, v10);
    v11 = v19;
    a1 = *v5;
    if (*v5 != v9)
    {
      free(a1);
    }

    *v5 = v10;
    v5[3] = v11;
    LODWORD(v7) = v5[2];
  }

  if (a2 != a3)
  {
    v12 = *v5;
    v13 = v7;
    v14 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v15 = &v12[8 * v13 + 2];
    v16 = (a2 + 8);
    do
    {
      if (v14 == *v16)
      {
        v17 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v15, v16);
      }

      else
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v15, v16);
      }

      v15 = (v17 + 4);
      v18 = v16 + 24;
      v16 = (v16 + 32);
    }

    while (v18 != a3);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + (v6 >> 5);
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldCastOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = a2;
  mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24));
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v10);
  v5 = *a3;
  if (v5)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v5);
      v16 = Type;
      v15 = ElementTypeOrSelf;
      if (Type == ElementTypeOrSelf)
      {
        return v5 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v8 = ElementTypeOrSelf;
      if (mlir::Type::isF16(&v16) || mlir::Type::isBF16(&v16))
      {
        if (mlir::Type::isF32(&v15))
        {
          return v5 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      else if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v13 = v16;
        Value = mlir::AffineMapAttr::getValue(&v13);
        if (mlir::Type::isF16(&Value))
        {
          v11 = v8;
          v12 = mlir::AffineMapAttr::getValue(&v11);
          if (mlir::Type::isF32(&v12))
          {
            return v5 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return mlir::mps::foldCastAttribute(v5, v6, Type, 1);
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldReinterpretCastOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v58 = a2;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24));
  if (ElementTypeOrSelf == mlir::pdl_interp::CheckTypeOp::getType(&v58))
  {
    return *(*(v58 + 72) + 24) | 4;
  }

  ElementBitWidth = mlir::mps::getElementBitWidth(ElementTypeOrSelf);
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v58);
  v8 = mlir::mps::getElementBitWidth(Type);
  v9 = *a3;
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = mlir::DenseElementsAttr::classof(v9);
  v12 = v11 ? v9 : 0;
  v57 = v12;
  if (!v11)
  {
    return 0;
  }

  if (!mlir::DenseElementsAttr::isSplat(&v57))
  {
    goto LABEL_17;
  }

  v13 = ElementBitWidth >> 3;
  v14 = v10 >> 3;
  if (ElementBitWidth >= 8 && ElementBitWidth > v10)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v57);
    v54 = &v56;
    v55 = xmmword_1A7598A10;
    if (v14 < 5)
    {
      v20 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v54, &v56, v10 >> 3, 1);
      v20 = v55;
    }

    if (v10 >= 8)
    {
      memcpy(v54 + v20, RawStringData, v10 >> 3);
    }

    else
    {
      v23 = v20 + v14;
      *&v55 = v20 + v14;
      if (v10 != 1)
      {
        goto LABEL_38;
      }

      v24 = *RawStringData;
      if (v24 != 255)
      {
        if (*RawStringData)
        {
          goto LABEL_38;
        }
      }

      if ((v23 + 1) > *(&v55 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v54, &v56, v23 + 1, 1);
        v23 = v55;
      }

      *(v54 + v23) = v24;
      v14 = 1;
    }

    v23 = v55 + v14;
    *&v55 = v55 + v14;
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_38:
    v25 = 0;
    v26 = v54;
    do
    {
      v27 = 0;
      do
      {
        v28 = RawStringData[v27];
        v29 = *(v54 + v27);
        if (v23 - 1 == v27)
        {
          break;
        }

        ++v27;
      }

      while (v28 == v29);
      v25 += v23;
      if (v25 == v13)
      {
        break;
      }

      RawStringData += v23;
    }

    while (v28 == v29);
    if (v28 == v29)
    {
      v30 = (*(v58 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
        v26 = v54;
        v23 = v55;
      }

      else
      {
        v31 = 0;
      }

      result = mlir::DenseElementsAttr::getFromRawBuffer(v30, v31, v26, v23) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
LABEL_48:
      if (mlir::DenseElementsAttr::getNumElements(&v57) <= 1023)
      {
        v34 = mlir::DenseElementsAttr::getNumElements(&v57) * v13;
        v51 = &v53;
        v52 = xmmword_1A7598A10;
        if (v34)
        {
          if (v34 < 5)
          {
            v35 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v51, &v53, v34, 1);
            v35 = v52;
          }

          if (v34 != v35)
          {
            bzero(v51 + v35, v34 - v35);
          }

          v43 = 0;
          *&v52 = v34;
          do
          {
            v44 = v51;
            v45 = mlir::DenseElementsAttr::getRawStringData(&v57);
            memcpy(&v44[v43], v45, v13);
            v43 += v13;
          }

          while (v34 != v43);
        }

        v46 = (*(v58 - 8) & 0xFFFFFFFFFFFFFFF8);
        if (v46)
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
        }

        else
        {
          v47 = 0;
        }

        result = mlir::DenseElementsAttr::getFromRawBuffer(v46, v47, v51, v52) & 0xFFFFFFFFFFFFFFFBLL;
        if (v51 != &v53)
        {
          v48 = result;
          free(v51);
          result = v48;
        }
      }

      else
      {
        result = 0;
      }
    }

    v49 = v54;
    if (v54 == &v56)
    {
      return result;
    }

LABEL_83:
    v50 = result;
    free(v49);
    return v50;
  }

  if (ElementBitWidth >= v10 || v10 < 8)
  {
    goto LABEL_17;
  }

  if (ElementBitWidth == 1)
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v57, &v54);
    v21 = v55;
    if (v55 > 0x40)
    {
      v22 = llvm::APInt::countLeadingZerosSlowCase(&v54) == v21 - 1;
      if (v54)
      {
        MEMORY[0x1AC55A040](v54, 0x1000C8000313F17);
      }
    }

    else
    {
      v22 = v54 == 1;
    }

    LOBYTE(v51) = v22 << 31 >> 31;
    llvm::SmallVector<char,2u>::SmallVector(&v54, v10 >> 3, &v51);
    v41 = (*(v58 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    }

    else
    {
      v42 = 0;
    }

    result = mlir::DenseElementsAttr::getFromRawBuffer(v41, v42, v54, v55) & 0xFFFFFFFFFFFFFFFBLL;
    v49 = v54;
LABEL_82:
    if (v49 == &v56)
    {
      return result;
    }

    goto LABEL_83;
  }

  if (ElementBitWidth >= 8)
  {
    llvm::SmallVector<char,2u>::SmallVector(&v54, v10 >> 3);
    v36 = 0;
    do
    {
      v37 = v54;
      v38 = mlir::DenseElementsAttr::getRawStringData(&v57);
      memcpy(&v37[v36], v38, v13);
      v36 += v13;
    }

    while (v14 != v36);
    v39 = (*(v58 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    result = mlir::DenseElementsAttr::getFromRawBuffer(v39, v40, v54, v55) & 0xFFFFFFFFFFFFFFFBLL;
    v49 = v54;
    goto LABEL_82;
  }

LABEL_17:
  if (mlir::DenseElementsAttr::isSplat(&v57) && ElementBitWidth != v10)
  {
    return 0;
  }

  v17 = (*(v58 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v32 = mlir::DenseElementsAttr::getRawStringData(&v57);
  return mlir::DenseElementsAttr::getFromRawBuffer(v17, v18, v32, v33) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t llvm::SmallVector<char,2u>::SmallVector(uint64_t a1, size_t a2, unsigned __int8 *a3)
{
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_1A7598A20;
  v5 = *a3;
  if (a2 >= 3)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), a2, 1);
    v6 = *a1;
LABEL_5:
    memset(v6, v5, a2);
    goto LABEL_6;
  }

  if (a2)
  {
    v6 = (a1 + 24);
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 8) = a2;
  return a1;
}

uint64_t llvm::SmallVector<char,2u>::SmallVector(uint64_t result, size_t a2)
{
  v2 = a2;
  *result = result + 24;
  *(result + 8) = xmmword_1A7598A20;
  if (a2)
  {
    if (a2 < 3)
    {
      v4 = 0;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), a2, 1);
      result = v3;
      v4 = *(v3 + 8);
      a2 = v2 - v4;
      if (v2 == v4)
      {
        goto LABEL_7;
      }
    }

    v5 = result;
    bzero((*result + v4), a2);
    result = v5;
LABEL_7:
    *(result + 8) = v2;
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldShapeOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v13 = v3;
    v14 = v4;
    if (v3 && mlir::ElementsAttr::getShapedType(&v13) && mlir::ElementsAttr::getShapedType(&v13))
    {
      Shape = mlir::ShapedType::getShape(&v13);
      if (!v6)
      {
LABEL_11:
        mlir::Attribute::getContext((a2 + 24));
        v8 = mlir::ShapedType::getShape(&v13);
        v10 = v9;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
      }

      v7 = 8 * v6;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  return 0;
}

int32x4_t *mlir::mps::anonymous namespace::getIntegerTensorAttr(int32x4_t *result, uint64_t a2, uint64_t a3)
{
  v42[4] = *MEMORY[0x1E69E9840];
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  v39 = v3;
  if (v3)
  {
    v5 = result;
    if (mlir::IntegerType::getWidth(&v39) == 32)
    {
      v38 = a2;
      v6 = mlir::RankedTensorType::get(&v38, 1, v39, 0);
      v7 = v6;
      if (v6)
      {
        v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      }

      else
      {
        v8 = 0;
      }

      v40 = v42;
      v41 = 0x400000000;
      v12 = (8 * a2) >> 3;
      if (v12 < 5)
      {
        v13 = 0;
        v15 = 0;
        v14 = v42;
        v16 = 8 * a2;
        if (!a2)
        {
LABEL_30:
          LODWORD(v41) = v15 + (v16 >> 3);
          v24 = 4 * v41;
          v25 = v7;
          v26 = v8;
LABEL_31:
          result = mlir::DenseElementsAttr::getFromRawBuffer(v25, v26, v14, v24);
          if (v40 != v42)
          {
            v37 = result;
            free(v40);
            return v37;
          }

          return result;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v12, 4);
        v13 = v41;
        v14 = v40;
        v15 = v41;
        v16 = 8 * a2;
        if (!a2)
        {
          goto LABEL_30;
        }
      }

      v17 = (v14 + 4 * v13);
      v18 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v18 >= 7)
      {
        v27 = v18 + 1;
        v28 = (v18 + 1) & 0x3FFFFFFFFFFFFFF8;
        v19 = (v17 + 4 * v28);
        v20 = &v5->i8[8 * v28];
        v29 = v5 + 2;
        v30 = v17 + 1;
        v31 = v28;
        do
        {
          v33 = v29[-2];
          v32 = v29[-1];
          v35 = *v29;
          v34 = v29[1];
          v29 += 4;
          v30[-1] = vuzp1q_s32(v33, v32);
          *v30 = vuzp1q_s32(v35, v34);
          v30 += 2;
          v31 -= 8;
        }

        while (v31);
        if (v27 == v28)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = v17;
        v20 = v5;
      }

      do
      {
        v36 = *v20;
        v20 += 8;
        v19->i32[0] = v36;
        v19 = (v19 + 4);
      }

      while (v20 != &v5->i8[v16]);
LABEL_29:
      v15 = v41;
      goto LABEL_30;
    }

    v38 = a2;
    v9 = mlir::RankedTensorType::get(&v38, 1, v39, 0);
    v10 = v9;
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v11 = 0;
    }

    v40 = v42;
    v41 = 0x400000000;
    v21 = (8 * a2) >> 3;
    if (v21 < 5)
    {
      v22 = 0;
      v14 = v42;
      v23 = 8 * a2;
      if (!a2)
      {
LABEL_24:
        LODWORD(v41) = v22 + (v23 >> 3);
        v24 = 8 * v41;
        v25 = v10;
        v26 = v11;
        goto LABEL_31;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v21, 8);
      v22 = v41;
      v14 = v40;
      v23 = 8 * a2;
      if (!a2)
      {
        goto LABEL_24;
      }
    }

    memcpy(&v14[v22], v5, v23);
    v22 = v41;
    v14 = v40;
    goto LABEL_24;
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldRankOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v8.i64[1] = v3;
    v9 = v4;
    if (v3 && mlir::ElementsAttr::getShapedType(&v8.u64[1]))
    {
      mlir::Attribute::getContext((a2 + 24));
      mlir::ShapedType::getShape(&v8.u64[1]);
      v8.i64[0] = v5;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v8.i64[1] = 0;
    v9 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldSizeOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v12.i64[1] = v3;
    v13 = v4;
    if (v3 && mlir::ElementsAttr::getShapedType(&v12.u64[1]))
    {
      Shape = mlir::ShapedType::getShape(&v12.u64[1]);
      if (!v6)
      {
LABEL_10:
        mlir::Attribute::getContext((a2 + 24));
        v8 = mlir::ShapedType::getShape(&v12.u64[1]);
        v12.i64[0] = mlir::ShapedType::getNumElements(v8, v9);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
      }

      v7 = 8 * v6;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v12.i64[1] = 0;
    v13 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldDimensionSizeOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 8);
  if (!v4 || !mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
  {
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
  v25 = v27;
  v26 = 0x600000000;
  mlir::getIntValues<long long>(v4, v5, &v25, 1);
  v6 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v21[0] = v6;
  v21[1] = v7;
  if (mlir::ElementsAttr::getShapedType(v21))
  {
    Shape = mlir::ShapedType::getShape(v21);
    v22 = v24;
    v23 = 0x400000000;
    if (v26)
    {
      v11 = 0;
      v12 = v25;
      v13 = 8 * v26;
      while (1)
      {
        v14 = *(Shape + 8 * ((*v12 + v10) % v10));
        if (v14 == 0x8000000000000000)
        {
          break;
        }

        if (v11 >= HIDWORD(v23))
        {
          v15 = Shape;
          v16 = v10;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v11 + 1, 8);
          v10 = v16;
          Shape = v15;
          v11 = v23;
        }

        *(v22 + v11) = v14;
        v11 = v23 + 1;
        LODWORD(v23) = v23 + 1;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_18:
      mlir::Attribute::getContext((a2 + 24));
      v17 = v22;
      v18 = v23;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
    }

    if (v22 != v24)
    {
      free(v22);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v8;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldDynamicShapeCastOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  v10 = *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    {
      v8 = result;
      mlir::tensor::PadOp::getConstantPaddingValue();
      result = v8;
    }

    if ((*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && ((v4 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0), v5 = *(*(*(v9 + 72) + 32 * v4 + 24) + 8), *(v9 + 36)) ? (v6 = v9 - 16) : (v6 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) ^ v5) <= 7))
    {
      v7 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
      return *(*(v9 + 72) + 32 * v7 + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBroadcastToOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[6] = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v5 = *a3;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(**a3 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v28[0] = v5;
  v28[1] = v6;
  v7 = *(a3 + 8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  if (v7)
  {
    if (mlir::ElementsAttr::getNumElements(v5, v6) != 1 || mlir::ElementsAttr::getNumElements(v7, v8) != 1)
    {
      return 0;
    }

    SingleInt = mlir::getSingleIntValue<long long>(v7, v8);
    ShapedType = mlir::ElementsAttr::getShapedType(v28);
    v36 = v11;
    if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      ShapedType = mlir::ElementsAttr::getShapedType(v28);
      v36 = v12;
      v13 = *(*mlir::ElementsAttr::isSplat(&ShapedType) + 136);
      if (v13 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        return 0;
      }

      mlir::ElementsAttr::getValues<llvm::APFloat>(v28, &ShapedType);
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&ShapedType, 0, &v29);
      v31 = v33;
      v32 = 0x100000000;
      llvm::SmallVectorImpl<llvm::APFloat>::assign(&v31, SingleInt, &v29);
      llvm::APFloat::~APFloat(&v29);
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ShapedType);
      ShapedType = v32;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v28[0]);
      v15 = mlir::RankedTensorType::get(&ShapedType, 1, ElementTypeOrSelf, 0);
      v16 = mlir::createElementsAttr(v15, v31, v32) & 0xFFFFFFFFFFFFFFFBLL;
      llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v31);
      return v16;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v28, &v31);
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v31, 0, &v29);
    ShapedType = v37;
    v36 = 0x300000000;
    llvm::SmallVectorImpl<llvm::APInt>::assign(&ShapedType, SingleInt, &v29);
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x1AC55A040](v29, 0x1000C8000313F17);
    }

    if ((v33[8] & 1) == 0)
    {
      v17 = v34;
      v34 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    if ((v31 & 1) == 0)
    {
      v18 = v32;
      v32 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v31 = v36;
    v19 = mlir::getElementTypeOrSelf(v28[0]);
    v20 = mlir::RankedTensorType::get(&v31, 1, v19, 0);
    ElementsAttr = mlir::createElementsAttr(v20, ShapedType, v36);
    v22 = ShapedType;
    if (v36)
    {
      v23 = (ShapedType + 16 * v36 - 8);
      v24 = -16 * v36;
      v25 = v23;
      do
      {
        v26 = *v25;
        v25 -= 4;
        if (v26 >= 0x41)
        {
          v27 = *(v23 - 1);
          if (v27)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8000313F17);
          }
        }

        v23 = v25;
        v24 += 16;
      }

      while (v24);
      v22 = ShapedType;
    }

    result = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
    if (v22 != v37)
    {
      v16 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      free(v22);
      return v16;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBroadcastGradientArgsOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v20 = v3;
  v21 = v4;
  v5 = (*(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!v3)
    {
      return 0;
    }
  }

  if (!mlir::ElementsAttr::getShapedType(&v20))
  {
    return 0;
  }

  Shape = mlir::ShapedType::getShape(&v20);
  if (v8)
  {
    v9 = 8 * v8;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  if (!v20 || !mlir::ElementsAttr::getShapedType(&v20))
  {
    return 0;
  }

  v10 = mlir::ShapedType::getShape(&v20);
  if (v11)
  {
    v12 = 8 * v11;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

LABEL_19:
  mlir::Attribute::getContext((a2 + 24));
  mlir::mps::getBroadcastGradientArgs(v20, v21, v5, v6, &__p);
  v13 = __p;
  v14 = (v19 - __p) >> 3;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (__p)
  {
    v19 = __p;
    v17 = result;
    operator delete(__p);
    return v17;
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldConv2DOp>::externalFold(uint64_t a1, uint64_t a2, void *a3)
{
  v85[4] = *MEMORY[0x1E69E9840];
  v77 = a2;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v76[0] = v6;
  v76[1] = v7;
  v8 = *(a2 + 72);
  v9 = (*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v8 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
  }

  v75[0] = v9;
  v75[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v74[0] = v11;
  v74[1] = v12;
  PaddingMode = mlir::mps::PadOp::getPaddingMode(&v77);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v77);
  result = 0;
  if (!PaddingMode && WeightsLayout == 2)
  {
    if (!mlir::ElementsAttr::getShapedType(v75))
    {
      return 0;
    }

    Shape = mlir::ShapedType::getShape(v75);
    if (v17)
    {
      v18 = 8 * v17;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    if (!mlir::ElementsAttr::getShapedType(v74))
    {
      return 0;
    }

    v19 = mlir::ShapedType::getShape(v74);
    if (v20)
    {
      v21 = 8 * v20;
      while (*v19 != 0x8000000000000000)
      {
        ++v19;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_25;
        }
      }

      return 0;
    }

LABEL_25:
    if (!mlir::ElementsAttr::getShapedType(v76))
    {
      return 0;
    }

    v22 = mlir::ShapedType::getShape(v76);
    if (v23)
    {
      v24 = 8 * v23;
      while (*v22 != 0x8000000000000000)
      {
        ++v22;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_30;
        }
      }

      return 0;
    }

LABEL_30:
    isSplat = mlir::ElementsAttr::isSplat(v76);
    if (!mlir::Type::isF32(&isSplat) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isBF16(&isSplat))
    {
      return 0;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v75[0]);
    v26 = mlir::getElementTypeOrSelf(v74[0]);
    v72 = ElementTypeOrSelf != v26;
    if (result)
    {
      v28 = result;
      v29 = v27;
      if (result)
      {
        v31 = result;
        v32 = v30;
        v33 = mlir::ShapedType::getShape(v75);
        v35 = v34;
        LOBYTE(v60) = 0;
        LOBYTE(v61) = 0;
        if (ElementTypeOrSelf == v26)
        {
          v38 = isSplat;
        }

        else
        {
          Context = mlir::Attribute::getContext(v76);
          v38 = mlir::Float32Type::get(Context, v37);
        }

        v39 = mlir::ShapedType::cloneWith(v76, &v60, v38);
        v41 = v40;
        mlir::mps::CPUNDArray::CPUNDArray(v71, v28, v29);
        mlir::mps::CPUNDArray::CPUNDArray(v70, v31, v32);
        mlir::mps::CPUNDArray::CPUNDArray(v69, v39, v41, 0);
        Strides = mlir::mps::Conv3DOp::getStrides(&v77);
        InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v77);
        Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v77);
        Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
        PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v77);
        v84[0] = v85;
        v84[1] = 0x400000000;
        v82[0] = v83;
        v82[1] = 0x400000000;
        v80[0] = v81;
        v80[1] = 0x200000000;
        v78[0] = v79;
        v78[1] = 0x200000000;
        v45 = *(v77 + 24);
        if (Strides)
        {
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
        }

        else
        {
          v46 = 0;
        }

        if (InputAttributeNames)
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
        }

        else
        {
          v47 = 0;
        }

        if (Rewriter)
        {
          v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
        }

        else
        {
          v48 = 0;
        }

        if (mlir::mps::inferConv2DParams(v45, 1, v33, v35, Strides, v46, InputAttributeNames, v47, Rewriter, v48, 0, v84, v82, v80, v78))
        {
          v49 = *(v82[0] + 2);
          v50 = *(v82[0] + 3);
          v51 = *v82[0];
          v52 = *(v82[0] + 1);
          v54 = *v80[0];
          v53 = *(v80[0] + 1);
          v56 = *v78[0];
          v55 = *(v78[0] + 1);
          v68 = 0;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          mlir::mps::buildConv2DDescriptor(*(*(v77 + 72) + 24), *(*(v77 + 72) + 56), Groups, v53, v54, v55, v56, v49, &v60, v50, v51, v52, PaddingStyle, 0, 2, 0, 0, 0, 0);
          v57 = 0;
          if (Layer2TDMapper::SourceLayer::IsGraphInitialization(v71))
          {
            v57 = mlir::mps::CPUNDArray::getElementsAttr(v69, 0, 0) & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v57 = 0;
        }

        if (v78[0] != v79)
        {
          free(v78[0]);
        }

        if (v80[0] != v81)
        {
          free(v80[0]);
        }

        if (v82[0] != v83)
        {
          free(v82[0]);
        }

        if (v84[0] != v85)
        {
          free(v84[0]);
        }

        mlir::mps::CPUNDArray::~CPUNDArray(v69);
        mlir::mps::CPUNDArray::~CPUNDArray(v70);
        mlir::mps::CPUNDArray::~CPUNDArray(v71);
        return v57;
      }
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::FoldConv2DOp::externalFold(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>)const::{lambda(mlir::Attribute)#1}::operator()(_BYTE *a1, void *a2)
{
  if (a2)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
      v20 = a2;
      v21 = v4;
      if (a2)
      {
        Type = mlir::ElementsAttr::getType(&v20);
        v6 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v19[0] = v6;
        v19[1] = Type;
        isSplat = mlir::ElementsAttr::isSplat(v19);
        if (mlir::Type::isF32(&isSplat) || (*a1 & 1) == 0)
        {
          return v20;
        }

        if (mlir::Type::isF16(&isSplat) || mlir::Type::isBF16(&isSplat))
        {
          LOBYTE(v16) = 0;
          LOBYTE(v17) = 0;
          Context = mlir::Attribute::getContext(v19);
          v9 = mlir::Float32Type::get(Context, v8);
          v10 = mlir::ShapedType::cloneWith(v19, &v16, v9);
          v12 = v11;
          mlir::mps::CPUNDArray::CPUNDArray(&v16, v20, v21);
          mlir::mps::CPUNDArray::CPUNDArray(v15, v10, v12, 0);
          mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v14, 13, 0.0);
          operator new();
        }
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  return 0;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldTypeConstraintOp>::externalFold(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = a2;
  mlir::ValueRange::ValueRange(v10, &v5, 1uLL);
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v6);
  mlir::ValueRange::ValueRange(v9, &Type, 1uLL);
  v7[0] = &unk_1F1A18200;
  v8 = v7;
  v2 = mlir::mps::areMoreSpecializedTypes(v10[0], v10[1], v9[0], v9[1], v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
    if (v2)
    {
      return *(*(v6 + 72) + 24) | 4;
    }
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))();
    }

    if (v2)
    {
      return *(*(v6 + 72) + 24) | 4;
    }
  }

  return 0;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldRealPartOp>::externalFold(uint64_t a1, uint64_t a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldImaginaryPartOp>::externalFold(uint64_t a1, uint64_t a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v4 = v3 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8) : 0;
    v9[0] = v3;
    v9[1] = v4;
    if (mlir::ElementsAttr::getShapedType(v9))
    {
      Shape = mlir::ShapedType::getShape(v9);
      if (!v6)
      {
        return mlir::mps::getConstantAttr<int>((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v7 = 8 * v6;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v7 -= 8;
        if (!v7)
        {
          return mlir::mps::getConstantAttr<int>((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) & 0xFFFFFFFFFFFFFFFBLL;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::mps::getConstantAttr<int>(void *a1, int a2)
{
  v27 = a2;
  v28 = 0;
  if (a1)
  {
    v2 = a1;
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  v26[0] = a1;
  v26[1] = v3;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v25[0] = &v28;
  v25[1] = v26;
  v25[2] = &v27;
  v5 = *(*ElementTypeOrSelf + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v21 = v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (!ElementTypeOrSelf || v21)
    {
      goto LABEL_58;
    }

LABEL_49:
    mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#1}::operator()(v25, ElementTypeOrSelf);
    return v28;
  }

  if (ElementTypeOrSelf)
  {
    goto LABEL_49;
  }

LABEL_58:
  v24[0] = &v28;
  v24[1] = v26;
  v24[2] = &v27;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#2}::operator()(v24, ElementTypeOrSelf);
  }

  else
  {
    v23[0] = &v28;
    v23[1] = v26;
    v23[2] = &v27;
    mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::ComplexType)#1}::operator()(v23, ElementTypeOrSelf);
  }

  return v28;
}

void mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v21 = a2;
  isF16 = mlir::Type::isF16(&v21);
  if (isF16)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = llvm::APFloatBase::IEEEhalf(isF16);
  }

  else
  {
    isBF16 = mlir::Type::isBF16(&v21);
    if (!isBF16)
    {
      if (mlir::Type::isF32(&v21))
      {
        v15 = *(a1 + 8);
        *&v22 = **(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        v18 = 4;
      }

      else
      {
        mlir::Type::isF64(&v21);
        v19 = *(a1 + 8);
        v22 = **(a1 + 16);
        v16 = *v19;
        v17 = v19[1];
        v18 = 8;
      }

      **a1 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v17, &v22, v18);
      return;
    }

    v9 = *(a1 + 8);
    v5 = *v9;
    v6 = *(v9 + 8);
    v7 = llvm::APFloatBase::BFloat(isBF16);
  }

  v10 = v7;
  std::to_string(&v20, **(a1 + 16));
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v20;
  }

  else
  {
    v11 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(&v22, v10, v11, size);
  v13 = mlir::DenseElementsAttr::get(v5, v6, &v22, 1);
  **a1 = v13;
  v14 = v23[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v23);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v20.__r_.__value_.__l.__data_);
}

uint64_t mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#2}::operator()(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  isInteger = mlir::Type::isInteger(&v12, 1);
  v4 = *(a1 + 8);
  if (isInteger)
  {
    LOBYTE(v10) = **(a1 + 16) != 0;
    result = mlir::DenseElementsAttr::get(*v4, v4[1], &v10, 1);
    **a1 = result;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
    v7 = **(a1 + 16);
    isSignedInteger = mlir::Type::isSignedInteger(&v12);
    v11 = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&v10, v7, isSignedInteger);
    }

    v9 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    if (!IntOrFloatBitWidth)
    {
      v9 = 0;
    }

    v10 = v9 & v7;
    result = mlir::DenseElementsAttr::get(*v4, v4[1], &v10, 1);
    **a1 = result;
    if (v11 >= 0x41)
    {
      result = v10;
      if (v10)
      {
        return MEMORY[0x1AC55A040](v10, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::ComplexType)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Value = mlir::AffineMapAttr::getValue(&v24);
  if (mlir::Type::isF32(&Value))
  {
    v3 = *(a1 + 8);
    v27[0] = **(a1 + 16);
    v27[1] = 0.0;
    **a1 = mlir::DenseElementsAttr::getFromRawBuffer(*v3, v3[1], v27, 8);
    return;
  }

  isF16 = mlir::Type::isF16(&Value);
  v5 = *(a1 + 8);
  _S0 = **(a1 + 16);
  __asm { FCVT            H8, S0 }

  v12 = llvm::APFloatBase::IEEEhalf(isF16);
  __asm { FCVT            S0, H8; __val }

  std::to_string(&v22, _S0);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(v27, v12, v14, size);
  std::to_string(&v21, 0.0);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v21.__r_.__value_.__l.__size_;
  }

  v18 = llvm::APFloat::APFloat(v25, v12, v16, v17);
  v19 = v28[0];
  v20 = llvm::APFloatBase::PPCDoubleDouble(v18);
  if (v20 == v19)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v30, v28);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v30, v28);
  }

  if (v20 == v26[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v26);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v31, v26);
  }

  **a1 = mlir::DenseElementsAttr::get(*v5, *(v5 + 8), v29, 1);
  if (v20 == v31[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v31);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v31);
  }

  if (v20 == v30[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v30);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v30);
  }

  if (v20 != v26[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v26);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_29:
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v20 != v28[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v28);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldConjugateOp>::externalFold(uint64_t a1, uint64_t a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldNonZeroOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (!*a3)
  {
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
  {
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
  if (!v4)
  {
    return 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v13, v4, v5);
  mlir::mps::computeNonZeroIndices(&v16, v13);
  if (v19 == 1)
  {
    v15[0] = v17 / v14;
    v15[1] = v14;
    Context = mlir::Attribute::getContext((a2 + 24));
    v7 = mlir::IntegerType::get(Context, 0x20u, 1u);
    v8 = mlir::RankedTensorType::get(v15, 2, v7, 0);
    v9 = v8;
    if (v8)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      if (v19)
      {
LABEL_9:
        v11 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, v16, 4 * v17) & 0xFFFFFFFFFFFFFFFBLL;
        if ((v19 & 1) != 0 && v16 != &v18)
        {
          free(v16);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v11 = 0;
LABEL_13:
  mlir::mps::CPUNDArray::~CPUNDArray(v13);
  return v11;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::ElementsAttrRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5)
{
  v23 = *a4;
  v24 = a4[1];
  if (v23 == 1)
  {
    v25 = *(a4 + 1);
  }

  else
  {
    (*(**(a4 + 1) + 16))(&v25);
  }

  v26 = *(a4 + 2);
  v20 = *a5;
  v21 = a5[1];
  if (*a5 == 1)
  {
    v22[0] = *(a5 + 1);
  }

  else
  {
    (*(**(a5 + 1) + 16))(v22);
  }

  v9 = *(a5 + 2);
  v22[1] = v9;
  v10 = v23;
  if (v23 == 1)
  {
    v11 = v25;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = v25;
    v25 = 0;
  }

  v13 = v22[0];
  if (v20 != 1)
  {
    v22[0] = 0;
  }

  v14 = v24;
  v15 = v26;
  if ((v23 & 1) == 0 && v11)
  {
    (*(*v11 + 8))(v11);
  }

  *a1 = v10;
  *(a1 + 1) = v14;
  if (v10)
  {
    *(a1 + 8) = v12;
  }

  else
  {
    (*(*v12 + 16))(v12);
  }

  *(a1 + 16) = v15;
  *(a1 + 24) = v20;
  *(a1 + 25) = v21;
  if (v20)
  {
    *(a1 + 32) = v13;
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    (*(*v13 + 16))(v13);
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    (*(*v13 + 8))(v13);
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_24:
  if ((v20 & 1) == 0)
  {
    v16 = v22[0];
    v22[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if ((v23 & 1) == 0)
  {
    v17 = v25;
    v25 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  return a1;
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void mlir::DialectRegistry::addExtension<mlir::mps::MPSDialect>(void (*)(mlir::MLIRContext *,mlir::mps::MPSDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  JUMPOUT(0x1AC55A070);
}

llvm::raw_ostream *OUTLINED_FUNCTION_14_13(const void *a1, size_t a2)
{

  return llvm::raw_ostream::operator<<(v2, a1, a2);
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a10 = v11;
  a11 = a1;

  return mlir::ElementsAttr::getShapedType(&a10);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(uint64_t a1)
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
    mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
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

void mlir::mps::inMemoryImportInternalMPSModule(const llvm::MemoryBuffer ****a1@<X0>, mlir::MLIRContext *a2@<X1>, mlir::mps::MPSResourceBlobManagerInterface **a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, unsigned int **a6@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(*a3, a2);
  v9 = *a2;
  v10 = *(a2 + 2);
  if (v10)
  {
      ;
    }
  }

  else
  {
    i = *a2;
  }

  v13 = &v9[v10];
  if (i != v13)
  {
    v14 = *i;
    do
    {
      v15 = *v14;
      v16 = *(v14 + 24);
      *v44 = *(v14 + 8);
      v46 = v41;
      v50 = *v44;
      v47 = v42;
      v43 = 0;
      v49 = 0;
      v51 = v16;
      v54 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<mlir::mps::inMemoryImportInternalMPSModule(std::shared_ptr<llvm::SourceMgr> const&,llvm::StringMap<mlir::mps::MPSResourceInfo,llvm::MallocAllocator> const&,mlir::ParserConfig const&,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,mlir::mps::inMemoryImportInternalMPSModule(std::shared_ptr<llvm::SourceMgr> const&,llvm::StringMap<mlir::mps::MPSResourceInfo,llvm::MallocAllocator> const&,mlir::ParserConfig const&,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,void>::Callbacks + 2;
      v52 = v41;
      v53 = v42;
      v45 = v16;
      v48 = 0;
      v55 = 0;
      v56 = 1;
      mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, (v14 + 32), v15, &v50, v40);
      if (v56 == 1 && v54 >= 8)
      {
        (*(v54 & 0xFFFFFFFFFFFFFFF8))();
        v18 = v54;
        if (v54 >= 8)
        {
          if ((v54 & 4) != 0)
          {
            if ((v54 & 2) != 0)
            {
              v19 = &v52;
            }

            else
            {
              v19 = v52;
            }

            (*((v54 & 0xFFFFFFFFFFFFFFF8) + 16))(v19, v17);
          }

          if ((v18 & 2) == 0)
          {
            llvm::deallocate_buffer(v52, *(&v52 + 1));
          }
        }
      }

      if (v48 >= 8)
      {
        v20 = (v48 & 2) != 0 ? &v46 : v46;
        (*(v48 & 0xFFFFFFFFFFFFFFF8))(v20, v44[0], v44[1], v45);
        v21 = v48;
        if (v48 >= 8)
        {
          if ((v48 & 4) != 0)
          {
            if ((v48 & 2) != 0)
            {
              v22 = &v46;
            }

            else
            {
              v22 = v46;
            }

            (*((v48 & 0xFFFFFFFFFFFFFFF8) + 16))(v22);
          }

          if ((v21 & 2) == 0)
          {
            llvm::deallocate_buffer(v46, *(&v46 + 1));
          }
        }
      }

      v23 = v43;
      if (v43 >= 8)
      {
        if ((v43 & 4) != 0)
        {
          if ((v43 & 2) != 0)
          {
            v24 = &v41;
          }

          else
          {
            v24 = v41;
          }

          (*((v43 & 0xFFFFFFFFFFFFFFF8) + 16))(v24);
        }

        if ((v23 & 2) == 0)
        {
          llvm::deallocate_buffer(v41, *(&v41 + 1));
        }
      }

      do
      {
        v25 = i[1];
        ++i;
        v14 = v25;
        if (v25)
        {
          v26 = v14 == -8;
        }

        else
        {
          v26 = 1;
        }
      }

      while (v26);
    }

    while (i != v13);
  }

  v44[0] = &v45;
  v44[1] = 0x200000000;
  v27 = (24 * a5) >> 3;
  v28 = -1431655765 * v27;
  if (0xAAAAAAAAAAAAAAABLL * v27 < 3)
  {
    v29 = 0;
    v30 = &v45;
    if (!a5)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(v44, &v45, 0xAAAAAAAAAAAAAAABLL * v27, 24);
  v29 = v44[1];
  v30 = v44[0];
  if (a5)
  {
LABEL_51:
    memcpy(&v30[24 * v29], a4, 24 * a5);
    v29 = v44[1];
    v30 = v44[0];
  }

LABEL_52:
  v31 = (v29 + v28);
  LODWORD(v44[1]) = v31;
  v40[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id;
  v40[1] = "mps_spi";
  v40[2] = 7;
  v32 = v40;
  if (v31 >= HIDWORD(v44[1]))
  {
    if (v30 <= v40 && &v30[24 * v31] > v40)
    {
      v35 = (v40 - v30);
      llvm::SmallVectorBase<unsigned int>::grow_pod(v44, &v45, v31 + 1, 24);
      v30 = v44[0];
      v32 = (v44[0] + v35);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v44, &v45, v31 + 1, 24);
      v32 = v40;
      v30 = v44[0];
    }
  }

  v33 = &v30[24 * LODWORD(v44[1])];
  v34 = *v32;
  *(v33 + 2) = v32[2];
  *v33 = v34;
  ++LODWORD(v44[1]);
  mlir::mps::importMPSModule(a1, a3, a6);
  if (v44[0] != &v45)
  {
    free(v44[0]);
  }
}

size_t **llvm::StringMap<mlir::mps::MPSResourceInfo,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
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

  buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
  v12 = buffer;
  v13 = (buffer + 4);
  if (a3)
  {
    memcpy(buffer + 4, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}