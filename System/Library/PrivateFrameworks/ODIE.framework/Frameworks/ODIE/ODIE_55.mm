llvm::detail::IEEEFloat *llvm::maxnum@<X0>(llvm::APFloat::Storage *__return_ptr a1@<X8>, llvm *this@<X0>, const llvm::APFloat **a3@<X1>)
{
  v3 = a3;
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v5 = *(this + 1);
  }

  else
  {
    v5 = this;
  }

  v6 = *(v5 + 20);
  if ((v6 & 7) != 1)
  {
    if (*a3 == &llvm::semPPCDoubleDouble)
    {
      v8 = a3[1];
    }

    else
    {
      v8 = a3;
    }

    v9 = *(v8 + 20);
    if ((v9 & 7) == 1)
    {
      v3 = this;
    }

    else
    {
      v10 = (v6 & 7) == 3 && (v9 & 7) == 3;
      if (!v10 || ((v6 >> 3) & 1) == (v9 & 8) >> 3)
      {
        if (llvm::APFloat::compare(this, a3))
        {
          v3 = this;
        }
      }

      else if ((v6 & 8) == 0)
      {
        v3 = this;
      }
    }
  }

  return llvm::APFloat::Storage::Storage(a1, v3);
}

uint64_t mlir::arith::MaxSIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    return v4 | 4;
  }

  LODWORD(v82) = 1;
  v81 = 0;
  v6 = *(*(a2 + 40) + 8);
  v74 = &v81;
  if (!v6)
  {
    goto LABEL_10;
  }

  v2 = a1;
  if (!mlir::detail::constant_int_value_binder::match(&v74, v6))
  {
    goto LABEL_10;
  }

  if (!llvm::APInt::isMaxSignedValue(&v81))
  {
    if (llvm::APInt::isMinSignedValue(&v81))
    {
      v7 = 0;
      v8 = *(*(*v2 + 72) + 24);
      goto LABEL_9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = *(*(*v2 + 72) + 56);
LABEL_9:
  v2 = v8 | 4;
LABEL_11:
  if (v82 >= 0x41 && v81)
  {
    MEMORY[0x25F891010](v81, 0x1000C8000313F17);
  }

  if (v7)
  {
    v9 = *(a2 + 40);
    v10 = *v9;
    if (*v9 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v11 = v9[1];
    if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_53;
    }

    if (v10 && (v13 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v9)) != 0)
    {
      v14 = (*v12)(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = v9[1];
    if (!v15)
    {
      goto LABEL_76;
    }

    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    if (!v17)
    {
      goto LABEL_76;
    }

    v18 = (*v16)(v16, v17);
    v10 = 0;
    if (!v14 || !v18 || v18 != v14)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v80 = v14;
    v11 = *v9;
    if (*v9)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_53:
        v10 = v11;
        return v10 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v19 = v9[1];
    if (!v19)
    {
      goto LABEL_76;
    }

    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = v9[1];
    }

    else
    {
      v10 = 0;
    }

    if (!v11 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *v11;
    v22 = *(*v11 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v67 = *v9;
      v64 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 != 1)
      {
        goto LABEL_76;
      }

      v23 = mlir::IntegerAttr::get(v80, &v81);
LABEL_49:
      v10 = v23;
      if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
      {
        MEMORY[0x25F891010](v81, 0x1000C8000313F17);
      }

      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if ((v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v11 + 24) == 1 && (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1)
    {
      v67 = *v9;
      v64 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 != 1)
      {
        goto LABEL_76;
      }

      v24 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
      v23 = mlir::DenseElementsAttr::get(v24, v25, &v81, 1);
      goto LABEL_49;
    }

    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v21 + 8, v26) || (v27 = *v9[1], v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v27 + 8, v28)) || (v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v9), v31 = v30, v79[0] = v29, v79[1] = v30, v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v9[1]), v34 = v33, v78[0] = v32, v78[1] = v33, v35 = (**(v31 + 24))(), v35 != (**(v34 + 24))()))
    {
LABEL_76:
      v10 = 0;
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
    v36 = v77;
    if ((v77 & 1) == 0)
    {
      v10 = 0;
      if ((v73 & 1) == 0)
      {
        return v10 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_120;
    }

    if ((v73 & 1) == 0)
    {
      v10 = 0;
LABEL_124:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v67) = v74;
    if (v74 == 1)
    {
      v68 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v68);
    }

    v69 = v76;
    LOWORD(v64) = v70;
    if (v70 == 1)
    {
      v65 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v65);
    }

    v66 = v72;
    v81 = &v83;
    v82 = 0x400000000;
    v38 = (*(v31 + 16))(v31, v29);
    v40 = (*(v39 + 24))(v39, v38);
    if (v41)
    {
      v42 = 8 * v41;
      v43 = 1;
      do
      {
        v44 = *v40++;
        v43 *= v44;
        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v43 = 1;
    }

    if (v43 > HIDWORD(v82))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v81, v43);
    }

    v45 = (*(v31 + 16))(v31, v29);
    v47 = (*(v46 + 24))(v46, v45);
    if (v48)
    {
      v49 = 8 * v48;
      v50 = 1;
      do
      {
        v51 = *v47++;
        v50 *= v51;
        v49 -= 8;
      }

      while (v49);
      if (!v50)
      {
LABEL_112:
        v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v10 = mlir::DenseElementsAttr::get(v53, v54, v81, v82);
LABEL_114:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v81);
        if ((v64 & 1) == 0)
        {
          v55 = v65;
          v65 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((v67 & 1) == 0)
        {
          v56 = v68;
          v68 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

LABEL_120:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v36)
        {
          return v10 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v50 = 1;
    }

    v52 = v69;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v67, v52);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v57, &v64, v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v59, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x25F891010](v57, 0x1000C8000313F17);
      }

      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v63 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v81, &v61);
      if ((v63 & 1) != 0 && v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v52 = ++v69;
      ++v66;
      if (!--v50)
      {
        goto LABEL_112;
      }
    }

    v10 = 0;
    goto LABEL_114;
  }

  return v2;
}

BOOL llvm::APInt::isMaxSignedValue(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 <= 0x40)
  {
    return (*this ^ (-1 << (v1 - 1))) == -1;
  }

  if ((*(*this + 8 * ((v1 - 1) >> 6)) >> (v1 - 1)))
  {
    return 0;
  }

  return llvm::APInt::countTrailingOnesSlowCase(this) == v1 - 1;
}

uint64_t mlir::arith::MaxUIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    return v4 | 4;
  }

  LODWORD(v83) = 1;
  v82 = 0;
  v6 = *(*(a2 + 40) + 8);
  v75 = &v82;
  if (v6 && (v2 = a1, mlir::detail::constant_int_value_binder::match(&v75, v6)))
  {
    if (llvm::APInt::isAllOnes(&v82))
    {
      v7 = *(*(*v2 + 72) + 56);
    }

    else
    {
      v9 = v83;
      if (v83 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(&v82) != v9)
        {
          if (v82)
          {
            MEMORY[0x25F891010](v82, 0x1000C8000313F17);
          }

LABEL_18:
          v10 = *(a2 + 40);
          v11 = *v10;
          if (*v10 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            return v11 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v12 = v10[1];
          if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            goto LABEL_56;
          }

          if (v11 && (v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v10)) != 0)
          {
            v15 = (*v13)(v13, v14);
          }

          else
          {
            v15 = 0;
          }

          v16 = v10[1];
          if (!v16)
          {
            goto LABEL_81;
          }

          v18 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v16);
          if (!v18)
          {
            goto LABEL_81;
          }

          v19 = (*v17)(v17, v18);
          v11 = 0;
          if (!v15 || !v19 || v19 != v15)
          {
            return v11 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v81 = v15;
          v12 = *v10;
          if (*v10)
          {
            if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
LABEL_56:
              v11 = v12;
              return v11 & 0xFFFFFFFFFFFFFFFBLL;
            }
          }

          v20 = v10[1];
          if (!v20)
          {
            goto LABEL_81;
          }

          v21 = *(*v20 + 136);
          if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            v11 = v10[1];
          }

          else
          {
            v11 = 0;
          }

          if (!v12 || v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            return v11 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v22 = *v12;
          v23 = *(*v12 + 136);
          if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v68 = *v10;
            v65 = v20;
            if (v12[1] != *(v20 + 8))
            {
              goto LABEL_81;
            }

            mlir::IntegerAttr::getValue(&v75, &v68);
            mlir::IntegerAttr::getValue(&v71, &v65);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
            if (v72 >= 0x41 && v71)
            {
              MEMORY[0x25F891010](v71, 0x1000C8000313F17);
            }

            if (v76 >= 0x41 && v75)
            {
              MEMORY[0x25F891010](v75, 0x1000C8000313F17);
            }

            if (v84 != 1)
            {
              goto LABEL_81;
            }

            v24 = mlir::IntegerAttr::get(v81, &v82);
LABEL_52:
            v11 = v24;
            if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
            {
              MEMORY[0x25F891010](v82, 0x1000C8000313F17);
            }

            return v11 & 0xFFFFFFFFFFFFFFFBLL;
          }

          if ((v23 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v12 + 24) == 1 && (v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v20 + 24) == 1)
          {
            v68 = *v10;
            v65 = v20;
            if (v12[1] != *(v20 + 8))
            {
              goto LABEL_81;
            }

            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
            if (v72 >= 0x41 && v71)
            {
              MEMORY[0x25F891010](v71, 0x1000C8000313F17);
            }

            if (v76 >= 0x41 && v75)
            {
              MEMORY[0x25F891010](v75, 0x1000C8000313F17);
            }

            if (v84 != 1)
            {
              goto LABEL_81;
            }

            v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
            v24 = mlir::DenseElementsAttr::get(v25, v26, &v82, 1);
            goto LABEL_52;
          }

          v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v22 + 8, v27) || (v28 = *v10[1], v29 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v28 + 8, v29)) || (v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v10), v32 = v31, v80[0] = v30, v80[1] = v31, v33 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v10[1]), v35 = v34, v79[0] = v33, v79[1] = v34, v36 = (**(v32 + 24))(), v36 != (**(v35 + 24))()))
          {
LABEL_81:
            v11 = 0;
            return v11 & 0xFFFFFFFFFFFFFFFBLL;
          }

          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
          v37 = v78;
          if ((v78 & 1) == 0)
          {
            v11 = 0;
            if ((v74 & 1) == 0)
            {
              return v11 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_125;
          }

          if ((v74 & 1) == 0)
          {
            v11 = 0;
LABEL_129:
            if ((v75 & 1) == 0 && v76)
            {
              (*(*v76 + 8))(v76);
            }

            return v11 & 0xFFFFFFFFFFFFFFFBLL;
          }

          LOWORD(v68) = v75;
          if (v75 == 1)
          {
            v69 = v76;
          }

          else
          {
            (*(*v76 + 16))(&v69);
          }

          v70 = v77;
          LOWORD(v65) = v71;
          if (v71 == 1)
          {
            v66 = v72;
          }

          else
          {
            (*(*v72 + 16))(&v66);
          }

          v67 = v73;
          v82 = &v84;
          v83 = 0x400000000;
          v39 = (*(v32 + 16))(v32, v30);
          v41 = (*(v40 + 24))(v40, v39);
          if (v42)
          {
            v43 = 8 * v42;
            v44 = 1;
            do
            {
              v45 = *v41++;
              v44 *= v45;
              v43 -= 8;
            }

            while (v43);
          }

          else
          {
            v44 = 1;
          }

          if (v44 > HIDWORD(v83))
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v44);
          }

          v46 = (*(v32 + 16))(v32, v30);
          v48 = (*(v47 + 24))(v47, v46);
          if (v49)
          {
            v50 = 8 * v49;
            v51 = 1;
            do
            {
              v52 = *v48++;
              v51 *= v52;
              v50 -= 8;
            }

            while (v50);
            if (!v51)
            {
LABEL_117:
              v54 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
              v11 = mlir::DenseElementsAttr::get(v54, v55, v82, v83);
LABEL_119:
              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
              if ((v65 & 1) == 0)
              {
                v56 = v66;
                v66 = 0;
                if (v56)
                {
                  (*(*v56 + 8))(v56);
                }
              }

              if ((v68 & 1) == 0)
              {
                v57 = v69;
                v69 = 0;
                if (v57)
                {
                  (*(*v57 + 8))(v57);
                }
              }

LABEL_125:
              if ((v71 & 1) == 0 && v72)
              {
                (*(*v72 + 8))(v72);
              }

              if (!v37)
              {
                return v11 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_129;
            }
          }

          else
          {
            v51 = 1;
          }

          v53 = v70;
          while (1)
          {
            mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v53);
            mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v60, &v58);
            if (v59 >= 0x41 && v58)
            {
              MEMORY[0x25F891010](v58, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x25F891010](v60, 0x1000C8000313F17);
            }

            if (v64 != 1)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
            if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
            {
              MEMORY[0x25F891010](v62, 0x1000C8000313F17);
            }

            v53 = ++v70;
            ++v67;
            if (!--v51)
            {
              goto LABEL_117;
            }
          }

          v11 = 0;
          goto LABEL_119;
        }
      }

      else if (v82)
      {
        goto LABEL_18;
      }

      v7 = *(*(*v2 + 72) + 24);
    }

    v2 = v7 | 4;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x25F891010](v82, 0x1000C8000313F17);
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  return v2;
}

uint64_t mlir::arith::MinimumFOp::fold(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  v68 = mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v6)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v68, v6))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v5 = *(a2 + 48);
  }

  v9 = *v5;
  if (!*v5 || *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v10 = v5[1];
    if (!v10 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
      {
        v13 = (*v11)(v11, v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = v5[1];
      if (!v14)
      {
        goto LABEL_54;
      }

      v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      if (!v16)
      {
        goto LABEL_54;
      }

      v17 = (*v15)(v15, v16);
      v9 = 0;
      if (!v13 || !v17 || v17 != v13)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v63 = v13;
      v10 = *v5;
      if (!*v5 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v18 = v5[1];
        if (!v18)
        {
          goto LABEL_54;
        }

        v19 = *(*v18 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v9 = v5[1];
        }

        else
        {
          v9 = 0;
        }

        if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v20 = *v10;
        v21 = *(*v10 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          if (v10[1] == v18[1])
          {
            llvm::APFloat::Storage::Storage(&v76, (v10 + 2));
            llvm::APFloat::Storage::Storage(v72, (v18 + 2));
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
            llvm::APFloat::Storage::~Storage(v72);
            llvm::APFloat::Storage::~Storage(&v76);
            if (v71 == 1)
            {
              v22 = mlir::FloatAttr::get(v63, &v68);
              goto LABEL_35;
            }
          }

          goto LABEL_54;
        }

        if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
        {
          v66[0] = *v5;
          v58 = v18;
          if (v10[1] == v18[1])
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, v66);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v72, &v58);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
            llvm::APFloat::Storage::~Storage(v72);
            llvm::APFloat::Storage::~Storage(&v76);
            if (v71 == 1)
            {
              v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
              v22 = mlir::DenseElementsAttr::get(v23, v24, &v68, 1);
LABEL_35:
              v9 = v22;
              if (v71)
              {
                llvm::APFloat::Storage::~Storage(&v68);
              }

              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }
          }

LABEL_54:
          v9 = 0;
          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
        {
          goto LABEL_54;
        }

        v26 = *v5[1];
        v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
        {
          goto LABEL_54;
        }

        v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
        v30 = v29;
        v62[0] = v28;
        v62[1] = v29;
        v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
        v33 = v32;
        v61[0] = v31;
        v61[1] = v32;
        v34 = (**(v30 + 24))();
        if (v34 != (**(v33 + 24))())
        {
          goto LABEL_54;
        }

        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v76, v62);
        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v72, v61);
        v35 = v79;
        if ((v79 & 1) == 0)
        {
          v9 = 0;
          if ((v75 & 1) == 0)
          {
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_89;
        }

        if ((v75 & 1) == 0)
        {
          v9 = 0;
LABEL_93:
          if ((v76 & 1) == 0 && v77)
          {
            (*(*v77 + 8))(v77);
          }

          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        LOWORD(v58) = v76;
        if (v76 == 1)
        {
          v59 = v77;
        }

        else
        {
          (*(*v77 + 16))(&v59);
        }

        v60 = v78;
        v55[0] = v72[0];
        v55[1] = v72[1];
        if (v72[0] == 1)
        {
          v56 = v73;
        }

        else
        {
          (*(*v73 + 16))(&v56);
        }

        v57 = v74;
        v68 = &v70;
        v69 = 0x400000000;
        v36 = (*(v30 + 16))(v30, v28);
        v38 = (*(v37 + 24))(v37, v36);
        if (v39)
        {
          v40 = 8 * v39;
          v41 = 1;
          do
          {
            v42 = *v38++;
            v41 *= v42;
            v40 -= 8;
          }

          while (v40);
        }

        else
        {
          v41 = 1;
        }

        if (v41 > HIDWORD(v69))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v41);
        }

        v43 = (*(v30 + 16))(v30, v28);
        v45 = (*(v44 + 24))(v44, v43);
        if (v46)
        {
          v47 = 8 * v46;
          v48 = 1;
          do
          {
            v49 = *v45++;
            v48 *= v49;
            v47 -= 8;
          }

          while (v47);
          if (!v48)
          {
LABEL_81:
            v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
            v9 = mlir::DenseElementsAttr::get(v51, v52, v68, v69);
LABEL_83:
            llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v68);
            if ((v55[0] & 1) == 0)
            {
              v53 = v56;
              v56 = 0;
              if (v53)
              {
                (*(*v53 + 8))(v53);
              }
            }

            if ((v58 & 1) == 0)
            {
              v54 = v59;
              v59 = 0;
              if (v54)
              {
                (*(*v54 + 8))(v54);
              }
            }

LABEL_89:
            if ((v72[0] & 1) == 0 && v73)
            {
              (*(*v73 + 8))(v73);
            }

            if (!v35)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_93;
          }
        }

        else
        {
          v48 = 1;
        }

        v50 = v60;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v58, v50);
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, v55, v57);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
          llvm::APFloat::Storage::~Storage(v64);
          llvm::APFloat::Storage::~Storage(v65);
          if (v67 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v66);
          if (v67)
          {
            llvm::APFloat::Storage::~Storage(v66);
          }

          v50 = ++v60;
          ++v57;
          if (!--v48)
          {
            goto LABEL_81;
          }
        }

        v9 = 0;
        goto LABEL_83;
      }
    }

    v9 = v10;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinNumFOp::fold(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  v68 = mlir::m_NaNFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v6)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v68, v6))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v5 = *(a2 + 48);
  }

  v9 = *v5;
  if (!*v5 || *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v10 = v5[1];
    if (!v10 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
      {
        v13 = (*v11)(v11, v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = v5[1];
      if (!v14)
      {
        goto LABEL_54;
      }

      v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      if (!v16)
      {
        goto LABEL_54;
      }

      v17 = (*v15)(v15, v16);
      v9 = 0;
      if (!v13 || !v17 || v17 != v13)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v63 = v13;
      v10 = *v5;
      if (!*v5 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v18 = v5[1];
        if (!v18)
        {
          goto LABEL_54;
        }

        v19 = *(*v18 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v9 = v5[1];
        }

        else
        {
          v9 = 0;
        }

        if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v20 = *v10;
        v21 = *(*v10 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          if (v10[1] == v18[1])
          {
            llvm::APFloat::Storage::Storage(&v76, (v10 + 2));
            llvm::APFloat::Storage::Storage(&v72, (v18 + 2));
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, &v72);
            llvm::APFloat::Storage::~Storage(&v72);
            llvm::APFloat::Storage::~Storage(&v76);
            if (v71 == 1)
            {
              v22 = mlir::FloatAttr::get(v63, &v68);
              goto LABEL_35;
            }
          }

          goto LABEL_54;
        }

        if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
        {
          v66[0] = *v5;
          v58 = v18;
          if (v10[1] == v18[1])
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, v66);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v72, &v58);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, &v72);
            llvm::APFloat::Storage::~Storage(&v72);
            llvm::APFloat::Storage::~Storage(&v76);
            if (v71 == 1)
            {
              v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
              v22 = mlir::DenseElementsAttr::get(v23, v24, &v68, 1);
LABEL_35:
              v9 = v22;
              if (v71)
              {
                llvm::APFloat::Storage::~Storage(&v68);
              }

              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }
          }

LABEL_54:
          v9 = 0;
          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
        {
          goto LABEL_54;
        }

        v26 = *v5[1];
        v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
        {
          goto LABEL_54;
        }

        v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
        v30 = v29;
        v62[0] = v28;
        v62[1] = v29;
        v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
        v33 = v32;
        v61[0] = v31;
        v61[1] = v32;
        v34 = (**(v30 + 24))();
        if (v34 != (**(v33 + 24))())
        {
          goto LABEL_54;
        }

        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v76, v62);
        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v72, v61);
        v35 = v79;
        if ((v79 & 1) == 0)
        {
          v9 = 0;
          if ((v75 & 1) == 0)
          {
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_89;
        }

        if ((v75 & 1) == 0)
        {
          v9 = 0;
LABEL_93:
          if ((v76 & 1) == 0 && v77)
          {
            (*(*v77 + 8))(v77);
          }

          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        LOWORD(v58) = v76;
        if (v76 == 1)
        {
          v59 = v77;
        }

        else
        {
          (*(*v77 + 16))(&v59);
        }

        v60 = v78;
        v55 = v72;
        if (v72 == 1)
        {
          v56 = v73;
        }

        else
        {
          (*(*v73 + 16))(&v56);
        }

        v57 = v74;
        v68 = &v70;
        v69 = 0x400000000;
        v36 = (*(v30 + 16))(v30, v28);
        v38 = (*(v37 + 24))(v37, v36);
        if (v39)
        {
          v40 = 8 * v39;
          v41 = 1;
          do
          {
            v42 = *v38++;
            v41 *= v42;
            v40 -= 8;
          }

          while (v40);
        }

        else
        {
          v41 = 1;
        }

        if (v41 > HIDWORD(v69))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v41);
        }

        v43 = (*(v30 + 16))(v30, v28);
        v45 = (*(v44 + 24))(v44, v43);
        if (v46)
        {
          v47 = 8 * v46;
          v48 = 1;
          do
          {
            v49 = *v45++;
            v48 *= v49;
            v47 -= 8;
          }

          while (v47);
          if (!v48)
          {
LABEL_81:
            v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
            v9 = mlir::DenseElementsAttr::get(v51, v52, v68, v69);
LABEL_83:
            llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v68);
            if ((v55 & 1) == 0)
            {
              v53 = v56;
              v56 = 0;
              if (v53)
              {
                (*(*v53 + 8))(v53);
              }
            }

            if ((v58 & 1) == 0)
            {
              v54 = v59;
              v59 = 0;
              if (v54)
              {
                (*(*v54 + 8))(v54);
              }
            }

LABEL_89:
            if ((v72 & 1) == 0 && v73)
            {
              (*(*v73 + 8))(v73);
            }

            if (!v35)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_93;
          }
        }

        else
        {
          v48 = 1;
        }

        v50 = v60;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v58, v50);
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, &v55, v57);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
          llvm::APFloat::Storage::~Storage(v64);
          llvm::APFloat::Storage::~Storage(v65);
          if (v67 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v66);
          if (v67)
          {
            llvm::APFloat::Storage::~Storage(v66);
          }

          v50 = ++v60;
          ++v57;
          if (!--v48)
          {
            goto LABEL_81;
          }
        }

        v9 = 0;
        goto LABEL_83;
      }
    }

    v9 = v10;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinSIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    return v4 | 4;
  }

  LODWORD(v82) = 1;
  v81 = 0;
  v6 = *(*(a2 + 40) + 8);
  v74 = &v81;
  if (!v6)
  {
    goto LABEL_10;
  }

  v2 = a1;
  if (!mlir::detail::constant_int_value_binder::match(&v74, v6))
  {
    goto LABEL_10;
  }

  if (!llvm::APInt::isMinSignedValue(&v81))
  {
    if (llvm::APInt::isMaxSignedValue(&v81))
    {
      v7 = 0;
      v8 = *(*(*v2 + 72) + 24);
      goto LABEL_9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = *(*(*v2 + 72) + 56);
LABEL_9:
  v2 = v8 | 4;
LABEL_11:
  if (v82 >= 0x41 && v81)
  {
    MEMORY[0x25F891010](v81, 0x1000C8000313F17);
  }

  if (v7)
  {
    v9 = *(a2 + 40);
    v10 = *v9;
    if (*v9 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v11 = v9[1];
    if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_53;
    }

    if (v10 && (v13 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v9)) != 0)
    {
      v14 = (*v12)(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = v9[1];
    if (!v15)
    {
      goto LABEL_76;
    }

    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    if (!v17)
    {
      goto LABEL_76;
    }

    v18 = (*v16)(v16, v17);
    v10 = 0;
    if (!v14 || !v18 || v18 != v14)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v80 = v14;
    v11 = *v9;
    if (*v9)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_53:
        v10 = v11;
        return v10 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v19 = v9[1];
    if (!v19)
    {
      goto LABEL_76;
    }

    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = v9[1];
    }

    else
    {
      v10 = 0;
    }

    if (!v11 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *v11;
    v22 = *(*v11 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v67 = *v9;
      v64 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 != 1)
      {
        goto LABEL_76;
      }

      v23 = mlir::IntegerAttr::get(v80, &v81);
LABEL_49:
      v10 = v23;
      if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
      {
        MEMORY[0x25F891010](v81, 0x1000C8000313F17);
      }

      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if ((v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v11 + 24) == 1 && (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1)
    {
      v67 = *v9;
      v64 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 != 1)
      {
        goto LABEL_76;
      }

      v24 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
      v23 = mlir::DenseElementsAttr::get(v24, v25, &v81, 1);
      goto LABEL_49;
    }

    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v21 + 8, v26) || (v27 = *v9[1], v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v27 + 8, v28)) || (v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v9), v31 = v30, v79[0] = v29, v79[1] = v30, v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v9[1]), v34 = v33, v78[0] = v32, v78[1] = v33, v35 = (**(v31 + 24))(), v35 != (**(v34 + 24))()))
    {
LABEL_76:
      v10 = 0;
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
    v36 = v77;
    if ((v77 & 1) == 0)
    {
      v10 = 0;
      if ((v73 & 1) == 0)
      {
        return v10 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_120;
    }

    if ((v73 & 1) == 0)
    {
      v10 = 0;
LABEL_124:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v67) = v74;
    if (v74 == 1)
    {
      v68 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v68);
    }

    v69 = v76;
    LOWORD(v64) = v70;
    if (v70 == 1)
    {
      v65 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v65);
    }

    v66 = v72;
    v81 = &v83;
    v82 = 0x400000000;
    v38 = (*(v31 + 16))(v31, v29);
    v40 = (*(v39 + 24))(v39, v38);
    if (v41)
    {
      v42 = 8 * v41;
      v43 = 1;
      do
      {
        v44 = *v40++;
        v43 *= v44;
        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v43 = 1;
    }

    if (v43 > HIDWORD(v82))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v81, v43);
    }

    v45 = (*(v31 + 16))(v31, v29);
    v47 = (*(v46 + 24))(v46, v45);
    if (v48)
    {
      v49 = 8 * v48;
      v50 = 1;
      do
      {
        v51 = *v47++;
        v50 *= v51;
        v49 -= 8;
      }

      while (v49);
      if (!v50)
      {
LABEL_112:
        v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v10 = mlir::DenseElementsAttr::get(v53, v54, v81, v82);
LABEL_114:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v81);
        if ((v64 & 1) == 0)
        {
          v55 = v65;
          v65 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((v67 & 1) == 0)
        {
          v56 = v68;
          v68 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

LABEL_120:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v36)
        {
          return v10 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v50 = 1;
    }

    v52 = v69;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v67, v52);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v57, &v64, v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v59, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x25F891010](v57, 0x1000C8000313F17);
      }

      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v63 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v81, &v61);
      if ((v63 & 1) != 0 && v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v52 = ++v69;
      ++v66;
      if (!--v50)
      {
        goto LABEL_112;
      }
    }

    v10 = 0;
    goto LABEL_114;
  }

  return v2;
}

uint64_t mlir::arith::MinUIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    return v4 | 4;
  }

  LODWORD(v83) = 1;
  v82 = 0;
  v6 = *(*(a2 + 40) + 8);
  v75 = &v82;
  if (!v6)
  {
    goto LABEL_8;
  }

  v2 = a1;
  if (!mlir::detail::constant_int_value_binder::match(&v75, v6))
  {
    goto LABEL_8;
  }

  v7 = v83;
  if (v83 <= 0x40)
  {
    if (v82)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    v9 = *(*(*v2 + 72) + 56);
    goto LABEL_12;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(&v82) == v7)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (llvm::APInt::isAllOnes(&v82))
  {
    v8 = 0;
    v9 = *(*(*v2 + 72) + 24);
LABEL_12:
    v2 = v9 | 4;
    goto LABEL_13;
  }

LABEL_8:
  v8 = 1;
LABEL_13:
  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x25F891010](v82, 0x1000C8000313F17);
  }

  if (v8)
  {
    v10 = *(a2 + 40);
    v11 = *v10;
    if (*v10 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v11 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v12 = v10[1];
    if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    if (v11 && (v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v10)) != 0)
    {
      v15 = (*v13)(v13, v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = v10[1];
    if (!v16)
    {
      goto LABEL_78;
    }

    v18 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v16);
    if (!v18)
    {
      goto LABEL_78;
    }

    v19 = (*v17)(v17, v18);
    v11 = 0;
    if (!v15 || !v19 || v19 != v15)
    {
      return v11 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v81 = v15;
    v12 = *v10;
    if (*v10)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_55:
        v11 = v12;
        return v11 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v20 = v10[1];
    if (!v20)
    {
      goto LABEL_78;
    }

    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = v10[1];
    }

    else
    {
      v11 = 0;
    }

    if (!v12 || v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v11 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v22 = *v12;
    v23 = *(*v12 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v68 = *v10;
      v65 = v20;
      if (v12[1] != *(v20 + 8))
      {
        goto LABEL_78;
      }

      mlir::IntegerAttr::getValue(&v75, &v68);
      mlir::IntegerAttr::getValue(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 != 1)
      {
        goto LABEL_78;
      }

      v24 = mlir::IntegerAttr::get(v81, &v82);
LABEL_51:
      v11 = v24;
      if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
      {
        MEMORY[0x25F891010](v82, 0x1000C8000313F17);
      }

      return v11 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if ((v23 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v12 + 24) == 1 && (v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v20 + 24) == 1)
    {
      v68 = *v10;
      v65 = v20;
      if (v12[1] != *(v20 + 8))
      {
        goto LABEL_78;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 != 1)
      {
        goto LABEL_78;
      }

      v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
      v24 = mlir::DenseElementsAttr::get(v25, v26, &v82, 1);
      goto LABEL_51;
    }

    v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v22 + 8, v27) || (v28 = *v10[1], v29 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v28 + 8, v29)) || (v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v10), v32 = v31, v80[0] = v30, v80[1] = v31, v33 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v10[1]), v35 = v34, v79[0] = v33, v79[1] = v34, v36 = (**(v32 + 24))(), v36 != (**(v35 + 24))()))
    {
LABEL_78:
      v11 = 0;
      return v11 & 0xFFFFFFFFFFFFFFFBLL;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
    v37 = v78;
    if ((v78 & 1) == 0)
    {
      v11 = 0;
      if ((v74 & 1) == 0)
      {
        return v11 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_122;
    }

    if ((v74 & 1) == 0)
    {
      v11 = 0;
LABEL_126:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      return v11 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v39 = (*(v32 + 16))(v32, v30);
    v41 = (*(v40 + 24))(v40, v39);
    if (v42)
    {
      v43 = 8 * v42;
      v44 = 1;
      do
      {
        v45 = *v41++;
        v44 *= v45;
        v43 -= 8;
      }

      while (v43);
    }

    else
    {
      v44 = 1;
    }

    if (v44 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v44);
    }

    v46 = (*(v32 + 16))(v32, v30);
    v48 = (*(v47 + 24))(v47, v46);
    if (v49)
    {
      v50 = 8 * v49;
      v51 = 1;
      do
      {
        v52 = *v48++;
        v51 *= v52;
        v50 -= 8;
      }

      while (v50);
      if (!v51)
      {
LABEL_114:
        v54 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v11 = mlir::DenseElementsAttr::get(v54, v55, v82, v83);
LABEL_116:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v56 = v66;
          v66 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        if ((v68 & 1) == 0)
        {
          v57 = v69;
          v69 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

LABEL_122:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v37)
        {
          return v11 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_126;
      }
    }

    else
    {
      v51 = 1;
    }

    v53 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v53);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v53 = ++v70;
      ++v67;
      if (!--v51)
      {
        goto LABEL_114;
      }
    }

    v11 = 0;
    goto LABEL_116;
  }

  return v2;
}

uint64_t mlir::arith::MulFOp::fold(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v67 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v67, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (!*v3 || *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
    if (!v8 || *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
      {
        v11 = (*v9)(v9, v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = v3[1];
      if (!v12)
      {
        goto LABEL_54;
      }

      v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
      if (!v14)
      {
        goto LABEL_54;
      }

      v15 = (*v13)(v13, v14);
      v7 = 0;
      if (!v11 || !v15 || v15 != v11)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v62 = v11;
      v8 = *v3;
      if (!*v3 || *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v16 = v3[1];
        if (!v16)
        {
          goto LABEL_54;
        }

        v17 = *(*v16 + 136);
        if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v7 = v3[1];
        }

        else
        {
          v7 = 0;
        }

        if (!v8 || v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v18 = *v8;
        v19 = *(*v8 + 136);
        if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          if (v8[1] == v16[1])
          {
            llvm::APFloat::Storage::Storage(&v75, (v8 + 2));
            llvm::APFloat::Storage::Storage(v71, (v16 + 2));
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
            llvm::APFloat::Storage::~Storage(v71);
            llvm::APFloat::Storage::~Storage(&v75);
            if (v70 == 1)
            {
              v23 = mlir::FloatAttr::get(v62, &v67);
LABEL_45:
              v7 = v23;
              if (v70)
              {
                llvm::APFloat::Storage::~Storage(&v67);
              }

              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }
          }

LABEL_54:
          v7 = 0;
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if ((v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v8 + 24) == 1 && (v17 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1)
        {
          v65[0] = *v3;
          v57 = v16;
          if (v8[1] == v16[1])
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v75, v65);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v71, &v57);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
            llvm::APFloat::Storage::~Storage(v71);
            llvm::APFloat::Storage::~Storage(&v75);
            if (v70 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v62);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v67, 1);
              goto LABEL_45;
            }
          }

          goto LABEL_54;
        }

        v24 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v24))
        {
          goto LABEL_54;
        }

        v25 = *v3[1];
        v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26))
        {
          goto LABEL_54;
        }

        v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
        v29 = v28;
        v61[0] = v27;
        v61[1] = v28;
        v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
        v32 = v31;
        v60[0] = v30;
        v60[1] = v31;
        v33 = (**(v29 + 24))();
        if (v33 != (**(v32 + 24))())
        {
          goto LABEL_54;
        }

        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v75, v61);
        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v71, v60);
        v34 = v78;
        if ((v78 & 1) == 0)
        {
          v7 = 0;
          if ((v74 & 1) == 0)
          {
            return v7 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_89;
        }

        if ((v74 & 1) == 0)
        {
          v7 = 0;
LABEL_93:
          if ((v75 & 1) == 0 && v76)
          {
            (*(*v76 + 8))(v76);
          }

          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        LOWORD(v57) = v75;
        if (v75 == 1)
        {
          v58 = v76;
        }

        else
        {
          (*(*v76 + 16))(&v58);
        }

        v59 = v77;
        v54[0] = v71[0];
        v54[1] = v71[1];
        if (v71[0] == 1)
        {
          v55 = v72;
        }

        else
        {
          (*(*v72 + 16))(&v55);
        }

        v56 = v73;
        v67 = &v69;
        v68 = 0x400000000;
        v35 = (*(v29 + 16))(v29, v27);
        v37 = (*(v36 + 24))(v36, v35);
        if (v38)
        {
          v39 = 8 * v38;
          v40 = 1;
          do
          {
            v41 = *v37++;
            v40 *= v41;
            v39 -= 8;
          }

          while (v39);
        }

        else
        {
          v40 = 1;
        }

        if (v40 > HIDWORD(v68))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v67, v40);
        }

        v42 = (*(v29 + 16))(v29, v27);
        v44 = (*(v43 + 24))(v43, v42);
        if (v45)
        {
          v46 = 8 * v45;
          v47 = 1;
          do
          {
            v48 = *v44++;
            v47 *= v48;
            v46 -= 8;
          }

          while (v46);
          if (!v47)
          {
LABEL_81:
            v50 = llvm::cast<mlir::ShapedType,mlir::Type>(&v62);
            v7 = mlir::DenseElementsAttr::get(v50, v51, v67, v68);
LABEL_83:
            llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v67);
            if ((v54[0] & 1) == 0)
            {
              v52 = v55;
              v55 = 0;
              if (v52)
              {
                (*(*v52 + 8))(v52);
              }
            }

            if ((v57 & 1) == 0)
            {
              v53 = v58;
              v58 = 0;
              if (v53)
              {
                (*(*v53 + 8))(v53);
              }
            }

LABEL_89:
            if ((v71[0] & 1) == 0 && v72)
            {
              (*(*v72 + 8))(v72);
            }

            if (!v34)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_93;
          }
        }

        else
        {
          v47 = 1;
        }

        v49 = v59;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, &v57, v49);
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v63, v54, v56);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v65, v64, v63);
          llvm::APFloat::Storage::~Storage(v63);
          llvm::APFloat::Storage::~Storage(v64);
          if (v66 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v67, v65);
          if (v66)
          {
            llvm::APFloat::Storage::~Storage(v65);
          }

          v49 = ++v59;
          ++v56;
          if (!--v47)
          {
            goto LABEL_81;
          }
        }

        v7 = 0;
        goto LABEL_83;
      }
    }

    v7 = v8;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::DivFOp::fold(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v67 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v67, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (!*v3 || *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
    if (!v8 || *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
      {
        v11 = (*v9)(v9, v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = v3[1];
      if (!v12)
      {
        goto LABEL_54;
      }

      v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
      if (!v14)
      {
        goto LABEL_54;
      }

      v15 = (*v13)(v13, v14);
      v7 = 0;
      if (!v11 || !v15 || v15 != v11)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v62 = v11;
      v8 = *v3;
      if (!*v3 || *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v16 = v3[1];
        if (!v16)
        {
          goto LABEL_54;
        }

        v17 = *(*v16 + 136);
        if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v7 = v3[1];
        }

        else
        {
          v7 = 0;
        }

        if (!v8 || v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v18 = *v8;
        v19 = *(*v8 + 136);
        if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          if (v8[1] == v16[1])
          {
            llvm::APFloat::Storage::Storage(&v75, (v8 + 2));
            llvm::APFloat::Storage::Storage(v71, (v16 + 2));
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
            llvm::APFloat::Storage::~Storage(v71);
            llvm::APFloat::Storage::~Storage(&v75);
            if (v70 == 1)
            {
              v23 = mlir::FloatAttr::get(v62, &v67);
LABEL_45:
              v7 = v23;
              if (v70)
              {
                llvm::APFloat::Storage::~Storage(&v67);
              }

              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }
          }

LABEL_54:
          v7 = 0;
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if ((v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v8 + 24) == 1 && (v17 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1)
        {
          v65[0] = *v3;
          v57 = v16;
          if (v8[1] == v16[1])
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v75, v65);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v71, &v57);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
            llvm::APFloat::Storage::~Storage(v71);
            llvm::APFloat::Storage::~Storage(&v75);
            if (v70 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v62);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v67, 1);
              goto LABEL_45;
            }
          }

          goto LABEL_54;
        }

        v24 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v24))
        {
          goto LABEL_54;
        }

        v25 = *v3[1];
        v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26))
        {
          goto LABEL_54;
        }

        v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
        v29 = v28;
        v61[0] = v27;
        v61[1] = v28;
        v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
        v32 = v31;
        v60[0] = v30;
        v60[1] = v31;
        v33 = (**(v29 + 24))();
        if (v33 != (**(v32 + 24))())
        {
          goto LABEL_54;
        }

        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v75, v61);
        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v71, v60);
        v34 = v78;
        if ((v78 & 1) == 0)
        {
          v7 = 0;
          if ((v74 & 1) == 0)
          {
            return v7 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_89;
        }

        if ((v74 & 1) == 0)
        {
          v7 = 0;
LABEL_93:
          if ((v75 & 1) == 0 && v76)
          {
            (*(*v76 + 8))(v76);
          }

          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        LOWORD(v57) = v75;
        if (v75 == 1)
        {
          v58 = v76;
        }

        else
        {
          (*(*v76 + 16))(&v58);
        }

        v59 = v77;
        v54[0] = v71[0];
        v54[1] = v71[1];
        if (v71[0] == 1)
        {
          v55 = v72;
        }

        else
        {
          (*(*v72 + 16))(&v55);
        }

        v56 = v73;
        v67 = &v69;
        v68 = 0x400000000;
        v35 = (*(v29 + 16))(v29, v27);
        v37 = (*(v36 + 24))(v36, v35);
        if (v38)
        {
          v39 = 8 * v38;
          v40 = 1;
          do
          {
            v41 = *v37++;
            v40 *= v41;
            v39 -= 8;
          }

          while (v39);
        }

        else
        {
          v40 = 1;
        }

        if (v40 > HIDWORD(v68))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v67, v40);
        }

        v42 = (*(v29 + 16))(v29, v27);
        v44 = (*(v43 + 24))(v43, v42);
        if (v45)
        {
          v46 = 8 * v45;
          v47 = 1;
          do
          {
            v48 = *v44++;
            v47 *= v48;
            v46 -= 8;
          }

          while (v46);
          if (!v47)
          {
LABEL_81:
            v50 = llvm::cast<mlir::ShapedType,mlir::Type>(&v62);
            v7 = mlir::DenseElementsAttr::get(v50, v51, v67, v68);
LABEL_83:
            llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v67);
            if ((v54[0] & 1) == 0)
            {
              v52 = v55;
              v55 = 0;
              if (v52)
              {
                (*(*v52 + 8))(v52);
              }
            }

            if ((v57 & 1) == 0)
            {
              v53 = v58;
              v58 = 0;
              if (v53)
              {
                (*(*v53 + 8))(v53);
              }
            }

LABEL_89:
            if ((v71[0] & 1) == 0 && v72)
            {
              (*(*v72 + 8))(v72);
            }

            if (!v34)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_93;
          }
        }

        else
        {
          v47 = 1;
        }

        v49 = v59;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, &v57, v49);
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v63, v54, v56);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v65, v64, v63);
          llvm::APFloat::Storage::~Storage(v63);
          llvm::APFloat::Storage::~Storage(v64);
          if (v66 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v67, v65);
          if (v66)
          {
            llvm::APFloat::Storage::~Storage(v65);
          }

          v49 = ++v59;
          ++v56;
          if (!--v47)
          {
            goto LABEL_81;
          }
        }

        v7 = 0;
        goto LABEL_83;
      }
    }

    v7 = v8;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::RemFOp::fold(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  v3 = *v2;
  if (*v2 && *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v4 = v2[1];
  if (v4 && *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_40;
  }

  if (v3 && (v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v2)) != 0)
  {
    v7 = (*v5)(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[1];
  if (!v8)
  {
    goto LABEL_53;
  }

  v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (!v10)
  {
    goto LABEL_53;
  }

  v11 = (*v9)(v9, v10);
  v3 = 0;
  if (!v7 || !v11 || v11 != v7)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v60 = v7;
  v4 = *v2;
  if (*v2)
  {
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
LABEL_40:
      v3 = v4;
      return v3 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v12 = v2[1];
  if (!v12)
  {
    goto LABEL_53;
  }

  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  if (v4 && v13 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v14 = *v4;
    v15 = *(*v4 + 136);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v15 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v4[1] == v12[1])
      {
        llvm::APFloat::Storage::Storage(&v73, (v4 + 2));
        llvm::APFloat::Storage::Storage(&v69, (v12 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v65, &v73, &v69);
        llvm::APFloat::Storage::~Storage(&v69);
        llvm::APFloat::Storage::~Storage(&v73);
        if (v68 == 1)
        {
          v20 = mlir::FloatAttr::get(v60, &v65);
LABEL_44:
          v3 = v20;
          if (v68)
          {
            llvm::APFloat::Storage::~Storage(&v65);
          }

          return v3 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

LABEL_53:
      v3 = 0;
      return v3 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v17 = v15 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v17 && *(v4 + 24) == 1 && (v13 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v12 + 24) == 1)
    {
      v63[0] = *v2;
      v55 = v12;
      if (v4[1] == v12[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v73, v63);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v69, &v55);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v65, &v73, &v69);
        llvm::APFloat::Storage::~Storage(&v69);
        llvm::APFloat::Storage::~Storage(&v73);
        if (v68 == 1)
        {
          v18 = llvm::cast<mlir::ShapedType,mlir::Type>(&v60);
          v20 = mlir::DenseElementsAttr::get(v18, v19, &v65, 1);
          goto LABEL_44;
        }
      }

      goto LABEL_53;
    }

    v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v14 + 8, v21))
    {
      goto LABEL_53;
    }

    v22 = *v2[1];
    v23 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v22 + 8, v23))
    {
      goto LABEL_53;
    }

    v24 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v2);
    v26 = v25;
    v59[0] = v24;
    v59[1] = v25;
    v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v2[1]);
    v29 = v28;
    v58[0] = v27;
    v58[1] = v28;
    v30 = (**(v26 + 24))();
    if (v30 != (**(v29 + 24))())
    {
      goto LABEL_53;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v73, v59);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v69, v58);
    v31 = v76;
    if ((v76 & 1) == 0)
    {
      v3 = 0;
      if ((v72 & 1) == 0)
      {
        return v3 & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_88:
      if ((v69 & 1) == 0 && v70)
      {
        (*(*v70 + 8))(v70);
      }

      if (v31)
      {
        goto LABEL_92;
      }

      return v3 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if ((v72 & 1) == 0)
    {
      v3 = 0;
LABEL_92:
      if ((v73 & 1) == 0 && v74)
      {
        (*(*v74 + 8))(v74);
      }

      return v3 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v55) = v73;
    if (v73 == 1)
    {
      v56 = v74;
    }

    else
    {
      (*(*v74 + 16))(&v56);
    }

    v57 = v75;
    v52 = v69;
    if (v69 == 1)
    {
      v53 = v70;
    }

    else
    {
      (*(*v70 + 16))(&v53);
    }

    v54 = v71;
    v65 = &v67;
    v66 = 0x400000000;
    v33 = (*(v26 + 16))(v26, v24);
    v35 = (*(v34 + 24))(v34, v33);
    if (v36)
    {
      v37 = 8 * v36;
      v38 = 1;
      do
      {
        v39 = *v35++;
        v38 *= v39;
        v37 -= 8;
      }

      while (v37);
    }

    else
    {
      v38 = 1;
    }

    if (v38 > HIDWORD(v66))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v65, v38);
    }

    v40 = (*(v26 + 16))(v26, v24);
    v42 = (*(v41 + 24))(v41, v40);
    if (v43)
    {
      v44 = 8 * v43;
      v45 = 1;
      do
      {
        v46 = *v42++;
        v45 *= v46;
        v44 -= 8;
      }

      while (v44);
      if (!v45)
      {
LABEL_80:
        v48 = llvm::cast<mlir::ShapedType,mlir::Type>(&v60);
        v3 = mlir::DenseElementsAttr::get(v48, v49, v65, v66);
LABEL_82:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v65);
        if ((v52 & 1) == 0)
        {
          v50 = v53;
          v53 = 0;
          if (v50)
          {
            (*(*v50 + 8))(v50);
          }
        }

        if ((v55 & 1) == 0)
        {
          v51 = v56;
          v56 = 0;
          if (v51)
          {
            (*(*v51 + 8))(v51);
          }
        }

        goto LABEL_88;
      }
    }

    else
    {
      v45 = 1;
    }

    v47 = v57;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v62, &v55, v47);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v61, &v52, v54);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v63, v62, v61);
      llvm::APFloat::Storage::~Storage(v61);
      llvm::APFloat::Storage::~Storage(v62);
      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v65, v63);
      if (v64)
      {
        llvm::APFloat::Storage::~Storage(v63);
      }

      v47 = ++v57;
      ++v54;
      if (!--v45)
      {
        goto LABEL_80;
      }
    }

    v3 = 0;
    goto LABEL_82;
  }

  return v3 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::ExtUIOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 72);
  v5 = v4[3];
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_9:
    v8 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
    v11 = v9;
    if (v9)
    {
      v9 = (*(v10 + 8))(v10, v9);
    }

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    v13 = **(a2 + 40);
    if (!v13)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v14 = *(*v13 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = *(v12 + 2);
    v16 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      LODWORD(v61) = *(v13 + 24);
      if (v61 > 0x40)
      {
        operator new[]();
      }

      v60 = *(v13 + 16);
      llvm::APInt::zext(&v63, &v60, v15 & 0x3FFFFFFF);
      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      v13 = mlir::IntegerAttr::get(v16, &v63);
      if (v64 < 0x41 || !v63)
      {
        return v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_63:
      MEMORY[0x25F891010]();
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v17 = v14 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v17 && *(v13 + 24) == 1)
    {
      v56 = **(a2 + 40);
      mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v56, &v63);
      v62 = v65;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v63, &v60);
      llvm::APInt::zext(&v63, &v60, v15 & 0x3FFFFFFF);
      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v16)
      {
        v18 = *v16;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
      }

      else
      {
        v20 = 0;
      }

      if ((*(v20 + 16))(v20, v16))
      {
        v37 = (*(v20 + 24))(v20, v16);
        if (!v38)
        {
LABEL_59:
          v13 = mlir::DenseElementsAttr::get(v16, v20, &v63, 1);
LABEL_61:
          if (v64 < 0x41 || !v63)
          {
            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_63;
        }

        v39 = 8 * v38;
        while (*v37 != 0x8000000000000000)
        {
          ++v37;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_59;
          }
        }
      }

      v13 = 0;
      goto LABEL_61;
    }

    v13 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v13);
    v59[0] = v13;
    v59[1] = v26;
    if (v13)
    {
      v27 = v26;
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v60, v59);
      if (BYTE8(v62) == 1)
      {
        v28 = v60;
        LOWORD(v56) = v60;
        v29 = v61;
        if (v60 == 1)
        {
          v57 = v61;
        }

        else
        {
          (*(*v61 + 16))(&v57, v61);
        }

        v58 = v62;
        v63 = &v65;
        v64 = 0x300000000;
        v30 = (*(v27 + 16))(v27, v13);
        v32 = (*(v31 + 24))(v31, v30);
        if (v33)
        {
          v34 = 8 * v33;
          v35 = 1;
          do
          {
            v36 = *v32++;
            v35 *= v36;
            v34 -= 8;
          }

          while (v34);
        }

        else
        {
          v35 = 1;
        }

        if (v35 > HIDWORD(v64))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v63, v35);
        }

        v40 = (*(v27 + 16))(v27, v13);
        v42 = (*(v41 + 24))(v41, v40);
        if (v43)
        {
          v44 = 8 * v43;
          v45 = 1;
          do
          {
            v46 = *v42++;
            v45 *= v46;
            v44 -= 8;
          }

          while (v44);
          if (!v45)
          {
LABEL_81:
            if (v16)
            {
              v48 = *v16;
              v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v50 = mlir::detail::InterfaceMap::lookup(v48 + 8, v49);
            }

            else
            {
              v50 = 0;
            }

            v13 = mlir::DenseElementsAttr::get(v16, v50, v63, v64);
            llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
            if ((v56 & 1) == 0)
            {
              v51 = v57;
              v57 = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }
            }

            if ((v28 & 1) == 0)
            {
              if (v29)
              {
                (*(*v29 + 8))(v29);
              }
            }

            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v45 = 1;
        }

        v47 = v58;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v52, &v56, v47);
          llvm::APInt::zext(&v54, &v52, v15 & 0x3FFFFFFF);
          if (v53 >= 0x41 && v52)
          {
            MEMORY[0x25F891010](v52, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v63, &v54);
          if (v55 >= 0x41 && v54)
          {
            MEMORY[0x25F891010](v54, 0x1000C8000313F17);
          }

          v47 = ++v58;
          --v45;
        }

        while (v45);
        goto LABEL_81;
      }

      v13 = 0;
    }

    return v13 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    goto LABEL_9;
  }

  v21 = *(*(v7 + 72) + 24);
  v22 = v4[1];
  if (v22)
  {
    v23 = *v4;
    *v22 = *v4;
    if (v23)
    {
      *(v23 + 8) = v4[1];
    }
  }

  v4[3] = v21;
  v4[1] = v21;
  v24 = *v21;
  *v4 = *v21;
  if (v24)
  {
    *(v24 + 8) = v4;
  }

  *v21 = v4;
  return (*a1 - 16) | 4;
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

uint64_t mlir::arith::ExtUIOp::verify(void ****this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*(v9 + 8))(v9, v8);
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if ((v6[1] & 0x3FFFFFFFu) < (v11[1] & 0x3FFFFFFFu))
  {
    return 1;
  }

  v20 = "result type ";
  v21 = 259;
  mlir::Operation::emitError(&v24, v1, &v20);
  if (v24)
  {
    v22 = 4;
    v23 = v11;
    v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
    v14 = v26 + 24 * v27;
    v15 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v15;
    ++v27;
    if (v24)
    {
      mlir::Diagnostic::operator<<<34ul>(&v25, " must be wider than operand type ");
      if (v24)
      {
        v22 = 4;
        v23 = v6;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
        v17 = v26 + 24 * v27;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v27;
      }
    }
  }

  v12 = (v28 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  return v12;
}

uint64_t mlir::arith::ExtSIOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 72);
  v5 = v4[3];
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_9:
    v8 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
    v11 = v9;
    if (v9)
    {
      v9 = (*(v10 + 8))(v10, v9);
    }

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    v13 = **(a2 + 40);
    if (!v13)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v14 = *(*v13 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = *(v12 + 2);
    v16 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      LODWORD(v61) = *(v13 + 24);
      if (v61 > 0x40)
      {
        operator new[]();
      }

      v60 = *(v13 + 16);
      llvm::APInt::sext(&v60, v15 & 0x3FFFFFFF, &v63);
      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      v13 = mlir::IntegerAttr::get(v16, &v63);
      if (v64 < 0x41 || !v63)
      {
        return v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_63:
      MEMORY[0x25F891010]();
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v17 = v14 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v17 && *(v13 + 24) == 1)
    {
      v56 = **(a2 + 40);
      mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v56, &v63);
      v62 = v65;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v63, &v60);
      llvm::APInt::sext(&v60, v15 & 0x3FFFFFFF, &v63);
      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v16)
      {
        v18 = *v16;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
      }

      else
      {
        v20 = 0;
      }

      if ((*(v20 + 16))(v20, v16))
      {
        v37 = (*(v20 + 24))(v20, v16);
        if (!v38)
        {
LABEL_59:
          v13 = mlir::DenseElementsAttr::get(v16, v20, &v63, 1);
LABEL_61:
          if (v64 < 0x41 || !v63)
          {
            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_63;
        }

        v39 = 8 * v38;
        while (*v37 != 0x8000000000000000)
        {
          ++v37;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_59;
          }
        }
      }

      v13 = 0;
      goto LABEL_61;
    }

    v13 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v13);
    v59[0] = v13;
    v59[1] = v26;
    if (v13)
    {
      v27 = v26;
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v60, v59);
      if (BYTE8(v62) == 1)
      {
        v28 = v60;
        LOWORD(v56) = v60;
        v29 = v61;
        if (v60 == 1)
        {
          v57 = v61;
        }

        else
        {
          (*(*v61 + 16))(&v57, v61);
        }

        v58 = v62;
        v63 = &v65;
        v64 = 0x300000000;
        v30 = (*(v27 + 16))(v27, v13);
        v32 = (*(v31 + 24))(v31, v30);
        if (v33)
        {
          v34 = 8 * v33;
          v35 = 1;
          do
          {
            v36 = *v32++;
            v35 *= v36;
            v34 -= 8;
          }

          while (v34);
        }

        else
        {
          v35 = 1;
        }

        if (v35 > HIDWORD(v64))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v63, v35);
        }

        v40 = (*(v27 + 16))(v27, v13);
        v42 = (*(v41 + 24))(v41, v40);
        if (v43)
        {
          v44 = 8 * v43;
          v45 = 1;
          do
          {
            v46 = *v42++;
            v45 *= v46;
            v44 -= 8;
          }

          while (v44);
          if (!v45)
          {
LABEL_81:
            if (v16)
            {
              v48 = *v16;
              v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v50 = mlir::detail::InterfaceMap::lookup(v48 + 8, v49);
            }

            else
            {
              v50 = 0;
            }

            v13 = mlir::DenseElementsAttr::get(v16, v50, v63, v64);
            llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
            if ((v56 & 1) == 0)
            {
              v51 = v57;
              v57 = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }
            }

            if ((v28 & 1) == 0)
            {
              if (v29)
              {
                (*(*v29 + 8))(v29);
              }
            }

            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v45 = 1;
        }

        v47 = v58;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v52, &v56, v47);
          llvm::APInt::sext(&v52, v15 & 0x3FFFFFFF, &v54);
          if (v53 >= 0x41 && v52)
          {
            MEMORY[0x25F891010](v52, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v63, &v54);
          if (v55 >= 0x41 && v54)
          {
            MEMORY[0x25F891010](v54, 0x1000C8000313F17);
          }

          v47 = ++v58;
          --v45;
        }

        while (v45);
        goto LABEL_81;
      }

      v13 = 0;
    }

    return v13 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    goto LABEL_9;
  }

  v21 = *(*(v7 + 72) + 24);
  v22 = v4[1];
  if (v22)
  {
    v23 = *v4;
    *v22 = *v4;
    if (v23)
    {
      *(v23 + 8) = v4[1];
    }
  }

  v4[3] = v21;
  v4[1] = v21;
  v24 = *v21;
  *v4 = *v21;
  if (v24)
  {
    *(v24 + 8) = v4;
  }

  *v21 = v4;
  return (*a1 - 16) | 4;
}

uint64_t mlir::arith::ExtSIOp::verify(void ****this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*(v9 + 8))(v9, v8);
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if ((v6[1] & 0x3FFFFFFFu) < (v11[1] & 0x3FFFFFFFu))
  {
    return 1;
  }

  v20 = "result type ";
  v21 = 259;
  mlir::Operation::emitError(&v24, v1, &v20);
  if (v24)
  {
    v22 = 4;
    v23 = v11;
    v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
    v14 = v26 + 24 * v27;
    v15 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v15;
    ++v27;
    if (v24)
    {
      mlir::Diagnostic::operator<<<34ul>(&v25, " must be wider than operand type ");
      if (v24)
      {
        v22 = 4;
        v23 = v6;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
        v17 = v26 + 24 * v27;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v27;
      }
    }
  }

  v12 = (v28 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  return v12;
}

uint64_t mlir::arith::ExtFOp::fold(uint64_t *a1, uint64_t a2)
{
  v79[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*(*a1 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16);
      v8 = v7 + 120;
      if (v7 == -120)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = v5 + 16 * v6 + 16;
    }

    if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id)
    {
      v9 = *(*(v8 + 72) + 24);
      if ((*(v4 - 8) ^ *(v9 + 8)) <= 7)
      {
        v10 = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
        v11 = !v10 || (*(v10 + 8) & 0x20) == 0;
        v12 = *(v4 + 16 * ((*(v4 + 44) >> 23) & 1) + 64);
        if (v12)
        {
          if ((*(v12 + 8) & 0x20) == 0)
          {
            v11 = 1;
          }

          if (!v11)
          {
            return v9 | 4;
          }
        }
      }
    }
  }

LABEL_17:
  v13 = (*(v4 - 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v13);
  v16 = v14;
  if (v14)
  {
    v14 = (*(v15 + 8))(v15, v14);
  }

  if (v16)
  {
    v13 = v14;
  }

  v17 = *v13;
  v18 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
  v20 = (*v19)(v19, v13);
  v21 = **(a2 + 48);
  if (!v21)
  {
    return v21 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v22 = *(*v21 + 136);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v21 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v23 = v20;
  v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(v79, (v21 + 16));
    llvm::APFloat::Storage::Storage(&v73, v79);
    convertFloatValue(&v77, &v73, v23, 1u);
    llvm::APFloat::Storage::~Storage(&v73);
    v35 = BYTE8(v78[0]);
    if (BYTE8(v78[0]))
    {
      v36 = &v77;
    }

    else
    {
      v36 = v79;
    }

    llvm::APFloat::Storage::Storage(&v69, v36);
    if (BYTE8(v78[0]) == 1)
    {
      llvm::APFloat::Storage::~Storage(&v77);
    }

    llvm::APFloat::Storage::~Storage(v79);
    if (v35)
    {
      v37 = mlir::FloatAttr::get(v24, &v69);
      goto LABEL_49;
    }

LABEL_92:
    v21 = 0;
    goto LABEL_93;
  }

  v25 = v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v25 && *(v21 + 24) == 1)
  {
    v63 = **(a2 + 48);
    mlir::DenseElementsAttr::tryGetFloatValues(&v77, &v63);
    v74 = v78[0];
    v75 = v78[1];
    v73 = v77;
    v76 = v78[2];
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v77, v79);
    llvm::APFloat::Storage::Storage(&v73, v79);
    convertFloatValue(&v77, &v73, v23, 1u);
    llvm::APFloat::Storage::~Storage(&v73);
    v26 = BYTE8(v78[0]);
    if (BYTE8(v78[0]))
    {
      v27 = &v77;
    }

    else
    {
      v27 = v79;
    }

    llvm::APFloat::Storage::Storage(&v69, v27);
    if (BYTE8(v78[0]) == 1)
    {
      llvm::APFloat::Storage::~Storage(&v77);
    }

    llvm::APFloat::Storage::~Storage(v79);
    if (v26)
    {
      if (v24)
      {
        v28 = *v24;
        v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v30 = mlir::detail::InterfaceMap::lookup(v28 + 8, v29);
      }

      else
      {
        v30 = 0;
      }

      if ((*(v30 + 16))(v30, v24))
      {
        v60 = (*(v30 + 24))(v30, v24);
        if (v61)
        {
          v62 = 8 * v61;
          while (*v60 != 0x8000000000000000)
          {
            ++v60;
            v62 -= 8;
            if (!v62)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_92;
        }

LABEL_91:
        v37 = mlir::DenseElementsAttr::get(v24, v30, &v69, 1);
LABEL_49:
        v21 = v37;
LABEL_93:
        llvm::APFloat::Storage::~Storage(&v69);
        return v21 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    goto LABEL_92;
  }

  v21 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v21);
  v66[0] = v21;
  v66[1] = v31;
  if (v21)
  {
    v32 = v31;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v69, v66);
    if (v72 == 1)
    {
      v33 = v69;
      LOWORD(v63) = v69;
      v34 = v70;
      if (v69 == 1)
      {
        v64 = v70;
      }

      else
      {
        (*(*v70 + 16))(&v64, v70);
      }

      v65 = v71;
      *&v77 = v78;
      *(&v77 + 1) = 0x200000000;
      v39 = (*(v32 + 16))(v32, v21);
      v41 = (*(v40 + 24))(v40, v39);
      if (v42)
      {
        v43 = 8 * v42;
        v44 = 1;
        do
        {
          v45 = *v41++;
          v44 *= v45;
          v43 -= 8;
        }

        while (v43);
      }

      else
      {
        v44 = 1;
      }

      if (v44 > HIDWORD(v77))
      {
        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v77, v44);
      }

      v46 = (*(v32 + 16))(v32, v21);
      v48 = (*(v47 + 24))(v47, v46);
      if (v49)
      {
        v50 = 8 * v49;
        v51 = 1;
        do
        {
          v52 = *v48++;
          v51 *= v52;
          v50 -= 8;
        }

        while (v50);
        if (!v51)
        {
LABEL_74:
          if (v24)
          {
            v56 = *v24;
            v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
            v58 = mlir::detail::InterfaceMap::lookup(v56 + 8, v57);
          }

          else
          {
            v58 = 0;
          }

          v21 = mlir::DenseElementsAttr::get(v24, v58, v77, DWORD2(v77));
LABEL_79:
          llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v77);
          if ((v63 & 1) == 0)
          {
            v59 = v64;
            v64 = 0;
            if (v59)
            {
              (*(*v59 + 8))(v59);
            }
          }

          if ((v33 & 1) == 0)
          {
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }
          }

          return v21 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      else
      {
        v51 = 1;
      }

      v53 = v65;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v67, &v63, v53);
        llvm::APFloat::Storage::Storage(v79, v67);
        convertFloatValue(&v73, v79, v23, 1u);
        llvm::APFloat::Storage::~Storage(v79);
        v54 = BYTE8(v74);
        if (BYTE8(v74))
        {
          v55 = &v73;
        }

        else
        {
          v55 = v67;
        }

        llvm::APFloat::Storage::Storage(v68, v55);
        if (BYTE8(v74) == 1)
        {
          llvm::APFloat::Storage::~Storage(&v73);
        }

        llvm::APFloat::Storage::~Storage(v67);
        if (!v54)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v77, v68);
        llvm::APFloat::Storage::~Storage(v68);
        v53 = ++v65;
        if (!--v51)
        {
          goto LABEL_74;
        }
      }

      llvm::APFloat::Storage::~Storage(v68);
      v21 = 0;
      goto LABEL_79;
    }

    v21 = 0;
  }

  return v21 & 0xFFFFFFFFFFFFFFFBLL;
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

uint64_t mlir::arith::ExtFOp::verify(void ****this)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v2 = v3;
  }

  v6 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v6 = v7;
  }

  v10 = *v2;
  v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  LODWORD(v10) = *((*v12)(v12, v2) + 12);
  v13 = *v6;
  v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  if (v10 < *((*v15)(v15, v6) + 12))
  {
    return 1;
  }

  v24 = "result type ";
  v25 = 259;
  mlir::Operation::emitError(&v28, v1, &v24);
  if (v28)
  {
    v26 = 4;
    v27 = v6;
    v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
    v18 = v30 + 24 * v31;
    v19 = *v17;
    *(v18 + 16) = *(v17 + 16);
    *v18 = v19;
    ++v31;
    if (v28)
    {
      mlir::Diagnostic::operator<<<34ul>(&v29, " must be wider than operand type ");
      if (v28)
      {
        v26 = 4;
        v27 = v2;
        v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
        v21 = v30 + 24 * v31;
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v21 = v22;
        ++v31;
      }
    }
  }

  v16 = (v32 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  return v16;
}

uint64_t mlir::arith::TruncIOp::fold(uint64_t *a1, uint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = v5[3];
  v7 = *(v6 + 8) & 7;
  if (v7 == 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5[3];
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    if (v10 != -120 && *(*(v10 + 168) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      goto LABEL_13;
    }

    v11 = v8 + 24 * *(v8 + 16) + 120;
    if (v8 + 24 * *(v8 + 16) == -120)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v12 = v8 + 16 * v9;
    if (*(*(v12 + 64) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
LABEL_15:
      v13 = v8 + 16 * v9 + 16;
      goto LABEL_16;
    }

    v11 = v12 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    goto LABEL_35;
  }

LABEL_13:
  if (v9 != 6)
  {
    goto LABEL_15;
  }

  v13 = v8 + 24 * *(v8 + 16) + 120;
LABEL_16:
  v14 = *(*(v13 + 72) + 24);
  v15 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v15);
  v18 = v16;
  if (v16)
  {
    v16 = (*(v17 + 8))(v17, v16);
  }

  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  v20 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20);
  v23 = v21;
  if (v21)
  {
    v21 = (*(v22 + 8))(v22, v21);
  }

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if ((v19[1] & 0x3FFFFFFFu) > (v24[1] & 0x3FFFFFFFu))
  {
    v25 = *(*a1 + 72);
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      *v26 = *v25;
      if (v27)
      {
        *(v27 + 8) = v25[1];
      }
    }

    v25[3] = v14;
    v25[1] = v14;
    v28 = *v14;
    *v25 = *v14;
    if (v28)
    {
      *(v28 + 8) = v25;
    }

    *v14 = v25;
    return (*a1 - 16) | 4;
  }

  if (v19 == v24)
  {
    return v14 | 4;
  }

  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = v5[3];
  v7 = *(v6 + 8) & 7;
LABEL_35:
  if (v7 == 7)
  {
    v6 = 0;
  }

  if (v6)
  {
    v29 = *(v6 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v6 + 24 * *(v6 + 16);
      v31 = v30 + 120;
      if (v30 != -120 && *(*(v30 + 168) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v32 = v6 + 16 * v29;
      if (*(*(v32 + 64) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
      {
        v31 = v32 + 16;
LABEL_69:
        v50 = *(*(v31 + 72) + 24);
        v51 = v5[1];
        if (v51)
        {
          v52 = *v5;
          *v51 = *v5;
          if (v52)
          {
            *(v52 + 8) = v5[1];
          }
        }

        v5[3] = v50;
        v5[1] = v50;
        v53 = *v50;
        *v5 = *v50;
        if (v53)
        {
          *(v53 + 8) = v5;
        }

        *v50 = v5;
        return (*a1 - 16) | 4;
      }
    }
  }

  v33 = (*(v4 - 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v33);
  v36 = v34;
  if (v34)
  {
    v34 = (*(v35 + 8))(v35, v34);
  }

  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = v33;
  }

  v38 = **(a2 + 40);
  if (!v38)
  {
    return v38 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v39 = *(*v38 + 136);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v38 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v40 = *(v37 + 2);
  v41 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v86) = *(v38 + 24);
    if (v86 > 0x40)
    {
      operator new[]();
    }

    v85 = *(v38 + 16);
    llvm::APInt::trunc(&v88, &v85, v40 & 0x3FFFFFFF);
    if (v86 >= 0x41 && v85)
    {
      MEMORY[0x25F891010](v85, 0x1000C8000313F17);
    }

    v38 = mlir::IntegerAttr::get(v41, &v88);
    if (v89 < 0x41 || !v88)
    {
      return v38 & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_100:
    MEMORY[0x25F891010]();
    return v38 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v42 = v39 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v39 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v42 && *(v38 + 24) == 1)
  {
    v81 = **(a2 + 40);
    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v81, &v88);
    v87 = v90;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v88, &v85);
    llvm::APInt::trunc(&v88, &v85, v40 & 0x3FFFFFFF);
    if (v86 >= 0x41 && v85)
    {
      MEMORY[0x25F891010](v85, 0x1000C8000313F17);
    }

    if (v41)
    {
      v43 = *v41;
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v45 = mlir::detail::InterfaceMap::lookup(v43 + 8, v44);
    }

    else
    {
      v45 = 0;
    }

    if ((*(v45 + 16))(v45, v41))
    {
      v62 = (*(v45 + 24))(v45, v41);
      if (!v63)
      {
LABEL_96:
        v38 = mlir::DenseElementsAttr::get(v41, v45, &v88, 1);
LABEL_98:
        if (v89 < 0x41 || !v88)
        {
          return v38 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_100;
      }

      v64 = 8 * v63;
      while (*v62 != 0x8000000000000000)
      {
        ++v62;
        v64 -= 8;
        if (!v64)
        {
          goto LABEL_96;
        }
      }
    }

    v38 = 0;
    goto LABEL_98;
  }

  v38 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v38);
  v84[0] = v38;
  v84[1] = v46;
  if (v38)
  {
    v47 = v46;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v85, v84);
    if (BYTE8(v87) == 1)
    {
      v48 = v85;
      LOWORD(v81) = v85;
      v49 = v86;
      if (v85 == 1)
      {
        v82 = v86;
      }

      else
      {
        (*(*v86 + 16))(&v82, v86);
      }

      v83 = v87;
      v88 = &v90;
      v89 = 0x300000000;
      v55 = (*(v47 + 16))(v47, v38);
      v57 = (*(v56 + 24))(v56, v55);
      if (v58)
      {
        v59 = 8 * v58;
        v60 = 1;
        do
        {
          v61 = *v57++;
          v60 *= v61;
          v59 -= 8;
        }

        while (v59);
      }

      else
      {
        v60 = 1;
      }

      if (v60 > HIDWORD(v89))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v88, v60);
      }

      v65 = (*(v47 + 16))(v47, v38);
      v67 = (*(v66 + 24))(v66, v65);
      if (v68)
      {
        v69 = 8 * v68;
        v70 = 1;
        do
        {
          v71 = *v67++;
          v70 *= v71;
          v69 -= 8;
        }

        while (v69);
        if (!v70)
        {
LABEL_118:
          if (v41)
          {
            v73 = *v41;
            v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
            v75 = mlir::detail::InterfaceMap::lookup(v73 + 8, v74);
          }

          else
          {
            v75 = 0;
          }

          v38 = mlir::DenseElementsAttr::get(v41, v75, v88, v89);
          llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v88);
          if ((v81 & 1) == 0)
          {
            v76 = v82;
            v82 = 0;
            if (v76)
            {
              (*(*v76 + 8))(v76);
            }
          }

          if ((v48 & 1) == 0 && v49)
          {
            (*(*v49 + 8))(v49);
          }

          return v38 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      else
      {
        v70 = 1;
      }

      v72 = v83;
      do
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v77, &v81, v72);
        llvm::APInt::trunc(&v79, &v77, v40 & 0x3FFFFFFF);
        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x25F891010](v77, 0x1000C8000313F17);
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v88, &v79);
        if (v80 >= 0x41 && v79)
        {
          MEMORY[0x25F891010](v79, 0x1000C8000313F17);
        }

        v72 = ++v83;
        --v70;
      }

      while (v70);
      goto LABEL_118;
    }

    v38 = 0;
  }

  return v38 & 0xFFFFFFFFFFFFFFFBLL;
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

uint64_t mlir::arith::TruncIOp::verify(void ****this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*(v9 + 8))(v9, v8);
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if ((v6[1] & 0x3FFFFFFFu) > (v11[1] & 0x3FFFFFFFu))
  {
    return 1;
  }

  v20 = "result type ";
  v21 = 259;
  mlir::Operation::emitError(&v24, v1, &v20);
  if (v24)
  {
    v22 = 4;
    v23 = v11;
    v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
    v14 = v26 + 24 * v27;
    v15 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v15;
    ++v27;
    if (v24)
    {
      mlir::Diagnostic::operator<<<36ul>(&v25, " must be shorter than operand type ");
      if (v24)
      {
        v22 = 4;
        v23 = v6;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
        v17 = v26 + 24 * v27;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v27;
      }
    }
  }

  v12 = (v28 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  return v12;
}

unint64_t mlir::arith::TruncFOp::fold(mlir::arith::TruncFOp **a1, uint64_t a2)
{
  v79[3] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v4 = v5;
  }

  v8 = *v4;
  v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  v11 = (*v10)(v10, v4);
  v12 = **(a2 + 56);
  if (v12)
  {
    v13 = *(*v12 + 136);
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v11;
      v15 = (*(*a1 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        llvm::APFloat::Storage::Storage(v79, (v12 + 16));
        Roundingmode = mlir::arith::TruncFOp::getRoundingmode(*a1);
        v29 = 0;
        if (Roundingmode > 0x100000000)
        {
          v29 = Roundingmode;
        }

        v30 = 0x400020301uLL >> (8 * v29);
        llvm::APFloat::Storage::Storage(&v73, v79);
        convertFloatValue(&v77, &v73, v14, v30 & 7);
        llvm::APFloat::Storage::~Storage(&v73);
        v31 = BYTE8(v78[0]);
        if (BYTE8(v78[0]))
        {
          v32 = &v77;
        }

        else
        {
          v32 = v79;
        }

        llvm::APFloat::Storage::Storage(&v69, v32);
        if (BYTE8(v78[0]) == 1)
        {
          llvm::APFloat::Storage::~Storage(&v77);
        }

        llvm::APFloat::Storage::~Storage(v79);
        if (v31)
        {
          v33 = mlir::FloatAttr::get(v15, &v69);
          goto LABEL_37;
        }

LABEL_82:
        v12 = 0;
        goto LABEL_83;
      }

      v16 = v13 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
      if (v16 && *(v12 + 24) == 1)
      {
        v63 = v12;
        mlir::DenseElementsAttr::tryGetFloatValues(&v77, &v63);
        v74 = v78[0];
        v75 = v78[1];
        v73 = v77;
        v76 = v78[2];
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v77, v79);
        v17 = mlir::arith::TruncFOp::getRoundingmode(*a1);
        v18 = 0;
        if (v17 > 0x100000000)
        {
          v18 = v17;
        }

        v19 = 0x400020301uLL >> (8 * v18);
        llvm::APFloat::Storage::Storage(&v73, v79);
        convertFloatValue(&v77, &v73, v14, v19 & 7);
        llvm::APFloat::Storage::~Storage(&v73);
        v20 = BYTE8(v78[0]);
        if (BYTE8(v78[0]))
        {
          v21 = &v77;
        }

        else
        {
          v21 = v79;
        }

        llvm::APFloat::Storage::Storage(&v69, v21);
        if (BYTE8(v78[0]) == 1)
        {
          llvm::APFloat::Storage::~Storage(&v77);
        }

        llvm::APFloat::Storage::~Storage(v79);
        if (v20)
        {
          if (v15)
          {
            v22 = *v15;
            v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
            v24 = mlir::detail::InterfaceMap::lookup(v22 + 8, v23);
          }

          else
          {
            v24 = 0;
          }

          if ((*(v24 + 16))(v24, v15))
          {
            v58 = (*(v24 + 24))(v24, v15);
            if (v59)
            {
              v60 = 8 * v59;
              while (*v58 != 0x8000000000000000)
              {
                ++v58;
                v60 -= 8;
                if (!v60)
                {
                  goto LABEL_81;
                }
              }

              goto LABEL_82;
            }

LABEL_81:
            v33 = mlir::DenseElementsAttr::get(v15, v24, &v69, 1);
LABEL_37:
            v12 = v33;
LABEL_83:
            llvm::APFloat::Storage::~Storage(&v69);
            return v12 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        goto LABEL_82;
      }

      v12 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v12);
      v66[0] = v12;
      v66[1] = v25;
      if (v12)
      {
        v26 = v25;
        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v69, v66);
        if (v72 != 1)
        {
          v12 = 0;
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

        LOWORD(v63) = v69;
        v62 = v69;
        v27 = v70;
        if (v69 == 1)
        {
          v64 = v70;
        }

        else
        {
          (*(*v70 + 16))(&v64, v70);
        }

        v65 = v71;
        *&v77 = v78;
        *(&v77 + 1) = 0x200000000;
        v34 = (*(v26 + 16))(v26, v12);
        v36 = (*(v35 + 24))(v35, v34);
        if (v37)
        {
          v38 = 8 * v37;
          v39 = 1;
          do
          {
            v40 = *v36++;
            v39 *= v40;
            v38 -= 8;
          }

          while (v38);
        }

        else
        {
          v39 = 1;
        }

        if (v39 > HIDWORD(v77))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v77, v39);
        }

        v41 = (*(v26 + 16))(v26, v12);
        v43 = (*(v42 + 24))(v42, v41);
        if (v44)
        {
          v45 = 8 * v44;
          v46 = 1;
          do
          {
            v47 = *v43++;
            v46 *= v47;
            v45 -= 8;
          }

          while (v45);
          if (!v46)
          {
LABEL_64:
            if (v15)
            {
              v54 = *v15;
              v55 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v56 = mlir::detail::InterfaceMap::lookup(v54 + 8, v55);
            }

            else
            {
              v56 = 0;
            }

            v12 = mlir::DenseElementsAttr::get(v15, v56, v77, DWORD2(v77));
LABEL_69:
            llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v77);
            if ((v63 & 1) == 0)
            {
              v57 = v64;
              v64 = 0;
              if (v57)
              {
                (*(*v57 + 8))(v57);
              }
            }

            if ((v62 & 1) == 0 && v27)
            {
              (*(*v27 + 8))(v27);
            }

            return v12 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v46 = 1;
        }

        v48 = v65;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v67, &v63, v48);
          v49 = mlir::arith::TruncFOp::getRoundingmode(*a1);
          if (v49 <= 0x100000000)
          {
            v50 = 0;
          }

          else
          {
            v50 = v49;
          }

          v51 = 0x400020301uLL >> (8 * v50);
          llvm::APFloat::Storage::Storage(v79, v67);
          convertFloatValue(&v73, v79, v14, v51);
          llvm::APFloat::Storage::~Storage(v79);
          v52 = BYTE8(v74);
          if (BYTE8(v74))
          {
            v53 = &v73;
          }

          else
          {
            v53 = v67;
          }

          llvm::APFloat::Storage::Storage(v68, v53);
          if (BYTE8(v74) == 1)
          {
            llvm::APFloat::Storage::~Storage(&v73);
          }

          llvm::APFloat::Storage::~Storage(v67);
          if (!v52)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v77, v68);
          llvm::APFloat::Storage::~Storage(v68);
          v48 = ++v65;
          if (!--v46)
          {
            goto LABEL_64;
          }
        }

        llvm::APFloat::Storage::~Storage(v68);
        v12 = 0;
        goto LABEL_69;
      }
    }
  }

  return v12 & 0xFFFFFFFFFFFFFFFBLL;
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

uint64_t mlir::arith::TruncFOp::verify(void ****this)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*((*this)[9][3] + 1) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v2 = v3;
  }

  v6 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v6 = v7;
  }

  v10 = *v2;
  v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  LODWORD(v10) = *((*v12)(v12, v2) + 12);
  v13 = *v6;
  v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  if (v10 > *((*v15)(v15, v6) + 12))
  {
    return 1;
  }

  v24 = "result type ";
  v25 = 259;
  mlir::Operation::emitError(&v28, v1, &v24);
  if (v28)
  {
    v26 = 4;
    v27 = v6;
    v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
    v18 = v30 + 24 * v31;
    v19 = *v17;
    *(v18 + 16) = *(v17 + 16);
    *v18 = v19;
    ++v31;
    if (v28)
    {
      mlir::Diagnostic::operator<<<36ul>(&v29, " must be shorter than operand type ");
      if (v28)
      {
        v26 = 4;
        v27 = v2;
        v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
        v21 = v30 + 24 * v31;
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v21 = v22;
        ++v31;
      }
    }
  }

  v16 = (v32 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  return v16;
}

uint64_t checkIntFloatCast<mlir::IntegerType,mlir::FloatType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v76 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v4 = v5;
  }

  v8 = **(a2 + 40);
  if (v8)
  {
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        LODWORD(v64) = *(v8 + 24);
        if (v64 > 0x40)
        {
          operator new[]();
        }

        v63 = *(v8 + 16);
        if (v4)
        {
          v19 = *v4;
          v20 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          v21 = mlir::detail::InterfaceMap::lookup(v19 + 8, v20);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v21)(v21, v4);
        LODWORD(v68) = *((*v21)(v21, v4) + 12);
        if (v68 >= 0x41)
        {
          operator new[]();
        }

        v67 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v73, v22, &v67);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(&v73, &v63, 0, 1, v23, v24);
        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x25F891010](v63, 0x1000C8000313F17);
        }

        v25 = mlir::FloatAttr::get(v10, &v73);
        goto LABEL_36;
      }

      v11 = v9 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
      if (v11 && *(v8 + 24) == 1)
      {
        v72[0] = **(a2 + 40);
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(v72, &v73);
        v69 = v75;
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v63);
        if (v4)
        {
          v12 = *v4;
          v13 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        }

        else
        {
          v14 = 0;
        }

        v34 = (*v14)(v14, v4);
        LODWORD(v68) = *((*v14)(v14, v4) + 12);
        if (v68 >= 0x41)
        {
          operator new[]();
        }

        v67 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v73, v34, &v67);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(&v73, &v63, 0, 1, v35, v36);
        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x25F891010](v63, 0x1000C8000313F17);
        }

        if (v10)
        {
          v37 = *v10;
          v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v39 = mlir::detail::InterfaceMap::lookup(v37 + 8, v38);
        }

        else
        {
          v39 = 0;
        }

        if (!(*(v39 + 16))(v39, v10))
        {
LABEL_63:
          v8 = 0;
          goto LABEL_37;
        }

        v40 = (*(v39 + 24))(v39, v10);
        if (v41)
        {
          v42 = 8 * v41;
          while (*v40 != 0x8000000000000000)
          {
            ++v40;
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_63;
        }

LABEL_62:
        v25 = mlir::DenseElementsAttr::get(v10, v39, &v73, 1);
LABEL_36:
        v8 = v25;
LABEL_37:
        llvm::APFloat::Storage::~Storage(&v73);
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v8 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v8);
      v66[0] = v8;
      v66[1] = v15;
      if (v8)
      {
        v16 = v15;
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v67, v66);
        if (BYTE8(v69) != 1)
        {
          v8 = 0;
          return v8 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v17 = v67;
        LOWORD(v63) = v67;
        v18 = v68;
        if (v67 == 1)
        {
          v64 = v68;
        }

        else
        {
          (*(*v68 + 16))(&v64, v68);
        }

        v65 = v69;
        v73 = &v75;
        v74 = 0x200000000;
        v27 = (*(v16 + 16))(v16, v8);
        v29 = (*(v28 + 24))(v28, v27);
        if (v30)
        {
          v31 = 8 * v30;
          v32 = 1;
          do
          {
            v33 = *v29++;
            v32 *= v33;
            v31 -= 8;
          }

          while (v31);
        }

        else
        {
          v32 = 1;
        }

        if (v32 > HIDWORD(v74))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v73, v32);
        }

        v43 = (*(v16 + 16))(v16, v8);
        v45 = (*(v44 + 24))(v44, v43);
        if (v46)
        {
          v47 = 8 * v46;
          v48 = 1;
          do
          {
            v49 = *v45++;
            v48 *= v49;
            v47 -= 8;
          }

          while (v47);
          if (!v48)
          {
LABEL_87:
            if (v10)
            {
              v57 = *v10;
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v59 = mlir::detail::InterfaceMap::lookup(v57 + 8, v58);
            }

            else
            {
              v59 = 0;
            }

            v8 = mlir::DenseElementsAttr::get(v10, v59, v73, v74);
            llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v73);
            if ((v63 & 1) == 0)
            {
              v60 = v64;
              v64 = 0;
              if (v60)
              {
                (*(*v60 + 8))(v60);
              }
            }

            if ((v17 & 1) == 0 && v18)
            {
              (*(*v18 + 8))(v18);
            }

            return v8 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v48 = 1;
        }

        v50 = v65;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v61, &v63, v50);
          if (v4)
          {
            v51 = *v4;
            v52 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
            v53 = mlir::detail::InterfaceMap::lookup(v51 + 8, v52);
          }

          else
          {
            v53 = 0;
          }

          v54 = (*v53)(v53, v4);
          v71 = *((*v53)(v53, v4) + 12);
          if (v71 >= 0x41)
          {
            operator new[]();
          }

          v70 = 0;
          llvm::APFloat::Storage::Storage<llvm::APInt const&>(v72, v54, &v70);
          if (v71 >= 0x41 && v70)
          {
            MEMORY[0x25F891010](v70, 0x1000C8000313F17);
          }

          llvm::APFloat::convertFromAPInt(v72, &v61, 0, 1, v55, v56);
          if (v62 >= 0x41 && v61)
          {
            MEMORY[0x25F891010](v61, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v73, v72);
          llvm::APFloat::Storage::~Storage(v72);
          v50 = ++v65;
          --v48;
        }

        while (v48);
        goto LABEL_87;
      }
    }
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::SIToFPOp::fold(void *a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v4 = v5;
  }

  v8 = **(a2 + 40);
  if (v8)
  {
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        LODWORD(v64) = *(v8 + 24);
        if (v64 > 0x40)
        {
          operator new[]();
        }

        v63 = *(v8 + 16);
        if (v4)
        {
          v19 = *v4;
          v20 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          v21 = mlir::detail::InterfaceMap::lookup(v19 + 8, v20);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v21)(v21, v4);
        LODWORD(v68) = *((*v21)(v21, v4) + 12);
        if (v68 >= 0x41)
        {
          operator new[]();
        }

        v67 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v73, v22, &v67);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(&v73, &v63, 1, 1, v23, v24);
        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x25F891010](v63, 0x1000C8000313F17);
        }

        v25 = mlir::FloatAttr::get(v10, &v73);
        goto LABEL_36;
      }

      v11 = v9 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
      if (v11 && *(v8 + 24) == 1)
      {
        v72[0] = **(a2 + 40);
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(v72, &v73);
        v69 = v75;
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v73, &v63);
        if (v4)
        {
          v12 = *v4;
          v13 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        }

        else
        {
          v14 = 0;
        }

        v34 = (*v14)(v14, v4);
        LODWORD(v68) = *((*v14)(v14, v4) + 12);
        if (v68 >= 0x41)
        {
          operator new[]();
        }

        v67 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v73, v34, &v67);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(&v73, &v63, 1, 1, v35, v36);
        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x25F891010](v63, 0x1000C8000313F17);
        }

        if (v10)
        {
          v37 = *v10;
          v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v39 = mlir::detail::InterfaceMap::lookup(v37 + 8, v38);
        }

        else
        {
          v39 = 0;
        }

        if (!(*(v39 + 16))(v39, v10))
        {
LABEL_63:
          v8 = 0;
          goto LABEL_37;
        }

        v40 = (*(v39 + 24))(v39, v10);
        if (v41)
        {
          v42 = 8 * v41;
          while (*v40 != 0x8000000000000000)
          {
            ++v40;
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_63;
        }

LABEL_62:
        v25 = mlir::DenseElementsAttr::get(v10, v39, &v73, 1);
LABEL_36:
        v8 = v25;
LABEL_37:
        llvm::APFloat::Storage::~Storage(&v73);
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v8 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v8);
      v66[0] = v8;
      v66[1] = v15;
      if (v8)
      {
        v16 = v15;
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v67, v66);
        if (BYTE8(v69) != 1)
        {
          v8 = 0;
          return v8 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v17 = v67;
        LOWORD(v63) = v67;
        v18 = v68;
        if (v67 == 1)
        {
          v64 = v68;
        }

        else
        {
          (*(*v68 + 16))(&v64, v68);
        }

        v65 = v69;
        v73 = &v75;
        v74 = 0x200000000;
        v27 = (*(v16 + 16))(v16, v8);
        v29 = (*(v28 + 24))(v28, v27);
        if (v30)
        {
          v31 = 8 * v30;
          v32 = 1;
          do
          {
            v33 = *v29++;
            v32 *= v33;
            v31 -= 8;
          }

          while (v31);
        }

        else
        {
          v32 = 1;
        }

        if (v32 > HIDWORD(v74))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v73, v32);
        }

        v43 = (*(v16 + 16))(v16, v8);
        v45 = (*(v44 + 24))(v44, v43);
        if (v46)
        {
          v47 = 8 * v46;
          v48 = 1;
          do
          {
            v49 = *v45++;
            v48 *= v49;
            v47 -= 8;
          }

          while (v47);
          if (!v48)
          {
LABEL_87:
            if (v10)
            {
              v57 = *v10;
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v59 = mlir::detail::InterfaceMap::lookup(v57 + 8, v58);
            }

            else
            {
              v59 = 0;
            }

            v8 = mlir::DenseElementsAttr::get(v10, v59, v73, v74);
            llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v73);
            if ((v63 & 1) == 0)
            {
              v60 = v64;
              v64 = 0;
              if (v60)
              {
                (*(*v60 + 8))(v60);
              }
            }

            if ((v17 & 1) == 0 && v18)
            {
              (*(*v18 + 8))(v18);
            }

            return v8 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        else
        {
          v48 = 1;
        }

        v50 = v65;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v61, &v63, v50);
          if (v4)
          {
            v51 = *v4;
            v52 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
            v53 = mlir::detail::InterfaceMap::lookup(v51 + 8, v52);
          }

          else
          {
            v53 = 0;
          }

          v54 = (*v53)(v53, v4);
          v71 = *((*v53)(v53, v4) + 12);
          if (v71 >= 0x41)
          {
            operator new[]();
          }

          v70 = 0;
          llvm::APFloat::Storage::Storage<llvm::APInt const&>(v72, v54, &v70);
          if (v71 >= 0x41 && v70)
          {
            MEMORY[0x25F891010](v70, 0x1000C8000313F17);
          }

          llvm::APFloat::convertFromAPInt(v72, &v61, 1, 1, v55, v56);
          if (v62 >= 0x41 && v61)
          {
            MEMORY[0x25F891010](v61, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v73, v72);
          llvm::APFloat::Storage::~Storage(v72);
          v50 = ++v65;
          --v48;
        }

        while (v48);
        goto LABEL_87;
      }
    }
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t checkIntFloatCast<mlir::FloatType,mlir::IntegerType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v65 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = **(a2 + 40);
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = *(*v9 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v8[1] & 0x3FFFFFFF;
  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v63, (v9 + 16));
    DWORD2(v57) = v11;
    if (v11 >= 0x41)
    {
      operator new[]();
    }

    *&v57 = 0;
    LOBYTE(v51) = 0;
    BYTE12(v57) = 1;
    v18 = llvm::APFloat::convertToInteger(&v63, &v57, 0, &v51);
    llvm::APFloat::Storage::~Storage(&v63);
    if (v18 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = mlir::IntegerAttr::get(v12, &v57);
    }

    if (DWORD2(v57) >= 0x41)
    {
      v19 = v57;
      if (v57)
      {
        goto LABEL_81;
      }
    }

    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = v10 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v9 + 24) != 1)
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v9);
    v54[0] = v9;
    v54[1] = v14;
    if (!v9)
    {
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = v14;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v57, v54);
    if (BYTE8(v58) != 1)
    {
      v9 = 0;
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v16 = v57;
    LOWORD(v51) = v57;
    v17 = *(&v57 + 1);
    if (v57 == 1)
    {
      v52 = *(&v57 + 1);
    }

    else
    {
      (*(**(&v57 + 1) + 16))(&v52, *(&v57 + 1));
    }

    v53 = v58;
    *&v63 = v64;
    *(&v63 + 1) = 0x300000000;
    v24 = (*(v15 + 16))(v15, v9);
    v26 = (*(v25 + 24))(v25, v24);
    if (v27)
    {
      v28 = 8 * v27;
      v29 = 1;
      do
      {
        v30 = *v26++;
        v29 *= v30;
        v28 -= 8;
      }

      while (v28);
    }

    else
    {
      v29 = 1;
    }

    if (v29 > HIDWORD(v63))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v63, v29);
    }

    v31 = (*(v15 + 16))(v15, v9);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_60:
        if (v12)
        {
          v40 = *v12;
          v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v42 = mlir::detail::InterfaceMap::lookup(v40 + 8, v41);
        }

        else
        {
          v42 = 0;
        }

        v9 = mlir::DenseElementsAttr::get(v12, v42, v63, DWORD2(v63));
LABEL_65:
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
        if ((v51 & 1) == 0)
        {
          v43 = v52;
          v52 = 0;
          if (v43)
          {
            (*(*v43 + 8))(v43);
          }
        }

        if ((v16 & 1) == 0 && v17)
        {
          (*(*v17 + 8))(v17);
        }

        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v53;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v56, &v51, v38);
      v49 = v11;
      if (v11 >= 0x41)
      {
        operator new[]();
      }

      v48 = 0;
      v55 = 0;
      v50 = 1;
      v39 = llvm::APFloat::convertToInteger(v56, &v48, 0, &v55);
      llvm::APFloat::Storage::~Storage(v56);
      if (v39 != 1)
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v63, &v48);
      }

      if (v49 >= 0x41 && v48)
      {
        MEMORY[0x25F891010](v48, 0x1000C8000313F17);
      }

      if (v39 == 1)
      {
        break;
      }

      v38 = ++v53;
      if (!--v36)
      {
        goto LABEL_60;
      }
    }

    v9 = 0;
    goto LABEL_65;
  }

  v51 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetFloatValues(&v63, &v51);
  v60 = v64[2];
  v61 = v64[3];
  v58 = v64[0];
  v59 = v64[1];
  v57 = v63;
  v62 = v64[4];
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v63, &v57);
  DWORD2(v63) = v11;
  if (v11 >= 0x41)
  {
    operator new[]();
  }

  *&v63 = 0;
  v56[0] = 0;
  BYTE12(v63) = 1;
  v20 = llvm::APFloat::convertToInteger(&v57, &v63, 0, v56);
  llvm::APFloat::Storage::~Storage(&v57);
  if (v20 == 1 || (!v12 ? (v23 = 0) : (v21 = *v12, v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22)), !(*(v23 + 16))(v23, v12)))
  {
LABEL_78:
    v9 = 0;
    goto LABEL_79;
  }

  v44 = (*(v23 + 24))(v23, v12);
  if (v45)
  {
    v46 = 8 * v45;
    while (*v44 != 0x8000000000000000)
    {
      ++v44;
      v46 -= 8;
      if (!v46)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_78;
  }

LABEL_77:
  v9 = mlir::DenseElementsAttr::get(v12, v23, &v63, 1);
LABEL_79:
  if (DWORD2(v63) >= 0x41)
  {
    v19 = v63;
    if (v63)
    {
LABEL_81:
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::FPToSIOp::fold(void *a1, uint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = **(a2 + 40);
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = *(*v9 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v8[1] & 0x3FFFFFFF;
  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v63, (v9 + 16));
    DWORD2(v57) = v11;
    if (v11 >= 0x41)
    {
      operator new[]();
    }

    *&v57 = 0;
    LOBYTE(v51) = 0;
    BYTE12(v57) = 0;
    v18 = llvm::APFloat::convertToInteger(&v63, &v57, 0, &v51);
    llvm::APFloat::Storage::~Storage(&v63);
    if (v18 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = mlir::IntegerAttr::get(v12, &v57);
    }

    if (DWORD2(v57) >= 0x41)
    {
      v19 = v57;
      if (v57)
      {
        goto LABEL_81;
      }
    }

    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = v10 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v9 + 24) != 1)
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v9);
    v54[0] = v9;
    v54[1] = v14;
    if (!v9)
    {
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = v14;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v57, v54);
    if (BYTE8(v58) != 1)
    {
      v9 = 0;
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v16 = v57;
    LOWORD(v51) = v57;
    v17 = *(&v57 + 1);
    if (v57 == 1)
    {
      v52 = *(&v57 + 1);
    }

    else
    {
      (*(**(&v57 + 1) + 16))(&v52, *(&v57 + 1));
    }

    v53 = v58;
    *&v63 = v64;
    *(&v63 + 1) = 0x300000000;
    v24 = (*(v15 + 16))(v15, v9);
    v26 = (*(v25 + 24))(v25, v24);
    if (v27)
    {
      v28 = 8 * v27;
      v29 = 1;
      do
      {
        v30 = *v26++;
        v29 *= v30;
        v28 -= 8;
      }

      while (v28);
    }

    else
    {
      v29 = 1;
    }

    if (v29 > HIDWORD(v63))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v63, v29);
    }

    v31 = (*(v15 + 16))(v15, v9);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_60:
        if (v12)
        {
          v40 = *v12;
          v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v42 = mlir::detail::InterfaceMap::lookup(v40 + 8, v41);
        }

        else
        {
          v42 = 0;
        }

        v9 = mlir::DenseElementsAttr::get(v12, v42, v63, DWORD2(v63));
LABEL_65:
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v63);
        if ((v51 & 1) == 0)
        {
          v43 = v52;
          v52 = 0;
          if (v43)
          {
            (*(*v43 + 8))(v43);
          }
        }

        if ((v16 & 1) == 0 && v17)
        {
          (*(*v17 + 8))(v17);
        }

        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v53;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v56, &v51, v38);
      v49 = v11;
      if (v11 >= 0x41)
      {
        operator new[]();
      }

      v48 = 0;
      v55 = 0;
      v50 = 0;
      v39 = llvm::APFloat::convertToInteger(v56, &v48, 0, &v55);
      llvm::APFloat::Storage::~Storage(v56);
      if (v39 != 1)
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v63, &v48);
      }

      if (v49 >= 0x41 && v48)
      {
        MEMORY[0x25F891010](v48, 0x1000C8000313F17);
      }

      if (v39 == 1)
      {
        break;
      }

      v38 = ++v53;
      if (!--v36)
      {
        goto LABEL_60;
      }
    }

    v9 = 0;
    goto LABEL_65;
  }

  v51 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetFloatValues(&v63, &v51);
  v60 = v64[2];
  v61 = v64[3];
  v58 = v64[0];
  v59 = v64[1];
  v57 = v63;
  v62 = v64[4];
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v63, &v57);
  DWORD2(v63) = v11;
  if (v11 >= 0x41)
  {
    operator new[]();
  }

  *&v63 = 0;
  v56[0] = 0;
  BYTE12(v63) = 0;
  v20 = llvm::APFloat::convertToInteger(&v57, &v63, 0, v56);
  llvm::APFloat::Storage::~Storage(&v57);
  if (v20 == 1 || (!v12 ? (v23 = 0) : (v21 = *v12, v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22)), !(*(v23 + 16))(v23, v12)))
  {
LABEL_78:
    v9 = 0;
    goto LABEL_79;
  }

  v44 = (*(v23 + 24))(v23, v12);
  if (v45)
  {
    v46 = 8 * v45;
    while (*v44 != 0x8000000000000000)
    {
      ++v44;
      v46 -= 8;
      if (!v46)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_78;
  }

LABEL_77:
  v9 = mlir::DenseElementsAttr::get(v12, v23, &v63, 1);
LABEL_79:
  if (DWORD2(v63) >= 0x41)
  {
    v19 = v63;
    if (v63)
    {
LABEL_81:
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

BOOL areIndexCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!areValidCastInputsAndOutputs(a1, a2, a3, a4))
  {
    return 0;
  }

  v6 = mlir::TypeRange::dereference_iterator(a1, 0);
  v7 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v6);
  v8 = mlir::TypeRange::dereference_iterator(a3, 0);
  v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v8);
  v10 = 0;
  if (v7 && v9)
  {
    v11 = *(*v7 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(v9 + 2) >> 30))
      {
        return 1;
      }
    }

    else if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(v7 + 2) >> 30))
    {
      return *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    }

    return 0;
  }

  return v10;
}

unint64_t mlir::arith::IndexCastOp::fold(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = v8[1] & 0x3FFFFFFF;
  }

  else
  {
    v9 = 64;
  }

  v10 = **(a2 + 40);
  if (!v10)
  {
    return v10 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = *(*v10 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v10 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v53) = *(v10 + 24);
    if (v53 > 0x40)
    {
      operator new[]();
    }

    v52 = *(v10 + 16);
    llvm::APInt::sextOrTrunc(&v55, &v52, v9);
    if (v53 >= 0x41 && v52)
    {
      MEMORY[0x25F891010](v52, 0x1000C8000313F17);
    }

    v10 = mlir::IntegerAttr::get(v12, &v55);
    if (v56 >= 0x41 && v55)
    {
      goto LABEL_52;
    }

    return v10 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v10 + 24) != 1)
  {
    v10 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v10);
    v51[0] = v10;
    v51[1] = v17;
    if (!v10)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v18 = v17;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v52, v51);
    if (BYTE8(v54) != 1)
    {
      v10 = 0;
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v19 = v52;
    LOWORD(v48) = v52;
    v20 = v53;
    if (v52 == 1)
    {
      v49 = v53;
    }

    else
    {
      (*(*v53 + 16))(&v49, v53);
    }

    v50 = v54;
    v55 = &v57;
    v56 = 0x300000000;
    v21 = (*(v18 + 16))(v18, v10);
    v23 = (*(v22 + 24))(v22, v21);
    if (v24)
    {
      v25 = 8 * v24;
      v26 = 1;
      do
      {
        v27 = *v23++;
        v26 *= v27;
        v25 -= 8;
      }

      while (v25);
    }

    else
    {
      v26 = 1;
    }

    if (v26 > HIDWORD(v56))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v55, v26);
    }

    v31 = (*(v18 + 16))(v18, v10);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_70:
        if (v12)
        {
          v39 = *v12;
          v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
        }

        else
        {
          v41 = 0;
        }

        v10 = mlir::DenseElementsAttr::get(v12, v41, v55, v56);
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v55);
        if ((v48 & 1) == 0)
        {
          v42 = v49;
          v49 = 0;
          if (v42)
          {
            (*(*v42 + 8))(v42);
          }
        }

        if ((v19 & 1) == 0 && v20)
        {
          (*(*v20 + 8))(v20);
        }

        return v10 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v50;
    do
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v44, &v48, v38);
      llvm::APInt::sextOrTrunc(&v46, &v44, v9);
      if (v45 >= 0x41 && v44)
      {
        MEMORY[0x25F891010](v44, 0x1000C8000313F17);
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v55, &v46);
      if (v47 >= 0x41 && v46)
      {
        MEMORY[0x25F891010](v46, 0x1000C8000313F17);
      }

      v38 = ++v50;
      --v36;
    }

    while (v36);
    goto LABEL_70;
  }

  v48 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v48, &v55);
  v54 = v57;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v55, &v52);
  llvm::APInt::sextOrTrunc(&v55, &v52, v9);
  if (v53 >= 0x41 && v52)
  {
    MEMORY[0x25F891010](v52, 0x1000C8000313F17);
  }

  if (v12)
  {
    v14 = *v12;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  else
  {
    v16 = 0;
  }

  if (!(*(v16 + 16))(v16, v12))
  {
LABEL_49:
    v10 = 0;
    goto LABEL_50;
  }

  v28 = (*(v16 + 24))(v16, v12);
  if (v29)
  {
    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = mlir::DenseElementsAttr::get(v12, v16, &v55, 1);
LABEL_50:
  if (v56 >= 0x41 && v55)
  {
LABEL_52:
    MEMORY[0x25F891010]();
  }

  return v10 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::IndexCastUIOp::fold(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = v8[1] & 0x3FFFFFFF;
  }

  else
  {
    v9 = 64;
  }

  v10 = **(a2 + 40);
  if (!v10)
  {
    return v10 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = *(*v10 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v10 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v53) = *(v10 + 24);
    if (v53 > 0x40)
    {
      operator new[]();
    }

    v52 = *(v10 + 16);
    llvm::APInt::zextOrTrunc(&v52, v9, &v55);
    if (v53 >= 0x41 && v52)
    {
      MEMORY[0x25F891010](v52, 0x1000C8000313F17);
    }

    v10 = mlir::IntegerAttr::get(v12, &v55);
    if (v56 >= 0x41 && v55)
    {
      goto LABEL_52;
    }

    return v10 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v10 + 24) != 1)
  {
    v10 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v10);
    v51[0] = v10;
    v51[1] = v17;
    if (!v10)
    {
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v18 = v17;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v52, v51);
    if (BYTE8(v54) != 1)
    {
      v10 = 0;
      return v10 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v19 = v52;
    LOWORD(v48) = v52;
    v20 = v53;
    if (v52 == 1)
    {
      v49 = v53;
    }

    else
    {
      (*(*v53 + 16))(&v49, v53);
    }

    v50 = v54;
    v55 = &v57;
    v56 = 0x300000000;
    v21 = (*(v18 + 16))(v18, v10);
    v23 = (*(v22 + 24))(v22, v21);
    if (v24)
    {
      v25 = 8 * v24;
      v26 = 1;
      do
      {
        v27 = *v23++;
        v26 *= v27;
        v25 -= 8;
      }

      while (v25);
    }

    else
    {
      v26 = 1;
    }

    if (v26 > HIDWORD(v56))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v55, v26);
    }

    v31 = (*(v18 + 16))(v18, v10);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_70:
        if (v12)
        {
          v39 = *v12;
          v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
        }

        else
        {
          v41 = 0;
        }

        v10 = mlir::DenseElementsAttr::get(v12, v41, v55, v56);
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v55);
        if ((v48 & 1) == 0)
        {
          v42 = v49;
          v49 = 0;
          if (v42)
          {
            (*(*v42 + 8))(v42);
          }
        }

        if ((v19 & 1) == 0 && v20)
        {
          (*(*v20 + 8))(v20);
        }

        return v10 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v50;
    do
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v44, &v48, v38);
      llvm::APInt::zextOrTrunc(&v44, v9, &v46);
      if (v45 >= 0x41 && v44)
      {
        MEMORY[0x25F891010](v44, 0x1000C8000313F17);
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v55, &v46);
      if (v47 >= 0x41 && v46)
      {
        MEMORY[0x25F891010](v46, 0x1000C8000313F17);
      }

      v38 = ++v50;
      --v36;
    }

    while (v36);
    goto LABEL_70;
  }

  v48 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v48, &v55);
  v54 = v57;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v55, &v52);
  llvm::APInt::zextOrTrunc(&v52, v9, &v55);
  if (v53 >= 0x41 && v52)
  {
    MEMORY[0x25F891010](v52, 0x1000C8000313F17);
  }

  if (v12)
  {
    v14 = *v12;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  else
  {
    v16 = 0;
  }

  if (!(*(v16 + 16))(v16, v12))
  {
LABEL_49:
    v10 = 0;
    goto LABEL_50;
  }

  v28 = (*(v16 + 24))(v16, v12);
  if (v29)
  {
    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = mlir::DenseElementsAttr::get(v12, v16, &v55, 1);
LABEL_50:
  if (v56 >= 0x41 && v55)
  {
LABEL_52:
    MEMORY[0x25F891010]();
  }

  return v10 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::FloatType>(v8);
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
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || *(v9 + 32) == *(v10 + 32))
    {
      v14 = mlir::TypeRange::dereference_iterator(a1, 0);
      v13 = mlir::TypeRange::dereference_iterator(a3, 0);
      v5 = mlir::verifyCompatibleShapes(&v14 + 2, 1, &v13 + 2, 1);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t *getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::FloatType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v6 = v5 || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v6 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v8)
  {
    v1 = (*(v9 + 8))(v9, v8);
  }

  v10 = *v1;
  if (*(*v1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v10 + 8, v11))
    {
      return 0;
    }
  }

  return v1;
}

unint64_t mlir::arith::BitcastOp::fold(uint64_t a1, uint64_t a2)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v2 = **(a2 + 40);
  if (!v2)
  {
    return 0;
  }

  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(*v2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v6)
  {
    v7 = **(a2 + 40);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v7;
  if (v6)
  {
    v8 = *v4;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    v11 = (*(v10 + 8))(v10, v4);
    return mlir::DenseElementsAttr::bitcast(v24, v11) & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v13 = *v4;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v13 + 8, v14))
    {
      return 0;
    }

    v16 = *(*v2 + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v17 = *(**(***(*a1 + 24) + 32) + 560);
      v24[0] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
      return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v17 + 232), v24) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        llvm::APFloat::Storage::Storage(v24, (v2 + 4));
        llvm::APFloat::bitcastToAPInt(v24, &v22);
        llvm::APFloat::Storage::~Storage(v24);
      }

      else
      {
        v23 = v2[6];
        if (v23 > 0x40)
        {
          operator new[]();
        }

        v22 = *(v2 + 2);
      }

      v18 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v4);
      if (v18)
      {
        v20 = (*v19)(v19, v18);
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(v24, v20, &v22);
        v21 = mlir::FloatAttr::get(v4, v24);
        llvm::APFloat::Storage::~Storage(v24);
      }

      else
      {
        v21 = mlir::IntegerAttr::get(v4, &v22);
      }

      v12 = v21 & 0xFFFFFFFFFFFFFFFBLL;
      if (v23 >= 0x41 && v22)
      {
        MEMORY[0x25F891010](v22, 0x1000C8000313F17);
      }
    }
  }

  return v12;
}

uint64_t mlir::arith::applyCmpPredicate(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        v8 = llvm::APInt::compare(this, a3);
        return v8 >> 31;
      }

      v7 = llvm::APInt::compareSigned(this, a3);
    }

    else
    {
      if (a1 == 7)
      {
        v3 = llvm::APInt::compare(this, a3);
        return v3 < 1;
      }

      if (a1 == 8)
      {
        v4 = llvm::APInt::compare(this, a3);
        return v4 > 0;
      }

      v7 = llvm::APInt::compare(this, a3);
    }

    return v7 >= 0;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v3 = llvm::APInt::compareSigned(this, a3);
        return v3 < 1;
      }

      v4 = llvm::APInt::compareSigned(this, a3);
      return v4 > 0;
    }

    v8 = llvm::APInt::compareSigned(this, a3);
    return v8 >> 31;
  }

  if (a1)
  {
    v10 = *(this + 2);
    if (v10 > 0x40)
    {
      v11 = memcmp(*this, *a3, ((v10 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      v11 = *this == *a3;
    }

    v12 = v11;
    return v12 ^ 1u;
  }

  else
  {
    v5 = *(this + 2);
    if (v5 > 0x40)
    {
      return memcmp(*this, *a3, ((v5 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      return *this == *a3;
    }
  }
}

uint64_t mlir::arith::CmpIOp::fold(uint64_t *a1, unint64_t a2)
{
  v141 = *MEMORY[0x277D85DE8];
  if (*(*(*a1 + 72) + 24) == *(*(*a1 + 72) + 56))
  {
    *&v136 = *(*a1 + 80);
    v13 = qword_25D09F9A8[mlir::IntegerAttr::getInt(&v136)];
    v14 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = *(**(**v14 + 32) + v13);
    *&v136 = v15;
    if (v14)
    {
      v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
      if (v16)
      {
        v15 = mlir::DenseElementsAttr::get(v16, v17, &v136, 1uLL);
      }
    }

    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v3 = a2;
  v4 = *(*(a2 + 48) + 8);
  *&v136 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (!v4 || !mlir::detail::constant_int_predicate_matcher::match(&v136, v4))
  {
    goto LABEL_34;
  }

  v5 = *a1;
  v6 = *(*(*a1 + 72) + 24);
  v7 = *(v6 + 8);
  v8 = v7 & 7;
  if (v8 == 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*a1 + 72) + 24);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = v9 + 16 * v10 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v73 = *(*(*(v12 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v74 = *(*v73 + 136);
    if (v74 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v74 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_18;
      }

      v73 = *(v73 + 24);
    }

    if ((*(v73 + 8) & 0x3FFFFFFF) == 1)
    {
      *&v136 = *(v5 + 80);
      if (mlir::IntegerAttr::getInt(&v136) == 1)
      {
        goto LABEL_106;
      }

      v5 = *a1;
      v6 = *(*(*a1 + 72) + 24);
      v7 = *(v6 + 8);
      v8 = v7 & 7;
    }
  }

LABEL_18:
  if (v8 == 7)
  {
    v6 = 0;
  }

  if (v6)
  {
    v18 = *(v6 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v6 + 24 * *(v6 + 16);
      v12 = v19 + 120;
      if (v19 == -120)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = v6 + 16 * v18 + 16;
    }

    if (*(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      goto LABEL_26;
    }

    v75 = *(*(*(v12 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v76 = *(*v75 + 136);
    if (v76 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v76 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_26;
      }

      v75 = *(v75 + 24);
    }

    if ((*(v75 + 8) & 0x3FFFFFFF) == 1)
    {
      *&v136 = *(v5 + 80);
      if (mlir::IntegerAttr::getInt(&v136) != 1)
      {
        v7 = *(*(*(*a1 + 72) + 24) + 8);
        goto LABEL_26;
      }

LABEL_106:
      v77 = *(v12 + 72);
      return *(v77 + 24) | 4;
    }
  }

LABEL_26:
  v20 = v7 & 0xFFFFFFFFFFFFFFF8;
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v7 & 0xFFFFFFFFFFFFFFF8));
  v23 = v21;
  if (v21)
  {
    v21 = (*(v22 + 8))(v22, v21);
  }

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v24[2] & 0x3FFFFFFF) == 1)
  {
    *&v136 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    if (mlir::IntegerAttr::getInt(&v136) == 1)
    {
      goto LABEL_107;
    }
  }

LABEL_34:
  v25 = *(*(v3 + 48) + 8);
  *&v136 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v25 && mlir::detail::constant_int_predicate_matcher::match(&v136, v25))
  {
    v26 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v26);
    v29 = v27;
    if (v27)
    {
      v27 = (*(v28 + 8))(v28, v27);
    }

    v30 = v29 ? v27 : v26;
    if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v30[1] & 0x3FFFFFFF) == 1)
    {
      *&v136 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
      if (!mlir::IntegerAttr::getInt(&v136))
      {
LABEL_107:
        v77 = *(*a1 + 72);
        return *(v77 + 24) | 4;
      }
    }
  }

  v31 = *(v3 + 48);
  if (!*v31)
  {
    return 0;
  }

  if (!*(v31 + 8))
  {
    v136 = xmmword_25D0A0810;
    v137[0] = xmmword_25D0A0820;
    v137[1] = xmmword_25D0A0830;
    v137[2] = xmmword_25D0A0840;
    v137[3] = xmmword_25D0A0850;
    v137[4] = xmmword_25D0A0860;
    v137[5] = xmmword_25D0A0870;
    v137[6] = xmmword_25D0A0880;
    v138 = 0;
    v139 = 0;
    v140 = vdupq_n_s64(1uLL);
    *&v134 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Int = mlir::IntegerAttr::getInt(&v134);
    v52 = 0;
    while (Int != *&v137[v52 - 1])
    {
      if (++v52 == 10)
      {
        return v3;
      }
    }

    v53 = *(&v137[v52 - 1] + 1);
    v54 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 64, 0);
    *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = mlir::IntegerAttr::get(v54, v53);
    v55 = *(*a1 + 72);
    v56 = v55[3];
    v57 = v55[7];
    v58 = v55[1];
    if (v58)
    {
      v59 = *v55;
      *v58 = *v55;
      if (v59)
      {
        *(v59 + 8) = v55[1];
      }
    }

    v55[3] = v57;
    v55[1] = v57;
    v60 = *v57;
    *v55 = *v57;
    if (v60)
    {
      *(v60 + 8) = v55;
    }

    *v57 = v55;
    v61 = *(*a1 + 72);
    v62 = v61 + 4;
    v63 = v61[5];
    if (v63)
    {
      v64 = *v62;
      *v63 = *v62;
      if (v64)
      {
        *(v64 + 8) = v61[5];
      }
    }

    v61[7] = v56;
    v61[5] = v56;
    v65 = *v56;
    v61[4] = *v56;
    if (v65)
    {
      *(v65 + 8) = v62;
    }

    *v56 = v62;
    if (*(*a1 + 36))
    {
      return (*a1 - 16) | 4;
    }

    else
    {
      return 4;
    }
  }

  v33 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(*v31);
  if (!v33)
  {
    return 0;
  }

  v34 = *(v3 + 48);
  v35 = (*v32)(v32, v33);
  I1SameShape = getI1SameShape(v35);
  *&v136 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v37 = mlir::IntegerAttr::getInt(&v136);
  v133 = I1SameShape;
  if (!I1SameShape)
  {
    goto LABEL_110;
  }

  v38 = *v34;
  if (!*v34)
  {
    goto LABEL_110;
  }

  v39 = v34[1];
  if (!v39)
  {
    goto LABEL_110;
  }

  v40 = v37;
  v41 = *v38;
  v42 = *(*v38 + 136);
  if (v42 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v39 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *&v134 = *v34;
    v119 = v39;
    if (*(v38 + 8) == v39[1])
    {
      mlir::IntegerAttr::getValue(&v131, &v134);
      mlir::IntegerAttr::getValue(&v129, &v119);
      v85 = mlir::arith::applyCmpPredicate(v40, &v131, &v129);
      DWORD2(v136) = 1;
      *&v136 = v85;
      LOBYTE(v137[0]) = 1;
      if (v130 >= 0x41 && v129)
      {
        MEMORY[0x25F891010](v129, 0x1000C8000313F17);
      }

      if (v132 >= 0x41 && v131)
      {
        MEMORY[0x25F891010](v131, 0x1000C8000313F17);
      }

      v50 = mlir::IntegerAttr::get(I1SameShape, &v136);
      goto LABEL_133;
    }

LABEL_110:
    v15 = 0;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v43 = v42 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v42 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v43 && *(v38 + 24) == 1)
  {
    v44 = *(*v39 + 136);
    v45 = v44 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v45 && *(v39 + 24) == 1)
    {
      v119 = *v34;
      v116 = v39;
      if (*(v38 + 8) == v39[1])
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v119, &v136);
        v134 = v136;
        v135 = v137[0];
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v136, &v127);
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v116, &v136);
        v134 = v136;
        v135 = v137[0];
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v136, &v125);
        v46 = mlir::arith::applyCmpPredicate(v40, &v127, &v125);
        DWORD2(v136) = 1;
        *&v136 = v46;
        LOBYTE(v137[0]) = 1;
        if (v126 >= 0x41 && v125)
        {
          MEMORY[0x25F891010](v125, 0x1000C8000313F17);
        }

        if (v128 >= 0x41 && v127)
        {
          MEMORY[0x25F891010](v127, 0x1000C8000313F17);
        }

        v47 = *I1SameShape;
        v48 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v49 = mlir::detail::InterfaceMap::lookup(v47 + 8, v48);
        v50 = mlir::DenseElementsAttr::get(I1SameShape, v49, &v136, 1);
LABEL_133:
        v15 = v50;
        if ((v137[0] & 1) != 0 && DWORD2(v136) >= 0x41 && v136)
        {
          MEMORY[0x25F891010](v136, 0x1000C8000313F17);
        }

        return v15 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_110;
    }
  }

  v66 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v41 + 8, v66))
  {
    goto LABEL_110;
  }

  v67 = *v34[1];
  v68 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v67 + 8, v68))
  {
    goto LABEL_110;
  }

  v69 = *v34;
  if (*v34)
  {
    v70 = *v69;
    v71 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    v72 = mlir::detail::InterfaceMap::lookup(v70 + 8, v71);
  }

  else
  {
    v72 = 0;
  }

  v124[0] = v69;
  v124[1] = v72;
  v78 = v34[1];
  if (v78)
  {
    v79 = *v78;
    v80 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    v81 = mlir::detail::InterfaceMap::lookup(v79 + 8, v80);
  }

  else
  {
    v81 = 0;
  }

  v123[0] = v78;
  v123[1] = v81;
  v82 = (**(v72 + 24))();
  if (v82 != (**(v81 + 24))())
  {
    return 0;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v134, v124);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v119, v123);
  v83 = BYTE8(v135);
  if (BYTE8(v135))
  {
    if ((v122 & 1) == 0)
    {
      v3 = 0;
LABEL_180:
      if ((v134 & 1) == 0 && *(&v134 + 1))
      {
        (*(**(&v134 + 1) + 8))(*(&v134 + 1));
      }

      return v3;
    }

    LOWORD(v116) = v134;
    if (v134 == 1)
    {
      v117 = *(&v134 + 1);
    }

    else
    {
      (*(**(&v134 + 1) + 16))(&v117);
    }

    v118 = v135;
    v113 = v119;
    if (v119 == 1)
    {
      v114 = v120;
    }

    else
    {
      (*(*v120 + 16))(&v114);
    }

    v115 = v121;
    *&v136 = v137;
    *(&v136 + 1) = 0x400000000;
    v86 = (*(v72 + 16))(v72, v69);
    v88 = (*(v87 + 24))(v87, v86);
    if (v89)
    {
      v90 = 8 * v89;
      v91 = 1;
      do
      {
        v92 = *v88++;
        v91 *= v92;
        v90 -= 8;
      }

      while (v90);
    }

    else
    {
      v91 = 1;
    }

    if (v91 > HIDWORD(v136))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v136, v91);
    }

    v93 = (*(v72 + 16))(v72, v69);
    v95 = (*(v94 + 24))(v94, v93);
    if (v96)
    {
      v97 = 8 * v96;
      v98 = 1;
      do
      {
        v99 = *v95++;
        v98 *= v99;
        v97 -= 8;
      }

      while (v97);
      if (!v98)
      {
LABEL_168:
        v102 = llvm::cast<mlir::ShapedType,mlir::Type>(&v133);
        v3 = mlir::DenseElementsAttr::get(v102, v103, v136, DWORD2(v136)) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_170:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v136);
        if ((v113 & 1) == 0)
        {
          v104 = v114;
          v114 = 0;
          if (v104)
          {
            (*(*v104 + 8))(v104);
          }
        }

        if ((v116 & 1) == 0)
        {
          v105 = v117;
          v117 = 0;
          if (v105)
          {
            (*(*v105 + 8))(v105);
          }
        }

        goto LABEL_176;
      }
    }

    else
    {
      v98 = 1;
    }

    v100 = v118;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v108, &v116, v100);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v106, &v113, v115);
      v101 = mlir::arith::applyCmpPredicate(v40, &v108, &v106);
      v111 = 1;
      v110 = v101;
      v112 = 1;
      if (v107 >= 0x41 && v106)
      {
        MEMORY[0x25F891010](v106, 0x1000C8000313F17);
      }

      if (v109 >= 0x41 && v108)
      {
        MEMORY[0x25F891010](v108, 0x1000C8000313F17);
      }

      if (v112 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v136, &v110);
      if ((v112 & 1) != 0 && v111 >= 0x41 && v110)
      {
        MEMORY[0x25F891010](v110, 0x1000C8000313F17);
      }

      v100 = ++v118;
      ++v115;
      if (!--v98)
      {
        goto LABEL_168;
      }
    }

    v3 = 0;
    goto LABEL_170;
  }

  v3 = 0;
  if ((v122 & 1) == 0)
  {
    return v3;
  }

LABEL_176:
  if ((v119 & 1) == 0 && v120)
  {
    (*(*v120 + 8))(v120);
  }

  if (v83)
  {
    goto LABEL_180;
  }

  return v3;
}

unint64_t mlir::arith::CmpFOp::fold(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 56);
  if (*v3)
  {
    if (*(**v3 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v3[1];
  if (v5)
  {
    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v4 || ((llvm::APFloat::Storage::Storage(&v22, (v4 + 16)), v22 != &llvm::semPPCDoubleDouble) ? (v7 = &v22) : (v7 = v23), v8 = *(v7 + 20) & 7, llvm::APFloat::Storage::~Storage(&v22), v9 = v4, v8 != 1))
  {
    v9 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  llvm::APFloat::Storage::Storage(&v22, (v9 + 16));
  v10 = v22 == &llvm::semPPCDoubleDouble ? v23 : &v22;
  v11 = *(v10 + 20) & 7;
  llvm::APFloat::Storage::~Storage(&v22);
  if (v11 != 1 && v4 == 0)
  {
    return 0;
  }

  if (v11 == 1)
  {
    v13 = v9;
  }

  else
  {
    v13 = v4;
  }

  v22 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  Int = mlir::IntegerAttr::getInt(&v22);
  llvm::APFloat::Storage::Storage(&v22, (v13 + 16));
  llvm::APFloat::Storage::Storage(v21, (v9 + 16));
  v15 = llvm::APFloat::compare(&v22, v21);
  LOBYTE(v9) = 0;
  switch(Int)
  {
    case 1:
      v16 = v15 == 1;
      goto LABEL_55;
    case 2:
      v16 = v15 == 2;
      goto LABEL_55;
    case 3:
      v18 = v15 - 1 >= 2;
      goto LABEL_43;
    case 4:
      v16 = v15 == 0;
      goto LABEL_55;
    case 5:
      v18 = v15 >= 2;
LABEL_43:
      LOBYTE(v9) = !v18;
      break;
    case 6:
      v19 = (v15 & 0xFFFFFFFD) == 1;
      goto LABEL_48;
    case 7:
      v19 = v15 == 3;
      goto LABEL_48;
    case 8:
      v16 = (v15 & 0xFFFFFFFD) == 1;
      goto LABEL_55;
    case 9:
      v16 = (v15 & 0xFFFFFFFE) == 2;
      goto LABEL_55;
    case 10:
      v16 = v15 == 1 || (v15 & 0xFFFFFFFE) == 2;
      goto LABEL_55;
    case 11:
      v16 = v15 == 3 || v15 == 0;
      goto LABEL_55;
    case 12:
      if (v15 >= 4)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        LODWORD(v9) = 0xBu >> (v15 & 0xF);
      }

      break;
    case 13:
      v19 = v15 == 1;
LABEL_48:
      LOBYTE(v9) = !v19;
      break;
    case 14:
      v16 = v15 == 3;
LABEL_55:
      LOBYTE(v9) = v16;
      break;
    case 15:
      LOBYTE(v9) = 1;
      break;
    default:
      break;
  }

  llvm::APFloat::Storage::~Storage(v21);
  llvm::APFloat::Storage::~Storage(&v22);
  v20 = 592;
  if (v9)
  {
    v20 = 600;
  }

  return *(**(***(*a1 + 24) + 32) + v20) & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::SelectOp::fold(uint64_t a1, uint64_t a2)
{
  v65[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = v2[7];
  v4 = v2[11];
  if (v3 == v4)
  {
    return v3 | 4;
  }

  v7 = v2[3];
  v8 = *(a2 + 40);
  v9 = *v8;
  v63 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v9)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v63, v9))
    {
      return v3 | 4;
    }

    v8 = *(a2 + 40);
    v10 = *v8;
    v63 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v10)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v63, v10))
      {
        return v4 | 4;
      }

      v8 = *(a2 + 40);
    }
  }

  v11 = v8[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v4 | 4;
  }

  v12 = v8[2];
  if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 | 4;
  }

  v13 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v13[2] == 1)
  {
    v63 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v11)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v63, v11))
      {
        v14 = *(*(a2 + 40) + 16);
        v57 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
        if (v14)
        {
          if (mlir::detail::constant_int_predicate_matcher::match(&v57, v14))
          {
            return v7 | 4;
          }
        }
      }
    }
  }

  if ((~*(v7 + 8) & 7) != 0)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v63 = *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 64);
    Int = mlir::IntegerAttr::getInt(&v63);
    if (Int <= 1)
    {
      v21 = *(v19 + 72);
      v22 = *(v21 + 24);
      v23 = *(v21 + 56);
      v24 = v22 == v3 && v23 == v4;
      if (v24 || (v22 == v4 ? (v25 = v23 == v3) : (v25 = 0), v25))
      {
        if (Int == 1)
        {
          v45 = v3;
        }

        else
        {
          v45 = v4;
        }

        return v45 | 4;
      }
    }
  }

LABEL_38:
  v26 = *(a2 + 40);
  v27 = *v26;
  if (!*v26)
  {
    return 0;
  }

  v28 = *(*v27 + 136);
  v29 = v28 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v28 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v30 = v29 ? *v26 : 0;
  v56 = v30;
  if (!v29)
  {
    return 0;
  }

  v31 = *(v26 + 8);
  if (!v31)
  {
    return 0;
  }

  v32 = *(*v31 + 136);
  v33 = v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v34 = v33 ? *(v26 + 8) : 0;
  if (!v33)
  {
    return 0;
  }

  v35 = *(v26 + 16);
  if (!v35)
  {
    return 0;
  }

  v36 = *(*v35 + 136);
  v37 = v36 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v38 = v37 ? v35 : 0;
  if (!v37)
  {
    return 0;
  }

  v63 = v65;
  v64 = 0x600000000;
  v39 = (*(v27[2] + 24))();
  if (v40)
  {
    v41 = 8 * v40;
    v42 = 1;
    do
    {
      v43 = *v39++;
      v42 *= v43;
      v41 -= 8;
    }

    while (v41);
  }

  else
  {
    v42 = 1;
  }

  if (v42 > HIDWORD(v64))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v42, 8);
  }

  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v57, &v56);
  v46 = v57;
  v47 = v58;
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v57, &v56);
  v48 = v60;
  (*(*(v34 + 16) + 24))();
  (*(*(v34 + 16) + 24))();
  (*(*(v38 + 16) + 24))();
  (*(*(v38 + 16) + 24))();
  v57 = v46;
  v58 = v47;
  v59 = v34;
  v60 = 0;
  v61 = v38;
  for (i = 0; v58 != v48; ++i)
  {
    v49 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v57);
    v50 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v59);
    v51 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v61);
    v52 = *(v49 + 24);
    if (v52 > 0x40)
    {
      v53 = llvm::APInt::countLeadingZerosSlowCase((v49 + 16)) == v52;
    }

    else
    {
      v53 = *(v49 + 16) == 0;
    }

    if (v53)
    {
      v55 = v51;
    }

    else
    {
      v55 = v50;
    }

    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v63, v55);
    ++v58;
    ++v60;
  }

  v15 = mlir::DenseElementsAttr::get(*(v34 + 8), *(v34 + 16), v63, v64) & 0xFFFFFFFFFFFFFFFBLL;
  if (v63 != v65)
  {
    free(v63);
  }

  return v15;
}

BOOL mlir::arith::SelectOp::parse(uint64_t a1, uint64_t a2)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v22 = v24;
  v23 = 0x300000000;
  if (((*(*a1 + 720))(a1, &v22, 0, 1, 3) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 576))(a1, &v16) & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((*(*a1 + 128))(a1))
  {
    v4 = v16;
    if (((*(*a1 + 536))(a1, &v16) & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = (*(*a1 + 32))(a1);
    v4 = mlir::IntegerType::get(*v7, 1, 0);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v16, v17);
  v21[0] = v4;
  v21[1] = v16;
  v21[2] = v16;
  v8 = (*(*a1 + 16))(a1);
  v9 = v22;
  v19 = 3;
  v20 = v23;
  if (v23 == 3)
  {
    v10 = v21;
    v11 = 96;
    while (((*(*a1 + 728))(a1, v9, *v10, a2 + 16) & 1) != 0)
    {
      ++v10;
      v9 += 32;
      v11 -= 32;
      if (!v11)
      {
        v5 = 1;
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v18 = 257;
  (*(*a1 + 24))(&v25, a1, v8, v17);
  if (v25)
  {
    mlir::Diagnostic::operator<<<48ul>(v26, "number of operands and types do not match: got ");
  }

  v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v25, &v20);
  v13 = v12;
  if (*v12)
  {
    mlir::Diagnostic::operator<<<15ul>((v12 + 1), " operands and ");
  }

  v14 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v19);
  v15 = v14;
  if (*v14)
  {
    mlir::Diagnostic::operator<<<7ul>((v14 + 1), " types");
  }

  v5 = (v15[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
LABEL_7:
  if (v22 != v24)
  {
    free(v22);
  }

  return v5;
}

uint64_t mlir::arith::SelectOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 2)
  {
    *(v17 + 2) = 32;
    *v17 = 14880;
    *(v16 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v16, " : ", 3uLL);
  }

  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v18)
  {
    (*(*a2 + 32))(a2, v18);
    v19 = (*(*a2 + 16))(a2);
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 > 1uLL)
    {
      *v20 = 8236;
      *(v19 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v19, ", ", 2uLL);
    }
  }

  v21 = *(*a2 + 32);
  v22 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;

  return v21(a2, v22);
}

uint64_t mlir::arith::SelectOp::verify(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 1)
  {
    v4 = *(*(*(v2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v18 = 257;
      mlir::Operation::emitOpError(&v21, v2, v17);
      if (!v21)
      {
        goto LABEL_22;
      }

      mlir::Diagnostic::operator<<<49ul>(v22, "expected condition to be a signless i1, but got ");
      if (!v21)
      {
        goto LABEL_22;
      }

      v19 = 4;
      v20 = v3;
LABEL_16:
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
      v10 = v23 + 24 * v24;
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++v24;
LABEL_22:
      v8 = v25 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
      return v8 & 1;
    }

    I1SameShape = getI1SameShape((*(v2 - 1) & 0xFFFFFFFFFFFFFFF8));
    if (v3 != I1SameShape)
    {
      v12 = I1SameShape;
      v18 = 257;
      mlir::Operation::emitOpError(&v21, *this, v17);
      if (!v21)
      {
        goto LABEL_22;
      }

      mlir::Diagnostic::operator<<<77ul>(v22, "expected condition type to have the same shape as the result type, expected ");
      if (!v21)
      {
        goto LABEL_22;
      }

      v19 = 4;
      v20 = v12;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
      v14 = v23 + 24 * v24;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v24;
      if (!v21)
      {
        goto LABEL_22;
      }

      mlir::Diagnostic::operator<<<11ul>(v22, ", but got ");
      if (!v21)
      {
        goto LABEL_22;
      }

      v19 = 4;
      v20 = v3;
      goto LABEL_16;
    }
  }

  v8 = 1;
  return v8 & 1;
}

unint64_t mlir::arith::ShLIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v81 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v81, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v56 = 0;
  v55 = &v56;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v80 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v67 = *v3;
    v64 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 == 1)
      {
        v24 = mlir::IntegerAttr::get(v80, &v81);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v67 = *v3;
    v64 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v81, 1);
LABEL_58:
        v8 = v24;
        if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25) || (v26 = *v3[1], v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v26 + 8, v27)) || (v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3), v30 = v29, v79[0] = v28, v79[1] = v29, v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]), v33 = v32, v78[0] = v31, v78[1] = v32, v34 = (**(v30 + 24))(), v34 != (**(v33 + 24))()))
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
  v35 = v77;
  if (v77)
  {
    if ((v73 & 1) == 0)
    {
      v8 = 0;
LABEL_118:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_70;
    }

    LOWORD(v67) = v74;
    if (v74 == 1)
    {
      v68 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v68);
    }

    v69 = v76;
    LOWORD(v64) = v70;
    if (v70 == 1)
    {
      v65 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v65);
    }

    v66 = v72;
    v81 = &v83;
    v82 = 0x400000000;
    v36 = (*(v30 + 16))(v30, v28);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v82))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v81, v41);
    }

    v43 = (*(v30 + 16))(v30, v28);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_106:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v8 = mlir::DenseElementsAttr::get(v51, v52, v81, v82);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v81);
        if ((v64 & 1) == 0)
        {
          v53 = v65;
          v65 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v67 & 1) == 0)
        {
          v54 = v68;
          v68 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_114:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v69;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v67, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v57, &v64, v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x25F891010](v57, 0x1000C8000313F17);
      }

      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v63 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v81, &v61);
      if ((v63 & 1) != 0 && v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v50 = ++v69;
      ++v66;
      if (!--v48)
      {
        goto LABEL_106;
      }
    }

    v8 = 0;
    goto LABEL_108;
  }

  v8 = 0;
  if (v73)
  {
    goto LABEL_114;
  }

LABEL_70:
  if (v56)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::arith::ShRUIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v81 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v81, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 40);
  }

  v56 = 0;
  v55 = &v56;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v80 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v67 = *v3;
    v64 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 == 1)
      {
        v24 = mlir::IntegerAttr::get(v80, &v81);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v67 = *v3;
    v64 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v81, 1);
LABEL_58:
        v8 = v24;
        if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25) || (v26 = *v3[1], v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v26 + 8, v27)) || (v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3), v30 = v29, v79[0] = v28, v79[1] = v29, v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]), v33 = v32, v78[0] = v31, v78[1] = v32, v34 = (**(v30 + 24))(), v34 != (**(v33 + 24))()))
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
  v35 = v77;
  if (v77)
  {
    if ((v73 & 1) == 0)
    {
      v8 = 0;
LABEL_118:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_70;
    }

    LOWORD(v67) = v74;
    if (v74 == 1)
    {
      v68 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v68);
    }

    v69 = v76;
    LOWORD(v64) = v70;
    if (v70 == 1)
    {
      v65 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v65);
    }

    v66 = v72;
    v81 = &v83;
    v82 = 0x400000000;
    v36 = (*(v30 + 16))(v30, v28);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v82))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v81, v41);
    }

    v43 = (*(v30 + 16))(v30, v28);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_106:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v8 = mlir::DenseElementsAttr::get(v51, v52, v81, v82);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v81);
        if ((v64 & 1) == 0)
        {
          v53 = v65;
          v65 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v67 & 1) == 0)
        {
          v54 = v68;
          v68 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_114:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v69;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v67, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v57, &v64, v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x25F891010](v57, 0x1000C8000313F17);
      }

      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v63 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v81, &v61);
      if ((v63 & 1) != 0 && v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v50 = ++v69;
      ++v66;
      if (!--v48)
      {
        goto LABEL_106;
      }
    }

    v8 = 0;
    goto LABEL_108;
  }

  v8 = 0;
  if (v73)
  {
    goto LABEL_114;
  }

LABEL_70:
  if (v56)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::arith::ShRSIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v81 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v81, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 40);
  }

  v56 = 0;
  v55 = &v56;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v80 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v67 = *v3;
    v64 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 == 1)
      {
        v24 = mlir::IntegerAttr::get(v80, &v81);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v67 = *v3;
    v64 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
      if (v71 >= 0x41 && v70)
      {
        MEMORY[0x25F891010](v70, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v83 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v81, 1);
LABEL_58:
        v8 = v24;
        if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25) || (v26 = *v3[1], v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v26 + 8, v27)) || (v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3), v30 = v29, v79[0] = v28, v79[1] = v29, v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]), v33 = v32, v78[0] = v31, v78[1] = v32, v34 = (**(v30 + 24))(), v34 != (**(v33 + 24))()))
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
  v35 = v77;
  if (v77)
  {
    if ((v73 & 1) == 0)
    {
      v8 = 0;
LABEL_118:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_70;
    }

    LOWORD(v67) = v74;
    if (v74 == 1)
    {
      v68 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v68);
    }

    v69 = v76;
    LOWORD(v64) = v70;
    if (v70 == 1)
    {
      v65 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v65);
    }

    v66 = v72;
    v81 = &v83;
    v82 = 0x400000000;
    v36 = (*(v30 + 16))(v30, v28);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v82))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v81, v41);
    }

    v43 = (*(v30 + 16))(v30, v28);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_106:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v8 = mlir::DenseElementsAttr::get(v51, v52, v81, v82);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v81);
        if ((v64 & 1) == 0)
        {
          v53 = v65;
          v65 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v67 & 1) == 0)
        {
          v54 = v68;
          v68 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_114:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v69;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v67, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v57, &v64, v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x25F891010](v57, 0x1000C8000313F17);
      }

      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v63 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v81, &v61);
      if ((v63 & 1) != 0 && v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v50 = ++v69;
      ++v66;
      if (!--v48)
      {
        goto LABEL_106;
      }
    }

    v8 = 0;
    goto LABEL_108;
  }

  v8 = 0;
  if (v73)
  {
    goto LABEL_114;
  }

LABEL_70:
  if (v56)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}