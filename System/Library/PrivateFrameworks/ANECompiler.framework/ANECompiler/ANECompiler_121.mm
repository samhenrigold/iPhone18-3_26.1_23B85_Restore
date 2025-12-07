uint64_t mlir::arith::MaxSIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v5 = *(*(a2 + 40) + 8);
  v65 = &v73;
  if (!v5)
  {
    goto LABEL_23;
  }

  result = mlir::detail::constant_int_value_binder::match(&v65, v5);
  v8 = result;
  v9 = v74;
  if (result)
  {
    if (v74 <= 0x40)
    {
      if ((v73 ^ (-1 << (v74 - 1))) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v10 = 56;
      }

      else
      {
        if (v73 != 1 << (v74 - 1))
        {
          goto LABEL_23;
        }

        v10 = 24;
      }

      goto LABEL_16;
    }

    v11 = result;
    v12 = v74 - 1;
    if ((*(v73 + 8 * ((v74 - 1) >> 6)) >> (v74 - 1)))
    {
      result = llvm::APInt::countTrailingZerosSlowCase(&v73);
      if (result == v12)
      {
        v10 = 24;
LABEL_15:
        v8 = v11;
LABEL_16:
        result = *(*(*a1 + 72) + v10) | 4;
        goto LABEL_17;
      }
    }

    else
    {
      result = llvm::APInt::countTrailingOnesSlowCase(&v73);
      if (result == v12)
      {
        v10 = 56;
        goto LABEL_15;
      }
    }

    v13 = 1;
    v14 = v73;
    if (v73)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_17:
  v13 = v8 ^ 1;
  if (v9 >= 0x41)
  {
    v14 = v73;
    if (v73)
    {
LABEL_19:
      v15 = result;
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
      result = v15;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  if (!v13)
  {
    return result;
  }

LABEL_23:
  v16 = *(a2 + 40);
  v17 = *v16;
  if (*v16 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v19 = v16 + 1;
  v18 = v16[1];
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = v16[1];
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v17)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v74 = v20;
    if (v73)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v73);
      v17 = *v19;
      if (*v19)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  FunctionType = 0;
  v17 = *v19;
  if (*v19)
  {
LABEL_30:
    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v73 = v17;
    v74 = v22;
    if (!v17)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_35;
  }

LABEL_34:
  v73 = v17;
  v74 = 0;
  if (!v17)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_35:
  v23 = mlir::FunctionOpInterface::getFunctionType(&v73);
  v17 = 0;
  if (!FunctionType || !v23 || v23 != FunctionType)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v72 = FunctionType;
  v24 = *v16;
  if (*v16 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v16;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v25 = *v19;
  if (!*v19)
  {
    goto LABEL_86;
  }

  v26 = *(*v25 + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v19;
  }

  else
  {
    v17 = 0;
  }

  if (!v24 || v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v26 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v16))
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    v73 = v29;
    if (v29 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v30 = v16[1];
      v58 = *v16;
      v55 = v30;
      Value = mlir::ArrayAttr::getValue(&v58);
      if (Value == mlir::ArrayAttr::getValue(&v55))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v58, &v65);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v55, &v61);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &v61);
        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
        }

        if (v66 >= 0x41 && v65)
        {
          MEMORY[0x1AC55A040](v65, 0x1000C8000313F17);
        }

        if (v75 == 1)
        {
          v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
          v17 = mlir::DenseElementsAttr::get(v32, v33, &v73, 1);
          if ((v75 & 1) == 0)
          {
            return v17 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_57;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v70 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16);
      v71 = v34;
      v69[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16 + 1);
      v69[1] = v35;
      Type = mlir::ElementsAttr::getType(&v70);
      if (Type == mlir::ElementsAttr::getType(v69))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, &v65);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v69, &v61);
        if (v68 == 1 && v64 == 1)
        {
          LOWORD(v58) = v65;
          if (v65 == 1)
          {
            v59 = v66;
          }

          else
          {
            (*(*v66 + 16))(&v59);
          }

          v60 = v67;
          LOWORD(v55) = v61;
          if (v61 == 1)
          {
            v56 = v62;
          }

          else
          {
            (*(*v62 + 16))(&v56);
          }

          v57 = v63;
          v73 = &v75;
          v74 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v70, v71);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
          v38 = mlir::ElementsAttr::getNumElements(v70, v71);
          if (v38)
          {
            v39 = v38;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v58, &v50);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v55, &v48);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v52, &v50, &v48);
              if (v49 >= 0x41 && v48)
              {
                MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
              }

              if (v51 >= 0x41 && v50)
              {
                MEMORY[0x1AC55A040](v50, 0x1000C8000313F17);
              }

              if (v54 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v52);
              if ((v54 & 1) != 0 && v53 >= 0x41 && v52)
              {
                MEMORY[0x1AC55A040](v52, 0x1000C8000313F17);
              }

              ++v60;
              ++v57;
              if (!--v39)
              {
                goto LABEL_108;
              }
            }

            v42 = 0;
          }

          else
          {
LABEL_108:
            v40 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
            v42 = mlir::DenseElementsAttr::get(v40, v41, v73, v74);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
          if ((v55 & 1) == 0)
          {
            v43 = v56;
            v56 = 0;
            if (v43)
            {
              (*(*v43 + 8))(v43);
            }
          }

          if ((v58 & 1) == 0)
          {
            v44 = v59;
            v59 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v17 = v42;
        }

        else
        {
          v17 = 0;
        }

        if (v64 == 1 && (v61 & 1) == 0)
        {
          v45 = v62;
          v62 = 0;
          if (v45)
          {
            v46 = v17;
            (*(*v45 + 8))(v45);
            v17 = v46;
          }
        }

        if (v68 != 1)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v65)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v47 = v66;
        v66 = 0;
        if (!v47)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v28 = v17;
        (*(*v47 + 8))(v47);
LABEL_60:
        v17 = v28;
        return v17 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_86:
    v17 = 0;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v58 = *v16;
  v55 = v25;
  v27 = mlir::AffineMapAttr::getValue(&v58);
  if (v27 != mlir::AffineMapAttr::getValue(&v55))
  {
    goto LABEL_86;
  }

  mlir::IntegerAttr::getValue(&v58, &v65);
  mlir::IntegerAttr::getValue(&v55, &v61);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &v61);
  if (v62 >= 0x41 && v61)
  {
    MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
  }

  if (v66 >= 0x41 && v65)
  {
    MEMORY[0x1AC55A040](v65, 0x1000C8000313F17);
  }

  if (v75 != 1)
  {
    goto LABEL_86;
  }

  v17 = mlir::IntegerAttr::get(v72, &v73);
  if (v75)
  {
LABEL_57:
    if (v74 < 0x41 || !v73)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v28 = v17;
    MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
    goto LABEL_60;
  }

  return v17 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MaxUIOp::fold(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v71) = 1;
  v70 = 0;
  v5 = *(*(a2 + 40) + 8);
  v62 = &v70;
  if (!v5)
  {
    goto LABEL_21;
  }

  result = mlir::detail::constant_int_value_binder::match(&v62, v5);
  v8 = result;
  v9 = v71;
  if (result)
  {
    v10 = a1;
    if (!v71)
    {
LABEL_7:
      v11 = 56;
LABEL_16:
      result = *(*(*v10 + 72) + v11) | 4;
      goto LABEL_17;
    }

    if (v71 <= 0x40)
    {
      if (v70 != (0xFFFFFFFFFFFFFFFFLL >> -v71))
      {
        if (v70)
        {
          goto LABEL_21;
        }

        v11 = 24;
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if (llvm::APInt::countTrailingOnesSlowCase(&v70) == v9)
    {
      v11 = 56;
LABEL_15:
      v10 = a1;
      goto LABEL_16;
    }

    if (llvm::APInt::countLeadingZerosSlowCase(&v70) == v9)
    {
      v11 = 24;
      goto LABEL_15;
    }

    if (v70)
    {
      MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
    }

LABEL_21:
    v13 = *(a2 + 40);
    v14 = *v13;
    if (*v13 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v16 = v13 + 1;
    v15 = v13[1];
    if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v13[1];
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (v14)
    {
      v70 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      v71 = v17;
      if (v70)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&v70);
        v14 = *v16;
        if (*v16)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    FunctionType = 0;
    v14 = *v16;
    if (*v16)
    {
LABEL_28:
      v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      v70 = v14;
      v71 = v19;
      if (!v14)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_33;
    }

LABEL_32:
    v70 = v14;
    v71 = 0;
    if (!v14)
    {
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_33:
    v20 = mlir::FunctionOpInterface::getFunctionType(&v70);
    v14 = 0;
    if (!FunctionType || !v20 || v20 != FunctionType)
    {
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v69 = FunctionType;
    v21 = *v13;
    if (*v13 && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = *v13;
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v22 = *v16;
    if (*v16)
    {
      v23 = *(*v22 + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v21 || v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v55 = *v13;
        v52 = v22;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (Value == mlir::AffineMapAttr::getValue(&v52))
        {
          mlir::IntegerAttr::getValue(&v55, &v62);
          mlir::IntegerAttr::getValue(&v52, &v58);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v70, &v62, &v58);
          if (v59 >= 0x41 && v58)
          {
            MEMORY[0x1AC55A040](v58, 0x1000C8000313F17);
          }

          if (v63 >= 0x41 && v62)
          {
            MEMORY[0x1AC55A040](v62, 0x1000C8000313F17);
          }

          if (v72 == 1)
          {
            v14 = mlir::IntegerAttr::get(v69, &v70);
            if (v72)
            {
LABEL_55:
              if (v71 < 0x41 || !v70)
              {
                return v14 & 0xFFFFFFFFFFFFFFFBLL;
              }

              v25 = v14;
              MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
              goto LABEL_58;
            }

            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v13))
        {
          v26 = v21;
        }

        else
        {
          v26 = 0;
        }

        v70 = v26;
        if (v26 && mlir::DenseElementsAttr::isSplat(&v70) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v13 + 1))
        {
          v27 = v13[1];
          v55 = *v13;
          v52 = v27;
          v28 = mlir::ArrayAttr::getValue(&v55);
          if (v28 == mlir::ArrayAttr::getValue(&v52))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v55, &v62);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v58);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v70, &v62, &v58);
            if (v59 >= 0x41 && v58)
            {
              MEMORY[0x1AC55A040](v58, 0x1000C8000313F17);
            }

            if (v63 >= 0x41 && v62)
            {
              MEMORY[0x1AC55A040](v62, 0x1000C8000313F17);
            }

            if (v72 == 1)
            {
              v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
              v14 = mlir::DenseElementsAttr::get(v29, v30, &v70, 1);
              if ((v72 & 1) == 0)
              {
                return v14 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_55;
            }
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v13) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v13 + 1))
        {
          v67 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v13);
          v68 = v31;
          v66[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v13 + 1);
          v66[1] = v32;
          Type = mlir::ElementsAttr::getType(&v67);
          if (Type == mlir::ElementsAttr::getType(v66))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v67, &v62);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v66, &v58);
            if (v65 == 1 && v61 == 1)
            {
              LOWORD(v55) = v62;
              if (v62 == 1)
              {
                v56 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v56);
              }

              v57 = v64;
              LOWORD(v52) = v58;
              if (v58 == 1)
              {
                v53 = v59;
              }

              else
              {
                (*(*v59 + 16))(&v53);
              }

              v54 = v60;
              v70 = &v72;
              v71 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v70, NumElements);
              v35 = mlir::ElementsAttr::getNumElements(v67, v68);
              if (v35)
              {
                v36 = v35;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v55, &v47);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v45);
                  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v49, &v47, &v45);
                  if (v46 >= 0x41 && v45)
                  {
                    MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
                  }

                  if (v48 >= 0x41 && v47)
                  {
                    MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
                  }

                  if (v51 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v70, &v49);
                  if ((v51 & 1) != 0 && v50 >= 0x41 && v49)
                  {
                    MEMORY[0x1AC55A040](v49, 0x1000C8000313F17);
                  }

                  ++v57;
                  ++v54;
                  if (!--v36)
                  {
                    goto LABEL_108;
                  }
                }

                v39 = 0;
              }

              else
              {
LABEL_108:
                v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
                v39 = mlir::DenseElementsAttr::get(v37, v38, v70, v71);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v70);
              if ((v52 & 1) == 0)
              {
                v40 = v53;
                v53 = 0;
                if (v40)
                {
                  (*(*v40 + 8))(v40);
                }
              }

              if ((v55 & 1) == 0)
              {
                v41 = v56;
                v56 = 0;
                if (v41)
                {
                  (*(*v41 + 8))(v41);
                }
              }

              v14 = v39;
            }

            else
            {
              v14 = 0;
            }

            if (v61 == 1 && (v58 & 1) == 0)
            {
              v42 = v59;
              v59 = 0;
              if (v42)
              {
                v43 = v14;
                (*(*v42 + 8))(v42);
                v14 = v43;
              }
            }

            if (v65 != 1)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v44 = v63;
            v63 = 0;
            if (!v44)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v14;
            (*(*v44 + 8))(v44);
LABEL_58:
            v14 = v25;
            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v14 = 0;
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  if (v9 >= 0x41 && v70)
  {
    v12 = result;
    MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
    result = v12;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t mlir::arith::MinimumFOp::fold(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v4 = *(a2 + 48);
  v5 = v4[1];
  v59 = mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v5)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v59, v5))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v4 = *(a2 + 48);
  }

  v9 = *v4;
  if (*v4 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v4 + 1;
  v10 = v4[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v4[1];
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v9)
  {
    v59 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
    v60 = v12;
    if (v59)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v59);
      v9 = *v11;
      if (*v11)
      {
        goto LABEL_14;
      }

LABEL_18:
      v59 = v9;
      v60 = 0;
      if (!v9)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  FunctionType = 0;
  v9 = *v11;
  if (!*v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
  v59 = v9;
  v60 = v14;
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_19:
  v15 = mlir::FunctionOpInterface::getFunctionType(&v59);
  v9 = 0;
  if (!FunctionType || !v15 || v15 != FunctionType)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v54 = FunctionType;
  v16 = *v4;
  if (*v4 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v4;
  }

  else
  {
    v17 = *v11;
    if (*v11)
    {
      v18 = *(*v17 + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = *v11;
      }

      else
      {
        v9 = 0;
      }

      if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v18 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v47 = *v4;
        v56[0] = v17;
        Value = mlir::AffineMapAttr::getValue(&v47);
        if (Value == mlir::AffineMapAttr::getValue(v56))
        {
          mlir::FloatAttr::getValue(v57, &v47);
          mlir::FloatAttr::getValue(&v63, v56);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v59, v57, &v63);
          llvm::APFloat::~APFloat(&v63);
          llvm::APFloat::~APFloat(v57);
          if (v62 == 1)
          {
            v20 = mlir::FloatAttr::get(v54, &v59);
LABEL_35:
            v21 = v20;
LABEL_57:
            std::optional<llvm::APFloat>::~optional(&v59);
LABEL_58:
            v9 = v21;
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        v59 = v22;
        if (v22 && mlir::DenseElementsAttr::isSplat(&v59) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v23 = v4[1];
          v47 = *v4;
          v56[0] = v23;
          v24 = mlir::ArrayAttr::getValue(&v47);
          if (v24 == mlir::ArrayAttr::getValue(v56))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v47, v57);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v56, &v63);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v59, v57, &v63);
            llvm::APFloat::~APFloat(&v63);
            llvm::APFloat::~APFloat(v57);
            if (v62 == 1)
            {
              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
              v20 = mlir::DenseElementsAttr::get(v25, v26, &v59, 1);
              goto LABEL_35;
            }

LABEL_56:
            v21 = 0;
            goto LABEL_57;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v52 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4);
          v53 = v27;
          v51[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4 + 1);
          v51[1] = v28;
          Type = mlir::ElementsAttr::getType(&v52);
          if (Type == mlir::ElementsAttr::getType(v51))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v52, &v63);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v51, &v47);
            if (v66 == 1 && v50 == 1)
            {
              v44 = v63;
              if (v63 == 1)
              {
                v45 = v64;
              }

              else
              {
                (*(*v64 + 16))(&v45);
              }

              v46 = v65;
              v41 = v47;
              if (v47 == 1)
              {
                v42 = v48;
              }

              else
              {
                (*(*v48 + 16))(&v42);
              }

              v43 = v49;
              v59 = &v61;
              v60 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v52, v53);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v59, NumElements);
              v31 = mlir::ElementsAttr::getNumElements(v52, v53);
              if (v31)
              {
                v32 = v31;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v44, v56);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v41, v55);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v57, v56, v55);
                  llvm::APFloat::~APFloat(v55);
                  llvm::APFloat::~APFloat(v56);
                  if (v58 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v59, v57);
                  std::optional<llvm::APFloat>::~optional(v57);
                  ++v46;
                  ++v43;
                  if (!--v32)
                  {
                    goto LABEL_68;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v57);
                v35 = 0;
              }

              else
              {
LABEL_68:
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
                v35 = mlir::DenseElementsAttr::get(v33, v34, v59, v60);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v59);
              if ((v41 & 1) == 0)
              {
                v36 = v42;
                v42 = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }
              }

              if ((v44 & 1) == 0)
              {
                v37 = v45;
                v45 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              v9 = v35;
            }

            else
            {
              v9 = 0;
            }

            if (v50 == 1 && (v47 & 1) == 0)
            {
              v38 = v48;
              v48 = 0;
              if (v38)
              {
                v39 = v9;
                (*(*v38 + 8))(v38);
                v9 = v39;
              }
            }

            if (v66 != 1)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v63)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v40 = v64;
            v64 = 0;
            if (!v40)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v21 = v9;
            (*(*v40 + 8))(v40);
            goto LABEL_58;
          }
        }
      }
    }

    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinNumFOp::fold(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v4 = *(a2 + 48);
  v5 = v4[1];
  v59 = mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v5)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v59, v5))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v4 = *(a2 + 48);
  }

  v9 = *v4;
  if (*v4 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v4 + 1;
  v10 = v4[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v4[1];
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v9)
  {
    v59 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
    v60 = v12;
    if (v59)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v59);
      v9 = *v11;
      if (*v11)
      {
        goto LABEL_14;
      }

LABEL_18:
      v59 = v9;
      v60 = 0;
      if (!v9)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  FunctionType = 0;
  v9 = *v11;
  if (!*v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
  v59 = v9;
  v60 = v14;
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_19:
  v15 = mlir::FunctionOpInterface::getFunctionType(&v59);
  v9 = 0;
  if (!FunctionType || !v15 || v15 != FunctionType)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v54 = FunctionType;
  v16 = *v4;
  if (*v4 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v4;
  }

  else
  {
    v17 = *v11;
    if (*v11)
    {
      v18 = *(*v17 + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = *v11;
      }

      else
      {
        v9 = 0;
      }

      if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v18 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v47 = *v4;
        v56[0] = v17;
        Value = mlir::AffineMapAttr::getValue(&v47);
        if (Value == mlir::AffineMapAttr::getValue(v56))
        {
          mlir::FloatAttr::getValue(v57, &v47);
          mlir::FloatAttr::getValue(&v63, v56);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v59, v57, &v63);
          llvm::APFloat::~APFloat(&v63);
          llvm::APFloat::~APFloat(v57);
          if (v62 == 1)
          {
            v20 = mlir::FloatAttr::get(v54, &v59);
LABEL_35:
            v21 = v20;
LABEL_57:
            std::optional<llvm::APFloat>::~optional(&v59);
LABEL_58:
            v9 = v21;
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        v59 = v22;
        if (v22 && mlir::DenseElementsAttr::isSplat(&v59) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v23 = v4[1];
          v47 = *v4;
          v56[0] = v23;
          v24 = mlir::ArrayAttr::getValue(&v47);
          if (v24 == mlir::ArrayAttr::getValue(v56))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v47, v57);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v56, &v63);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v59, v57, &v63);
            llvm::APFloat::~APFloat(&v63);
            llvm::APFloat::~APFloat(v57);
            if (v62 == 1)
            {
              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
              v20 = mlir::DenseElementsAttr::get(v25, v26, &v59, 1);
              goto LABEL_35;
            }

LABEL_56:
            v21 = 0;
            goto LABEL_57;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v52 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4);
          v53 = v27;
          v51[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4 + 1);
          v51[1] = v28;
          Type = mlir::ElementsAttr::getType(&v52);
          if (Type == mlir::ElementsAttr::getType(v51))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v52, &v63);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v51, &v47);
            if (v66 == 1 && v50 == 1)
            {
              v44 = v63;
              if (v63 == 1)
              {
                v45 = v64;
              }

              else
              {
                (*(*v64 + 16))(&v45);
              }

              v46 = v65;
              v41 = v47;
              if (v47 == 1)
              {
                v42 = v48;
              }

              else
              {
                (*(*v48 + 16))(&v42);
              }

              v43 = v49;
              v59 = &v61;
              v60 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v52, v53);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v59, NumElements);
              v31 = mlir::ElementsAttr::getNumElements(v52, v53);
              if (v31)
              {
                v32 = v31;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v44, v56);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v41, v55);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v57, v56, v55);
                  llvm::APFloat::~APFloat(v55);
                  llvm::APFloat::~APFloat(v56);
                  if (v58 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v59, v57);
                  std::optional<llvm::APFloat>::~optional(v57);
                  ++v46;
                  ++v43;
                  if (!--v32)
                  {
                    goto LABEL_68;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v57);
                v35 = 0;
              }

              else
              {
LABEL_68:
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
                v35 = mlir::DenseElementsAttr::get(v33, v34, v59, v60);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v59);
              if ((v41 & 1) == 0)
              {
                v36 = v42;
                v42 = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }
              }

              if ((v44 & 1) == 0)
              {
                v37 = v45;
                v45 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              v9 = v35;
            }

            else
            {
              v9 = 0;
            }

            if (v50 == 1 && (v47 & 1) == 0)
            {
              v38 = v48;
              v48 = 0;
              if (v38)
              {
                v39 = v9;
                (*(*v38 + 8))(v38);
                v9 = v39;
              }
            }

            if (v66 != 1)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v63)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v40 = v64;
            v64 = 0;
            if (!v40)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v21 = v9;
            (*(*v40 + 8))(v40);
            goto LABEL_58;
          }
        }
      }
    }

    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinSIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v5 = *(*(a2 + 40) + 8);
  v65 = &v73;
  if (!v5)
  {
    goto LABEL_23;
  }

  result = mlir::detail::constant_int_value_binder::match(&v65, v5);
  v8 = result;
  v9 = v74;
  if (result)
  {
    if (v74 <= 0x40)
    {
      if (v73 == 1 << (v74 - 1))
      {
        v10 = 56;
      }

      else
      {
        if ((v73 ^ (-1 << (v74 - 1))) != 0xFFFFFFFFFFFFFFFFLL)
        {
          goto LABEL_23;
        }

        v10 = 24;
      }

      goto LABEL_16;
    }

    v11 = result;
    v12 = v74 - 1;
    if ((*(v73 + 8 * ((v74 - 1) >> 6)) >> (v74 - 1)))
    {
      result = llvm::APInt::countTrailingZerosSlowCase(&v73);
      if (result == v12)
      {
        v10 = 56;
LABEL_15:
        v8 = v11;
LABEL_16:
        result = *(*(*a1 + 72) + v10) | 4;
        goto LABEL_17;
      }
    }

    else
    {
      result = llvm::APInt::countTrailingOnesSlowCase(&v73);
      if (result == v12)
      {
        v10 = 24;
        goto LABEL_15;
      }
    }

    v13 = 1;
    v14 = v73;
    if (v73)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_17:
  v13 = v8 ^ 1;
  if (v9 >= 0x41)
  {
    v14 = v73;
    if (v73)
    {
LABEL_19:
      v15 = result;
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
      result = v15;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  if (!v13)
  {
    return result;
  }

LABEL_23:
  v16 = *(a2 + 40);
  v17 = *v16;
  if (*v16 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v19 = v16 + 1;
  v18 = v16[1];
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = v16[1];
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v17)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v74 = v20;
    if (v73)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v73);
      v17 = *v19;
      if (*v19)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  FunctionType = 0;
  v17 = *v19;
  if (*v19)
  {
LABEL_30:
    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v73 = v17;
    v74 = v22;
    if (!v17)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_35;
  }

LABEL_34:
  v73 = v17;
  v74 = 0;
  if (!v17)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_35:
  v23 = mlir::FunctionOpInterface::getFunctionType(&v73);
  v17 = 0;
  if (!FunctionType || !v23 || v23 != FunctionType)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v72 = FunctionType;
  v24 = *v16;
  if (*v16 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v16;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v25 = *v19;
  if (!*v19)
  {
    goto LABEL_86;
  }

  v26 = *(*v25 + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v19;
  }

  else
  {
    v17 = 0;
  }

  if (!v24 || v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v26 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v16))
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    v73 = v29;
    if (v29 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v30 = v16[1];
      v58 = *v16;
      v55 = v30;
      Value = mlir::ArrayAttr::getValue(&v58);
      if (Value == mlir::ArrayAttr::getValue(&v55))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v58, &v65);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v55, &v61);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &v61);
        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
        }

        if (v66 >= 0x41 && v65)
        {
          MEMORY[0x1AC55A040](v65, 0x1000C8000313F17);
        }

        if (v75 == 1)
        {
          v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
          v17 = mlir::DenseElementsAttr::get(v32, v33, &v73, 1);
          if ((v75 & 1) == 0)
          {
            return v17 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_57;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v70 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16);
      v71 = v34;
      v69[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16 + 1);
      v69[1] = v35;
      Type = mlir::ElementsAttr::getType(&v70);
      if (Type == mlir::ElementsAttr::getType(v69))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, &v65);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v69, &v61);
        if (v68 == 1 && v64 == 1)
        {
          LOWORD(v58) = v65;
          if (v65 == 1)
          {
            v59 = v66;
          }

          else
          {
            (*(*v66 + 16))(&v59);
          }

          v60 = v67;
          LOWORD(v55) = v61;
          if (v61 == 1)
          {
            v56 = v62;
          }

          else
          {
            (*(*v62 + 16))(&v56);
          }

          v57 = v63;
          v73 = &v75;
          v74 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v70, v71);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
          v38 = mlir::ElementsAttr::getNumElements(v70, v71);
          if (v38)
          {
            v39 = v38;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v58, &v50);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v55, &v48);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v52, &v50, &v48);
              if (v49 >= 0x41 && v48)
              {
                MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
              }

              if (v51 >= 0x41 && v50)
              {
                MEMORY[0x1AC55A040](v50, 0x1000C8000313F17);
              }

              if (v54 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v52);
              if ((v54 & 1) != 0 && v53 >= 0x41 && v52)
              {
                MEMORY[0x1AC55A040](v52, 0x1000C8000313F17);
              }

              ++v60;
              ++v57;
              if (!--v39)
              {
                goto LABEL_108;
              }
            }

            v42 = 0;
          }

          else
          {
LABEL_108:
            v40 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
            v42 = mlir::DenseElementsAttr::get(v40, v41, v73, v74);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
          if ((v55 & 1) == 0)
          {
            v43 = v56;
            v56 = 0;
            if (v43)
            {
              (*(*v43 + 8))(v43);
            }
          }

          if ((v58 & 1) == 0)
          {
            v44 = v59;
            v59 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v17 = v42;
        }

        else
        {
          v17 = 0;
        }

        if (v64 == 1 && (v61 & 1) == 0)
        {
          v45 = v62;
          v62 = 0;
          if (v45)
          {
            v46 = v17;
            (*(*v45 + 8))(v45);
            v17 = v46;
          }
        }

        if (v68 != 1)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v65)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v47 = v66;
        v66 = 0;
        if (!v47)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v28 = v17;
        (*(*v47 + 8))(v47);
LABEL_60:
        v17 = v28;
        return v17 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_86:
    v17 = 0;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v58 = *v16;
  v55 = v25;
  v27 = mlir::AffineMapAttr::getValue(&v58);
  if (v27 != mlir::AffineMapAttr::getValue(&v55))
  {
    goto LABEL_86;
  }

  mlir::IntegerAttr::getValue(&v58, &v65);
  mlir::IntegerAttr::getValue(&v55, &v61);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &v61);
  if (v62 >= 0x41 && v61)
  {
    MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
  }

  if (v66 >= 0x41 && v65)
  {
    MEMORY[0x1AC55A040](v65, 0x1000C8000313F17);
  }

  if (v75 != 1)
  {
    goto LABEL_86;
  }

  v17 = mlir::IntegerAttr::get(v72, &v73);
  if (v75)
  {
LABEL_57:
    if (v74 < 0x41 || !v73)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v28 = v17;
    MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
    goto LABEL_60;
  }

  return v17 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinUIOp::fold(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v70) = 1;
  v69 = 0;
  v5 = *(*(a2 + 40) + 8);
  v61 = &v69;
  if (!v5)
  {
    goto LABEL_19;
  }

  result = mlir::detail::constant_int_value_binder::match(&v61, v5);
  v8 = result;
  v9 = v70;
  if (result)
  {
    if (v70 <= 0x40)
    {
      if (v69)
      {
        if (v70 && v69 != (0xFFFFFFFFFFFFFFFFLL >> -v70))
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }

LABEL_11:
      v10 = 56;
LABEL_14:
      result = *(*(*a1 + 72) + v10) | 4;
      goto LABEL_15;
    }

    if (llvm::APInt::countLeadingZerosSlowCase(&v69) == v9)
    {
      goto LABEL_11;
    }

    if (llvm::APInt::countTrailingOnesSlowCase(&v69) == v9)
    {
LABEL_13:
      v10 = 24;
      goto LABEL_14;
    }

    if (v69)
    {
      MEMORY[0x1AC55A040](v69, 0x1000C8000313F17);
    }

LABEL_19:
    v12 = *(a2 + 40);
    v13 = *v12;
    if (*v12 && *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = v12 + 1;
    v14 = v12[1];
    if (v14 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v13 = v12[1];
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (v13)
    {
      v69 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
      v70 = v16;
      if (v69)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&v69);
        v13 = *v15;
        if (*v15)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    FunctionType = 0;
    v13 = *v15;
    if (*v15)
    {
LABEL_26:
      v13 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
      v69 = v13;
      v70 = v18;
      if (!v13)
      {
        return v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_31;
    }

LABEL_30:
    v69 = v13;
    v70 = 0;
    if (!v13)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_31:
    v19 = mlir::FunctionOpInterface::getFunctionType(&v69);
    v13 = 0;
    if (!FunctionType || !v19 || v19 != FunctionType)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v68 = FunctionType;
    v20 = *v12;
    if (*v12 && *(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v13 = *v12;
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *v15;
    if (*v15)
    {
      v22 = *(*v21 + 136);
      if (v22 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v13 = *v15;
      }

      else
      {
        v13 = 0;
      }

      if (!v20 || v22 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v54 = *v12;
        v51 = v21;
        Value = mlir::AffineMapAttr::getValue(&v54);
        if (Value == mlir::AffineMapAttr::getValue(&v51))
        {
          mlir::IntegerAttr::getValue(&v54, &v61);
          mlir::IntegerAttr::getValue(&v51, &v57);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v69, &v61, &v57);
          if (v58 >= 0x41 && v57)
          {
            MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
          }

          if (v62 >= 0x41 && v61)
          {
            MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
          }

          if (v71 == 1)
          {
            v13 = mlir::IntegerAttr::get(v68, &v69);
            if (v71)
            {
LABEL_53:
              if (v70 < 0x41 || !v69)
              {
                return v13 & 0xFFFFFFFFFFFFFFFBLL;
              }

              v24 = v13;
              MEMORY[0x1AC55A040](v69, 0x1000C8000313F17);
              goto LABEL_56;
            }

            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v12))
        {
          v25 = v20;
        }

        else
        {
          v25 = 0;
        }

        v69 = v25;
        if (v25 && mlir::DenseElementsAttr::isSplat(&v69) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v12 + 1))
        {
          v26 = v12[1];
          v54 = *v12;
          v51 = v26;
          v27 = mlir::ArrayAttr::getValue(&v54);
          if (v27 == mlir::ArrayAttr::getValue(&v51))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v54, &v61);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v51, &v57);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v69, &v61, &v57);
            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v62 >= 0x41 && v61)
            {
              MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
            }

            if (v71 == 1)
            {
              v28 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
              v13 = mlir::DenseElementsAttr::get(v28, v29, &v69, 1);
              if ((v71 & 1) == 0)
              {
                return v13 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_53;
            }
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v12) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v12 + 1))
        {
          v66 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v12);
          v67 = v30;
          v65[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v12 + 1);
          v65[1] = v31;
          Type = mlir::ElementsAttr::getType(&v66);
          if (Type == mlir::ElementsAttr::getType(v65))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v66, &v61);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v65, &v57);
            if (v64 == 1 && v60 == 1)
            {
              LOWORD(v54) = v61;
              if (v61 == 1)
              {
                v55 = v62;
              }

              else
              {
                (*(*v62 + 16))(&v55);
              }

              v56 = v63;
              LOWORD(v51) = v57;
              if (v57 == 1)
              {
                v52 = v58;
              }

              else
              {
                (*(*v58 + 16))(&v52);
              }

              v53 = v59;
              v69 = &v71;
              v70 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v66, v67);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v69, NumElements);
              v34 = mlir::ElementsAttr::getNumElements(v66, v67);
              if (v34)
              {
                v35 = v34;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v54, &v46);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v51, &v44);
                  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v48, &v46, &v44);
                  if (v45 >= 0x41 && v44)
                  {
                    MEMORY[0x1AC55A040](v44, 0x1000C8000313F17);
                  }

                  if (v47 >= 0x41 && v46)
                  {
                    MEMORY[0x1AC55A040](v46, 0x1000C8000313F17);
                  }

                  if (v50 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v69, &v48);
                  if ((v50 & 1) != 0 && v49 >= 0x41 && v48)
                  {
                    MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
                  }

                  ++v56;
                  ++v53;
                  if (!--v35)
                  {
                    goto LABEL_106;
                  }
                }

                v38 = 0;
              }

              else
              {
LABEL_106:
                v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
                v38 = mlir::DenseElementsAttr::get(v36, v37, v69, v70);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v69);
              if ((v51 & 1) == 0)
              {
                v39 = v52;
                v52 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                }
              }

              if ((v54 & 1) == 0)
              {
                v40 = v55;
                v55 = 0;
                if (v40)
                {
                  (*(*v40 + 8))(v40);
                }
              }

              v13 = v38;
            }

            else
            {
              v13 = 0;
            }

            if (v60 == 1 && (v57 & 1) == 0)
            {
              v41 = v58;
              v58 = 0;
              if (v41)
              {
                v42 = v13;
                (*(*v41 + 8))(v41);
                v13 = v42;
              }
            }

            if (v64 != 1)
            {
              return v13 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v61)
            {
              return v13 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v43 = v62;
            v62 = 0;
            if (!v43)
            {
              return v13 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v24 = v13;
            (*(*v43 + 8))(v43);
LABEL_56:
            v13 = v24;
            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v13 = 0;
    return v13 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_15:
  if (v9 >= 0x41 && v69)
  {
    v11 = result;
    MEMORY[0x1AC55A040](v69, 0x1000C8000313F17);
    result = v11;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t mlir::arith::MulFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v58 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v59 = v10;
    if (v58)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v58);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v58 = v7;
      v59 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  FunctionType = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v58 = v7;
  v59 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::FunctionOpInterface::getFunctionType(&v58);
  v7 = 0;
  if (!FunctionType || !v13 || v13 != FunctionType)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = FunctionType;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(v56, &v46);
          mlir::FloatAttr::getValue(&v62, v55);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
          llvm::APFloat::~APFloat(&v62);
          llvm::APFloat::~APFloat(v56);
          if (v61 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v58);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v58 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, &v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
            llvm::APFloat::~APFloat(&v62);
            llvm::APFloat::~APFloat(v56);
            if (v61 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v58, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, &v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v65 == 1 && v49 == 1)
            {
              v43 = v62;
              if (v62 == 1)
              {
                v44 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v44);
              }

              v45 = v64;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v57 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43 & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v65 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v63;
            v63 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::DivFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v58 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v59 = v10;
    if (v58)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v58);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v58 = v7;
      v59 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  FunctionType = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v58 = v7;
  v59 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::FunctionOpInterface::getFunctionType(&v58);
  v7 = 0;
  if (!FunctionType || !v13 || v13 != FunctionType)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = FunctionType;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(v56, &v46);
          mlir::FloatAttr::getValue(&v62, v55);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
          llvm::APFloat::~APFloat(&v62);
          llvm::APFloat::~APFloat(v56);
          if (v61 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v58);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v58 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, &v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
            llvm::APFloat::~APFloat(&v62);
            llvm::APFloat::~APFloat(v56);
            if (v61 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v58, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, &v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v65 == 1 && v49 == 1)
            {
              v43 = v62;
              if (v62 == 1)
              {
                v44 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v44);
              }

              v45 = v64;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v57 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43 & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v65 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v63;
            v63 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::RemFOp::fold(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  v3 = *v2;
  if (*v2 && *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v5 = v2 + 1;
  v4 = v2[1];
  if (v4 && *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = v2[1];
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v3)
  {
    v55 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v3);
    v56 = v6;
    if (v55)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v55);
      v3 = *v5;
      if (*v5)
      {
        goto LABEL_8;
      }

LABEL_12:
      v55 = v3;
      v56 = 0;
      if (!v3)
      {
        return v3 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  FunctionType = 0;
  v3 = *v5;
  if (!*v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  v3 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v3);
  v55 = v3;
  v56 = v8;
  if (!v3)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_13:
  v9 = mlir::FunctionOpInterface::getFunctionType(&v55);
  v3 = 0;
  if (!FunctionType || !v9 || v9 != FunctionType)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v50 = FunctionType;
  v10 = *v2;
  if (*v2 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = *v2;
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = *v5;
  if (!*v5)
  {
    goto LABEL_50;
  }

  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = *v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v10 || v12 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v43 = *v2;
    v52[0] = v11;
    Value = mlir::AffineMapAttr::getValue(&v43);
    if (Value == mlir::AffineMapAttr::getValue(v52))
    {
      mlir::FloatAttr::getValue(v53, &v43);
      mlir::FloatAttr::getValue(&v59, v52);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v55, v53, &v59);
      llvm::APFloat::~APFloat(&v59);
      llvm::APFloat::~APFloat(v53);
      if (v58 == 1)
      {
        v19 = mlir::FloatAttr::get(v50, &v55);
        goto LABEL_42;
      }

LABEL_52:
      v21 = 0;
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (mlir::DenseElementsAttr::classof(*v2))
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v55 = v14;
  if (v14 && mlir::DenseElementsAttr::isSplat(&v55) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v2 + 1))
  {
    v15 = v2[1];
    v43 = *v2;
    v52[0] = v15;
    v16 = mlir::ArrayAttr::getValue(&v43);
    if (v16 == mlir::ArrayAttr::getValue(v52))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v43, v53);
      mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v52, &v59);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v55, v53, &v59);
      llvm::APFloat::~APFloat(&v59);
      llvm::APFloat::~APFloat(v53);
      if (v58 == 1)
      {
        v17 = llvm::cast<mlir::ShapedType,mlir::Type>(&v50);
        v19 = mlir::DenseElementsAttr::get(v17, v18, &v55, 1);
LABEL_42:
        v21 = v19;
LABEL_53:
        std::optional<llvm::APFloat>::~optional(&v55);
LABEL_54:
        v3 = v21;
        return v3 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v2) || !llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v2 + 1) || (v48 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v2), v49 = v22, v47[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v2 + 1), v47[1] = v23, Type = mlir::ElementsAttr::getType(&v48), Type != mlir::ElementsAttr::getType(v47)))
  {
LABEL_50:
    v3 = 0;
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v48, &v59);
  mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v47, &v43);
  if (v62 == 1 && v46 == 1)
  {
    v40 = v59;
    if (v59 == 1)
    {
      v41 = v60;
    }

    else
    {
      (*(*v60 + 16))(&v41);
    }

    v42 = v61;
    v37 = v43;
    if (v43 == 1)
    {
      v38 = v44;
    }

    else
    {
      (*(*v44 + 16))(&v38);
    }

    v39 = v45;
    v55 = &v57;
    v56 = 0x400000000;
    NumElements = mlir::ElementsAttr::getNumElements(v48, v49);
    llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v55, NumElements);
    v30 = mlir::ElementsAttr::getNumElements(v48, v49);
    if (v30)
    {
      v31 = v30;
      while (1)
      {
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v52);
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v37, v51);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v53, v52, v51);
        llvm::APFloat::~APFloat(v51);
        llvm::APFloat::~APFloat(v52);
        if (v54 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v55, v53);
        std::optional<llvm::APFloat>::~optional(v53);
        ++v42;
        ++v39;
        if (!--v31)
        {
          goto LABEL_72;
        }
      }

      std::optional<llvm::APFloat>::~optional(v53);
      v34 = 0;
    }

    else
    {
LABEL_72:
      v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v50);
      v34 = mlir::DenseElementsAttr::get(v32, v33, v55, v56);
    }

    llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v55);
    if ((v37 & 1) == 0)
    {
      v35 = v38;
      v38 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }
    }

    v3 = v34;
    if ((v40 & 1) == 0)
    {
      v36 = v41;
      v41 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
        v3 = v34;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (v46 == 1 && (v43 & 1) == 0)
  {
    v26 = v44;
    v44 = 0;
    if (v26)
    {
      v27 = v3;
      (*(*v26 + 8))(v26);
      v3 = v27;
    }
  }

  if (v62 == 1 && (v59 & 1) == 0)
  {
    v28 = v60;
    v60 = 0;
    if (v28)
    {
      v21 = v3;
      (*(*v28 + 8))(v28);
      goto LABEL_54;
    }
  }

  return v3 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::ExtUIOp::fold(uint64_t *a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v75[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v75);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v75[0] = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    Width = mlir::IntegerType::getWidth(v75);
    v6 = *(a2 + 40);
    v7 = *v6;
    if (!*v6)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v8 = *(*v7 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v9 = Width;
    v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v68 = *v6;
      mlir::IntegerAttr::getValue(&v68, &v73);
      llvm::APInt::zext(v75, &v73, v9);
      if (DWORD2(v73) >= 0x41 && v73)
      {
        MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
      }

      v7 = mlir::IntegerAttr::get(v10, v75);
      if (LODWORD(v75[1]) < 0x41)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_88;
    }

    if (mlir::DenseElementsAttr::classof(*v6))
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v75[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v75))
    {
      v71 = *v6;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v71, v75);
      v73 = *v75;
      v74 = v76[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v68);
      llvm::APInt::zext(v75, &v68, v9);
      if (v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      if (!v10)
      {
        goto LABEL_79;
      }

      v12 = *v10;
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
LABEL_17:
          v16 = v14;
          v17 = v15;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[2 * (v17 >> 1)];
            v21 = *v19;
            v20 = v19 + 2;
            v17 += ~(v17 >> 1);
            if (v21 < v13)
            {
              v16 = v20;
            }

            else
            {
              v17 = v18;
            }
          }

          while (v17);
LABEL_77:
          if (v16 != &v14[2 * v15] && *v16 == v13)
          {
            v54 = v16[1];
            *&v73 = v10;
            *(&v73 + 1) = v54;
            if (!mlir::ElementsAttr::getShapedType(&v73))
            {
              goto LABEL_87;
            }

            goto LABEL_80;
          }

LABEL_79:
          v73 = v10;
          if (!mlir::ElementsAttr::getShapedType(&v73))
          {
            goto LABEL_87;
          }

LABEL_80:
          Shape = mlir::ShapedType::getShape(&v73);
          if (!v52)
          {
LABEL_84:
            v7 = mlir::DenseElementsAttr::get(v73, *(&v73 + 1), v75, 1);
            if (LODWORD(v75[1]) >= 0x41)
            {
LABEL_88:
              if (v75[0])
              {
                MEMORY[0x1AC55A040](v75[0], 0x1000C8000313F17);
              }
            }

            return v7 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v53 = 8 * v52;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v53 -= 8;
            if (!v53)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          v7 = 0;
          if (LODWORD(v75[1]) >= 0x41)
          {
            goto LABEL_88;
          }

          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      v15 = 0;
      v16 = v14;
      goto LABEL_77;
    }

    v71 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v6);
    v72 = v29;
    if (!v71 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, &v73), BYTE8(v74) != 1))
    {
      v7 = 0;
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v68) = v73;
    if (v73 == 1)
    {
      v69 = *(&v73 + 1);
    }

    else
    {
      (*(**(&v73 + 1) + 16))(&v69);
    }

    v70 = v74;
    v75[0] = v76;
    v75[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v71, v72);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v75, NumElements);
    v31 = mlir::ElementsAttr::getNumElements(v71, v72);
    if (v31)
    {
      v32 = v31;
      v33 = v70;
      do
      {
        if (BYTE1(v68))
        {
          v34 = 0;
        }

        else
        {
          v34 = v33;
        }

        if (v68 == 1)
        {
          v35 = v69 + 16 * v34;
          v65 = *(v35 + 8);
          if (v65 > 0x40)
          {
            llvm::APInt::initSlowCase(&v64, v35);
          }

          v64 = *v35;
        }

        else
        {
          (*(*v69 + 24))(&v64);
        }

        llvm::APInt::zext(&v66, &v64, v9);
        if (v65 >= 0x41 && v64)
        {
          MEMORY[0x1AC55A040](v64, 0x1000C8000313F17);
        }

        v36 = v75[0];
        if (LODWORD(v75[1]) >= HIDWORD(v75[1]))
        {
          if (v75[0] <= &v66 && v75[0] + 16 * LODWORD(v75[1]) > &v66)
          {
            v40 = &v66 - v75[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v75, LODWORD(v75[1]) + 1);
            v36 = v75[0];
            v37 = (v75[0] + v40);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v75, LODWORD(v75[1]) + 1);
            v37 = &v66;
            v36 = v75[0];
          }
        }

        else
        {
          v37 = &v66;
        }

        v38 = &v36[16 * LODWORD(v75[1])];
        v39 = *(v37 + 2);
        *(v38 + 2) = v39;
        if (v39 > 0x40)
        {
          llvm::APInt::initSlowCase(v38, v37);
        }

        *v38 = *v37;
        ++LODWORD(v75[1]);
        if (v67 >= 0x41 && v66)
        {
          MEMORY[0x1AC55A040](v66, 0x1000C8000313F17);
        }

        v33 = ++v70;
        --v32;
      }

      while (v32);
    }

    if (!v10)
    {
      goto LABEL_94;
    }

    v41 = *v10;
    {
      v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      if (v44)
      {
        goto LABEL_69;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      if (v44)
      {
LABEL_69:
        v45 = v43;
        v46 = v44;
        do
        {
          v47 = v46 >> 1;
          v48 = &v45[2 * (v46 >> 1)];
          v50 = *v48;
          v49 = v48 + 2;
          v46 += ~(v46 >> 1);
          if (v50 < v42)
          {
            v45 = v49;
          }

          else
          {
            v46 = v47;
          }
        }

        while (v46);
LABEL_92:
        if (v45 != &v43[2 * v44] && *v45 == v42)
        {
          v55 = v45[1];
          goto LABEL_95;
        }

LABEL_94:
        v55 = 0;
LABEL_95:
        v7 = mlir::DenseElementsAttr::get(v10, v55, v75[0], LODWORD(v75[1]));
        v56 = v75[0];
        if (LODWORD(v75[1]))
        {
          v57 = (v75[0] + 16 * LODWORD(v75[1]) - 8);
          v58 = -16 * LODWORD(v75[1]);
          v59 = v57;
          do
          {
            v60 = *v59;
            v59 -= 4;
            if (v60 >= 0x41)
            {
              v61 = *(v57 - 1);
              if (v61)
              {
                MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
              }
            }

            v57 = v59;
            v58 += 16;
          }

          while (v58);
          v56 = v75[0];
        }

        if (v56 != v76)
        {
          free(v56);
        }

        if ((v68 & 1) == 0)
        {
          v62 = v69;
          v69 = 0;
          if (v62)
          {
            (*(*v62 + 8))(v62);
          }
        }

        if ((BYTE8(v74) & 1) != 0 && (v73 & 1) == 0)
        {
          v63 = *(&v73 + 1);
          *(&v73 + 1) = 0;
          if (v63)
          {
            (*(*v63 + 8))(v63);
          }
        }

        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v44 = 0;
    v45 = v43;
    goto LABEL_92;
  }

  v22 = *a1;
  v23 = *(*a1 + 72);
  v24 = *(*(DefiningOp + 72) + 24);
  v25 = v23[1];
  if (v25)
  {
    v26 = *v23;
    *v25 = *v23;
    if (v26)
    {
      *(v26 + 8) = v25;
    }
  }

  v23[3] = v24;
  v23[1] = v24;
  v27 = *v24;
  *v23 = *v24;
  if (v27)
  {
    *(v27 + 8) = v23;
  }

  *v24 = v23;
  return (v22 - 16) | 4;
}

uint64_t checkWidthChangeCast<std::greater,mlir::IntegerType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::IntegerType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth > mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::ExtUIOp::verify(uint64_t **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v36);
  v30[0] = v2;
  if (Width < mlir::IntegerType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be wider than operand type ";
      v35 = 33;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
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
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
      {
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

uint64_t mlir::arith::ExtSIOp::fold(uint64_t *a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v75[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v75);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v75[0] = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    Width = mlir::IntegerType::getWidth(v75);
    v6 = *(a2 + 40);
    v7 = *v6;
    if (!*v6)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v8 = *(*v7 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v9 = Width;
    v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v68 = *v6;
      mlir::IntegerAttr::getValue(&v68, &v73);
      llvm::APInt::sext(v75, &v73, v9);
      if (DWORD2(v73) >= 0x41 && v73)
      {
        MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
      }

      v7 = mlir::IntegerAttr::get(v10, v75);
      if (LODWORD(v75[1]) < 0x41)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_88;
    }

    if (mlir::DenseElementsAttr::classof(*v6))
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v75[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v75))
    {
      v71 = *v6;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v71, v75);
      v73 = *v75;
      v74 = v76[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v68);
      llvm::APInt::sext(v75, &v68, v9);
      if (v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      if (!v10)
      {
        goto LABEL_79;
      }

      v12 = *v10;
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
LABEL_17:
          v16 = v14;
          v17 = v15;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[2 * (v17 >> 1)];
            v21 = *v19;
            v20 = v19 + 2;
            v17 += ~(v17 >> 1);
            if (v21 < v13)
            {
              v16 = v20;
            }

            else
            {
              v17 = v18;
            }
          }

          while (v17);
LABEL_77:
          if (v16 != &v14[2 * v15] && *v16 == v13)
          {
            v54 = v16[1];
            *&v73 = v10;
            *(&v73 + 1) = v54;
            if (!mlir::ElementsAttr::getShapedType(&v73))
            {
              goto LABEL_87;
            }

            goto LABEL_80;
          }

LABEL_79:
          v73 = v10;
          if (!mlir::ElementsAttr::getShapedType(&v73))
          {
            goto LABEL_87;
          }

LABEL_80:
          Shape = mlir::ShapedType::getShape(&v73);
          if (!v52)
          {
LABEL_84:
            v7 = mlir::DenseElementsAttr::get(v73, *(&v73 + 1), v75, 1);
            if (LODWORD(v75[1]) >= 0x41)
            {
LABEL_88:
              if (v75[0])
              {
                MEMORY[0x1AC55A040](v75[0], 0x1000C8000313F17);
              }
            }

            return v7 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v53 = 8 * v52;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v53 -= 8;
            if (!v53)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          v7 = 0;
          if (LODWORD(v75[1]) >= 0x41)
          {
            goto LABEL_88;
          }

          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      v15 = 0;
      v16 = v14;
      goto LABEL_77;
    }

    v71 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v6);
    v72 = v29;
    if (!v71 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, &v73), BYTE8(v74) != 1))
    {
      v7 = 0;
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v68) = v73;
    if (v73 == 1)
    {
      v69 = *(&v73 + 1);
    }

    else
    {
      (*(**(&v73 + 1) + 16))(&v69);
    }

    v70 = v74;
    v75[0] = v76;
    v75[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v71, v72);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v75, NumElements);
    v31 = mlir::ElementsAttr::getNumElements(v71, v72);
    if (v31)
    {
      v32 = v31;
      v33 = v70;
      do
      {
        if (BYTE1(v68))
        {
          v34 = 0;
        }

        else
        {
          v34 = v33;
        }

        if (v68 == 1)
        {
          v35 = v69 + 16 * v34;
          v65 = *(v35 + 8);
          if (v65 > 0x40)
          {
            llvm::APInt::initSlowCase(&v64, v35);
          }

          v64 = *v35;
        }

        else
        {
          (*(*v69 + 24))(&v64);
        }

        llvm::APInt::sext(&v66, &v64, v9);
        if (v65 >= 0x41 && v64)
        {
          MEMORY[0x1AC55A040](v64, 0x1000C8000313F17);
        }

        v36 = v75[0];
        if (LODWORD(v75[1]) >= HIDWORD(v75[1]))
        {
          if (v75[0] <= &v66 && v75[0] + 16 * LODWORD(v75[1]) > &v66)
          {
            v40 = &v66 - v75[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v75, LODWORD(v75[1]) + 1);
            v36 = v75[0];
            v37 = (v75[0] + v40);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v75, LODWORD(v75[1]) + 1);
            v37 = &v66;
            v36 = v75[0];
          }
        }

        else
        {
          v37 = &v66;
        }

        v38 = &v36[16 * LODWORD(v75[1])];
        v39 = *(v37 + 2);
        *(v38 + 2) = v39;
        if (v39 > 0x40)
        {
          llvm::APInt::initSlowCase(v38, v37);
        }

        *v38 = *v37;
        ++LODWORD(v75[1]);
        if (v67 >= 0x41 && v66)
        {
          MEMORY[0x1AC55A040](v66, 0x1000C8000313F17);
        }

        v33 = ++v70;
        --v32;
      }

      while (v32);
    }

    if (!v10)
    {
      goto LABEL_94;
    }

    v41 = *v10;
    {
      v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      if (v44)
      {
        goto LABEL_69;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      if (v44)
      {
LABEL_69:
        v45 = v43;
        v46 = v44;
        do
        {
          v47 = v46 >> 1;
          v48 = &v45[2 * (v46 >> 1)];
          v50 = *v48;
          v49 = v48 + 2;
          v46 += ~(v46 >> 1);
          if (v50 < v42)
          {
            v45 = v49;
          }

          else
          {
            v46 = v47;
          }
        }

        while (v46);
LABEL_92:
        if (v45 != &v43[2 * v44] && *v45 == v42)
        {
          v55 = v45[1];
          goto LABEL_95;
        }

LABEL_94:
        v55 = 0;
LABEL_95:
        v7 = mlir::DenseElementsAttr::get(v10, v55, v75[0], LODWORD(v75[1]));
        v56 = v75[0];
        if (LODWORD(v75[1]))
        {
          v57 = (v75[0] + 16 * LODWORD(v75[1]) - 8);
          v58 = -16 * LODWORD(v75[1]);
          v59 = v57;
          do
          {
            v60 = *v59;
            v59 -= 4;
            if (v60 >= 0x41)
            {
              v61 = *(v57 - 1);
              if (v61)
              {
                MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
              }
            }

            v57 = v59;
            v58 += 16;
          }

          while (v58);
          v56 = v75[0];
        }

        if (v56 != v76)
        {
          free(v56);
        }

        if ((v68 & 1) == 0)
        {
          v62 = v69;
          v69 = 0;
          if (v62)
          {
            (*(*v62 + 8))(v62);
          }
        }

        if ((BYTE8(v74) & 1) != 0 && (v73 & 1) == 0)
        {
          v63 = *(&v73 + 1);
          *(&v73 + 1) = 0;
          if (v63)
          {
            (*(*v63 + 8))(v63);
          }
        }

        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v44 = 0;
    v45 = v43;
    goto LABEL_92;
  }

  v22 = *a1;
  v23 = *(*a1 + 72);
  v24 = *(*(DefiningOp + 72) + 24);
  v25 = v23[1];
  if (v25)
  {
    v26 = *v23;
    *v25 = *v23;
    if (v26)
    {
      *(v26 + 8) = v25;
    }
  }

  v23[3] = v24;
  v23[1] = v24;
  v27 = *v24;
  *v23 = *v24;
  if (v27)
  {
    *(v27 + 8) = v23;
  }

  *v24 = v23;
  return (v22 - 16) | 4;
}

uint64_t mlir::arith::ExtFOp::fold(uint64_t *a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v76 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v76);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id)
    {
      v5 = *a1;
      if ((*(*a1 - 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) <= 7)
      {
        v6 = DefiningOp;
        v76 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
        if (v76)
        {
          v7 = (mlir::arith::FastMathFlagsAttr::getValue(&v76) & 0x20) == 0;
          v76 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
          if (!v76)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = 1;
          v76 = *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64);
          if (!v76)
          {
            goto LABEL_12;
          }
        }

        v8 = (mlir::arith::FastMathFlagsAttr::getValue(&v76) & 0x20) == 0 || v7;
        if ((v8 & 1) == 0)
        {
          return *(*(v6 + 72) + 24) | 4;
        }
      }
    }
  }

LABEL_12:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementTypeOrSelf);
  v10 = *(a2 + 48);
  v11 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v63 = FloatSemantics;
  v71 = v11;
  v12 = *v10;
  if (!*v10)
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v74 = *v10;
    LOBYTE(v72) = 1;
    mlir::FloatAttr::getValue(&v79, &v74);
    mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v76, &v63, &v79, &v72);
    v19 = v80[0];
    v17 = llvm::APFloatBase::PPCDoubleDouble(v20);
    if (v17 == v19)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v80);
      if (v72 != 1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v80);
      if (v72 != 1)
      {
        goto LABEL_99;
      }
    }

    v21 = mlir::FloatAttr::get(v11, &v76);
    goto LABEL_33;
  }

  if (mlir::DenseElementsAttr::classof(*v10))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v76 = v14;
  if (v14 && mlir::DenseElementsAttr::isSplat(&v76))
  {
    v74 = *v10;
    LOBYTE(v72) = 1;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v74, &v79);
    mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v76, &v63, &v79, &v72);
    v15 = v80[0];
    v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
    if (v17 == v15)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v80);
      if (v72 != 1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v80);
      if (v72 != 1)
      {
        goto LABEL_99;
      }
    }

    if (!v11)
    {
      goto LABEL_92;
    }

    v23 = *v11;
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
LABEL_40:
        v27 = v25;
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
LABEL_90:
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v62 = v27[1];
          v79 = v11;
          v80[0] = v62;
          if (!mlir::ElementsAttr::getShapedType(&v79))
          {
            goto LABEL_99;
          }

          goto LABEL_93;
        }

LABEL_92:
        v79 = v11;
        v80[0] = 0;
        if (!mlir::ElementsAttr::getShapedType(&v79))
        {
          goto LABEL_99;
        }

LABEL_93:
        Shape = mlir::ShapedType::getShape(&v79);
        if (v60)
        {
          v61 = 8 * v60;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v61 -= 8;
            if (!v61)
            {
              goto LABEL_97;
            }
          }

LABEL_99:
          v12 = 0;
          if (v17 != v77)
          {
            goto LABEL_100;
          }

LABEL_34:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v77);
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_97:
        v21 = mlir::DenseElementsAttr::get(v79, v80[0], &v76, 1);
LABEL_33:
        v12 = v21;
        if (v17 != v77)
        {
LABEL_100:
          llvm::detail::IEEEFloat::~IEEEFloat(&v77);
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_34;
      }
    }

    v26 = 0;
    v27 = v25;
    goto LABEL_90;
  }

  v69 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v10);
  v70 = v18;
  if (v69)
  {
    v68 = 1;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v69, &v79);
    if (v81 == 1)
    {
      v65 = v79;
      if (v79 == 1)
      {
        v66 = v80[0];
      }

      else
      {
        (*(*v80[0] + 16))(&v66);
      }

      v67 = v80[1];
      v76 = v78;
      v77 = 0x100000000;
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      if (NumElements > HIDWORD(v77))
      {
        v74 = 0;
        v34 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v76, v78, NumElements, 32, &v74);
        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(&v76, v34);
        v35 = v74;
        if (v76 != v78)
        {
          free(v76);
        }

        v76 = v34;
        HIDWORD(v77) = v35;
      }

      v36 = mlir::ElementsAttr::getNumElements(v69, v70);
      if (!v36)
      {
LABEL_71:
        v48 = llvm::cast<mlir::ShapedType,mlir::Type>(&v71);
        v39 = mlir::DenseElementsAttr::get(v48, v49, v76, v77);
        v12 = v39;
        v50 = v76;
        v51 = v77;
        if (v77)
        {
LABEL_74:
          v52 = llvm::APFloatBase::PPCDoubleDouble(v39);
          v53 = &v50[32 * v51 - 24];
          v54 = -32 * v51;
          do
          {
            while (v52 == *v53)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v53);
              v53 = (v55 - 32);
              v54 += 32;
              if (!v54)
              {
                goto LABEL_78;
              }
            }

            llvm::detail::IEEEFloat::~IEEEFloat(v53);
            v53 = (v56 - 32);
            v54 += 32;
          }

          while (v54);
LABEL_78:
          v50 = v76;
        }

LABEL_79:
        if (v50 != v78)
        {
          free(v50);
        }

        if ((v65 & 1) == 0)
        {
          v57 = v66;
          v66 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

        if ((v81 & 1) != 0 && (v79 & 1) == 0)
        {
          v58 = v80[0];
          v80[0] = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        return v12 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v37 = v36;
      v38 = v67;
      while (1)
      {
        v40 = HIBYTE(v65) ? 0 : v38;
        if (v65 == 1)
        {
          v41 = v66 + 32 * v40;
          v43 = *(v41 + 1);
          v42 = (v41 + 8);
          if (llvm::APFloatBase::PPCDoubleDouble(v66) == v43)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(v73, v42);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(v73, v42);
          }
        }

        else
        {
          (*(*v66 + 24))(&v72);
        }

        mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v74, &v63, &v72, &v68);
        v44 = v73[0];
        v46 = llvm::APFloatBase::PPCDoubleDouble(v45);
        if (v46 != v44)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
        v47 = v68;
        if (v68 == 1)
        {
          goto LABEL_65;
        }

LABEL_66:
        if (v46 == v75[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
          if (!v47)
          {
            goto LABEL_73;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v75);
          if (!v47)
          {
LABEL_73:
            v12 = 0;
            v50 = v76;
            v51 = v77;
            if (v77)
            {
              goto LABEL_74;
            }

            goto LABEL_79;
          }
        }

        v38 = ++v67;
        if (!--v37)
        {
          goto LABEL_71;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v73);
      v47 = v68;
      if (v68 != 1)
      {
        goto LABEL_66;
      }

LABEL_65:
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v76, &v74);
      goto LABEL_66;
    }
  }

  v12 = 0;
  return v12 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::ExtFOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth > mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::ExtFOp::verify(uint64_t **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::FloatType::getWidth(v36);
  v30[0] = v2;
  if (Width < mlir::FloatType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be wider than operand type ";
      v35 = 33;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
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
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
      {
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

uint64_t mlir::arith::TruncIOp::fold(uint64_t *a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  *&v72 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v72);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id || (*&v72 = *(*(*a1 + 72) + 24), (v5 = mlir::Value::getDefiningOp(&v72)) != 0) && *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    *&v72 = *(*(*a1 + 72) + 24);
    v6 = *(*(mlir::Value::getDefiningOp(&v72) + 72) + 24);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
    v8 = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    *&v72 = ElementTypeOrSelf;
    Width = mlir::IntegerType::getWidth(&v72);
    *&v70 = v8;
    if (Width > mlir::IntegerType::getWidth(&v70))
    {
      v10 = *a1;
      v11 = *(*a1 + 72);
      v12 = v11[1];
      if (v12)
      {
        v13 = *v11;
        *v12 = *v11;
        if (v13)
        {
          *(v13 + 8) = v12;
        }
      }

      v11[3] = v6;
      v11[1] = v6;
      v14 = *v6;
      *v11 = *v6;
      if (v14)
      {
        *(v14 + 8) = v11;
      }

      *v6 = v11;
      return (v10 - 16) | 4;
    }

    if (ElementTypeOrSelf == v8)
    {
      return v6 | 4;
    }
  }

  *&v72 = *(*(*a1 + 72) + 24);
  v16 = mlir::Value::getDefiningOp(&v72);
  if (!v16 || *(*(v16 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    *&v72 = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    v17 = mlir::IntegerType::getWidth(&v72);
    v18 = *(a2 + 40);
    v19 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v69 = v19;
    v20 = *v18;
    if (!*v18)
    {
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v22 = v17;
    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v64 = *v18;
      mlir::IntegerAttr::getValue(&v64, &v70);
      llvm::APInt::trunc(&v72, &v70, v22);
      if (DWORD2(v70) >= 0x41 && v70)
      {
        MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
      }

      v20 = mlir::IntegerAttr::get(v19, &v72);
      if (DWORD2(v72) < 0x41)
      {
        return v20 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_99;
    }

    if (mlir::DenseElementsAttr::classof(*v18))
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    *&v72 = v23;
    if (!v23 || !mlir::DenseElementsAttr::isSplat(&v72))
    {
      v67 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v18);
      v68 = v40;
      if (v67 && (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v67, &v70), BYTE8(v71) == 1))
      {
        LOWORD(v64) = v70;
        if (v70 == 1)
        {
          v65 = *(&v70 + 1);
        }

        else
        {
          (*(**(&v70 + 1) + 16))(&v65);
        }

        v66 = v71;
        *&v72 = &v73;
        *(&v72 + 1) = 0x300000000;
        NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
        llvm::SmallVectorImpl<llvm::APInt>::reserve(&v72, NumElements);
        v42 = mlir::ElementsAttr::getNumElements(v67, v68);
        if (v42)
        {
          v43 = v42;
          v44 = v66;
          do
          {
            if (BYTE1(v64))
            {
              v45 = 0;
            }

            else
            {
              v45 = v44;
            }

            if (v64 == 1)
            {
              v46 = v65 + 16 * v45;
              v61 = *(v46 + 8);
              if (v61 > 0x40)
              {
                llvm::APInt::initSlowCase(&v60, v46);
              }

              v60 = *v46;
            }

            else
            {
              (*(*v65 + 24))(&v60);
            }

            llvm::APInt::trunc(&v62, &v60, v22);
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            v47 = v72;
            if (DWORD2(v72) >= HIDWORD(v72))
            {
              if (v72 <= &v62 && v72 + 16 * DWORD2(v72) > &v62)
              {
                v51 = &v62 - v72;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v72, DWORD2(v72) + 1);
                v47 = v72;
                v48 = &v51[v72];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v72, DWORD2(v72) + 1);
                v48 = &v62;
                v47 = v72;
              }
            }

            else
            {
              v48 = &v62;
            }

            v49 = (v47 + 16 * DWORD2(v72));
            v50 = *(v48 + 2);
            *(v49 + 2) = v50;
            if (v50 > 0x40)
            {
              llvm::APInt::initSlowCase(v49, v48);
            }

            *v49 = *v48;
            ++DWORD2(v72);
            if (v63 >= 0x41 && v62)
            {
              MEMORY[0x1AC55A040](v62, 0x1000C8000313F17);
            }

            v44 = ++v66;
            --v43;
          }

          while (v43);
        }

        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
        v20 = mlir::DenseElementsAttr::get(v52, v53, v72, DWORD2(v72));
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v72);
        if ((v64 & 1) == 0)
        {
          v54 = v65;
          v65 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((BYTE8(v71) & 1) != 0 && (v70 & 1) == 0)
        {
          v55 = *(&v70 + 1);
          *(&v70 + 1) = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }
      }

      else
      {
        v20 = 0;
      }

      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v67 = *v18;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v67, &v72);
    v70 = v72;
    v71 = v73;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v70, &v64);
    llvm::APInt::trunc(&v72, &v64, v22);
    if (v65 >= 0x41 && v64)
    {
      MEMORY[0x1AC55A040](v64, 0x1000C8000313F17);
    }

    if (!v19)
    {
      goto LABEL_90;
    }

    v24 = *v19;
    {
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (v27)
      {
LABEL_30:
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
LABEL_88:
        if (v28 != &v26[2 * v27] && *v28 == v25)
        {
          v59 = v28[1];
          *&v70 = v19;
          *(&v70 + 1) = v59;
          if (!mlir::ElementsAttr::getShapedType(&v70))
          {
            goto LABEL_98;
          }

          goto LABEL_91;
        }

LABEL_90:
        v70 = v19;
        if (!mlir::ElementsAttr::getShapedType(&v70))
        {
          goto LABEL_98;
        }

LABEL_91:
        Shape = mlir::ShapedType::getShape(&v70);
        if (!v57)
        {
LABEL_95:
          v20 = mlir::DenseElementsAttr::get(v70, *(&v70 + 1), &v72, 1);
          if (DWORD2(v72) >= 0x41)
          {
LABEL_99:
            if (v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }
          }

          return v20 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v58 = 8 * v57;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v58 -= 8;
          if (!v58)
          {
            goto LABEL_95;
          }
        }

LABEL_98:
        v20 = 0;
        if (DWORD2(v72) >= 0x41)
        {
          goto LABEL_99;
        }

        return v20 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v27 = 0;
    v28 = v26;
    goto LABEL_88;
  }

  *&v72 = *(*(*a1 + 72) + 24);
  v34 = *(*(mlir::Value::getDefiningOp(&v72) + 72) + 24);
  v35 = *a1;
  v36 = *(*a1 + 72);
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;
    *v37 = *v36;
    if (v38)
    {
      *(v38 + 8) = v37;
    }
  }

  v36[3] = v34;
  v36[1] = v34;
  v39 = *v34;
  *v36 = *v34;
  if (v39)
  {
    *(v39 + 8) = v36;
  }

  *v34 = v36;
  return (v35 - 16) | 4;
}

uint64_t mlir::arith::TruncIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::IntegerType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::TruncIOp::verify(uint64_t **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v36);
  v30[0] = v2;
  if (Width > mlir::IntegerType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be shorter than operand type ";
      v35 = 35;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
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
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
      {
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

unint64_t mlir::arith::TruncFOp::fold(void *a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementTypeOrSelf);
  v5 = *(a2 + 56);
  v6 = *(*a1 - 8);
  v80[0] = a1;
  v80[1] = FloatSemantics;
  v7 = *v5;
  if (!*v5)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = *(*v7 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFF8);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v90 = *v5;
    LOBYTE(v88) = 1;
    mlir::FloatAttr::getValue(&v95, &v90);
    mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v92, v80, &v95, &v88);
    v15 = v96[0];
    v13 = llvm::APFloatBase::PPCDoubleDouble(v16);
    if (v13 == v15)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    v17 = mlir::FloatAttr::get(v9, &v92);
    goto LABEL_22;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v92 = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&v92))
  {
    v90 = *v5;
    LOBYTE(v88) = 1;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v90, &v95);
    mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v92, v80, &v95, &v88);
    v11 = v96[0];
    v13 = llvm::APFloatBase::PPCDoubleDouble(v12);
    if (v13 == v11)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    if (!v9)
    {
      goto LABEL_84;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_28:
        v22 = v20;
        v23 = v21;
        do
        {
          v24 = v23 >> 1;
          v25 = &v22[2 * (v23 >> 1)];
          v27 = *v25;
          v26 = v25 + 2;
          v23 += ~(v23 >> 1);
          if (v27 < v19)
          {
            v22 = v26;
          }

          else
          {
            v23 = v24;
          }
        }

        while (v23);
LABEL_82:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v68 = v22[1];
          v95 = v9;
          v96[0] = v68;
          if (!mlir::ElementsAttr::getShapedType(&v95))
          {
            goto LABEL_91;
          }

          goto LABEL_85;
        }

LABEL_84:
        v95 = v9;
        v96[0] = 0;
        if (!mlir::ElementsAttr::getShapedType(&v95))
        {
          goto LABEL_91;
        }

LABEL_85:
        Shape = mlir::ShapedType::getShape(&v95);
        if (v66)
        {
          v67 = 8 * v66;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v67 -= 8;
            if (!v67)
            {
              goto LABEL_89;
            }
          }

LABEL_91:
          v7 = 0;
          if (v13 != v93)
          {
            goto LABEL_92;
          }

LABEL_23:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v93);
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_89:
        v17 = mlir::DenseElementsAttr::get(v95, v96[0], &v92, 1);
LABEL_22:
        v7 = v17;
        if (v13 != v93)
        {
LABEL_92:
          llvm::detail::IEEEFloat::~IEEEFloat(&v93);
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_23;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_82;
  }

  v86 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v87 = v14;
  if (!v86 || (v85 = 1, mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v86, &v95), v97 != 1))
  {
    v7 = 0;
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v82 = v95;
  if (v95 == 1)
  {
    v83 = v96[0];
  }

  else
  {
    (*(*v96[0] + 16))(&v83);
  }

  v84 = v96[1];
  v92 = v94;
  v93 = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
  if (NumElements > HIDWORD(v93))
  {
    v90 = 0;
    v29 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v92, v94, NumElements, 32, &v90);
    v30 = v29;
    v31 = v92;
    v32 = v93;
    if (v93)
    {
      v33 = llvm::APFloatBase::PPCDoubleDouble(v29);
      v34 = (v30 + 8);
      v35 = 32 * v32;
      v36 = (v31 + 8);
      do
      {
        while (v33 == v36->n128_u64[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v34, v36);
          v34 = v37 + 2;
          v36 += 2;
          v35 -= 32;
          if (!v35)
          {
            goto LABEL_41;
          }
        }

        v34 = (llvm::detail::IEEEFloat::IEEEFloat(v34, v36) + 32);
        v36 += 2;
        v35 -= 32;
      }

      while (v35);
LABEL_41:
      v31 = v92;
      if (v93)
      {
        v38 = (v92 + 32 * v93 - 24);
        v39 = -32 * v93;
        do
        {
          while (v33 == *v38)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
            v38 = (v40 - 32);
            v39 += 32;
            if (!v39)
            {
              goto LABEL_46;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v38);
          v38 = (v41 - 32);
          v39 += 32;
        }

        while (v39);
LABEL_46:
        v31 = v92;
      }
    }

    v42 = v90;
    if (v31 != v94)
    {
      free(v31);
    }

    v92 = v30;
    HIDWORD(v93) = v42;
  }

  v43 = mlir::ElementsAttr::getNumElements(v86, v87);
  if (v43)
  {
    v44 = v43;
    v45 = v84;
    while (1)
    {
      v47 = HIBYTE(v82) ? 0 : v45;
      if (v82 == 1)
      {
        v48 = v83 + 32 * v47;
        v50 = *(v48 + 1);
        v49 = (v48 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v83) == v50)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v89, v49);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v89, v49);
        }
      }

      else
      {
        (*(*v83 + 24))(&v88);
      }

      mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v90, v80, &v88, &v85);
      v51 = v89[0];
      v53 = llvm::APFloatBase::PPCDoubleDouble(v52);
      if (v53 != v51)
      {
        break;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
      v54 = v85;
      if (v85 == 1)
      {
        goto LABEL_64;
      }

LABEL_65:
      if (v53 == v91[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v91);
        if (!v54)
        {
          goto LABEL_79;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v91);
        if (!v54)
        {
LABEL_79:
          v7 = 0;
          goto LABEL_100;
        }
      }

      v45 = ++v84;
      if (!--v44)
      {
        goto LABEL_70;
      }
    }

    llvm::detail::IEEEFloat::~IEEEFloat(v89);
    v54 = v85;
    if (v85 != 1)
    {
      goto LABEL_65;
    }

LABEL_64:
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v92, &v90);
    goto LABEL_65;
  }

LABEL_70:
  if (!v9)
  {
    goto LABEL_98;
  }

  v55 = *v9;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (v58)
    {
      goto LABEL_73;
    }

LABEL_95:
    v58 = 0;
    v59 = v57;
    goto LABEL_96;
  }

  mlir::arith::ExtUIOp::fold();
  v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v57 = *(v55 + 8);
  v58 = *(v55 + 16);
  if (!v58)
  {
    goto LABEL_95;
  }

LABEL_73:
  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
LABEL_96:
  if (v59 == &v57[2 * v58] || *v59 != v56)
  {
LABEL_98:
    v70 = 0;
    goto LABEL_99;
  }

  v70 = v59[1];
LABEL_99:
  v46 = mlir::DenseElementsAttr::get(v9, v70, v92, v93);
  v7 = v46;
LABEL_100:
  v71 = v92;
  v72 = v93;
  if (v93)
  {
    v73 = llvm::APFloatBase::PPCDoubleDouble(v46);
    v74 = &v71[32 * v72 - 24];
    v75 = -32 * v72;
    do
    {
      while (v73 == *v74)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v74);
        v74 = (v76 - 32);
        v75 += 32;
        if (!v75)
        {
          goto LABEL_105;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v74);
      v74 = (v77 - 32);
      v75 += 32;
    }

    while (v75);
LABEL_105:
    v71 = v92;
  }

  if (v71 != v94)
  {
    free(v71);
  }

  if ((v82 & 1) == 0)
  {
    v78 = v83;
    v83 = 0;
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }
  }

  if ((v97 & 1) != 0 && (v95 & 1) == 0)
  {
    v79 = v96[0];
    v96[0] = 0;
    if (v79)
    {
      (*(*v79 + 8))(v79);
    }
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::TruncFOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::TruncFOp::verify(uint64_t **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::FloatType::getWidth(v36);
  v30[0] = v2;
  if (Width > mlir::FloatType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be shorter than operand type ";
      v35 = 35;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
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
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
      {
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

uint64_t mlir::arith::UIToFPOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::FloatType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::UIToFPOp::fold(void *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = ElementTypeOrSelf;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v82 = *v5;
    mlir::IntegerAttr::getValue(&v82, &v80);
    mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(v84, v8, &v80);
    if (DWORD2(v80) >= 0x41 && v80)
    {
      MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
    }

    v6 = mlir::FloatAttr::get(v9, v84);
    v22 = v84[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v22)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84[1]);
    }

    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v84[0] = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(v84))
  {
    v75 = *v5;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v75, v84);
    v80 = *v84;
    v81 = v85[0];
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v80, v84);
    mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, v84);
    if (LODWORD(v84[1]) >= 0x41 && v84[0])
    {
      MEMORY[0x1AC55A040](v84[0], 0x1000C8000313F17);
    }

    if (v9)
    {
      v11 = *v9;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        v84[0] = v9;
        v84[1] = v59;
        ShapedType = mlir::ElementsAttr::getShapedType(v84);
        if (!ShapedType)
        {
          goto LABEL_85;
        }

        goto LABEL_78;
      }
    }

LABEL_77:
    v84[0] = v9;
    v84[1] = 0;
    ShapedType = mlir::ElementsAttr::getShapedType(v84);
    if (!ShapedType)
    {
      goto LABEL_85;
    }

LABEL_78:
    ShapedType = mlir::ShapedType::getShape(v84);
    if (!v56)
    {
LABEL_82:
      v6 = mlir::DenseElementsAttr::get(v84[0], v84[1], &v82, 1);
      v58 = v83[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v6) != v58)
      {
LABEL_86:
        llvm::detail::IEEEFloat::~IEEEFloat(v83);
        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_83;
    }

    v57 = 8 * v56;
    while (*ShapedType != 0x8000000000000000)
    {
      ShapedType = (ShapedType + 8);
      v57 -= 8;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

LABEL_85:
    v6 = 0;
    v60 = v83[0];
    if (llvm::APFloatBase::PPCDoubleDouble(ShapedType) != v60)
    {
      goto LABEL_86;
    }

LABEL_83:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v21;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v78, &v80), BYTE8(v81) != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v75) = v80;
  if (v80 == 1)
  {
    v76 = *(&v80 + 1);
  }

  else
  {
    (*(**(&v80 + 1) + 16))(&v76);
  }

  v77 = v81;
  v84[0] = v85;
  v84[1] = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  if (NumElements > HIDWORD(v84[1]))
  {
    v82 = 0;
    v24 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v84, v85, NumElements, 32, &v82);
    v25 = v24;
    v26 = v84[0];
    v27 = LODWORD(v84[1]);
    if (LODWORD(v84[1]))
    {
      v28 = llvm::APFloatBase::PPCDoubleDouble(v24);
      v29 = (v25 + 8);
      v30 = 32 * v27;
      v31 = (v26 + 8);
      do
      {
        while (v28 == v31->n128_u64[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v29, v31);
          v29 = v32 + 2;
          v31 += 2;
          v30 -= 32;
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v29 = (llvm::detail::IEEEFloat::IEEEFloat(v29, v31) + 32);
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
LABEL_40:
      v26 = v84[0];
      if (LODWORD(v84[1]))
      {
        v33 = (v84[0] + 32 * LODWORD(v84[1]) - 24);
        v34 = -32 * LODWORD(v84[1]);
        do
        {
          while (v28 == *v33)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
            v33 = (v35 - 32);
            v34 += 32;
            if (!v34)
            {
              goto LABEL_45;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v33);
          v33 = (v36 - 32);
          v34 += 32;
        }

        while (v34);
LABEL_45:
        v26 = v84[0];
      }
    }

    v37 = v82;
    if (v26 != v85)
    {
      free(v26);
    }

    v84[0] = v25;
    HIDWORD(v84[1]) = v37;
  }

  v38 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v38)
  {
    v39 = v38;
    v40 = v77;
    do
    {
      while (1)
      {
        v41 = BYTE1(v75) ? 0 : v40;
        if (v75 == 1)
        {
          v42 = v76 + 16 * v41;
          v74 = *(v42 + 8);
          if (v74 > 0x40)
          {
            llvm::APInt::initSlowCase(&v73, v42);
          }

          v73 = *v42;
        }

        else
        {
          (*(*v76 + 24))(&v73);
        }

        mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, &v73);
        if (v74 >= 0x41 && v73)
        {
          MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
        }

        v43 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(v84, &v82);
        v44 = v83[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v43) != v44)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
        v40 = ++v77;
        if (!--v39)
        {
          goto LABEL_65;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v83);
      v40 = ++v77;
      --v39;
    }

    while (v39);
  }

LABEL_65:
  if (!v9)
  {
    goto LABEL_91;
  }

  v45 = *v9;
  {
    v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    if (v48)
    {
      goto LABEL_68;
    }

LABEL_88:
    v48 = 0;
    v49 = v47;
    goto LABEL_89;
  }

  mlir::arith::ExtUIOp::fold();
  v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v47 = *(v45 + 8);
  v48 = *(v45 + 16);
  if (!v48)
  {
    goto LABEL_88;
  }

LABEL_68:
  v49 = v47;
  v50 = v48;
  do
  {
    v51 = v50 >> 1;
    v52 = &v49[2 * (v50 >> 1)];
    v54 = *v52;
    v53 = v52 + 2;
    v50 += ~(v50 >> 1);
    if (v54 < v46)
    {
      v49 = v53;
    }

    else
    {
      v50 = v51;
    }
  }

  while (v50);
LABEL_89:
  if (v49 != &v47[2 * v48] && *v49 == v46)
  {
    v61 = v49[1];
    goto LABEL_92;
  }

LABEL_91:
  v61 = 0;
LABEL_92:
  v62 = mlir::DenseElementsAttr::get(v9, v61, v84[0], LODWORD(v84[1]));
  v6 = v62;
  v63 = v84[0];
  v64 = LODWORD(v84[1]);
  if (LODWORD(v84[1]))
  {
    v65 = llvm::APFloatBase::PPCDoubleDouble(v62);
    v66 = &v63[32 * v64 - 24];
    v67 = -32 * v64;
    do
    {
      while (v65 == *v66)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v66);
        v66 = (v68 - 32);
        v67 += 32;
        if (!v67)
        {
          goto LABEL_97;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v66);
      v66 = (v69 - 32);
      v67 += 32;
    }

    while (v67);
LABEL_97:
    v63 = v84[0];
  }

  if (v63 != v85)
  {
    free(v63);
  }

  if ((v75 & 1) == 0)
  {
    v70 = v76;
    v76 = 0;
    if (v70)
    {
      (*(*v70 + 8))(v70);
    }
  }

  if ((BYTE8(v81) & 1) != 0 && (v80 & 1) == 0)
  {
    v71 = *(&v80 + 1);
    *(&v80 + 1) = 0;
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::SIToFPOp::fold(void *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = ElementTypeOrSelf;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v82 = *v5;
    mlir::IntegerAttr::getValue(&v82, &v80);
    mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(v84, v8, &v80);
    if (DWORD2(v80) >= 0x41 && v80)
    {
      MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
    }

    v6 = mlir::FloatAttr::get(v9, v84);
    v22 = v84[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v22)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84[1]);
    }

    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v84[0] = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(v84))
  {
    v75 = *v5;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v75, v84);
    v80 = *v84;
    v81 = v85[0];
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v80, v84);
    mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, v84);
    if (LODWORD(v84[1]) >= 0x41 && v84[0])
    {
      MEMORY[0x1AC55A040](v84[0], 0x1000C8000313F17);
    }

    if (v9)
    {
      v11 = *v9;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        v84[0] = v9;
        v84[1] = v59;
        ShapedType = mlir::ElementsAttr::getShapedType(v84);
        if (!ShapedType)
        {
          goto LABEL_85;
        }

        goto LABEL_78;
      }
    }

LABEL_77:
    v84[0] = v9;
    v84[1] = 0;
    ShapedType = mlir::ElementsAttr::getShapedType(v84);
    if (!ShapedType)
    {
      goto LABEL_85;
    }

LABEL_78:
    ShapedType = mlir::ShapedType::getShape(v84);
    if (!v56)
    {
LABEL_82:
      v6 = mlir::DenseElementsAttr::get(v84[0], v84[1], &v82, 1);
      v58 = v83[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v6) != v58)
      {
LABEL_86:
        llvm::detail::IEEEFloat::~IEEEFloat(v83);
        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_83;
    }

    v57 = 8 * v56;
    while (*ShapedType != 0x8000000000000000)
    {
      ShapedType = (ShapedType + 8);
      v57 -= 8;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

LABEL_85:
    v6 = 0;
    v60 = v83[0];
    if (llvm::APFloatBase::PPCDoubleDouble(ShapedType) != v60)
    {
      goto LABEL_86;
    }

LABEL_83:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v21;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v78, &v80), BYTE8(v81) != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v75) = v80;
  if (v80 == 1)
  {
    v76 = *(&v80 + 1);
  }

  else
  {
    (*(**(&v80 + 1) + 16))(&v76);
  }

  v77 = v81;
  v84[0] = v85;
  v84[1] = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  if (NumElements > HIDWORD(v84[1]))
  {
    v82 = 0;
    v24 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v84, v85, NumElements, 32, &v82);
    v25 = v24;
    v26 = v84[0];
    v27 = LODWORD(v84[1]);
    if (LODWORD(v84[1]))
    {
      v28 = llvm::APFloatBase::PPCDoubleDouble(v24);
      v29 = (v25 + 8);
      v30 = 32 * v27;
      v31 = (v26 + 8);
      do
      {
        while (v28 == v31->n128_u64[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v29, v31);
          v29 = v32 + 2;
          v31 += 2;
          v30 -= 32;
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v29 = (llvm::detail::IEEEFloat::IEEEFloat(v29, v31) + 32);
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
LABEL_40:
      v26 = v84[0];
      if (LODWORD(v84[1]))
      {
        v33 = (v84[0] + 32 * LODWORD(v84[1]) - 24);
        v34 = -32 * LODWORD(v84[1]);
        do
        {
          while (v28 == *v33)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
            v33 = (v35 - 32);
            v34 += 32;
            if (!v34)
            {
              goto LABEL_45;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v33);
          v33 = (v36 - 32);
          v34 += 32;
        }

        while (v34);
LABEL_45:
        v26 = v84[0];
      }
    }

    v37 = v82;
    if (v26 != v85)
    {
      free(v26);
    }

    v84[0] = v25;
    HIDWORD(v84[1]) = v37;
  }

  v38 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v38)
  {
    v39 = v38;
    v40 = v77;
    do
    {
      while (1)
      {
        v41 = BYTE1(v75) ? 0 : v40;
        if (v75 == 1)
        {
          v42 = v76 + 16 * v41;
          v74 = *(v42 + 8);
          if (v74 > 0x40)
          {
            llvm::APInt::initSlowCase(&v73, v42);
          }

          v73 = *v42;
        }

        else
        {
          (*(*v76 + 24))(&v73);
        }

        mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, &v73);
        if (v74 >= 0x41 && v73)
        {
          MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
        }

        v43 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(v84, &v82);
        v44 = v83[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v43) != v44)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
        v40 = ++v77;
        if (!--v39)
        {
          goto LABEL_65;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v83);
      v40 = ++v77;
      --v39;
    }

    while (v39);
  }

LABEL_65:
  if (!v9)
  {
    goto LABEL_91;
  }

  v45 = *v9;
  {
    v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    if (v48)
    {
      goto LABEL_68;
    }

LABEL_88:
    v48 = 0;
    v49 = v47;
    goto LABEL_89;
  }

  mlir::arith::ExtUIOp::fold();
  v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v47 = *(v45 + 8);
  v48 = *(v45 + 16);
  if (!v48)
  {
    goto LABEL_88;
  }

LABEL_68:
  v49 = v47;
  v50 = v48;
  do
  {
    v51 = v50 >> 1;
    v52 = &v49[2 * (v50 >> 1)];
    v54 = *v52;
    v53 = v52 + 2;
    v50 += ~(v50 >> 1);
    if (v54 < v46)
    {
      v49 = v53;
    }

    else
    {
      v50 = v51;
    }
  }

  while (v50);
LABEL_89:
  if (v49 != &v47[2 * v48] && *v49 == v46)
  {
    v61 = v49[1];
    goto LABEL_92;
  }

LABEL_91:
  v61 = 0;
LABEL_92:
  v62 = mlir::DenseElementsAttr::get(v9, v61, v84[0], LODWORD(v84[1]));
  v6 = v62;
  v63 = v84[0];
  v64 = LODWORD(v84[1]);
  if (LODWORD(v84[1]))
  {
    v65 = llvm::APFloatBase::PPCDoubleDouble(v62);
    v66 = &v63[32 * v64 - 24];
    v67 = -32 * v64;
    do
    {
      while (v65 == *v66)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v66);
        v66 = (v68 - 32);
        v67 += 32;
        if (!v67)
        {
          goto LABEL_97;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v66);
      v66 = (v69 - 32);
      v67 += 32;
    }

    while (v67);
LABEL_97:
    v63 = v84[0];
  }

  if (v63 != v85)
  {
    free(v63);
  }

  if ((v75 & 1) == 0)
  {
    v70 = v76;
    v76 = 0;
    if (v70)
    {
      (*(*v70 + 8))(v70);
    }
  }

  if ((BYTE8(v81) & 1) != 0 && (v80 & 1) == 0)
  {
    v71 = *(&v80 + 1);
    *(&v80 + 1) = 0;
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::FPToUIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::IntegerType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::FPToUIOp::fold(void *a1, uint64_t a2)
{
  v85[6] = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  Width = mlir::IntegerType::getWidth(&ElementTypeOrSelf);
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = Width;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v81 = *v5;
    mlir::FloatAttr::getValue(&ElementTypeOrSelf, &v81);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    v74 = 0;
    LOBYTE(v71) = 0;
    BYTE4(v75) = 1;
    v12 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v13 = v12;
    v14 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v13 == 1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v13 == 1)
      {
        goto LABEL_94;
      }
    }

    v6 = mlir::IntegerAttr::get(v9, &v74);
    if (v75 < 0x41)
    {
      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_95;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  ElementTypeOrSelf = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&ElementTypeOrSelf))
  {
    v81 = *v5;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v81, &ElementTypeOrSelf);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    v74 = 0;
    LOBYTE(v71) = 0;
    BYTE4(v75) = 1;
    v15 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v16 = v15;
    v17 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_94;
      }
    }

    if (!v9)
    {
      goto LABEL_86;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_33:
        v22 = v20;
        v23 = v21;
        do
        {
          v24 = v23 >> 1;
          v25 = &v22[2 * (v23 >> 1)];
          v27 = *v25;
          v26 = v25 + 2;
          v23 += ~(v23 >> 1);
          if (v27 < v19)
          {
            v22 = v26;
          }

          else
          {
            v23 = v24;
          }
        }

        while (v23);
LABEL_84:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v57 = v22[1];
          ElementTypeOrSelf = v9;
          v84 = v57;
          if (!mlir::ElementsAttr::getShapedType(&ElementTypeOrSelf))
          {
            goto LABEL_94;
          }

          goto LABEL_87;
        }

LABEL_86:
        ElementTypeOrSelf = v9;
        v84 = 0;
        if (!mlir::ElementsAttr::getShapedType(&ElementTypeOrSelf))
        {
          goto LABEL_94;
        }

LABEL_87:
        Shape = mlir::ShapedType::getShape(&ElementTypeOrSelf);
        if (!v55)
        {
LABEL_91:
          v6 = mlir::DenseElementsAttr::get(ElementTypeOrSelf, v84, &v74, 1);
          if (v75 < 0x41)
          {
            return v6 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_95;
        }

        v56 = 8 * v55;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v56 -= 8;
          if (!v56)
          {
            goto LABEL_91;
          }
        }

LABEL_94:
        v6 = 0;
        if (v75 < 0x41)
        {
          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_95:
        if (v74)
        {
          MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
        }

        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_84;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v11;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v78, &v74), v77 != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v71 = v74;
  if (v74 == 1)
  {
    v72 = v75;
  }

  else
  {
    (*(*v75 + 16))(&v72);
  }

  v73 = v76;
  ElementTypeOrSelf = v85;
  v84 = 0x300000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  llvm::SmallVectorImpl<llvm::APInt>::reserve(&ElementTypeOrSelf, NumElements);
  v29 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v29)
  {
    v30 = v29;
    v31 = v73;
    do
    {
      if (HIBYTE(v71))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      if (v71 == 1)
      {
        v33 = v72 + 32 * v32;
        v35 = *(v33 + 1);
        v34 = (v33 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v72) == v35)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
LABEL_48:
            llvm::APInt::initSlowCase(&v68, 0, 0);
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        (*(*v72 + 24))(&v81);
        v69 = v8;
        if (v8 > 0x40)
        {
          goto LABEL_48;
        }
      }

      v68 = 0;
      v80 = 0;
      v70 = 1;
      v36 = llvm::APFloat::convertToInteger(&v81, &v68, 0, &v80);
      v37 = v36;
      v38 = v82[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v36) == v38)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v82);
        if (v37 == 1)
        {
LABEL_52:
          if (v69 < 0x41)
          {
            goto LABEL_63;
          }

LABEL_61:
          if (v68)
          {
            MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
          }

          goto LABEL_63;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v82);
        if (v37 == 1)
        {
          goto LABEL_52;
        }
      }

      v39 = ElementTypeOrSelf;
      if (v84 >= HIDWORD(v84))
      {
        if (ElementTypeOrSelf <= &v68 && ElementTypeOrSelf + 16 * v84 > &v68)
        {
          v43 = &v68 - ElementTypeOrSelf;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          v39 = ElementTypeOrSelf;
          v40 = ElementTypeOrSelf + v43;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          v40 = &v68;
          v39 = ElementTypeOrSelf;
        }
      }

      else
      {
        v40 = &v68;
      }

      v41 = &v39[16 * v84];
      v42 = *(v40 + 2);
      *(v41 + 2) = v42;
      if (v42 > 0x40)
      {
        llvm::APInt::initSlowCase(v41, v40);
      }

      *v41 = *v40;
      LODWORD(v84) = v84 + 1;
      if (v69 >= 0x41)
      {
        goto LABEL_61;
      }

LABEL_63:
      if (v37 == 1)
      {
        v6 = 0;
        goto LABEL_103;
      }

      v31 = ++v73;
      --v30;
    }

    while (v30);
  }

  if (!v9)
  {
    goto LABEL_101;
  }

  v44 = *v9;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = *(v44 + 8);
    v47 = *(v44 + 16);
    if (v47)
    {
      goto LABEL_75;
    }

LABEL_98:
    v47 = 0;
    v48 = v46;
    goto LABEL_99;
  }

  mlir::arith::ExtUIOp::fold();
  v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  if (!v47)
  {
    goto LABEL_98;
  }

LABEL_75:
  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
LABEL_99:
  if (v48 == &v46[2 * v47] || *v48 != v45)
  {
LABEL_101:
    v58 = 0;
    goto LABEL_102;
  }

  v58 = v48[1];
LABEL_102:
  v6 = mlir::DenseElementsAttr::get(v9, v58, ElementTypeOrSelf, v84);
LABEL_103:
  v59 = ElementTypeOrSelf;
  if (v84)
  {
    v60 = (ElementTypeOrSelf + 16 * v84 - 8);
    v61 = -16 * v84;
    v62 = v60;
    do
    {
      v63 = *v62;
      v62 -= 4;
      if (v63 >= 0x41)
      {
        v64 = *(v60 - 1);
        if (v64)
        {
          MEMORY[0x1AC55A040](v64, 0x1000C8000313F17);
        }
      }

      v60 = v62;
      v61 += 16;
    }

    while (v61);
    v59 = ElementTypeOrSelf;
  }

  if (v59 != v85)
  {
    free(v59);
  }

  if ((v71 & 1) == 0)
  {
    v65 = v72;
    v72 = 0;
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }
  }

  if ((v77 & 1) != 0 && (v74 & 1) == 0)
  {
    v66 = v75;
    v75 = 0;
    if (v66)
    {
      (*(*v66 + 8))(v66);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::FPToSIOp::fold(void *a1, uint64_t a2)
{
  v85[6] = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  Width = mlir::IntegerType::getWidth(&ElementTypeOrSelf);
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = Width;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v81 = *v5;
    mlir::FloatAttr::getValue(&ElementTypeOrSelf, &v81);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    v74 = 0;
    LOBYTE(v71) = 0;
    BYTE4(v75) = 0;
    v12 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v13 = v12;
    v14 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v13 == 1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v13 == 1)
      {
        goto LABEL_94;
      }
    }

    v6 = mlir::IntegerAttr::get(v9, &v74);
    if (v75 < 0x41)
    {
      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_95;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  ElementTypeOrSelf = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&ElementTypeOrSelf))
  {
    v81 = *v5;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v81, &ElementTypeOrSelf);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    v74 = 0;
    LOBYTE(v71) = 0;
    BYTE4(v75) = 0;
    v15 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v16 = v15;
    v17 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_94;
      }
    }

    if (!v9)
    {
      goto LABEL_86;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_33:
        v22 = v20;
        v23 = v21;
        do
        {
          v24 = v23 >> 1;
          v25 = &v22[2 * (v23 >> 1)];
          v27 = *v25;
          v26 = v25 + 2;
          v23 += ~(v23 >> 1);
          if (v27 < v19)
          {
            v22 = v26;
          }

          else
          {
            v23 = v24;
          }
        }

        while (v23);
LABEL_84:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v57 = v22[1];
          ElementTypeOrSelf = v9;
          v84 = v57;
          if (!mlir::ElementsAttr::getShapedType(&ElementTypeOrSelf))
          {
            goto LABEL_94;
          }

          goto LABEL_87;
        }

LABEL_86:
        ElementTypeOrSelf = v9;
        v84 = 0;
        if (!mlir::ElementsAttr::getShapedType(&ElementTypeOrSelf))
        {
          goto LABEL_94;
        }

LABEL_87:
        Shape = mlir::ShapedType::getShape(&ElementTypeOrSelf);
        if (!v55)
        {
LABEL_91:
          v6 = mlir::DenseElementsAttr::get(ElementTypeOrSelf, v84, &v74, 1);
          if (v75 < 0x41)
          {
            return v6 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_95;
        }

        v56 = 8 * v55;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v56 -= 8;
          if (!v56)
          {
            goto LABEL_91;
          }
        }

LABEL_94:
        v6 = 0;
        if (v75 < 0x41)
        {
          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_95:
        if (v74)
        {
          MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
        }

        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_84;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v11;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v78, &v74), v77 != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v71 = v74;
  if (v74 == 1)
  {
    v72 = v75;
  }

  else
  {
    (*(*v75 + 16))(&v72);
  }

  v73 = v76;
  ElementTypeOrSelf = v85;
  v84 = 0x300000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  llvm::SmallVectorImpl<llvm::APInt>::reserve(&ElementTypeOrSelf, NumElements);
  v29 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v29)
  {
    v30 = v29;
    v31 = v73;
    do
    {
      if (HIBYTE(v71))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      if (v71 == 1)
      {
        v33 = v72 + 32 * v32;
        v35 = *(v33 + 1);
        v34 = (v33 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v72) == v35)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
LABEL_48:
            llvm::APInt::initSlowCase(&v68, 0, 0);
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        (*(*v72 + 24))(&v81);
        v69 = v8;
        if (v8 > 0x40)
        {
          goto LABEL_48;
        }
      }

      v68 = 0;
      v80 = 0;
      v70 = 0;
      v36 = llvm::APFloat::convertToInteger(&v81, &v68, 0, &v80);
      v37 = v36;
      v38 = v82[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v36) == v38)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v82);
        if (v37 == 1)
        {
LABEL_52:
          if (v69 < 0x41)
          {
            goto LABEL_63;
          }

LABEL_61:
          if (v68)
          {
            MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
          }

          goto LABEL_63;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v82);
        if (v37 == 1)
        {
          goto LABEL_52;
        }
      }

      v39 = ElementTypeOrSelf;
      if (v84 >= HIDWORD(v84))
      {
        if (ElementTypeOrSelf <= &v68 && ElementTypeOrSelf + 16 * v84 > &v68)
        {
          v43 = &v68 - ElementTypeOrSelf;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          v39 = ElementTypeOrSelf;
          v40 = ElementTypeOrSelf + v43;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          v40 = &v68;
          v39 = ElementTypeOrSelf;
        }
      }

      else
      {
        v40 = &v68;
      }

      v41 = &v39[16 * v84];
      v42 = *(v40 + 2);
      *(v41 + 2) = v42;
      if (v42 > 0x40)
      {
        llvm::APInt::initSlowCase(v41, v40);
      }

      *v41 = *v40;
      LODWORD(v84) = v84 + 1;
      if (v69 >= 0x41)
      {
        goto LABEL_61;
      }

LABEL_63:
      if (v37 == 1)
      {
        v6 = 0;
        goto LABEL_103;
      }

      v31 = ++v73;
      --v30;
    }

    while (v30);
  }

  if (!v9)
  {
    goto LABEL_101;
  }

  v44 = *v9;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = *(v44 + 8);
    v47 = *(v44 + 16);
    if (v47)
    {
      goto LABEL_75;
    }

LABEL_98:
    v47 = 0;
    v48 = v46;
    goto LABEL_99;
  }

  mlir::arith::ExtUIOp::fold();
  v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  if (!v47)
  {
    goto LABEL_98;
  }

LABEL_75:
  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
LABEL_99:
  if (v48 == &v46[2 * v47] || *v48 != v45)
  {
LABEL_101:
    v58 = 0;
    goto LABEL_102;
  }

  v58 = v48[1];
LABEL_102:
  v6 = mlir::DenseElementsAttr::get(v9, v58, ElementTypeOrSelf, v84);
LABEL_103:
  v59 = ElementTypeOrSelf;
  if (v84)
  {
    v60 = (ElementTypeOrSelf + 16 * v84 - 8);
    v61 = -16 * v84;
    v62 = v60;
    do
    {
      v63 = *v62;
      v62 -= 4;
      if (v63 >= 0x41)
      {
        v64 = *(v60 - 1);
        if (v64)
        {
          MEMORY[0x1AC55A040](v64, 0x1000C8000313F17);
        }
      }

      v60 = v62;
      v61 += 16;
    }

    while (v61);
    v59 = ElementTypeOrSelf;
  }

  if (v59 != v85)
  {
    free(v59);
  }

  if ((v71 & 1) == 0)
  {
    v65 = v72;
    v72 = 0;
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }
  }

  if ((v77 & 1) != 0 && (v74 & 1) == 0)
  {
    v66 = v75;
    v75 = 0;
    if (v66)
    {
      (*(*v66 + 8))(v66);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t areIndexCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v11 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v8);
    result = 0;
    v10 = v9;
    if (v11)
    {
      if (v9)
      {
        if (mlir::Type::isIndex(&v11) && mlir::Type::isSignlessInteger(&v10))
        {
          return 1;
        }

        else
        {
          result = mlir::Type::isSignlessInteger(&v11);
          if (result)
          {
            return mlir::Type::isIndex(&v10);
          }
        }
      }
    }
  }

  return result;
}

unint64_t mlir::arith::IndexCastOp::fold(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = ElementTypeOrSelf;
  }

  else
  {
    v5 = 0;
  }

  v69[0] = v5;
  if (v5)
  {
    Width = mlir::IntegerType::getWidth(v69);
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  else
  {
    Width = 64;
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(v8))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v69[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v69))
    {
      v65 = *v7;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v65, v69);
      v67 = *v69;
      v68 = v70[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v62);
      llvm::APInt::sextOrTrunc(v69, &v62, Width);
      if (v63 >= 0x41 && v62)
      {
        MEMORY[0x1AC55A040](v62, 0x1000C8000313F17);
      }

      if (v10)
      {
        v12 = *v10;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
          }
        }

        v16 = v14;
        v17 = v15;
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[2 * (v17 >> 1)];
          v21 = *v19;
          v20 = v19 + 2;
          v17 += ~(v17 >> 1);
          if (v21 < v13)
          {
            v16 = v20;
          }

          else
          {
            v17 = v18;
          }
        }

        while (v17);
        if (v16 != &v14[2 * v15] && *v16 == v13)
        {
          v47 = v16[1];
          *&v67 = v10;
          *(&v67 + 1) = v47;
          if (mlir::ElementsAttr::getShapedType(&v67))
          {
            goto LABEL_78;
          }

          goto LABEL_85;
        }
      }

LABEL_77:
      v67 = v10;
      if (mlir::ElementsAttr::getShapedType(&v67))
      {
LABEL_78:
        Shape = mlir::ShapedType::getShape(&v67);
        if (!v45)
        {
LABEL_82:
          v8 = mlir::DenseElementsAttr::get(v67, *(&v67 + 1), v69, 1);
          if (LODWORD(v69[1]) < 0x41)
          {
            return v8 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_86;
        }

        v46 = 8 * v45;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_82;
          }
        }
      }

LABEL_85:
      v8 = 0;
      if (LODWORD(v69[1]) < 0x41)
      {
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_86;
    }

    v65 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v7);
    v66 = v22;
    if (!v65 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v67), BYTE8(v68) != 1))
    {
      v8 = 0;
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v62) = v67;
    if (v67 == 1)
    {
      v63 = *(&v67 + 1);
    }

    else
    {
      (*(**(&v67 + 1) + 16))(&v63);
    }

    v64 = v68;
    v69[0] = v70;
    v69[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v69, NumElements);
    v24 = mlir::ElementsAttr::getNumElements(v65, v66);
    if (v24)
    {
      v25 = v24;
      v26 = v64;
      do
      {
        if (BYTE1(v62))
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        if (v62 == 1)
        {
          v28 = v63 + 16 * v27;
          v59 = *(v28 + 8);
          if (v59 > 0x40)
          {
            llvm::APInt::initSlowCase(&v58, v28);
          }

          v58 = *v28;
        }

        else
        {
          (*(*v63 + 24))(&v58);
        }

        llvm::APInt::sextOrTrunc(&v60, &v58, Width);
        if (v59 >= 0x41 && v58)
        {
          MEMORY[0x1AC55A040](v58, 0x1000C8000313F17);
        }

        v29 = v69[0];
        if (LODWORD(v69[1]) >= HIDWORD(v69[1]))
        {
          if (v69[0] <= &v60 && v69[0] + 16 * LODWORD(v69[1]) > &v60)
          {
            v33 = &v60 - v69[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v29 = v69[0];
            v30 = (v69[0] + v33);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v30 = &v60;
            v29 = v69[0];
          }
        }

        else
        {
          v30 = &v60;
        }

        v31 = &v29[16 * LODWORD(v69[1])];
        v32 = *(v30 + 2);
        *(v31 + 2) = v32;
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(v31, v30);
        }

        *v31 = *v30;
        ++LODWORD(v69[1]);
        if (v61 >= 0x41 && v60)
        {
          MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
        }

        v26 = ++v64;
        --v25;
      }

      while (v25);
    }

    if (!v10)
    {
      goto LABEL_92;
    }

    v34 = *v10;
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
        goto LABEL_68;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
LABEL_68:
        v38 = v36;
        v39 = v37;
        do
        {
          v40 = v39 >> 1;
          v41 = &v38[2 * (v39 >> 1)];
          v43 = *v41;
          v42 = v41 + 2;
          v39 += ~(v39 >> 1);
          if (v43 < v35)
          {
            v38 = v42;
          }

          else
          {
            v39 = v40;
          }
        }

        while (v39);
LABEL_90:
        if (v38 != &v36[2 * v37] && *v38 == v35)
        {
          v48 = v38[1];
          goto LABEL_93;
        }

LABEL_92:
        v48 = 0;
LABEL_93:
        v8 = mlir::DenseElementsAttr::get(v10, v48, v69[0], LODWORD(v69[1]));
        v49 = v69[0];
        if (LODWORD(v69[1]))
        {
          v50 = (v69[0] + 16 * LODWORD(v69[1]) - 8);
          v51 = -16 * LODWORD(v69[1]);
          v52 = v50;
          do
          {
            v53 = *v52;
            v52 -= 4;
            if (v53 >= 0x41)
            {
              v54 = *(v50 - 1);
              if (v54)
              {
                MEMORY[0x1AC55A040](v54, 0x1000C8000313F17);
              }
            }

            v50 = v52;
            v51 += 16;
          }

          while (v51);
          v49 = v69[0];
        }

        if (v49 != v70)
        {
          free(v49);
        }

        if ((v62 & 1) == 0)
        {
          v55 = v63;
          v63 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((BYTE8(v68) & 1) != 0 && (v67 & 1) == 0)
        {
          v56 = *(&v67 + 1);
          *(&v67 + 1) = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v37 = 0;
    v38 = v36;
    goto LABEL_90;
  }

  v62 = v8;
  mlir::IntegerAttr::getValue(&v62, &v67);
  llvm::APInt::sextOrTrunc(v69, &v67, Width);
  if (DWORD2(v67) >= 0x41 && v67)
  {
    MEMORY[0x1AC55A040](v67, 0x1000C8000313F17);
  }

  v8 = mlir::IntegerAttr::get(v10, v69);
  if (LODWORD(v69[1]) >= 0x41)
  {
LABEL_86:
    if (v69[0])
    {
      MEMORY[0x1AC55A040](v69[0], 0x1000C8000313F17);
    }
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::IndexCastUIOp::fold(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = ElementTypeOrSelf;
  }

  else
  {
    v5 = 0;
  }

  v69[0] = v5;
  if (v5)
  {
    Width = mlir::IntegerType::getWidth(v69);
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  else
  {
    Width = 64;
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(v8))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v69[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v69))
    {
      v65 = *v7;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v65, v69);
      v67 = *v69;
      v68 = v70[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v62);
      llvm::APInt::zextOrTrunc(v69, &v62, Width);
      if (v63 >= 0x41 && v62)
      {
        MEMORY[0x1AC55A040](v62, 0x1000C8000313F17);
      }

      if (v10)
      {
        v12 = *v10;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
          }
        }

        v16 = v14;
        v17 = v15;
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[2 * (v17 >> 1)];
          v21 = *v19;
          v20 = v19 + 2;
          v17 += ~(v17 >> 1);
          if (v21 < v13)
          {
            v16 = v20;
          }

          else
          {
            v17 = v18;
          }
        }

        while (v17);
        if (v16 != &v14[2 * v15] && *v16 == v13)
        {
          v47 = v16[1];
          *&v67 = v10;
          *(&v67 + 1) = v47;
          if (mlir::ElementsAttr::getShapedType(&v67))
          {
            goto LABEL_78;
          }

          goto LABEL_85;
        }
      }

LABEL_77:
      v67 = v10;
      if (mlir::ElementsAttr::getShapedType(&v67))
      {
LABEL_78:
        Shape = mlir::ShapedType::getShape(&v67);
        if (!v45)
        {
LABEL_82:
          v8 = mlir::DenseElementsAttr::get(v67, *(&v67 + 1), v69, 1);
          if (LODWORD(v69[1]) < 0x41)
          {
            return v8 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_86;
        }

        v46 = 8 * v45;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_82;
          }
        }
      }

LABEL_85:
      v8 = 0;
      if (LODWORD(v69[1]) < 0x41)
      {
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_86;
    }

    v65 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v7);
    v66 = v22;
    if (!v65 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v67), BYTE8(v68) != 1))
    {
      v8 = 0;
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v62) = v67;
    if (v67 == 1)
    {
      v63 = *(&v67 + 1);
    }

    else
    {
      (*(**(&v67 + 1) + 16))(&v63);
    }

    v64 = v68;
    v69[0] = v70;
    v69[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v69, NumElements);
    v24 = mlir::ElementsAttr::getNumElements(v65, v66);
    if (v24)
    {
      v25 = v24;
      v26 = v64;
      do
      {
        if (BYTE1(v62))
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        if (v62 == 1)
        {
          v28 = v63 + 16 * v27;
          v59 = *(v28 + 8);
          if (v59 > 0x40)
          {
            llvm::APInt::initSlowCase(&v58, v28);
          }

          v58 = *v28;
        }

        else
        {
          (*(*v63 + 24))(&v58);
        }

        llvm::APInt::zextOrTrunc(&v60, &v58, Width);
        if (v59 >= 0x41 && v58)
        {
          MEMORY[0x1AC55A040](v58, 0x1000C8000313F17);
        }

        v29 = v69[0];
        if (LODWORD(v69[1]) >= HIDWORD(v69[1]))
        {
          if (v69[0] <= &v60 && v69[0] + 16 * LODWORD(v69[1]) > &v60)
          {
            v33 = &v60 - v69[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v29 = v69[0];
            v30 = (v69[0] + v33);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v30 = &v60;
            v29 = v69[0];
          }
        }

        else
        {
          v30 = &v60;
        }

        v31 = &v29[16 * LODWORD(v69[1])];
        v32 = *(v30 + 2);
        *(v31 + 2) = v32;
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(v31, v30);
        }

        *v31 = *v30;
        ++LODWORD(v69[1]);
        if (v61 >= 0x41 && v60)
        {
          MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
        }

        v26 = ++v64;
        --v25;
      }

      while (v25);
    }

    if (!v10)
    {
      goto LABEL_92;
    }

    v34 = *v10;
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
        goto LABEL_68;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
LABEL_68:
        v38 = v36;
        v39 = v37;
        do
        {
          v40 = v39 >> 1;
          v41 = &v38[2 * (v39 >> 1)];
          v43 = *v41;
          v42 = v41 + 2;
          v39 += ~(v39 >> 1);
          if (v43 < v35)
          {
            v38 = v42;
          }

          else
          {
            v39 = v40;
          }
        }

        while (v39);
LABEL_90:
        if (v38 != &v36[2 * v37] && *v38 == v35)
        {
          v48 = v38[1];
          goto LABEL_93;
        }

LABEL_92:
        v48 = 0;
LABEL_93:
        v8 = mlir::DenseElementsAttr::get(v10, v48, v69[0], LODWORD(v69[1]));
        v49 = v69[0];
        if (LODWORD(v69[1]))
        {
          v50 = (v69[0] + 16 * LODWORD(v69[1]) - 8);
          v51 = -16 * LODWORD(v69[1]);
          v52 = v50;
          do
          {
            v53 = *v52;
            v52 -= 4;
            if (v53 >= 0x41)
            {
              v54 = *(v50 - 1);
              if (v54)
              {
                MEMORY[0x1AC55A040](v54, 0x1000C8000313F17);
              }
            }

            v50 = v52;
            v51 += 16;
          }

          while (v51);
          v49 = v69[0];
        }

        if (v49 != v70)
        {
          free(v49);
        }

        if ((v62 & 1) == 0)
        {
          v55 = v63;
          v63 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((BYTE8(v68) & 1) != 0 && (v67 & 1) == 0)
        {
          v56 = *(&v67 + 1);
          *(&v67 + 1) = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v37 = 0;
    v38 = v36;
    goto LABEL_90;
  }

  v62 = v8;
  mlir::IntegerAttr::getValue(&v62, &v67);
  llvm::APInt::zextOrTrunc(v69, &v67, Width);
  if (DWORD2(v67) >= 0x41 && v67)
  {
    MEMORY[0x1AC55A040](v67, 0x1000C8000313F17);
  }

  v8 = mlir::IntegerAttr::get(v10, v69);
  if (LODWORD(v69[1]) >= 0x41)
  {
LABEL_86:
    if (v69[0])
    {
      MEMORY[0x1AC55A040](v69[0], 0x1000C8000313F17);
    }
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
        return IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(&v11);
      }
    }
  }

  return result;
}

uint64_t areValidCastInputsAndOutputs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v18[2] = *MEMORY[0x1E69E9840];
  if (a2 == 1 && a4 == 1)
  {
    v7 = a1;
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v18[0] = v10;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v17[0] = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || (Values = mlir::SparseElementsAttr::getValues(v18), Values == mlir::SparseElementsAttr::getValues(v17)))
    {
      v16 = mlir::TypeRange::dereference_iterator(v7, 0);
      mlir::ValueRange::ValueRange(v18, &v16, 1uLL);
      v15 = mlir::TypeRange::dereference_iterator(a3, 0);
      mlir::ValueRange::ValueRange(v17, &v15, 1uLL);
      v5 = mlir::verifyCompatibleShapes(v18[0], v18[1], v17[0], v17[1]);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

void *getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(uint64_t *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v35 = v1;
    v36 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v36;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v35 + 8);
    v4 = *(v35 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

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
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v13 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_25:
  result = mlir::getElementTypeOrSelf(a1);
  v16 = *(*result + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  return result;
}

unint64_t mlir::arith::BitcastOp::fold(void *a1, uint64_t a2)
{
  v60[3] = *MEMORY[0x1E69E9840];
  v2 = **(a2 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::DenseElementsAttr::classof(**(a2 + 40));
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v57 = v5;
  if (v4)
  {
    if (v3)
    {
      v6 = *v3;
      {
        v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        if (!v9)
        {
          goto LABEL_102;
        }
      }

      else
      {
        getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
        v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        if (!v9)
        {
          goto LABEL_102;
        }
      }

      v10 = v8;
      v11 = v9;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[2 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 2;
        v11 += ~(v11 >> 1);
        if (v15 < v7)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
      if (v10 != &v8[2 * v9] && *v10 == v7)
      {
        v53 = v10[1];
        goto LABEL_103;
      }
    }

LABEL_102:
    v53 = 0;
LABEL_103:
    v59 = v3;
    v60[0] = v53;
    isSplat = mlir::ElementsAttr::isSplat(&v59);
    return mlir::DenseElementsAttr::bitcast(&v57, isSplat) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v16 = *v3;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 != &v18[2 * v19] && *v20 == v17 && v20[1])
  {
    return 0;
  }

LABEL_28:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v56 = v2;
    Value = mlir::FloatAttr::getValue(&v59, &v56);
    v27 = v60[0];
    v29 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v29 == v27)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(&v57, v60, v28);
      if (v29 != v60[0])
      {
        goto LABEL_32;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(&v57, v60);
      if (v29 != v60[0])
      {
LABEL_32:
        llvm::detail::IEEEFloat::~IEEEFloat(v60);
        goto LABEL_37;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v60);
    goto LABEL_37;
  }

  v55 = v2;
  mlir::IntegerAttr::getValue(&v55, &v57);
LABEL_37:
  v31 = *(*v3 + 136);
  v47 = v31 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v47 && (v56 = v3) != 0)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v56);
    v50 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
    if (v50 == FloatSemantics)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v60, FloatSemantics, &v57);
    }

    llvm::detail::IEEEFloat::IEEEFloat(v60, FloatSemantics, &v57, v49);
    v51 = mlir::FloatAttr::get(v3, &v59);
    if (v50 == v60[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v60);
      result = v51 & 0xFFFFFFFFFFFFFFFBLL;
      if (v58 < 0x41)
      {
        return result;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v60);
      result = v51 & 0xFFFFFFFFFFFFFFFBLL;
      if (v58 < 0x41)
      {
        return result;
      }
    }
  }

  else
  {
    result = mlir::IntegerAttr::get(v3, &v57) & 0xFFFFFFFFFFFFFFFBLL;
    if (v58 < 0x41)
    {
      return result;
    }
  }

  if (v57)
  {
    v52 = result;
    MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
    return v52;
  }

  return result;
}

void *llvm::cast<mlir::ShapedType,mlir::Type>(void **a1)
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
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
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