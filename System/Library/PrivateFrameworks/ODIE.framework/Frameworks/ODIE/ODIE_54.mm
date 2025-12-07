uint64_t mlir::arith::ConstantOp::verify(mlir::arith::ConstantOp *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  if (v2 != (*v4)(v4, ValueAttr))
  {
    v30 = 257;
    mlir::Operation::emitOpError(&v33, *this, v29);
    if (v33)
    {
      mlir::Diagnostic::operator<<<12ul>(v34, "value type ");
    }

    v11 = mlir::arith::ConstantOp::getValueAttr(this);
    v13 = (*v12)(v12, v11);
    if (v33)
    {
      v31 = 4;
      v32 = v13;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v31, 1);
      v15 = v35 + 24 * v36;
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++v36;
      if (v33)
      {
        mlir::Diagnostic::operator<<<26ul>(v34, " must match return type: ");
        if (v33)
        {
          v31 = 4;
          v32 = v2;
          v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v31, 1);
          v18 = v35 + 24 * v36;
          v19 = *v17;
          *(v18 + 16) = *(v17 + 16);
          *v18 = v19;
          ++v36;
        }
      }
    }

    goto LABEL_28;
  }

  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v2 + 8) >> 30)
  {
    v27 = "integer return type must be signless";
    goto LABEL_27;
  }

  v5 = mlir::arith::ConstantOp::getValueAttr(this);
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v6 + 8, v9))
    {
      v27 = "value must be an integer, float, or elements attribute";
      goto LABEL_27;
    }
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v10 = 1;
    return v10 & 1;
  }

  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  v22 = &v20[v21];
  v10 = 1;
  v23 = memchr(v20, 1, v21);
  if (v23)
  {
    v24 = v23 == v22;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    if ((v25 = mlir::arith::ConstantOp::getValueAttr(this), v26 = *(*v25 + 136), v26 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) && v26 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || (v25[3] & 1) == 0)
    {
      v27 = "intializing scalable vectors with elements attribute is not supported unless it's a vector splat";
LABEL_27:
      v29[0] = v27;
      v30 = 259;
      mlir::Operation::emitOpError(&v33, *this, v29);
LABEL_28:
      v10 = v37 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    }
  }

  return v10 & 1;
}

uint64_t *mlir::arith::ConstantOp::isBuildableWith(uint64_t *a1, _DWORD *a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  if (result)
  {
    if ((*v5)(v5, result) != a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] >> 30)
    {
      return 0;
    }

    else
    {
      v6 = *a1;
      v7 = *(v6 + 136);
      if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        return 1;
      }

      else
      {
        v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        return (mlir::detail::InterfaceMap::lookup(v6 + 8, v9) != 0);
      }
    }
  }

  return result;
}

mlir::Operation *mlir::arith::ConstantOp::materialize(mlir::OpBuilder *a1, uint64_t *a2, _DWORD *a3, uint64_t a4)
{
  if (!mlir::arith::ConstantOp::isBuildableWith(a2, a3))
  {
    return 0;
  }

  if (a2)
  {
    v7 = *a2;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  }

  else
  {
    v9 = 0;
  }

  v11[0] = a2;
  v11[1] = v9;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(a1, a4, v11);
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::arith::ConstantOp::build(v6, v10, *a3, a3[1]);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

void mlir::arith::ConstantIntOp::build(mlir::arith::ConstantIntOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3, uint64_t a4)
{
  v7 = mlir::IntegerType::get(*this, a4, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(this, v7, a3);
  v9 = IntegerAttr;
  if (IntegerAttr)
  {
    v10 = *IntegerAttr;
    v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  }

  else
  {
    v12 = 0;
  }

  __src = v7;
  v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
  *v13 = v9;
  v13[1] = v12;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, &__src, &v15);
}

void mlir::arith::ConstantIndexOp::build(mlir::arith::ConstantIndexOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v4 = *(**this + 472);
  IndexAttr = mlir::Builder::getIndexAttr(this, a3);
  v6 = IndexAttr;
  if (IndexAttr)
  {
    v7 = *IndexAttr;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  }

  else
  {
    v9 = 0;
  }

  __src = v4;
  v10 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
  *v10 = v6;
  v10[1] = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, &__src, &v12);
}

uint64_t mlir::arith::AddIOp::fold(uint64_t a1, uint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 48) + 8);
  v88 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4 && mlir::detail::constant_int_predicate_matcher::match(&v88, v4))
  {
    v5 = *(*(*a1 + 72) + 24);
    return v5 | 4;
  }

  v7 = *(*a1 + 72);
  v8 = *(v7 + 24);
  if ((~*(v8 + 8) & 7) != 0)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16) + 120;
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v9 + 16 * v10 + 16;
    }

    if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v12 = *(v11 + 72);
      if (*(v7 + 56) == *(v12 + 56))
      {
        v5 = *(v12 + 24);
        return v5 | 4;
      }
    }
  }

LABEL_15:
  v13 = *(v7 + 56);
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = *(v13 + 8) & 7;
  if (v14 != 6)
  {
    v15 = v13 + 16 * v14 + 16;
    goto LABEL_22;
  }

  v15 = v13 + 24 * *(v13 + 16) + 120;
  if (v15)
  {
LABEL_22:
    if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v16 = *(v15 + 72);
      if (v8 == *(v16 + 56))
      {
        v5 = *(v16 + 24);
        return v5 | 4;
      }
    }
  }

LABEL_24:
  v17 = *(a2 + 48);
  v18 = *v17;
  if (*v17 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v18 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v19 = v17[1];
  if (!v19 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    if (v18 && (v21 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v17)) != 0)
    {
      v22 = (*v20)(v20, v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = v17[1];
    if (!v23)
    {
      goto LABEL_87;
    }

    v25 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v23);
    if (!v25)
    {
      goto LABEL_87;
    }

    v26 = (*v24)(v24, v25);
    v18 = 0;
    if (!v22 || !v26 || v26 != v22)
    {
      return v18 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v87 = v22;
    v19 = *v17;
    if (!*v17 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v27 = v17[1];
      if (!v27)
      {
        goto LABEL_87;
      }

      v28 = *(*v27 + 136);
      if (v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v18 = v17[1];
      }

      else
      {
        v18 = 0;
      }

      if (!v19 || v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v18 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v29 = *v19;
      v30 = *(*v19 + 136);
      if (v28 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v30 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v74 = *v17;
        v71 = v27;
        if (v19[1] != *(v27 + 8))
        {
          goto LABEL_87;
        }

        mlir::IntegerAttr::getValue(&v81, &v74);
        mlir::IntegerAttr::getValue(&v77, &v71);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v88, &v81, &v77);
        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x25F891010](v77, 0x1000C8000313F17);
        }

        if (v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        if (v90 != 1)
        {
          goto LABEL_87;
        }

        v31 = mlir::IntegerAttr::get(v87, &v88);
LABEL_58:
        v18 = v31;
        if ((v90 & 1) != 0 && v89 >= 0x41)
        {
          if (v88)
          {
            MEMORY[0x25F891010](v88, 0x1000C8000313F17);
          }
        }

        return v18 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if ((v30 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1 && (v28 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v28 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v27 + 24) == 1)
      {
        v74 = *v17;
        v71 = v27;
        if (v19[1] != *(v27 + 8))
        {
          goto LABEL_87;
        }

        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v81, &v74);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v77, &v71);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v88, &v81, &v77);
        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x25F891010](v77, 0x1000C8000313F17);
        }

        if (v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        if (v90 != 1)
        {
          goto LABEL_87;
        }

        v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
        v31 = mlir::DenseElementsAttr::get(v32, v33, &v88, 1);
        goto LABEL_58;
      }

      v34 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v29 + 8, v34) || (v35 = *v17[1], v36 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v35 + 8, v36)) || (v37 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v17), v39 = v38, v86[0] = v37, v86[1] = v38, v40 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17[1]), v42 = v41, v85[0] = v40, v85[1] = v41, v43 = (**(v39 + 24))(), v43 != (**(v42 + 24))()))
      {
LABEL_87:
        v18 = 0;
        return v18 & 0xFFFFFFFFFFFFFFFBLL;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v81, v86);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v77, v85);
      v44 = v84;
      if ((v84 & 1) == 0)
      {
        v18 = 0;
        if ((v80 & 1) == 0)
        {
          return v18 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_130;
      }

      if ((v80 & 1) == 0)
      {
        v18 = 0;
LABEL_134:
        if ((v81 & 1) == 0 && v82)
        {
          (*(*v82 + 8))(v82);
        }

        return v18 & 0xFFFFFFFFFFFFFFFBLL;
      }

      LOWORD(v74) = v81;
      if (v81 == 1)
      {
        v75 = v82;
      }

      else
      {
        (*(*v82 + 16))(&v75);
      }

      v76 = v83;
      LOWORD(v71) = v77;
      if (v77 == 1)
      {
        v72 = v78;
      }

      else
      {
        (*(*v78 + 16))(&v72);
      }

      v73 = v79;
      v88 = &v90;
      v89 = 0x400000000;
      v45 = (*(v39 + 16))(v39, v37);
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
      }

      else
      {
        v50 = 1;
      }

      if (v50 > HIDWORD(v89))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v88, v50);
      }

      v52 = (*(v39 + 16))(v39, v37);
      v54 = (*(v53 + 24))(v53, v52);
      if (v55)
      {
        v56 = 8 * v55;
        v57 = 1;
        do
        {
          v58 = *v54++;
          v57 *= v58;
          v56 -= 8;
        }

        while (v56);
        if (!v57)
        {
LABEL_122:
          v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
          v18 = mlir::DenseElementsAttr::get(v60, v61, v88, v89);
LABEL_124:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v88);
          if ((v71 & 1) == 0)
          {
            v62 = v72;
            v72 = 0;
            if (v62)
            {
              (*(*v62 + 8))(v62);
            }
          }

          if ((v74 & 1) == 0)
          {
            v63 = v75;
            v75 = 0;
            if (v63)
            {
              (*(*v63 + 8))(v63);
            }
          }

LABEL_130:
          if ((v77 & 1) == 0 && v78)
          {
            (*(*v78 + 8))(v78);
          }

          if (!v44)
          {
            return v18 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_134;
        }
      }

      else
      {
        v57 = 1;
      }

      v59 = v76;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v66, &v74, v59);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v64, &v71, v73);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v66, &v64);
        if (v65 >= 0x41 && v64)
        {
          MEMORY[0x25F891010](v64, 0x1000C8000313F17);
        }

        if (v67 >= 0x41 && v66)
        {
          MEMORY[0x25F891010](v66, 0x1000C8000313F17);
        }

        if (v70 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v88, &v68);
        if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
        {
          MEMORY[0x25F891010](v68, 0x1000C8000313F17);
        }

        v59 = ++v76;
        ++v73;
        if (!--v57)
        {
          goto LABEL_122;
        }
      }

      v18 = 0;
      goto LABEL_124;
    }
  }

  v18 = v19;
  return v18 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::AddUIExtendedOp::getShapeForUnroll(mlir::arith::AddUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::arith::AddUIExtendedOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v149 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 36);
  v7 = *a1 - 16;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v7 + 8) & 7;
  if (v6)
  {
    v9 = v8 == 6;
  }

  else
  {
    v9 = 1;
  }

  v10 = -32;
  if (v9 || v8 == 5)
  {
    v10 = -40;
  }

  v12 = *(v5 + v10 + 8);
  v13 = *(*(v5 + 72) + 56);
  *&v147 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (v13)
  {
    v15 = *(v13 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v13 + 24 * *(v13 + 16);
      v17 = (v16 + 120);
      if (v16 == -120)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = (v13 + 16 * v15 + 16);
    }

    if (mlir::detail::constant_int_predicate_matcher::match(&v147, v17))
    {
      *&v147 = *(***(*a1 + 24) + 32);
      ZeroAttr = mlir::Builder::getZeroAttr(&v147, (v12 & 0xFFFFFFFFFFFFFFF8));
      v19 = *(*(*a1 + 72) + 24) | 4;
LABEL_21:
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v19);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, ZeroAttr & 0xFFFFFFFFFFFFFFFBLL);
      return 1;
    }
  }

LABEL_22:
  v21 = *(a2 + 40);
  v22 = *v21;
  if (*v21 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_84;
  }

  v23 = v21[1];
  if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_60;
  }

  if (v22 && (v25 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v21)) != 0)
  {
    v26 = (*v24)(v24, v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = v21[1];
  if (!v27)
  {
    return 0;
  }

  v29 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v27);
  if (!v29)
  {
    return 0;
  }

  v30 = (*v28)(v28, v29);
  result = 0;
  if (v26 && v30 && v30 == v26)
  {
    v134 = v26;
    v23 = *v21;
    if (!*v21 || *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v31 = v21[1];
      if (!v31)
      {
        goto LABEL_83;
      }

      v32 = *(*v31 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v22 = v21[1];
      }

      else
      {
        v22 = 0;
      }

      if (!v23 || v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_84;
      }

      v33 = *v23;
      v34 = *(*v23 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v125 = *v21;
        v122 = v31;
        if (v23[1] == *(v31 + 8))
        {
          mlir::IntegerAttr::getValue(&v145, &v125);
          mlir::IntegerAttr::getValue(&v128, &v122);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v147, &v145, &v128);
          if (v129 >= 0x41 && v128)
          {
            MEMORY[0x25F891010](v128, 0x1000C8000313F17);
          }

          if (DWORD2(v145) >= 0x41 && v145)
          {
            MEMORY[0x25F891010](v145, 0x1000C8000313F17);
          }

          if (v148[0] == 1)
          {
            v35 = mlir::IntegerAttr::get(v134, &v147);
LABEL_56:
            v22 = v35;
            if ((v148[0] & 1) != 0 && DWORD2(v147) >= 0x41 && v147)
            {
              MEMORY[0x25F891010](v147, 0x1000C8000313F17);
            }

            goto LABEL_84;
          }
        }

        goto LABEL_83;
      }

      if ((v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v23 + 24) == 1 && (v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v31 + 24) == 1)
      {
        v125 = *v21;
        v122 = v31;
        if (v23[1] == *(v31 + 8))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v145, &v125);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v128, &v122);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v147, &v145, &v128);
          if (v129 >= 0x41 && v128)
          {
            MEMORY[0x25F891010](v128, 0x1000C8000313F17);
          }

          if (DWORD2(v145) >= 0x41 && v145)
          {
            MEMORY[0x25F891010](v145, 0x1000C8000313F17);
          }

          if (v148[0] == 1)
          {
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
            v35 = mlir::DenseElementsAttr::get(v36, v37, &v147, 1);
            goto LABEL_56;
          }
        }

LABEL_83:
        v22 = 0;
        goto LABEL_84;
      }

      v38 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v33 + 8, v38))
      {
        goto LABEL_83;
      }

      v39 = *v21[1];
      v40 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v39 + 8, v40))
      {
        goto LABEL_83;
      }

      v41 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v21);
      v43 = v42;
      v143 = v41;
      v144 = v42;
      v44 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v21[1]);
      v46 = v45;
      v140 = v44;
      v141 = v45;
      v47 = (**(v43 + 24))();
      if (v47 != (**(v46 + 24))())
      {
        goto LABEL_83;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v145, &v143);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v128, &v140);
      v48 = BYTE8(v146);
      if ((BYTE8(v146) & 1) == 0)
      {
        v22 = 0;
        if ((v131 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_222:
        if ((v128 & 1) == 0 && v129)
        {
          (*(*v129 + 8))(v129);
        }

        if (!v48)
        {
LABEL_84:
          if (!v22)
          {
            return 0;
          }

          v49 = **(a2 + 40);
          v50 = *v22;
          v51 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
          v52 = mlir::detail::InterfaceMap::lookup(v50 + 8, v51);
          v53 = (*v52)(v52, v22);
          I1SameShape = getI1SameShape(v53);
          v142 = I1SameShape;
          if (!I1SameShape || v49 == 0)
          {
            return 0;
          }

          v56 = I1SameShape;
          v57 = *v22;
          v58 = *(*v22 + 136);
          if (v58 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v128 = v22;
            v125 = v49;
            if (*(v22 + 8) == v49[1])
            {
              mlir::IntegerAttr::getValue(&v140, &v128);
              mlir::IntegerAttr::getValue(&v138, &v125);
              calculateUnsignedOverflow(&v145, &v140, &v138);
              DWORD2(v147) = DWORD2(v145);
              *&v147 = v145;
              v148[0] = 1;
              if (v139 >= 0x41 && v138)
              {
                MEMORY[0x25F891010](v138, 0x1000C8000313F17);
              }

              if (v141 >= 0x41 && v140)
              {
                MEMORY[0x25F891010](v140, 0x1000C8000313F17);
              }

              v64 = mlir::IntegerAttr::get(v56, &v147);
              goto LABEL_123;
            }

LABEL_129:
            ZeroAttr = 0;
            goto LABEL_130;
          }

          if ((v58 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v22 + 24) == 1)
          {
            v59 = *(*v49 + 136);
            v60 = v59 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v59 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
            if (v60 && *(v49 + 24) == 1)
            {
              v128 = v22;
              v125 = v49;
              if (*(v22 + 8) == v49[1])
              {
                mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v128, &v147);
                v145 = v147;
                v146 = *v148;
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v147, &v136);
                mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v125, &v147);
                v145 = v147;
                v146 = *v148;
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v147, &v134);
                calculateUnsignedOverflow(&v145, &v136, &v134);
                DWORD2(v147) = DWORD2(v145);
                *&v147 = v145;
                v148[0] = 1;
                if (v135 >= 0x41 && v134)
                {
                  MEMORY[0x25F891010](v134, 0x1000C8000313F17);
                }

                if (v137 >= 0x41 && v136)
                {
                  MEMORY[0x25F891010](v136, 0x1000C8000313F17);
                }

                v61 = *v56;
                v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
                v63 = mlir::detail::InterfaceMap::lookup(v61 + 8, v62);
                v64 = mlir::DenseElementsAttr::get(v56, v63, &v147, 1);
LABEL_123:
                ZeroAttr = v64;
                if ((v148[0] & 1) != 0 && DWORD2(v147) >= 0x41 && v147)
                {
                  MEMORY[0x25F891010](v147, 0x1000C8000313F17);
                }

                goto LABEL_130;
              }

              goto LABEL_129;
            }
          }

          v65 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v57 + 8, v65))
          {
            return 0;
          }

          v66 = *v49;
          v67 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v66 + 8, v67))
          {
            return 0;
          }

          v68 = *v22;
          v69 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          v70 = mlir::detail::InterfaceMap::lookup(v68 + 8, v69);
          v133[0] = v22;
          v133[1] = v70;
          v71 = *v49;
          v72 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          v73 = mlir::detail::InterfaceMap::lookup(v71 + 8, v72);
          v132[0] = v49;
          v132[1] = v73;
          v74 = (**(v70 + 24))();
          if (v74 != (**(v73 + 24))())
          {
            goto LABEL_129;
          }

          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v145, v133);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v128, v132);
          v75 = BYTE8(v146);
          if ((BYTE8(v146) & 1) == 0)
          {
            if (v131 & 1) == 0 || (v128)
            {
              goto LABEL_129;
            }

            ZeroAttr = 0;
            goto LABEL_175;
          }

          if ((v131 & 1) == 0)
          {
            ZeroAttr = 0;
LABEL_178:
            if ((v145 & 1) == 0)
            {
              if (*(&v145 + 1))
              {
                (*(**(&v145 + 1) + 8))(*(&v145 + 1));
              }
            }

LABEL_130:
            if (ZeroAttr)
            {
              v19 = v22 & 0xFFFFFFFFFFFFFFFBLL;
              goto LABEL_21;
            }

            return 0;
          }

          LOWORD(v125) = v145;
          if (v145 == 1)
          {
            v126 = *(&v145 + 1);
          }

          else
          {
            (*(**(&v145 + 1) + 16))(&v126);
          }

          v127 = v146;
          v76 = v128;
          LOWORD(v122) = v128;
          if (v128 == 1)
          {
            v123 = v129;
          }

          else
          {
            (*(*v129 + 16))(&v123);
          }

          v124 = v130;
          *&v147 = v148;
          *(&v147 + 1) = 0x400000000;
          v77 = (*(v70 + 16))(v70, v22);
          v79 = (*(v78 + 24))(v78, v77);
          if (v80)
          {
            v81 = 8 * v80;
            v82 = 1;
            do
            {
              v83 = *v79++;
              v82 *= v83;
              v81 -= 8;
            }

            while (v81);
          }

          else
          {
            v82 = 1;
          }

          if (v82 > HIDWORD(v147))
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v147, v82);
          }

          v84 = (*(v70 + 16))(v70, v22);
          v86 = (*(v85 + 24))(v85, v84);
          if (v87)
          {
            v88 = 8 * v87;
            v89 = 1;
            do
            {
              v90 = *v86++;
              v89 *= v90;
              v88 -= 8;
            }

            while (v88);
            if (!v89)
            {
LABEL_166:
              v92 = llvm::cast<mlir::ShapedType,mlir::Type>(&v142);
              ZeroAttr = mlir::DenseElementsAttr::get(v92, v93, v147, DWORD2(v147));
              goto LABEL_168;
            }
          }

          else
          {
            v89 = 1;
          }

          v91 = v127;
          while (1)
          {
            mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v117, &v125, v91);
            mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v115, &v122, v124);
            calculateUnsignedOverflow(&v143, &v117, &v115);
            v120 = v144;
            v119 = v143;
            v121 = 1;
            if (v116 >= 0x41 && v115)
            {
              MEMORY[0x25F891010](v115, 0x1000C8000313F17);
            }

            if (v118 >= 0x41 && v117)
            {
              MEMORY[0x25F891010](v117, 0x1000C8000313F17);
            }

            if (v121 != 1)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v147, &v119);
            if ((v121 & 1) != 0 && v120 >= 0x41 && v119)
            {
              MEMORY[0x25F891010](v119, 0x1000C8000313F17);
            }

            v91 = ++v127;
            ++v124;
            if (!--v89)
            {
              goto LABEL_166;
            }
          }

          ZeroAttr = 0;
LABEL_168:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v147);
          if ((v122 & 1) == 0)
          {
            v94 = v123;
            v123 = 0;
            if (v94)
            {
              (*(*v94 + 8))(v94);
            }
          }

          if ((v125 & 1) == 0)
          {
            v95 = v126;
            v126 = 0;
            if (v95)
            {
              (*(*v95 + 8))(v95);
            }
          }

          if (v76)
          {
LABEL_177:
            if (!v75)
            {
              goto LABEL_130;
            }

            goto LABEL_178;
          }

LABEL_175:
          if (v129)
          {
            (*(*v129 + 8))(v129);
          }

          goto LABEL_177;
        }

LABEL_226:
        if ((v145 & 1) == 0 && *(&v145 + 1))
        {
          (*(**(&v145 + 1) + 8))(*(&v145 + 1));
        }

        goto LABEL_84;
      }

      if ((v131 & 1) == 0)
      {
        v22 = 0;
        goto LABEL_226;
      }

      LOWORD(v125) = v145;
      if (v145 == 1)
      {
        v126 = *(&v145 + 1);
      }

      else
      {
        (*(**(&v145 + 1) + 16))(&v126);
      }

      v127 = v146;
      LOWORD(v122) = v128;
      if (v128 == 1)
      {
        v123 = v129;
      }

      else
      {
        (*(*v129 + 16))(&v123);
      }

      v124 = v130;
      *&v147 = v148;
      *(&v147 + 1) = 0x400000000;
      v96 = (*(v43 + 16))(v43, v41);
      v98 = (*(v97 + 24))(v97, v96);
      if (v99)
      {
        v100 = 8 * v99;
        v101 = 1;
        do
        {
          v102 = *v98++;
          v101 *= v102;
          v100 -= 8;
        }

        while (v100);
      }

      else
      {
        v101 = 1;
      }

      if (v101 > HIDWORD(v147))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v147, v101);
      }

      v103 = (*(v43 + 16))(v43, v41);
      v105 = (*(v104 + 24))(v104, v103);
      if (v106)
      {
        v107 = 8 * v106;
        v108 = 1;
        do
        {
          v109 = *v105++;
          v108 *= v109;
          v107 -= 8;
        }

        while (v107);
        if (!v108)
        {
LABEL_214:
          v111 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
          v22 = mlir::DenseElementsAttr::get(v111, v112, v147, DWORD2(v147));
LABEL_216:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v147);
          if ((v122 & 1) == 0)
          {
            v113 = v123;
            v123 = 0;
            if (v113)
            {
              (*(*v113 + 8))(v113);
            }
          }

          if ((v125 & 1) == 0)
          {
            v114 = v126;
            v126 = 0;
            if (v114)
            {
              (*(*v114 + 8))(v114);
            }
          }

          goto LABEL_222;
        }
      }

      else
      {
        v108 = 1;
      }

      v110 = v127;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v138, &v125, v110);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v136, &v122, v124);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v119, &v138, &v136);
        if (v137 >= 0x41 && v136)
        {
          MEMORY[0x25F891010](v136, 0x1000C8000313F17);
        }

        if (v139 >= 0x41 && v138)
        {
          MEMORY[0x25F891010](v138, 0x1000C8000313F17);
        }

        if (v121 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v147, &v119);
        if ((v121 & 1) != 0 && v120 >= 0x41 && v119)
        {
          MEMORY[0x25F891010](v119, 0x1000C8000313F17);
        }

        v110 = ++v127;
        ++v124;
        if (!--v108)
        {
          goto LABEL_214;
        }
      }

      v22 = 0;
      goto LABEL_216;
    }

LABEL_60:
    v22 = v23;
    goto LABEL_84;
  }

  return result;
}

uint64_t getI1SameShape(uint64_t *a1)
{
  v2 = mlir::IntegerType::get(*(**a1 + 32), 1, 0);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v3)
  {
    v5 = *v4;
    LOBYTE(v8[0]) = 0;
    v9 = 0;
    return v5(v4, v3, v8, v2);
  }

  else
  {
    if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return v2;
    }

    v8[0] = v2;
    return mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v2 + 32), v8);
  }
}

uint64_t *calculateUnsignedOverflow@<X0>(uint64_t *__return_ptr a1@<X8>, const llvm::APInt *a2@<X0>, const llvm::APInt *a3@<X1>)
{
  result = llvm::APInt::compare(a2, a3);
  *(a1 + 2) = 1;
  if ((result & 0x80000000) != 0)
  {
    *a1 = -1;

    return llvm::APInt::clearUnusedBits(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t mlir::arith::SubIOp::fold(uint64_t *a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  if (*(*(*a1 + 72) + 24) == *(*(*a1 + 72) + 56))
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_12;
    }

    v11 = v9;
    v12 = v10;
    if (!(*(v10 + 16))(v10, v9))
    {
      goto LABEL_2;
    }

    v13 = (*(v12 + 24))(v12, v11);
    if (!v14)
    {
LABEL_12:
      v16 = *a1;
      v95 = *(***(*a1 + 24) + 32);
      return mlir::Builder::getZeroAttr(&v95, (*(v16 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = 8 * v14;
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_2:
  v4 = *(*(a2 + 48) + 8);
  v95 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    v5 = mlir::detail::constant_int_predicate_matcher::match(&v95, v4);
    v6 = *a1;
    if (v5)
    {
      v7 = *(*(v6 + 72) + 24);
      return v7 | 4;
    }
  }

  else
  {
    v6 = *a1;
  }

  v17 = *(v6 + 72);
  v18 = *(v17 + 24);
  if ((~*(v18 + 8) & 7) == 0)
  {
    v18 = 0;
  }

  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = *(v18 + 8) & 7;
  if (v19 != 6)
  {
    v20 = v18 + 16 * v19 + 16;
LABEL_21:
    if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
    {
      v36 = *(v17 + 56);
      v37 = *(v20 + 72);
      v7 = *(v37 + 56);
      v38 = *(v37 + 24);
      if (v36 == v7)
      {
        return v38 | 4;
      }

      if (v36 == v38)
      {
        return v7 | 4;
      }
    }

    goto LABEL_22;
  }

  v20 = v18 + 24 * *(v18 + 16) + 120;
  if (v20)
  {
    goto LABEL_21;
  }

LABEL_22:
  v21 = *(a2 + 48);
  v22 = *v21;
  if (*v21 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v22 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v23 = v21[1];
  if (!v23 || *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    if (v22 && (v25 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v21)) != 0)
    {
      v26 = (*v24)(v24, v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = v21[1];
    if (!v27)
    {
      goto LABEL_87;
    }

    v29 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v27);
    if (!v29)
    {
      goto LABEL_87;
    }

    v30 = (*v28)(v28, v29);
    v22 = 0;
    if (!v26 || !v30 || v30 != v26)
    {
      return v22 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v94 = v26;
    v23 = *v21;
    if (!*v21 || *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v31 = v21[1];
      if (!v31)
      {
        goto LABEL_87;
      }

      v32 = *(*v31 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v22 = v21[1];
      }

      else
      {
        v22 = 0;
      }

      if (!v23 || v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v22 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v33 = *v23;
      v34 = *(*v23 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v81 = *v21;
        v78 = v31;
        if (v23[1] != *(v31 + 8))
        {
          goto LABEL_87;
        }

        mlir::IntegerAttr::getValue(&v88, &v81);
        mlir::IntegerAttr::getValue(&v84, &v78);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v95, &v88, &v84);
        if (v85 >= 0x41 && v84)
        {
          MEMORY[0x25F891010](v84, 0x1000C8000313F17);
        }

        if (v89 >= 0x41 && v88)
        {
          MEMORY[0x25F891010](v88, 0x1000C8000313F17);
        }

        if (v97 != 1)
        {
          goto LABEL_87;
        }

        v35 = mlir::IntegerAttr::get(v94, &v95);
LABEL_56:
        v22 = v35;
        if ((v97 & 1) != 0 && v96 >= 0x41)
        {
          if (v95)
          {
            MEMORY[0x25F891010](v95, 0x1000C8000313F17);
          }
        }

        return v22 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if ((v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v23 + 24) == 1 && (v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v31 + 24) == 1)
      {
        v81 = *v21;
        v78 = v31;
        if (v23[1] != *(v31 + 8))
        {
          goto LABEL_87;
        }

        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v88, &v81);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v84, &v78);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v95, &v88, &v84);
        if (v85 >= 0x41 && v84)
        {
          MEMORY[0x25F891010](v84, 0x1000C8000313F17);
        }

        if (v89 >= 0x41 && v88)
        {
          MEMORY[0x25F891010](v88, 0x1000C8000313F17);
        }

        if (v97 != 1)
        {
          goto LABEL_87;
        }

        v39 = llvm::cast<mlir::ShapedType,mlir::Type>(&v94);
        v35 = mlir::DenseElementsAttr::get(v39, v40, &v95, 1);
        goto LABEL_56;
      }

      v41 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v33 + 8, v41) || (v42 = *v21[1], v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v42 + 8, v43)) || (v44 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v21), v46 = v45, v93[0] = v44, v93[1] = v45, v47 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v21[1]), v49 = v48, v92[0] = v47, v92[1] = v48, v50 = (**(v46 + 24))(), v50 != (**(v49 + 24))()))
      {
LABEL_87:
        v22 = 0;
        return v22 & 0xFFFFFFFFFFFFFFFBLL;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v88, v93);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v84, v92);
      v51 = v91;
      if ((v91 & 1) == 0)
      {
        v22 = 0;
        if ((v87 & 1) == 0)
        {
          return v22 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_130;
      }

      if ((v87 & 1) == 0)
      {
        v22 = 0;
LABEL_134:
        if ((v88 & 1) == 0 && v89)
        {
          (*(*v89 + 8))(v89);
        }

        return v22 & 0xFFFFFFFFFFFFFFFBLL;
      }

      LOWORD(v81) = v88;
      if (v88 == 1)
      {
        v82 = v89;
      }

      else
      {
        (*(*v89 + 16))(&v82);
      }

      v83 = v90;
      LOWORD(v78) = v84;
      if (v84 == 1)
      {
        v79 = v85;
      }

      else
      {
        (*(*v85 + 16))(&v79);
      }

      v80 = v86;
      v95 = &v97;
      v96 = 0x400000000;
      v52 = (*(v46 + 16))(v46, v44);
      v54 = (*(v53 + 24))(v53, v52);
      if (v55)
      {
        v56 = 8 * v55;
        v57 = 1;
        do
        {
          v58 = *v54++;
          v57 *= v58;
          v56 -= 8;
        }

        while (v56);
      }

      else
      {
        v57 = 1;
      }

      if (v57 > HIDWORD(v96))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v95, v57);
      }

      v59 = (*(v46 + 16))(v46, v44);
      v61 = (*(v60 + 24))(v60, v59);
      if (v62)
      {
        v63 = 8 * v62;
        v64 = 1;
        do
        {
          v65 = *v61++;
          v64 *= v65;
          v63 -= 8;
        }

        while (v63);
        if (!v64)
        {
LABEL_122:
          v67 = llvm::cast<mlir::ShapedType,mlir::Type>(&v94);
          v22 = mlir::DenseElementsAttr::get(v67, v68, v95, v96);
LABEL_124:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v95);
          if ((v78 & 1) == 0)
          {
            v69 = v79;
            v79 = 0;
            if (v69)
            {
              (*(*v69 + 8))(v69);
            }
          }

          if ((v81 & 1) == 0)
          {
            v70 = v82;
            v82 = 0;
            if (v70)
            {
              (*(*v70 + 8))(v70);
            }
          }

LABEL_130:
          if ((v84 & 1) == 0 && v85)
          {
            (*(*v85 + 8))(v85);
          }

          if (!v51)
          {
            return v22 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_134;
        }
      }

      else
      {
        v64 = 1;
      }

      v66 = v83;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v73, &v81, v66);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v71, &v78, v80);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v75, &v73, &v71);
        if (v72 >= 0x41 && v71)
        {
          MEMORY[0x25F891010](v71, 0x1000C8000313F17);
        }

        if (v74 >= 0x41 && v73)
        {
          MEMORY[0x25F891010](v73, 0x1000C8000313F17);
        }

        if (v77 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v95, &v75);
        if ((v77 & 1) != 0 && v76 >= 0x41 && v75)
        {
          MEMORY[0x25F891010](v75, 0x1000C8000313F17);
        }

        v66 = ++v83;
        ++v80;
        if (!--v64)
        {
          goto LABEL_122;
        }
      }

      v22 = 0;
      goto LABEL_124;
    }
  }

  v22 = v23;
  return v22 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MulIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v82 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      v6 = *(*(*a1 + 72) + 56);
      return v6 | 4;
    }

    v3 = *(a2 + 48);
    v7 = v3[1];
    v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v7)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v82, v7))
      {
        v6 = *(*(*a1 + 72) + 24);
        return v6 | 4;
      }

      v3 = *(a2 + 48);
    }
  }

  v9 = *v3;
  if (!*v3 || *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v10 = v3[1];
    if (!v10 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
      {
        v13 = (*v11)(v11, v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = v3[1];
      if (!v14)
      {
        goto LABEL_70;
      }

      v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      if (!v16)
      {
        goto LABEL_70;
      }

      v17 = (*v15)(v15, v16);
      v9 = 0;
      if (!v13 || !v17 || v17 != v13)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v79 = v13;
      v10 = *v3;
      if (!*v3 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v18 = v3[1];
        if (!v18)
        {
          goto LABEL_70;
        }

        v19 = *(*v18 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v9 = v3[1];
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
        if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v63 = *v3;
          v60 = v18;
          if (v10[1] == *(v18 + 8))
          {
            mlir::IntegerAttr::getValue(&v69, &v63);
            mlir::IntegerAttr::getValue(&v66, &v60);
            llvm::APInt::operator*(&v69, &v66, &v73);
            LODWORD(v83) = v74;
            v82 = v73;
            v84 = 1;
            if (v67 >= 0x41 && v66)
            {
              MEMORY[0x25F891010](v66, 0x1000C8000313F17);
            }

            if (v70 >= 0x41 && v69)
            {
              MEMORY[0x25F891010](v69, 0x1000C8000313F17);
            }

            v25 = mlir::IntegerAttr::get(v79, &v82);
            goto LABEL_59;
          }

LABEL_70:
          v9 = 0;
          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
        {
          v63 = *v3;
          v60 = v18;
          if (v10[1] == *(v18 + 8))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v69, &v63);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v66, &v60);
            llvm::APInt::operator*(&v69, &v66, &v73);
            LODWORD(v83) = v74;
            v82 = v73;
            v84 = 1;
            if (v67 >= 0x41 && v66)
            {
              MEMORY[0x25F891010](v66, 0x1000C8000313F17);
            }

            if (v70 >= 0x41 && v69)
            {
              MEMORY[0x25F891010](v69, 0x1000C8000313F17);
            }

            v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v79);
            v25 = mlir::DenseElementsAttr::get(v23, v24, &v82, 1);
LABEL_59:
            v9 = v25;
            if ((v84 & 1) != 0 && v83 >= 0x41)
            {
              if (v82)
              {
                MEMORY[0x25F891010](v82, 0x1000C8000313F17);
              }
            }

            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_70;
        }

        v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v26))
        {
          goto LABEL_70;
        }

        v27 = *v3[1];
        v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v28))
        {
          goto LABEL_70;
        }

        v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
        v31 = v30;
        v78[0] = v29;
        v78[1] = v30;
        v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
        v34 = v33;
        v77[0] = v32;
        v77[1] = v33;
        v35 = (**(v31 + 24))();
        if (v35 != (**(v34 + 24))())
        {
          goto LABEL_70;
        }

        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v73, v78);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v69, v77);
        v36 = v76;
        if ((v76 & 1) == 0)
        {
          v9 = 0;
          if ((v72 & 1) == 0)
          {
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_113;
        }

        if ((v72 & 1) == 0)
        {
          v9 = 0;
LABEL_117:
          if ((v73 & 1) == 0 && v74)
          {
            (*(*v74 + 8))(v74);
          }

          return v9 & 0xFFFFFFFFFFFFFFFBLL;
        }

        LOWORD(v66) = v73;
        if (v73 == 1)
        {
          v67 = v74;
        }

        else
        {
          (*(*v74 + 16))(&v67);
        }

        v68 = v75;
        LOWORD(v63) = v69;
        if (v69 == 1)
        {
          v64 = v70;
        }

        else
        {
          (*(*v70 + 16))(&v64);
        }

        v65 = v71;
        v82 = &v84;
        v83 = 0x400000000;
        v37 = (*(v31 + 16))(v31, v29);
        v39 = (*(v38 + 24))(v38, v37);
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

        if (v42 > HIDWORD(v83))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
        }

        v44 = (*(v31 + 16))(v31, v29);
        v46 = (*(v45 + 24))(v45, v44);
        if (v47)
        {
          v48 = 8 * v47;
          v49 = 1;
          do
          {
            v50 = *v46++;
            v49 *= v50;
            v48 -= 8;
          }

          while (v48);
          if (!v49)
          {
LABEL_105:
            v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v79);
            v9 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_107:
            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
            if ((v63 & 1) == 0)
            {
              v54 = v64;
              v64 = 0;
              if (v54)
              {
                (*(*v54 + 8))(v54);
              }
            }

            if ((v66 & 1) == 0)
            {
              v55 = v67;
              v67 = 0;
              if (v55)
              {
                (*(*v55 + 8))(v55);
              }
            }

LABEL_113:
            if ((v69 & 1) == 0 && v70)
            {
              (*(*v70 + 8))(v70);
            }

            if (!v36)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_117;
          }
        }

        else
        {
          v49 = 1;
        }

        v51 = v68;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v66, v51);
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v56, &v63, v65);
          llvm::APInt::operator*(&v58, &v56, &v80);
          v61 = v81;
          v60 = v80;
          v62 = 1;
          if (v57 >= 0x41 && v56)
          {
            MEMORY[0x25F891010](v56, 0x1000C8000313F17);
          }

          if (v59 >= 0x41 && v58)
          {
            MEMORY[0x25F891010](v58, 0x1000C8000313F17);
          }

          if (v62 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v60);
          if ((v62 & 1) != 0 && v61 >= 0x41 && v60)
          {
            MEMORY[0x25F891010](v60, 0x1000C8000313F17);
          }

          v51 = ++v68;
          ++v65;
          if (!--v49)
          {
            goto LABEL_105;
          }
        }

        v9 = 0;
        goto LABEL_107;
      }
    }

    v9 = v10;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::MulIOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, void *), uint64_t a3)
{
  v51[4] = *MEMORY[0x277D85DE8];
  if (*(*(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return;
  }

  v6 = *(*a1 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v48 = 0;
  v49 = &v48;
  if ((~*(v7 + 8) & 7) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16);
      v12 = v11 + 120;
      if (v11 == -120)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = v9 + 16 * v10 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v49, v12))
    {
      v13 = (~*(v8 + 8) & 7) != 0 ? v8 : 0;
      if (v13)
      {
        v14 = *(v13 + 8) & 7;
        if (v14 == 6)
        {
          v15 = v13 + 24 * *(v13 + 16) + 120;
          if (!v15)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v15 = v13 + 16 * v14 + 16;
        }

        v16 = *(*(v15 + 48) + 8);
        if (*(v16 + 24) == 13)
        {
          v17 = *(v16 + 16);
          v18 = *v17;
          v19 = *(v17 + 5);
          if (v18 == 0x762E726F74636576 && v19 == 0x656C616373762E72)
          {
LABEL_48:
            v49 = v51;
            v50 = xmmword_25D0A05C0;
            v41 = 2;
            v45 = 0;
            v46 = 1;
            v43 = 0;
            v44 = 0;
            v42 = 0;
            v40 = &unk_286E79DA0;
            v47 = &v49;
            llvm::raw_ostream::SetUnbuffered(&v40);
            v36 = v44;
            if (v44 >= v43)
            {
              llvm::raw_ostream::write(&v40, 99);
            }

            else
            {
              ++v44;
              *v36 = 99;
            }

            Int = mlir::IntegerAttr::getInt(&v48);
            llvm::write_integer(&v40, Int, 0, 0);
            v38 = v44;
            if (v43 - v44 > 6)
            {
              *(v44 + 3) = 1701601635;
              *v38 = 1668511327;
              v44 += 7;
            }

            else
            {
              llvm::raw_ostream::write(&v40, "_vscale", 7uLL);
            }

            if (*(*a1 + 36))
            {
              v39 = *a1 - 16;
            }

            else
            {
              v39 = 0;
            }

            a2(a3, v39, *v47, v47[1]);
            llvm::raw_ostream::~raw_ostream(&v40);
            if (v49 != v51)
            {
              free(v49);
            }

            return;
          }
        }
      }
    }
  }

LABEL_25:
  v21 = *(*a1 + 72);
  v22 = *(v21 + 56);
  v23 = *(v21 + 24);
  v49 = &v48;
  if ((~*(v22 + 8) & 7) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v25 = *(v24 + 8) & 7;
    if (v25 == 6)
    {
      v26 = v24 + 24 * *(v24 + 16);
      v27 = v26 + 120;
      if (v26 == -120)
      {
        return;
      }
    }

    else
    {
      v27 = v24 + 16 * v25 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v49, v27))
    {
      v28 = (~*(v23 + 8) & 7) != 0 ? v23 : 0;
      if (v28)
      {
        v29 = *(v28 + 8) & 7;
        if (v29 == 6)
        {
          v30 = v28 + 24 * *(v28 + 16) + 120;
          if (!v30)
          {
            return;
          }
        }

        else
        {
          v30 = v28 + 16 * v29 + 16;
        }

        v31 = *(*(v30 + 48) + 8);
        if (*(v31 + 24) == 13)
        {
          v32 = *(v31 + 16);
          v33 = *v32;
          v34 = *(v32 + 5);
          if (v33 == 0x762E726F74636576 && v34 == 0x656C616373762E72)
          {
            goto LABEL_48;
          }
        }
      }
    }
  }
}

void mlir::arith::MulSIExtendedOp::getShapeForUnroll(mlir::arith::MulSIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::arith::MulSIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = v5[1];
  v132 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v6)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v132, v6))
    {
      v7 = *(*(a2 + 40) + 8);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v7 & 0xFFFFFFFFFFFFFFFBLL);
      v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_130:
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v8);
      return 1;
    }

    v5 = *(a2 + 40);
  }

  v9 = *v5;
  if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_67;
  }

  v10 = v5[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_46;
  }

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
    return 0;
  }

  v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  if (!v16)
  {
    return 0;
  }

  v17 = (*v15)(v15, v16);
  result = 0;
  if (v13 && v17 && v17 == v13)
  {
    v129 = v13;
    v10 = *v5;
    if (!*v5 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v19 = v5[1];
      if (!v19)
      {
        goto LABEL_66;
      }

      v20 = *(*v19 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = v5[1];
      }

      else
      {
        v9 = 0;
      }

      if (!v10 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_67;
      }

      v21 = *v10;
      v22 = *(*v10 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v111 = *v5;
        v108 = v19;
        if (v10[1] == *(v19 + 8))
        {
          mlir::IntegerAttr::getValue(&v117, &v111);
          mlir::IntegerAttr::getValue(&v114, &v108);
          llvm::APInt::operator*(&v117, &v114, &v121);
          LODWORD(v133) = v122;
          v132 = v121;
          v134[0] = 1;
          if (v115 >= 0x41 && v114)
          {
            MEMORY[0x25F891010](v114, 0x1000C8000313F17);
          }

          if (v118 >= 0x41 && v117)
          {
            MEMORY[0x25F891010](v117, 0x1000C8000313F17);
          }

          v26 = mlir::IntegerAttr::get(v129, &v132);
          goto LABEL_55;
        }

LABEL_66:
        v9 = 0;
        goto LABEL_67;
      }

      if ((v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1)
      {
        v111 = *v5;
        v108 = v19;
        if (v10[1] == *(v19 + 8))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v117, &v111);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v114, &v108);
          llvm::APInt::operator*(&v117, &v114, &v121);
          LODWORD(v133) = v122;
          v132 = v121;
          v134[0] = 1;
          if (v115 >= 0x41 && v114)
          {
            MEMORY[0x25F891010](v114, 0x1000C8000313F17);
          }

          if (v118 >= 0x41 && v117)
          {
            MEMORY[0x25F891010](v117, 0x1000C8000313F17);
          }

          v24 = llvm::cast<mlir::ShapedType,mlir::Type>(&v129);
          v26 = mlir::DenseElementsAttr::get(v24, v25, &v132, 1);
LABEL_55:
          v9 = v26;
          if ((v134[0] & 1) != 0 && v133 >= 0x41 && v132)
          {
            MEMORY[0x25F891010](v132, 0x1000C8000313F17);
          }

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v21 + 8, v27))
      {
        goto LABEL_66;
      }

      v28 = *v5[1];
      v29 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v28 + 8, v29))
      {
        goto LABEL_66;
      }

      v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
      v32 = v31;
      v127 = v30;
      v128 = v31;
      v33 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
      v35 = v34;
      v125 = v33;
      v126 = v34;
      v36 = (**(v32 + 24))();
      if (v36 != (**(v35 + 24))())
      {
        goto LABEL_66;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v121, &v127);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v117, &v125);
      v37 = v124;
      if ((v124 & 1) == 0)
      {
        v9 = 0;
        if ((v120 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_175:
        if ((v117 & 1) == 0 && v118)
        {
          (*(*v118 + 8))(v118);
        }

        if (v37)
        {
          goto LABEL_179;
        }

LABEL_67:
        if (!v9)
        {
          return 0;
        }

        v38 = *(a2 + 40);
        v39 = *v38;
        if (!*v38 || *(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v40 = v38[1];
          if (!v40 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            if (v39 && (v42 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v38)) != 0)
            {
              v43 = (*v41)(v41, v42);
            }

            else
            {
              v43 = 0;
            }

            v44 = v38[1];
            if (!v44)
            {
              goto LABEL_128;
            }

            v46 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v44);
            if (!v46)
            {
              goto LABEL_128;
            }

            v47 = (*v45)(v45, v46);
            v39 = 0;
            if (!v43 || !v47 || v47 != v43)
            {
              goto LABEL_129;
            }

            v129 = v43;
            v40 = *v38;
            if (!*v38 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v48 = v38[1];
              if (!v48)
              {
                goto LABEL_128;
              }

              v49 = *(*v48 + 136);
              if (v49 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                v39 = v38[1];
              }

              else
              {
                v39 = 0;
              }

              if (!v40 || v49 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_129;
              }

              v50 = *v40;
              v51 = *(*v40 + 136);
              if (v49 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v51 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v111 = *v38;
                v108 = v48;
                if (v40[1] == *(v48 + 8))
                {
                  mlir::IntegerAttr::getValue(&v117, &v111);
                  mlir::IntegerAttr::getValue(&v114, &v108);
                  llvm::APIntOps::mulhs(&v117, &v114, &v121);
                  LODWORD(v133) = v122;
                  v132 = v121;
                  v134[0] = 1;
                  if (v115 >= 0x41 && v114)
                  {
                    MEMORY[0x25F891010](v114, 0x1000C8000313F17);
                  }

                  if (v118 >= 0x41 && v117)
                  {
                    MEMORY[0x25F891010](v117, 0x1000C8000313F17);
                  }

                  v52 = mlir::IntegerAttr::get(v129, &v132);
LABEL_102:
                  v39 = v52;
                  if ((v134[0] & 1) != 0 && v133 >= 0x41)
                  {
                    if (v132)
                    {
                      MEMORY[0x25F891010](v132, 0x1000C8000313F17);
                    }
                  }

                  goto LABEL_129;
                }

                goto LABEL_128;
              }

              if ((v51 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v51 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v40 + 24) == 1 && (v49 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v48 + 24) == 1)
              {
                v111 = *v38;
                v108 = v48;
                if (v40[1] == *(v48 + 8))
                {
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v117, &v111);
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v114, &v108);
                  llvm::APIntOps::mulhs(&v117, &v114, &v121);
                  LODWORD(v133) = v122;
                  v132 = v121;
                  v134[0] = 1;
                  if (v115 >= 0x41 && v114)
                  {
                    MEMORY[0x25F891010](v114, 0x1000C8000313F17);
                  }

                  if (v118 >= 0x41 && v117)
                  {
                    MEMORY[0x25F891010](v117, 0x1000C8000313F17);
                  }

                  v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v129);
                  v52 = mlir::DenseElementsAttr::get(v53, v54, &v132, 1);
                  goto LABEL_102;
                }

LABEL_128:
                v39 = 0;
                goto LABEL_129;
              }

              v55 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v50 + 8, v55))
              {
                goto LABEL_128;
              }

              v56 = *v38[1];
              v57 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v56 + 8, v57))
              {
                goto LABEL_128;
              }

              v58 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v38);
              v60 = v59;
              v127 = v58;
              v128 = v59;
              v61 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v38[1]);
              v63 = v62;
              v125 = v61;
              v126 = v62;
              v64 = (**(v60 + 24))();
              if (v64 != (**(v63 + 24))())
              {
                goto LABEL_128;
              }

              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v121, &v127);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v117, &v125);
              v65 = v124;
              if ((v124 & 1) == 0)
              {
                v39 = 0;
                if ((v120 & 1) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_221;
              }

              if ((v120 & 1) == 0)
              {
                v39 = 0;
LABEL_225:
                if ((v121 & 1) == 0 && v122)
                {
                  (*(*v122 + 8))(v122);
                }

                goto LABEL_129;
              }

              LOWORD(v114) = v121;
              if (v121 == 1)
              {
                v115 = v122;
              }

              else
              {
                (*(*v122 + 16))(&v115);
              }

              v116 = v123;
              LOWORD(v111) = v117;
              if (v117 == 1)
              {
                v112 = v118;
              }

              else
              {
                (*(*v118 + 16))(&v112);
              }

              v113 = v119;
              v132 = v134;
              v133 = 0x400000000;
              v85 = (*(v60 + 16))(v60, v58);
              v87 = (*(v86 + 24))(v86, v85);
              if (v88)
              {
                v89 = 8 * v88;
                v90 = 1;
                do
                {
                  v91 = *v87++;
                  v90 *= v91;
                  v89 -= 8;
                }

                while (v89);
              }

              else
              {
                v90 = 1;
              }

              if (v90 > HIDWORD(v133))
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v132, v90);
              }

              v92 = (*(v60 + 16))(v60, v58);
              v94 = (*(v93 + 24))(v93, v92);
              if (v95)
              {
                v96 = 8 * v95;
                v97 = 1;
                do
                {
                  v98 = *v94++;
                  v97 *= v98;
                  v96 -= 8;
                }

                while (v96);
                if (!v97)
                {
LABEL_213:
                  v100 = llvm::cast<mlir::ShapedType,mlir::Type>(&v129);
                  v39 = mlir::DenseElementsAttr::get(v100, v101, v132, v133);
LABEL_215:
                  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v132);
                  if ((v111 & 1) == 0)
                  {
                    v102 = v112;
                    v112 = 0;
                    if (v102)
                    {
                      (*(*v102 + 8))(v102);
                    }
                  }

                  if ((v114 & 1) == 0)
                  {
                    v103 = v115;
                    v115 = 0;
                    if (v103)
                    {
                      (*(*v103 + 8))(v103);
                    }
                  }

LABEL_221:
                  if ((v117 & 1) == 0 && v118)
                  {
                    (*(*v118 + 8))(v118);
                  }

                  if (!v65)
                  {
                    goto LABEL_129;
                  }

                  goto LABEL_225;
                }
              }

              else
              {
                v97 = 1;
              }

              v99 = v116;
              while (1)
              {
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v106, &v114, v99);
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v104, &v111, v113);
                llvm::APIntOps::mulhs(&v106, &v104, &v130);
                v109 = v131;
                v108 = v130;
                v110 = 1;
                if (v105 >= 0x41 && v104)
                {
                  MEMORY[0x25F891010](v104, 0x1000C8000313F17);
                }

                if (v107 >= 0x41 && v106)
                {
                  MEMORY[0x25F891010](v106, 0x1000C8000313F17);
                }

                if (v110 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v132, &v108);
                if ((v110 & 1) != 0 && v109 >= 0x41 && v108)
                {
                  MEMORY[0x25F891010](v108, 0x1000C8000313F17);
                }

                v99 = ++v116;
                ++v113;
                if (!--v97)
                {
                  goto LABEL_213;
                }
              }

              v39 = 0;
              goto LABEL_215;
            }
          }

          v39 = v40;
        }

LABEL_129:
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v9 & 0xFFFFFFFFFFFFFFFBLL);
        v8 = v39 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_130;
      }

      if ((v120 & 1) == 0)
      {
        v9 = 0;
LABEL_179:
        if ((v121 & 1) == 0 && v122)
        {
          (*(*v122 + 8))(v122);
        }

        goto LABEL_67;
      }

      LOWORD(v114) = v121;
      if (v121 == 1)
      {
        v115 = v122;
      }

      else
      {
        (*(*v122 + 16))(&v115);
      }

      v116 = v123;
      LOWORD(v111) = v117;
      if (v117 == 1)
      {
        v112 = v118;
      }

      else
      {
        (*(*v118 + 16))(&v112);
      }

      v113 = v119;
      v132 = v134;
      v133 = 0x400000000;
      v66 = (*(v32 + 16))(v32, v30);
      v68 = (*(v67 + 24))(v67, v66);
      if (v69)
      {
        v70 = 8 * v69;
        v71 = 1;
        do
        {
          v72 = *v68++;
          v71 *= v72;
          v70 -= 8;
        }

        while (v70);
      }

      else
      {
        v71 = 1;
      }

      if (v71 > HIDWORD(v133))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v132, v71);
      }

      v73 = (*(v32 + 16))(v32, v30);
      v75 = (*(v74 + 24))(v74, v73);
      if (v76)
      {
        v77 = 8 * v76;
        v78 = 1;
        do
        {
          v79 = *v75++;
          v78 *= v79;
          v77 -= 8;
        }

        while (v77);
        if (!v78)
        {
LABEL_167:
          v81 = llvm::cast<mlir::ShapedType,mlir::Type>(&v129);
          v9 = mlir::DenseElementsAttr::get(v81, v82, v132, v133);
LABEL_169:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v132);
          if ((v111 & 1) == 0)
          {
            v83 = v112;
            v112 = 0;
            if (v83)
            {
              (*(*v83 + 8))(v83);
            }
          }

          if ((v114 & 1) == 0)
          {
            v84 = v115;
            v115 = 0;
            if (v84)
            {
              (*(*v84 + 8))(v84);
            }
          }

          goto LABEL_175;
        }
      }

      else
      {
        v78 = 1;
      }

      v80 = v116;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v106, &v114, v80);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v104, &v111, v113);
        llvm::APInt::operator*(&v106, &v104, &v130);
        v109 = v131;
        v108 = v130;
        v110 = 1;
        if (v105 >= 0x41 && v104)
        {
          MEMORY[0x25F891010](v104, 0x1000C8000313F17);
        }

        if (v107 >= 0x41 && v106)
        {
          MEMORY[0x25F891010](v106, 0x1000C8000313F17);
        }

        if (v110 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v132, &v108);
        if ((v110 & 1) != 0 && v109 >= 0x41 && v108)
        {
          MEMORY[0x25F891010](v108, 0x1000C8000313F17);
        }

        v80 = ++v116;
        ++v113;
        if (!--v78)
        {
          goto LABEL_167;
        }
      }

      v9 = 0;
      goto LABEL_169;
    }

LABEL_46:
    v9 = v10;
    goto LABEL_67;
  }

  return result;
}

void mlir::arith::MulUIExtendedOp::getShapeForUnroll(mlir::arith::MulUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::arith::MulUIExtendedOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v139 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = v5[1];
  v136 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v6)
  {
    v8 = mlir::detail::constant_int_predicate_matcher::match(&v136, v6);
    v5 = *(a2 + 40);
    v9 = v5[1];
    if (v8)
    {
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v9 & 0xFFFFFFFFFFFFFFFBLL);
      v10 = v9 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_134:
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v10);
      return 1;
    }

    v136 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v9)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v136, v9))
      {
        v11 = *a1;
        v136 = *(***(*a1 + 24) + 32);
        ZeroAttr = mlir::Builder::getZeroAttr(&v136, (*(*(*(v11 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        v13 = *(*(*a1 + 72) + 24) | 4;
LABEL_133:
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v13);
        v10 = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_134;
      }

      v5 = *(a2 + 40);
    }
  }

  v14 = *v5;
  if (*v5 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v15 = v5[1];
  if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_49;
  }

  if (v14 && (v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
  {
    v18 = (*v16)(v16, v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = v5[1];
  if (!v19)
  {
    return 0;
  }

  v21 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v19);
  if (!v21)
  {
    return 0;
  }

  v22 = (*v20)(v20, v21);
  result = 0;
  if (v18 && v22 && v22 == v18)
  {
    v133 = v18;
    v15 = *v5;
    if (!*v5 || *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v24 = v5[1];
      if (!v24)
      {
        goto LABEL_69;
      }

      v25 = *(*v24 + 136);
      if (v25 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = v5[1];
      }

      else
      {
        v14 = 0;
      }

      if (!v15 || v25 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_70;
      }

      v26 = *v15;
      v27 = *(*v15 + 136);
      if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v27 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v115 = *v5;
        v112 = v24;
        if (v15[1] == *(v24 + 8))
        {
          mlir::IntegerAttr::getValue(&v121, &v115);
          mlir::IntegerAttr::getValue(&v118, &v112);
          llvm::APInt::operator*(&v121, &v118, &v125);
          LODWORD(v137) = v126;
          v136 = v125;
          v138[0] = 1;
          if (v119 >= 0x41 && v118)
          {
            MEMORY[0x25F891010](v118, 0x1000C8000313F17);
          }

          if (v122 >= 0x41 && v121)
          {
            MEMORY[0x25F891010](v121, 0x1000C8000313F17);
          }

          v31 = mlir::IntegerAttr::get(v133, &v136);
          goto LABEL_58;
        }

LABEL_69:
        v14 = 0;
        goto LABEL_70;
      }

      if ((v27 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v15 + 24) == 1 && (v25 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v24 + 24) == 1)
      {
        v115 = *v5;
        v112 = v24;
        if (v15[1] == *(v24 + 8))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v121, &v115);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v118, &v112);
          llvm::APInt::operator*(&v121, &v118, &v125);
          LODWORD(v137) = v126;
          v136 = v125;
          v138[0] = 1;
          if (v119 >= 0x41 && v118)
          {
            MEMORY[0x25F891010](v118, 0x1000C8000313F17);
          }

          if (v122 >= 0x41 && v121)
          {
            MEMORY[0x25F891010](v121, 0x1000C8000313F17);
          }

          v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v133);
          v31 = mlir::DenseElementsAttr::get(v29, v30, &v136, 1);
LABEL_58:
          v14 = v31;
          if ((v138[0] & 1) != 0 && v137 >= 0x41 && v136)
          {
            MEMORY[0x25F891010](v136, 0x1000C8000313F17);
          }

          goto LABEL_70;
        }

        goto LABEL_69;
      }

      v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v32))
      {
        goto LABEL_69;
      }

      v33 = *v5[1];
      v34 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v33 + 8, v34))
      {
        goto LABEL_69;
      }

      v35 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
      v37 = v36;
      v131 = v35;
      v132 = v36;
      v38 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
      v40 = v39;
      v129 = v38;
      v130 = v39;
      v41 = (**(v37 + 24))();
      if (v41 != (**(v40 + 24))())
      {
        goto LABEL_69;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v125, &v131);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v121, &v129);
      v42 = v128;
      if ((v128 & 1) == 0)
      {
        v14 = 0;
        if ((v124 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_179:
        if ((v121 & 1) == 0 && v122)
        {
          (*(*v122 + 8))(v122);
        }

        if (v42)
        {
          goto LABEL_183;
        }

LABEL_70:
        if (!v14)
        {
          return 0;
        }

        v43 = *(a2 + 40);
        ZeroAttr = *v43;
        if (!*v43 || *(*ZeroAttr + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v44 = v43[1];
          if (!v44 || *(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            if (ZeroAttr && (v46 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v43)) != 0)
            {
              v47 = (*v45)(v45, v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = v43[1];
            if (!v48)
            {
              goto LABEL_131;
            }

            v50 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v48);
            if (!v50)
            {
              goto LABEL_131;
            }

            v51 = (*v49)(v49, v50);
            ZeroAttr = 0;
            if (!v47 || !v51 || v51 != v47)
            {
              goto LABEL_132;
            }

            v133 = v47;
            v44 = *v43;
            if (!*v43 || *(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v52 = v43[1];
              if (!v52)
              {
                goto LABEL_131;
              }

              v53 = *(*v52 + 136);
              if (v53 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                ZeroAttr = v43[1];
              }

              else
              {
                ZeroAttr = 0;
              }

              if (!v44 || v53 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_132;
              }

              v54 = *v44;
              v55 = *(*v44 + 136);
              if (v53 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v55 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v115 = *v43;
                v112 = v52;
                if (v44[1] == *(v52 + 8))
                {
                  mlir::IntegerAttr::getValue(&v121, &v115);
                  mlir::IntegerAttr::getValue(&v118, &v112);
                  llvm::APIntOps::mulhu(&v121, &v118, &v125);
                  LODWORD(v137) = v126;
                  v136 = v125;
                  v138[0] = 1;
                  if (v119 >= 0x41 && v118)
                  {
                    MEMORY[0x25F891010](v118, 0x1000C8000313F17);
                  }

                  if (v122 >= 0x41 && v121)
                  {
                    MEMORY[0x25F891010](v121, 0x1000C8000313F17);
                  }

                  v56 = mlir::IntegerAttr::get(v133, &v136);
LABEL_105:
                  ZeroAttr = v56;
                  if ((v138[0] & 1) != 0 && v137 >= 0x41)
                  {
                    if (v136)
                    {
                      MEMORY[0x25F891010](v136, 0x1000C8000313F17);
                    }
                  }

                  goto LABEL_132;
                }

                goto LABEL_131;
              }

              if ((v55 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v55 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v44 + 24) == 1 && (v53 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v53 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v52 + 24) == 1)
              {
                v115 = *v43;
                v112 = v52;
                if (v44[1] == *(v52 + 8))
                {
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v121, &v115);
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v118, &v112);
                  llvm::APIntOps::mulhu(&v121, &v118, &v125);
                  LODWORD(v137) = v126;
                  v136 = v125;
                  v138[0] = 1;
                  if (v119 >= 0x41 && v118)
                  {
                    MEMORY[0x25F891010](v118, 0x1000C8000313F17);
                  }

                  if (v122 >= 0x41 && v121)
                  {
                    MEMORY[0x25F891010](v121, 0x1000C8000313F17);
                  }

                  v57 = llvm::cast<mlir::ShapedType,mlir::Type>(&v133);
                  v56 = mlir::DenseElementsAttr::get(v57, v58, &v136, 1);
                  goto LABEL_105;
                }

LABEL_131:
                ZeroAttr = 0;
                goto LABEL_132;
              }

              v59 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v54 + 8, v59))
              {
                goto LABEL_131;
              }

              v60 = *v43[1];
              v61 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v60 + 8, v61))
              {
                goto LABEL_131;
              }

              v62 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v43);
              v64 = v63;
              v131 = v62;
              v132 = v63;
              v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v43[1]);
              v67 = v66;
              v129 = v65;
              v130 = v66;
              v68 = (**(v64 + 24))();
              if (v68 != (**(v67 + 24))())
              {
                goto LABEL_131;
              }

              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v125, &v131);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v121, &v129);
              v69 = v128;
              if ((v128 & 1) == 0)
              {
                ZeroAttr = 0;
                if ((v124 & 1) == 0)
                {
                  goto LABEL_132;
                }

                goto LABEL_225;
              }

              if ((v124 & 1) == 0)
              {
                ZeroAttr = 0;
LABEL_229:
                if ((v125 & 1) == 0 && v126)
                {
                  (*(*v126 + 8))(v126);
                }

                goto LABEL_132;
              }

              LOWORD(v118) = v125;
              if (v125 == 1)
              {
                v119 = v126;
              }

              else
              {
                (*(*v126 + 16))(&v119);
              }

              v120 = v127;
              LOWORD(v115) = v121;
              if (v121 == 1)
              {
                v116 = v122;
              }

              else
              {
                (*(*v122 + 16))(&v116);
              }

              v117 = v123;
              v136 = v138;
              v137 = 0x400000000;
              v89 = (*(v64 + 16))(v64, v62);
              v91 = (*(v90 + 24))(v90, v89);
              if (v92)
              {
                v93 = 8 * v92;
                v94 = 1;
                do
                {
                  v95 = *v91++;
                  v94 *= v95;
                  v93 -= 8;
                }

                while (v93);
              }

              else
              {
                v94 = 1;
              }

              if (v94 > HIDWORD(v137))
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v136, v94);
              }

              v96 = (*(v64 + 16))(v64, v62);
              v98 = (*(v97 + 24))(v97, v96);
              if (v99)
              {
                v100 = 8 * v99;
                v101 = 1;
                do
                {
                  v102 = *v98++;
                  v101 *= v102;
                  v100 -= 8;
                }

                while (v100);
                if (!v101)
                {
LABEL_217:
                  v104 = llvm::cast<mlir::ShapedType,mlir::Type>(&v133);
                  ZeroAttr = mlir::DenseElementsAttr::get(v104, v105, v136, v137);
LABEL_219:
                  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v136);
                  if ((v115 & 1) == 0)
                  {
                    v106 = v116;
                    v116 = 0;
                    if (v106)
                    {
                      (*(*v106 + 8))(v106);
                    }
                  }

                  if ((v118 & 1) == 0)
                  {
                    v107 = v119;
                    v119 = 0;
                    if (v107)
                    {
                      (*(*v107 + 8))(v107);
                    }
                  }

LABEL_225:
                  if ((v121 & 1) == 0 && v122)
                  {
                    (*(*v122 + 8))(v122);
                  }

                  if (!v69)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_229;
                }
              }

              else
              {
                v101 = 1;
              }

              v103 = v120;
              while (1)
              {
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v110, &v118, v103);
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v108, &v115, v117);
                llvm::APIntOps::mulhu(&v110, &v108, &v134);
                v113 = v135;
                v112 = v134;
                v114 = 1;
                if (v109 >= 0x41 && v108)
                {
                  MEMORY[0x25F891010](v108, 0x1000C8000313F17);
                }

                if (v111 >= 0x41 && v110)
                {
                  MEMORY[0x25F891010](v110, 0x1000C8000313F17);
                }

                if (v114 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v136, &v112);
                if ((v114 & 1) != 0 && v113 >= 0x41 && v112)
                {
                  MEMORY[0x25F891010](v112, 0x1000C8000313F17);
                }

                v103 = ++v120;
                ++v117;
                if (!--v101)
                {
                  goto LABEL_217;
                }
              }

              ZeroAttr = 0;
              goto LABEL_219;
            }
          }

          ZeroAttr = v44;
        }

LABEL_132:
        v13 = v14 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_133;
      }

      if ((v124 & 1) == 0)
      {
        v14 = 0;
LABEL_183:
        if ((v125 & 1) == 0 && v126)
        {
          (*(*v126 + 8))(v126);
        }

        goto LABEL_70;
      }

      LOWORD(v118) = v125;
      if (v125 == 1)
      {
        v119 = v126;
      }

      else
      {
        (*(*v126 + 16))(&v119);
      }

      v120 = v127;
      LOWORD(v115) = v121;
      if (v121 == 1)
      {
        v116 = v122;
      }

      else
      {
        (*(*v122 + 16))(&v116);
      }

      v117 = v123;
      v136 = v138;
      v137 = 0x400000000;
      v70 = (*(v37 + 16))(v37, v35);
      v72 = (*(v71 + 24))(v71, v70);
      if (v73)
      {
        v74 = 8 * v73;
        v75 = 1;
        do
        {
          v76 = *v72++;
          v75 *= v76;
          v74 -= 8;
        }

        while (v74);
      }

      else
      {
        v75 = 1;
      }

      if (v75 > HIDWORD(v137))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v136, v75);
      }

      v77 = (*(v37 + 16))(v37, v35);
      v79 = (*(v78 + 24))(v78, v77);
      if (v80)
      {
        v81 = 8 * v80;
        v82 = 1;
        do
        {
          v83 = *v79++;
          v82 *= v83;
          v81 -= 8;
        }

        while (v81);
        if (!v82)
        {
LABEL_171:
          v85 = llvm::cast<mlir::ShapedType,mlir::Type>(&v133);
          v14 = mlir::DenseElementsAttr::get(v85, v86, v136, v137);
LABEL_173:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v136);
          if ((v115 & 1) == 0)
          {
            v87 = v116;
            v116 = 0;
            if (v87)
            {
              (*(*v87 + 8))(v87);
            }
          }

          if ((v118 & 1) == 0)
          {
            v88 = v119;
            v119 = 0;
            if (v88)
            {
              (*(*v88 + 8))(v88);
            }
          }

          goto LABEL_179;
        }
      }

      else
      {
        v82 = 1;
      }

      v84 = v120;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v110, &v118, v84);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v108, &v115, v117);
        llvm::APInt::operator*(&v110, &v108, &v134);
        v113 = v135;
        v112 = v134;
        v114 = 1;
        if (v109 >= 0x41 && v108)
        {
          MEMORY[0x25F891010](v108, 0x1000C8000313F17);
        }

        if (v111 >= 0x41 && v110)
        {
          MEMORY[0x25F891010](v110, 0x1000C8000313F17);
        }

        if (v114 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v136, &v112);
        if ((v114 & 1) != 0 && v113 >= 0x41 && v112)
        {
          MEMORY[0x25F891010](v112, 0x1000C8000313F17);
        }

        v84 = ++v120;
        ++v117;
        if (!--v82)
        {
          goto LABEL_171;
        }
      }

      v14 = 0;
      goto LABEL_173;
    }

LABEL_49:
    v14 = v15;
    goto LABEL_70;
  }

  return result;
}

unint64_t mlir::arith::DivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v81 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4 && mlir::detail::constant_int_predicate_matcher::match(&v81, v4))
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  v6 = foldDivMul(*(*(*a1 + 72) + 24), *(*(*a1 + 72) + 56), 2);
  if (v6)
  {
    return v6 | 4;
  }

  v56 = 0;
  v7 = *(a2 + 40);
  v55 = &v56;
  v8 = *v7;
  if (*v7 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v9 = v7[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v7[1];
  if (!v13)
  {
    goto LABEL_68;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_68;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_69;
  }

  v80 = v12;
  v17 = *v7;
  if (*v7 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v18 = v7[1];
  if (!v18)
  {
    goto LABEL_68;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v67 = *v7;
    v64 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
        v22 = mlir::IntegerAttr::get(v80, &v81);
LABEL_41:
        v9 = v22;
        if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v67 = *v7;
    v64 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v22 = mlir::DenseElementsAttr::get(v23, v24, &v81, 1);
        goto LABEL_41;
      }
    }

    goto LABEL_68;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25) || (v26 = *v7[1], v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v26 + 8, v27)) || (v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v7), v30 = v29, v79[0] = v28, v79[1] = v29, v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v7[1]), v33 = v32, v78[0] = v31, v78[1] = v32, v34 = (**(v30 + 24))(), v34 != (**(v33 + 24))()))
  {
LABEL_68:
    v9 = 0;
    goto LABEL_69;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
  v35 = v77;
  if (v77)
  {
    if ((v73 & 1) == 0)
    {
      v9 = 0;
LABEL_117:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_69;
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
LABEL_105:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v9 = mlir::DenseElementsAttr::get(v51, v52, v81, v82);
LABEL_107:
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

LABEL_113:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v35)
        {
          goto LABEL_69;
        }

        goto LABEL_117;
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
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
        goto LABEL_105;
      }
    }

    v9 = 0;
    goto LABEL_107;
  }

  v9 = 0;
  if (v73)
  {
    goto LABEL_113;
  }

LABEL_69:
  if (v56)
  {
    return 0;
  }

  else
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

uint64_t foldDivMul(uint64_t a1, uint64_t a2, int a3)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16) + 120;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = v3 + 16 * v4 + 16;
  }

  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id || (a3 & ~*(*(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64) + 8)) != 0)
  {
    return 0;
  }

  v6 = *(v5 + 72);
  result = *(v6 + 56);
  if (*(v6 + 24) != a2)
  {
    if (result == a2)
    {
      return *(v6 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getDivUISpeculatability(uint64_t a1)
{
  v6 = mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = (v3 + 120);
    if (v3 == -120)
    {
      return 0;
    }
  }

  else
  {
    v4 = (v1 + 16 * v2 + 16);
  }

  return mlir::detail::constant_int_range_predicate_matcher::match(&v6, v4) & 1;
}

unint64_t mlir::arith::DivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v81 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4 && mlir::detail::constant_int_predicate_matcher::match(&v81, v4))
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  v6 = foldDivMul(*(*(*a1 + 72) + 24), *(*(*a1 + 72) + 56), 1);
  if (v6)
  {
    return v6 | 4;
  }

  v56 = 0;
  v7 = *(a2 + 40);
  v55 = &v56;
  v8 = *v7;
  if (*v7 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v9 = v7[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v7[1];
  if (!v13)
  {
    goto LABEL_68;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_68;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_69;
  }

  v80 = v12;
  v17 = *v7;
  if (*v7 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v18 = v7[1];
  if (!v18)
  {
    goto LABEL_68;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v67 = *v7;
    v64 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v74, &v67);
      mlir::IntegerAttr::getValue(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
        v22 = mlir::IntegerAttr::get(v80, &v81);
LABEL_41:
        v9 = v22;
        if ((v83 & 1) != 0 && v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v67 = *v7;
    v64 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v67);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v22 = mlir::DenseElementsAttr::get(v23, v24, &v81, 1);
        goto LABEL_41;
      }
    }

    goto LABEL_68;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25) || (v26 = *v7[1], v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v26 + 8, v27)) || (v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v7), v30 = v29, v79[0] = v28, v79[1] = v29, v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v7[1]), v33 = v32, v78[0] = v31, v78[1] = v32, v34 = (**(v30 + 24))(), v34 != (**(v33 + 24))()))
  {
LABEL_68:
    v9 = 0;
    goto LABEL_69;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
  v35 = v77;
  if (v77)
  {
    if ((v73 & 1) == 0)
    {
      v9 = 0;
LABEL_117:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_69;
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
LABEL_105:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v9 = mlir::DenseElementsAttr::get(v51, v52, v81, v82);
LABEL_107:
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

LABEL_113:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v35)
        {
          goto LABEL_69;
        }

        goto LABEL_117;
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
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
        goto LABEL_105;
      }
    }

    v9 = 0;
    goto LABEL_107;
  }

  v9 = 0;
  if (v73)
  {
    goto LABEL_113;
  }

LABEL_69:
  if (v56)
  {
    return 0;
  }

  else
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

BOOL getDivSISpeculatability(uint64_t a1)
{
  v12 = mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16);
    v5 = (v4 + 120);
    if (v4 == -120)
    {
      return 0;
    }
  }

  else
  {
    v5 = (v1 + 16 * v3 + 16);
  }

  if (!mlir::detail::constant_int_range_predicate_matcher::match(&v12, v5))
  {
    return 0;
  }

  v11 = mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  v6 = (~*(a1 + 8) & 7) != 0 ? a1 : 0;
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = (v8 + 120);
    if (v8 == -120)
    {
      return 0;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  return (mlir::detail::constant_int_range_predicate_matcher::match(&v11, v9) & 1) != 0;
}

unint64_t mlir::arith::CeilDivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v81 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
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
    return 0;
  }

  else
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::CeilDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v81 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
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
    return 0;
  }

  else
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::FloorDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v81 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v81, &v55, &v74, &v70);
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
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v61, &v55, &v59, &v57);
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
    return 0;
  }

  else
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::RemUIOp::fold(uint64_t *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      v6 = *a1;
      v82 = *(***(*a1 + 24) + 32);
      return mlir::Builder::getZeroAttr(&v82, (*(v6 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v8 = *v3;
  if (*v3 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v9 = v3[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[1];
  if (!v13)
  {
    goto LABEL_69;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_69;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_70;
  }

  v81 = v12;
  v17 = *v3;
  if (*v3 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v18 = v3[1];
  if (!v18)
  {
    goto LABEL_69;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v3[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v75, &v68);
      mlir::IntegerAttr::getValue(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v25 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v68 = *v3;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v25 = mlir::DenseElementsAttr::get(v23, v24, &v82, 1);
LABEL_58:
        v9 = v25;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v26) || (v27 = *v3[1], v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v27 + 8, v28)) || (v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3), v31 = v30, v80[0] = v29, v80[1] = v30, v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]), v34 = v33, v79[0] = v32, v79[1] = v33, v35 = (**(v31 + 24))(), v35 != (**(v34 + 24))()))
  {
LABEL_69:
    v9 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v36 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v9 = 0;
LABEL_118:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
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
    v37 = (*(v31 + 16))(v31, v29);
    v39 = (*(v38 + 24))(v38, v37);
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

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v31 + 16))(v31, v29);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_106:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_114:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v36)
        {
          goto LABEL_70;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
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

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_106;
      }
    }

    v9 = 0;
    goto LABEL_108;
  }

  v9 = 0;
  if (v74)
  {
    goto LABEL_114;
  }

LABEL_70:
  if (v57)
  {
    return 0;
  }

  else
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::RemSIOp::fold(uint64_t *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      v6 = *a1;
      v82 = *(***(*a1 + 24) + 32);
      return mlir::Builder::getZeroAttr(&v82, (*(v6 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v8 = *v3;
  if (*v3 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v9 = v3[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[1];
  if (!v13)
  {
    goto LABEL_69;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_69;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_70;
  }

  v81 = v12;
  v17 = *v3;
  if (*v3 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v18 = v3[1];
  if (!v18)
  {
    goto LABEL_69;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v3[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v75, &v68);
      mlir::IntegerAttr::getValue(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v25 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v68 = *v3;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v25 = mlir::DenseElementsAttr::get(v23, v24, &v82, 1);
LABEL_58:
        v9 = v25;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v26) || (v27 = *v3[1], v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v27 + 8, v28)) || (v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3), v31 = v30, v80[0] = v29, v80[1] = v30, v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]), v34 = v33, v79[0] = v32, v79[1] = v33, v35 = (**(v31 + 24))(), v35 != (**(v34 + 24))()))
  {
LABEL_69:
    v9 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v36 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v9 = 0;
LABEL_118:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
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
    v37 = (*(v31 + 16))(v31, v29);
    v39 = (*(v38 + 24))(v38, v37);
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

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v31 + 16))(v31, v29);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_106:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_114:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v36)
        {
          goto LABEL_70;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
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

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_106;
      }
    }

    v9 = 0;
    goto LABEL_108;
  }

  v9 = 0;
  if (v74)
  {
    goto LABEL_114;
  }

LABEL_70:
  if (v57)
  {
    return 0;
  }

  else
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::AndIOp::fold(uint64_t *a1, uint64_t a2)
{
  v111 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v108 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v108, v4))
    {
      return *(*(*a1 + 72) + 56) | 4;
    }

    v6 = *(*(a2 + 40) + 8);
    v83 = 1;
    v82 = 0;
    v108 = &v82;
    if (v6 && mlir::detail::constant_int_value_binder::match(&v108, v6) && llvm::APInt::isAllOnes(&v82))
    {
      v7 = *(*(*a1 + 72) + 24);
LABEL_60:
      v5 = v7 | 4;
      goto LABEL_119;
    }
  }

  else
  {
    v83 = 1;
    v82 = 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(v9 + 56);
  v108 = *(v9 + 24);
  v109 = &v82;
  if ((~*(v10 + 8) & 7) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = *(v11 + 8) & 7;
    if (v12 == 6)
    {
      v13 = v11 + 24 * *(v11 + 16);
      v14 = v13 + 120;
      if (v13 == -120)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v11 + 16 * v12 + 16;
    }

    if (mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v108, v14))
    {
      isAllOnes = llvm::APInt::isAllOnes(&v82);
      v8 = *a1;
      if (isAllOnes)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v8 = *a1;
    }
  }

LABEL_21:
  v16 = *(v8 + 72);
  v17 = *(v16 + 24);
  v108 = *(v16 + 56);
  v109 = &v82;
  if ((~*(v17 + 8) & 7) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = *(v18 + 8) & 7;
  if (v19 == 6)
  {
    v20 = v18 + 24 * *(v18 + 16);
    v21 = v20 + 120;
    if (v20 == -120)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v21 = v18 + 16 * v19 + 16;
  }

  if (mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v108, v21))
  {
    v22 = llvm::APInt::isAllOnes(&v82);
    v8 = *a1;
    if (v22)
    {
LABEL_31:
      v108 = *(***(v8 + 24) + 32);
      v5 = mlir::Builder::getZeroAttr(&v108, (*(v8 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_119;
    }
  }

  else
  {
    v8 = *a1;
  }

LABEL_33:
  v23 = 0;
  v24 = *(v8 + 72);
  while (1)
  {
    v25 = v23;
    if (v23)
    {
      v26 = 56;
    }

    else
    {
      v26 = 24;
    }

    v27 = *(v24 + v26);
    if ((~*(v27 + 8) & 7) == 0)
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_50;
    }

    v28 = *(v27 + 8) & 7;
    if (v28 != 6)
    {
      break;
    }

    v29 = v27 + 24 * *(v27 + 16) + 120;
    if (v29)
    {
      goto LABEL_44;
    }

LABEL_50:
    v23 = 1;
    if (v25)
    {
      goto LABEL_51;
    }
  }

  v29 = v27 + 16 * v28 + 16;
LABEL_44:
  if (*(*(v29 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    goto LABEL_50;
  }

  v30 = (v25 & 1) != 0 ? 24 : 56;
  v31 = *(v24 + v30);
  v32 = *(v29 + 72);
  if (v31 != *(v32 + 24) && v31 != *(v32 + 56))
  {
    goto LABEL_50;
  }

  if (*(v29 + 36))
  {
    v7 = v29 - 16;
    goto LABEL_60;
  }

LABEL_51:
  v33 = *(a2 + 40);
  v34 = *v33;
  if (*v33 && *(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_118;
  }

  v35 = v33[1];
  if (v35 && *(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_96;
  }

  if (v34 && (v37 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v33)) != 0)
  {
    v38 = (*v36)(v36, v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = v33[1];
  if (!v39)
  {
    goto LABEL_117;
  }

  v41 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v39);
  if (!v41)
  {
    goto LABEL_117;
  }

  v42 = (*v40)(v40, v41);
  v34 = 0;
  if (!v38 || !v42 || v42 != v38)
  {
    goto LABEL_118;
  }

  v107 = v38;
  v35 = *v33;
  if (*v33)
  {
    if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
LABEL_96:
      v34 = v35;
      goto LABEL_118;
    }
  }

  v43 = v33[1];
  if (!v43)
  {
    goto LABEL_117;
  }

  v44 = *(*v43 + 136);
  if (v44 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v34 = v33[1];
  }

  else
  {
    v34 = 0;
  }

  if (!v35 || v44 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_118;
  }

  v45 = *v35;
  v46 = *(*v35 + 136);
  if (v44 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v46 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if ((v46 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v46 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v35 + 24) == 1 && (v44 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v43 + 24) == 1)
    {
      v94 = *v33;
      v91 = v43;
      if (v35[1] == *(v43 + 8))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v101, &v94);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v97, &v91);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v108, &v101, &v97);
        if (v98 >= 0x41 && v97)
        {
          MEMORY[0x25F891010](v97, 0x1000C8000313F17);
        }

        if (v102 >= 0x41 && v101)
        {
          MEMORY[0x25F891010](v101, 0x1000C8000313F17);
        }

        if (v110 == 1)
        {
          v48 = llvm::cast<mlir::ShapedType,mlir::Type>(&v107);
          v50 = mlir::DenseElementsAttr::get(v48, v49, &v108, 1);
          goto LABEL_106;
        }
      }

LABEL_117:
      v34 = 0;
      goto LABEL_118;
    }

    v51 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v45 + 8, v51))
    {
      goto LABEL_117;
    }

    v52 = *v33[1];
    v53 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v52 + 8, v53))
    {
      goto LABEL_117;
    }

    v54 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v33);
    v56 = v55;
    v106[0] = v54;
    v106[1] = v55;
    v57 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v33[1]);
    v59 = v58;
    v105[0] = v57;
    v105[1] = v58;
    v60 = (**(v56 + 24))();
    if (v60 != (**(v59 + 24))())
    {
      goto LABEL_117;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v101, v106);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v97, v105);
    v61 = v104;
    if (v104)
    {
      if (v100)
      {
        LOWORD(v94) = v101;
        if (v101 == 1)
        {
          v95 = v102;
        }

        else
        {
          (*(*v102 + 16))(&v95);
        }

        v96 = v103;
        LOWORD(v91) = v97;
        if (v97 == 1)
        {
          v92 = v98;
        }

        else
        {
          (*(*v98 + 16))(&v92);
        }

        v93 = v99;
        v108 = &v110;
        v109 = 0x400000000;
        v63 = (*(v56 + 16))(v56, v54);
        v65 = (*(v64 + 24))(v64, v63);
        if (v66)
        {
          v67 = 8 * v66;
          v68 = 1;
          do
          {
            v69 = *v65++;
            v68 *= v69;
            v67 -= 8;
          }

          while (v67);
        }

        else
        {
          v68 = 1;
        }

        if (v68 > HIDWORD(v109))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v108, v68);
        }

        v70 = (*(v56 + 16))(v56, v54);
        v72 = (*(v71 + 24))(v71, v70);
        if (v73)
        {
          v74 = 8 * v73;
          v75 = 1;
          do
          {
            v76 = *v72++;
            v75 *= v76;
            v74 -= 8;
          }

          while (v74);
          if (!v75)
          {
LABEL_156:
            v78 = llvm::cast<mlir::ShapedType,mlir::Type>(&v107);
            v34 = mlir::DenseElementsAttr::get(v78, v79, v108, v109);
            goto LABEL_158;
          }
        }

        else
        {
          v75 = 1;
        }

        v77 = v96;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v86, &v94, v77);
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v84, &v91, v93);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v88, &v86, &v84);
          if (v85 >= 0x41 && v84)
          {
            MEMORY[0x25F891010](v84, 0x1000C8000313F17);
          }

          if (v87 >= 0x41 && v86)
          {
            MEMORY[0x25F891010](v86, 0x1000C8000313F17);
          }

          if (v90 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v108, &v88);
          if ((v90 & 1) != 0 && v89 >= 0x41 && v88)
          {
            MEMORY[0x25F891010](v88, 0x1000C8000313F17);
          }

          v77 = ++v96;
          ++v93;
          if (!--v75)
          {
            goto LABEL_156;
          }
        }

        v34 = 0;
LABEL_158:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v108);
        if ((v91 & 1) == 0)
        {
          v80 = v92;
          v92 = 0;
          if (v80)
          {
            (*(*v80 + 8))(v80);
          }
        }

        if ((v94 & 1) == 0)
        {
          v81 = v95;
          v95 = 0;
          if (v81)
          {
            (*(*v81 + 8))(v81);
          }
        }

LABEL_164:
        if ((v97 & 1) == 0 && v98)
        {
          (*(*v98 + 8))(v98);
        }

        if (!v61)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v34 = 0;
      }

      if ((v101 & 1) == 0 && v102)
      {
        (*(*v102 + 8))(v102);
      }

      goto LABEL_118;
    }

    v34 = 0;
    if ((v100 & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_164;
  }

  v94 = *v33;
  v91 = v43;
  if (v35[1] != *(v43 + 8))
  {
    goto LABEL_117;
  }

  mlir::IntegerAttr::getValue(&v101, &v94);
  mlir::IntegerAttr::getValue(&v97, &v91);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v108, &v101, &v97);
  if (v98 >= 0x41 && v97)
  {
    MEMORY[0x25F891010](v97, 0x1000C8000313F17);
  }

  if (v102 >= 0x41 && v101)
  {
    MEMORY[0x25F891010](v101, 0x1000C8000313F17);
  }

  if (v110 != 1)
  {
    goto LABEL_117;
  }

  v50 = mlir::IntegerAttr::get(v107, &v108);
LABEL_106:
  v34 = v50;
  if ((v110 & 1) != 0 && v109 >= 0x41 && v108)
  {
    MEMORY[0x25F891010](v108, 0x1000C8000313F17);
  }

LABEL_118:
  v5 = v34 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_119:
  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x25F891010](v82, 0x1000C8000313F17);
  }

  return v5;
}

unint64_t mlir::arith::OrIOp::fold(uint64_t *a1, uint64_t a2)
{
  v101 = *MEMORY[0x277D85DE8];
  LODWORD(v99) = 1;
  v98 = 0;
  v5 = *(*(a2 + 40) + 8);
  v91 = &v98;
  if (!v5 || !mlir::detail::constant_int_value_binder::match(&v91, v5))
  {
    goto LABEL_7;
  }

  v2 = v99;
  if (v99 <= 0x40)
  {
    if (v98)
    {
      goto LABEL_5;
    }

LABEL_20:
    v6 = 0;
    v2 = *(*(*a1 + 72) + 24) | 4;
    goto LABEL_8;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(&v98) == v2)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (!llvm::APInt::isAllOnes(&v98))
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v6 = 0;
  v2 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_8:
  if (v99 >= 0x41 && v98)
  {
    MEMORY[0x25F891010](v98, 0x1000C8000313F17);
  }

  if (v6)
  {
    v73 = 1;
    v72 = 0;
    v7 = *a1;
    v8 = *(*a1 + 72);
    v9 = *(v8 + 56);
    v98 = *(v8 + 24);
    v99 = &v72;
    if ((~*(v9 + 8) & 7) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = *(v10 + 8) & 7;
      if (v11 == 6)
      {
        v12 = v10 + 24 * *(v10 + 16);
        v13 = v12 + 120;
        if (v12 == -120)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = v10 + 16 * v11 + 16;
      }

      if (mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v98, v13))
      {
        isAllOnes = llvm::APInt::isAllOnes(&v72);
        v7 = *a1;
        if (isAllOnes)
        {
          v15 = *(*(v7 + 72) + 56);
          goto LABEL_37;
        }
      }

      else
      {
        v7 = *a1;
      }
    }

LABEL_26:
    v16 = *(v7 + 72);
    v17 = *(v16 + 24);
    v98 = *(v16 + 56);
    v99 = &v72;
    if ((~*(v17 + 8) & 7) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_41;
    }

    v19 = *(v18 + 8) & 7;
    if (v19 == 6)
    {
      v20 = v18 + 24 * *(v18 + 16);
      v21 = v20 + 120;
      if (v20 == -120)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = v18 + 16 * v19 + 16;
    }

    if (!mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v98, v21) || !llvm::APInt::isAllOnes(&v72))
    {
LABEL_41:
      v24 = *(a2 + 40);
      v25 = *v24;
      if (*v24 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_107;
      }

      v26 = v24[1];
      if (v26 && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_79;
      }

      if (v25 && (v28 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v24)) != 0)
      {
        v29 = (*v27)(v27, v28);
      }

      else
      {
        v29 = 0;
      }

      v30 = v24[1];
      if (!v30)
      {
        goto LABEL_106;
      }

      v32 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v30);
      if (!v32)
      {
        goto LABEL_106;
      }

      v33 = (*v31)(v31, v32);
      v25 = 0;
      if (!v29 || !v33 || v33 != v29)
      {
        goto LABEL_107;
      }

      v97 = v29;
      v26 = *v24;
      if (*v24)
      {
        if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
LABEL_79:
          v25 = v26;
LABEL_107:
          v2 = v25 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_108:
          if (v73 >= 0x41 && v72)
          {
            MEMORY[0x25F891010](v72, 0x1000C8000313F17);
          }

          return v2;
        }
      }

      v34 = v24[1];
      if (!v34)
      {
        goto LABEL_106;
      }

      v35 = *(*v34 + 136);
      if (v35 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v25 = v24[1];
      }

      else
      {
        v25 = 0;
      }

      if (!v26 || v35 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_107;
      }

      v36 = *v26;
      v37 = *(*v26 + 136);
      if (v35 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v37 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v84 = *v24;
        v81 = v34;
        if (v26[1] != *(v34 + 8))
        {
          goto LABEL_106;
        }

        mlir::IntegerAttr::getValue(&v91, &v84);
        mlir::IntegerAttr::getValue(&v87, &v81);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v98, &v91, &v87);
        if (v88 >= 0x41 && v87)
        {
          MEMORY[0x25F891010](v87, 0x1000C8000313F17);
        }

        if (v92 >= 0x41 && v91)
        {
          MEMORY[0x25F891010](v91, 0x1000C8000313F17);
        }

        if (v100 != 1)
        {
          goto LABEL_106;
        }

        v38 = mlir::IntegerAttr::get(v97, &v98);
LABEL_75:
        v25 = v38;
        if ((v100 & 1) != 0 && v99 >= 0x41 && v98)
        {
          MEMORY[0x25F891010](v98, 0x1000C8000313F17);
        }

        goto LABEL_107;
      }

      if ((v37 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v26 + 24) == 1 && (v35 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v34 + 24) == 1)
      {
        v84 = *v24;
        v81 = v34;
        if (v26[1] != *(v34 + 8))
        {
          goto LABEL_106;
        }

        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v91, &v84);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v87, &v81);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v98, &v91, &v87);
        if (v88 >= 0x41 && v87)
        {
          MEMORY[0x25F891010](v87, 0x1000C8000313F17);
        }

        if (v92 >= 0x41 && v91)
        {
          MEMORY[0x25F891010](v91, 0x1000C8000313F17);
        }

        if (v100 != 1)
        {
          goto LABEL_106;
        }

        v39 = llvm::cast<mlir::ShapedType,mlir::Type>(&v97);
        v38 = mlir::DenseElementsAttr::get(v39, v40, &v98, 1);
        goto LABEL_75;
      }

      v41 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v36 + 8, v41) || (v42 = *v24[1], v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v42 + 8, v43)) || (v44 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v24), v46 = v45, v96[0] = v44, v96[1] = v45, v47 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v24[1]), v49 = v48, v95[0] = v47, v95[1] = v48, v50 = (**(v46 + 24))(), v50 != (**(v49 + 24))()))
      {
LABEL_106:
        v25 = 0;
        goto LABEL_107;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v91, v96);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v87, v95);
      v51 = v94;
      if ((v94 & 1) == 0)
      {
        v25 = 0;
        if ((v90 & 1) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_153;
      }

      if ((v90 & 1) == 0)
      {
        v25 = 0;
LABEL_157:
        if ((v91 & 1) == 0 && v92)
        {
          (*(*v92 + 8))(v92);
        }

        goto LABEL_107;
      }

      LOWORD(v84) = v91;
      if (v91 == 1)
      {
        v85 = v92;
      }

      else
      {
        (*(*v92 + 16))(&v85);
      }

      v86 = v93;
      LOWORD(v81) = v87;
      if (v87 == 1)
      {
        v82 = v88;
      }

      else
      {
        (*(*v88 + 16))(&v82);
      }

      v83 = v89;
      v98 = &v100;
      v99 = 0x400000000;
      v53 = (*(v46 + 16))(v46, v44);
      v55 = (*(v54 + 24))(v54, v53);
      if (v56)
      {
        v57 = 8 * v56;
        v58 = 1;
        do
        {
          v59 = *v55++;
          v58 *= v59;
          v57 -= 8;
        }

        while (v57);
      }

      else
      {
        v58 = 1;
      }

      if (v58 > HIDWORD(v99))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v98, v58);
      }

      v60 = (*(v46 + 16))(v46, v44);
      v62 = (*(v61 + 24))(v61, v60);
      if (v63)
      {
        v64 = 8 * v63;
        v65 = 1;
        do
        {
          v66 = *v62++;
          v65 *= v66;
          v64 -= 8;
        }

        while (v64);
        if (!v65)
        {
LABEL_145:
          v68 = llvm::cast<mlir::ShapedType,mlir::Type>(&v97);
          v25 = mlir::DenseElementsAttr::get(v68, v69, v98, v99);
LABEL_147:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v98);
          if ((v81 & 1) == 0)
          {
            v70 = v82;
            v82 = 0;
            if (v70)
            {
              (*(*v70 + 8))(v70);
            }
          }

          if ((v84 & 1) == 0)
          {
            v71 = v85;
            v85 = 0;
            if (v71)
            {
              (*(*v71 + 8))(v71);
            }
          }

LABEL_153:
          if ((v87 & 1) == 0 && v88)
          {
            (*(*v88 + 8))(v88);
          }

          if (!v51)
          {
            goto LABEL_107;
          }

          goto LABEL_157;
        }
      }

      else
      {
        v65 = 1;
      }

      v67 = v86;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v76, &v84, v67);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v74, &v81, v83);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v78, &v76, &v74);
        if (v75 >= 0x41 && v74)
        {
          MEMORY[0x25F891010](v74, 0x1000C8000313F17);
        }

        if (v77 >= 0x41 && v76)
        {
          MEMORY[0x25F891010](v76, 0x1000C8000313F17);
        }

        if (v80 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v98, &v78);
        if ((v80 & 1) != 0 && v79 >= 0x41 && v78)
        {
          MEMORY[0x25F891010](v78, 0x1000C8000313F17);
        }

        v67 = ++v86;
        ++v83;
        if (!--v65)
        {
          goto LABEL_145;
        }
      }

      v25 = 0;
      goto LABEL_147;
    }

    v15 = *(*(*a1 + 72) + 24);
LABEL_37:
    if ((~*(v15 + 8) & 7) == 0)
    {
      v15 = 0;
    }

    v22 = *(v15 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v15 + 24 * *(v15 + 16) + 120;
    }

    else
    {
      v23 = v15 + 16 * v22 + 16;
    }

    if (*(*(v23 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v23 = 0;
    }

    v2 = *(*(v23 + 72) + 56) | 4;
    goto LABEL_108;
  }

  return v2;
}

uint64_t mlir::arith::XOrIOp::fold(uint64_t *a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v91 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4 && mlir::detail::constant_int_predicate_matcher::match(&v91, v4))
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  if (v8 == v9)
  {
    v91 = *(***(v6 + 24) + 32);
    return mlir::Builder::getZeroAttr(&v91, (*(v6 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
  }

  if ((~*(v8 + 8) & 7) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v10 + 8) & 7;
    if (v11 == 6)
    {
      v12 = v10 + 24 * *(v10 + 16) + 120;
      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = v10 + 16 * v11 + 16;
    }

    if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v21 = *(v12 + 72);
      v22 = *(v21 + 56);
      v23 = *(v21 + 24);
      if (v22 == v9)
      {
        return v23 | 4;
      }

      if (v23 == v9)
      {
        return v22 | 4;
      }
    }
  }

LABEL_15:
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  v13 = *(v9 + 8) & 7;
  if (v13 != 6)
  {
    v14 = v9 + 16 * v13 + 16;
    goto LABEL_22;
  }

  v14 = v9 + 24 * *(v9 + 16) + 120;
  if (v14)
  {
LABEL_22:
    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      goto LABEL_23;
    }

    v33 = *(v14 + 72);
    v34 = *(v33 + 56);
    v22 = *(v33 + 24);
    if (v34 != v8)
    {
      if (v22 == v8)
      {
        return v34 | 4;
      }

      goto LABEL_23;
    }

    return v22 | 4;
  }

LABEL_23:
  v15 = *(a2 + 40);
  v16 = *v15;
  if (*v15 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v16 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v17 = v15[1];
  if (!v17 || *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    if (v16 && (v19 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v15)) != 0)
    {
      v20 = (*v18)(v18, v19);
    }

    else
    {
      v20 = 0;
    }

    v24 = v15[1];
    if (!v24)
    {
      goto LABEL_92;
    }

    v26 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v24);
    if (!v26)
    {
      goto LABEL_92;
    }

    v27 = (*v25)(v25, v26);
    v16 = 0;
    if (!v20 || !v27 || v27 != v20)
    {
      return v16 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v90 = v20;
    v17 = *v15;
    if (!*v15 || *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v28 = v15[1];
      if (!v28)
      {
        goto LABEL_92;
      }

      v29 = *(*v28 + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v16 = v15[1];
      }

      else
      {
        v16 = 0;
      }

      if (!v17 || v29 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v30 = *v17;
      v31 = *(*v17 + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v31 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v77 = *v15;
        v74 = v28;
        if (v17[1] != *(v28 + 8))
        {
          goto LABEL_92;
        }

        mlir::IntegerAttr::getValue(&v84, &v77);
        mlir::IntegerAttr::getValue(&v80, &v74);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v91, &v84, &v80);
        if (v81 >= 0x41 && v80)
        {
          MEMORY[0x25F891010](v80, 0x1000C8000313F17);
        }

        if (v85 >= 0x41 && v84)
        {
          MEMORY[0x25F891010](v84, 0x1000C8000313F17);
        }

        if (v93 != 1)
        {
          goto LABEL_92;
        }

        v32 = mlir::IntegerAttr::get(v90, &v91);
LABEL_60:
        v16 = v32;
        if ((v93 & 1) != 0 && v92 >= 0x41)
        {
          if (v91)
          {
            MEMORY[0x25F891010](v91, 0x1000C8000313F17);
          }
        }

        return v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if ((v31 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v29 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v28 + 24) == 1)
      {
        v77 = *v15;
        v74 = v28;
        if (v17[1] != *(v28 + 8))
        {
          goto LABEL_92;
        }

        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v84, &v77);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v80, &v74);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v91, &v84, &v80);
        if (v81 >= 0x41 && v80)
        {
          MEMORY[0x25F891010](v80, 0x1000C8000313F17);
        }

        if (v85 >= 0x41 && v84)
        {
          MEMORY[0x25F891010](v84, 0x1000C8000313F17);
        }

        if (v93 != 1)
        {
          goto LABEL_92;
        }

        v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v90);
        v32 = mlir::DenseElementsAttr::get(v35, v36, &v91, 1);
        goto LABEL_60;
      }

      v37 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v30 + 8, v37) || (v38 = *v15[1], v39 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v38 + 8, v39)) || (v40 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v15), v42 = v41, v89[0] = v40, v89[1] = v41, v43 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v15[1]), v45 = v44, v88[0] = v43, v88[1] = v44, v46 = (**(v42 + 24))(), v46 != (**(v45 + 24))()))
      {
LABEL_92:
        v16 = 0;
        return v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v84, v89);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v80, v88);
      v47 = v87;
      if ((v87 & 1) == 0)
      {
        v16 = 0;
        if ((v83 & 1) == 0)
        {
          return v16 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_135;
      }

      if ((v83 & 1) == 0)
      {
        v16 = 0;
LABEL_139:
        if ((v84 & 1) == 0 && v85)
        {
          (*(*v85 + 8))(v85);
        }

        return v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      LOWORD(v77) = v84;
      if (v84 == 1)
      {
        v78 = v85;
      }

      else
      {
        (*(*v85 + 16))(&v78);
      }

      v79 = v86;
      LOWORD(v74) = v80;
      if (v80 == 1)
      {
        v75 = v81;
      }

      else
      {
        (*(*v81 + 16))(&v75);
      }

      v76 = v82;
      v91 = &v93;
      v92 = 0x400000000;
      v48 = (*(v42 + 16))(v42, v40);
      v50 = (*(v49 + 24))(v49, v48);
      if (v51)
      {
        v52 = 8 * v51;
        v53 = 1;
        do
        {
          v54 = *v50++;
          v53 *= v54;
          v52 -= 8;
        }

        while (v52);
      }

      else
      {
        v53 = 1;
      }

      if (v53 > HIDWORD(v92))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v91, v53);
      }

      v55 = (*(v42 + 16))(v42, v40);
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
        if (!v60)
        {
LABEL_127:
          v63 = llvm::cast<mlir::ShapedType,mlir::Type>(&v90);
          v16 = mlir::DenseElementsAttr::get(v63, v64, v91, v92);
LABEL_129:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v91);
          if ((v74 & 1) == 0)
          {
            v65 = v75;
            v75 = 0;
            if (v65)
            {
              (*(*v65 + 8))(v65);
            }
          }

          if ((v77 & 1) == 0)
          {
            v66 = v78;
            v78 = 0;
            if (v66)
            {
              (*(*v66 + 8))(v66);
            }
          }

LABEL_135:
          if ((v80 & 1) == 0 && v81)
          {
            (*(*v81 + 8))(v81);
          }

          if (!v47)
          {
            return v16 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_139;
        }
      }

      else
      {
        v60 = 1;
      }

      v62 = v79;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v69, &v77, v62);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v67, &v74, v76);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v69, &v67);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        if (v70 >= 0x41 && v69)
        {
          MEMORY[0x25F891010](v69, 0x1000C8000313F17);
        }

        if (v73 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v91, &v71);
        if ((v73 & 1) != 0 && v72 >= 0x41 && v71)
        {
          MEMORY[0x25F891010](v71, 0x1000C8000313F17);
        }

        v62 = ++v79;
        ++v76;
        if (!--v60)
        {
          goto LABEL_127;
        }
      }

      v16 = 0;
      goto LABEL_129;
    }
  }

  v16 = v17;
  return v16 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::NegFOp::fold(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 72) + 24);
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = *(v2 + 8) & 7;
    if (v3 == 6)
    {
      v4 = v2 + 24 * *(v2 + 16) + 120;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = v2 + 16 * v3 + 16;
    }

    if (*(*(v4 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
    {
      return *(*(v4 + 72) + 24) | 4;
    }
  }

LABEL_9:
  v5 = *(a2 + 48);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *v6;
  v8 = *(*v6 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(v43, (v6 + 16));
    llvm::APFloat::Storage::Storage(&v45, v43);
    llvm::APFloat::changeSign(&v45);
    if (v45 == &llvm::semPPCDoubleDouble)
    {
      *&v51 = &llvm::semPPCDoubleDouble;
      *(&v51 + 1) = *(&v45 + 1);
      *&v45 = &llvm::semBogus;
      *(&v45 + 1) = 0;
    }

    else
    {
      *&v51 = &llvm::semBogus;
      llvm::detail::IEEEFloat::operator=(&v51, &v45);
    }

    BYTE8(v52[0]) = 1;
    llvm::APFloat::Storage::~Storage(&v45);
    llvm::APFloat::Storage::~Storage(v43);
    if (BYTE8(v52[0]) == 1)
    {
      v16 = mlir::FloatAttr::get(*(v6 + 8), &v51);
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v9 && *(v6 + 24) == 1)
  {
    v53 = *v5;
    mlir::DenseElementsAttr::tryGetFloatValues(&v51, &v53);
    v45 = v51;
    v46 = v52[0];
    v47 = v52[1];
    v48 = v52[2];
    v49 = v52[3];
    v50 = v52[4];
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v51, v43);
    llvm::APFloat::Storage::Storage(&v45, v43);
    llvm::APFloat::changeSign(&v45);
    if (v45 == &llvm::semPPCDoubleDouble)
    {
      *&v51 = &llvm::semPPCDoubleDouble;
      *(&v51 + 1) = *(&v45 + 1);
      *&v45 = &llvm::semBogus;
      *(&v45 + 1) = 0;
    }

    else
    {
      *&v51 = &llvm::semBogus;
      llvm::detail::IEEEFloat::operator=(&v51, &v45);
    }

    BYTE8(v52[0]) = 1;
    llvm::APFloat::Storage::~Storage(&v45);
    llvm::APFloat::Storage::~Storage(v43);
    if (BYTE8(v52[0]) == 1)
    {
      v16 = mlir::DenseElementsAttr::get(v53[1], v53[2], &v51, 1);
LABEL_41:
      v6 = v16;
      if (BYTE8(v52[0]))
      {
        llvm::APFloat::Storage::~Storage(&v51);
      }

      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_43;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v7 + 8, v11))
  {
    v12 = *v5;
    if (*v5)
    {
      v13 = *v12;
      v14 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
    }

    else
    {
      v15 = 0;
    }

    v41[0] = v12;
    v41[1] = v15;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v45, v41);
    if (BYTE8(v46) == 1)
    {
      v17 = v45;
      v38 = v45;
      v18 = *(&v45 + 1);
      if (v45 == 1)
      {
        v39 = *(&v45 + 1);
      }

      else
      {
        (*(**(&v45 + 1) + 16))(&v39, *(&v45 + 1));
      }

      v40 = v46;
      *&v51 = v52;
      *(&v51 + 1) = 0x200000000;
      v19 = (*(v15 + 16))(v15, v12);
      v21 = (*(v20 + 24))(v20, v19);
      if (v22)
      {
        v23 = 8 * v22;
        v24 = 1;
        do
        {
          v25 = *v21++;
          v24 *= v25;
          v23 -= 8;
        }

        while (v23);
      }

      else
      {
        v24 = 1;
      }

      if (v24 > HIDWORD(v51))
      {
        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v51, v24);
      }

      v26 = (*(v15 + 16))(v15, v12);
      v28 = (*(v27 + 24))(v27, v26);
      if (v29)
      {
        v30 = 8 * v29;
        v31 = 1;
        do
        {
          v32 = *v28++;
          v31 *= v32;
          v30 -= 8;
        }

        while (v30);
        if (!v31)
        {
LABEL_62:
          v35 = (*(v15 + 16))(v15, v12);
          v6 = mlir::DenseElementsAttr::get(v35, v36, v51, DWORD2(v51));
LABEL_64:
          llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v51);
          if ((v38 & 1) == 0)
          {
            v37 = v39;
            v39 = 0;
            if (v37)
            {
              (*(*v37 + 8))(v37);
            }
          }

          if ((v17 & 1) == 0)
          {
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }
          }

          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      else
      {
        v31 = 1;
      }

      v33 = v40;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v42, &v38, v33);
        v34 = llvm::APFloat::Storage::Storage(&v53, v42);
        llvm::APFloat::changeSign(v34);
        if (v53 == &llvm::semPPCDoubleDouble)
        {
          v43[0] = &llvm::semPPCDoubleDouble;
          v43[1] = v54;
          v53 = &llvm::semBogus;
          v54 = 0;
        }

        else
        {
          v43[0] = &llvm::semBogus;
          llvm::detail::IEEEFloat::operator=(v43, &v53);
        }

        v44 = 1;
        llvm::APFloat::Storage::~Storage(&v53);
        llvm::APFloat::Storage::~Storage(v42);
        if (v44 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v51, v43);
        if (v44)
        {
          llvm::APFloat::Storage::~Storage(v43);
        }

        v33 = ++v40;
        if (!--v31)
        {
          goto LABEL_62;
        }
      }

      v6 = 0;
      goto LABEL_64;
    }
  }

LABEL_43:
  v6 = 0;
  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::AddFOp::fold(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v67 = mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
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
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
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
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
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
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v65, v64, v63);
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

uint64_t mlir::arith::SubFOp::fold(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v67 = mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
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
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
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
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v67, &v75, v71);
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
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v65, v64, v63);
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

uint64_t mlir::arith::MaximumFOp::fold(uint64_t a1, uint64_t a2)
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
  v68 = mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
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
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, &v72);
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
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, &v72);
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
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
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

uint64_t mlir::arith::MaxNumFOp::fold(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  *&v72 = mlir::m_NaNFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v6)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v72, v6))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v5 = *(a2 + 48);
  }

  v9 = *v5;
  if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = v5[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_37;
  }

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
    goto LABEL_107;
  }

  v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  if (!v16)
  {
    goto LABEL_107;
  }

  v17 = (*v15)(v15, v16);
  v9 = 0;
  if (!v13 || !v17 || v17 != v13)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v67 = v13;
  v10 = *v5;
  if (*v5)
  {
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
LABEL_37:
      v9 = v10;
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v18 = v5[1];
  if (!v18)
  {
    goto LABEL_107;
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
    if (v10[1] == *(v18 + 8))
    {
      llvm::APFloat::Storage::Storage(&v82, (v10 + 2));
      llvm::APFloat::Storage::Storage(v78, (v18 + 16));
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&)>(llvm::ArrayRef<mlir::Attribute>,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&) &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v72, llvm::maxnum, &v82, v78);
      llvm::APFloat::Storage::~Storage(v78);
      llvm::APFloat::Storage::~Storage(&v82);
      if (BYTE8(v73) == 1)
      {
        v22 = mlir::FloatAttr::get(v67, &v72);
        goto LABEL_35;
      }
    }

    goto LABEL_107;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v88 = *v5;
    v62 = v18;
    if (v10[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::tryGetFloatValues(&v72, &v88);
      v82 = v72;
      v83 = v73;
      v84 = v74;
      v85 = v75;
      v86 = v76;
      v87 = v77;
      llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v72, v78);
      mlir::DenseElementsAttr::tryGetFloatValues(&v72, &v62);
      v82 = v72;
      v83 = v73;
      v84 = v74;
      v85 = v75;
      v86 = v76;
      v87 = v77;
      llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v72, v70);
      llvm::maxnum(&v82, v78, v70);
      if (v82 == &llvm::semPPCDoubleDouble)
      {
        *&v72 = &llvm::semPPCDoubleDouble;
        *(&v72 + 1) = *(&v82 + 1);
        *&v82 = &llvm::semBogus;
        *(&v82 + 1) = 0;
      }

      else
      {
        *&v72 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v72, &v82);
      }

      BYTE8(v73) = 1;
      llvm::APFloat::Storage::~Storage(&v82);
      llvm::APFloat::Storage::~Storage(v70);
      llvm::APFloat::Storage::~Storage(v78);
      if (BYTE8(v73) == 1)
      {
        v57 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v22 = mlir::DenseElementsAttr::get(v57, v58, &v72, 1);
LABEL_35:
        v9 = v22;
        if (BYTE8(v73))
        {
          llvm::APFloat::Storage::~Storage(&v72);
        }

        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_107:
    v9 = 0;
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v23 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v23))
  {
    goto LABEL_107;
  }

  v24 = *v5[1];
  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v24 + 8, v25))
  {
    goto LABEL_107;
  }

  v26 = *v5;
  if (*v5)
  {
    v27 = *v26;
    v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    v29 = mlir::detail::InterfaceMap::lookup(v27 + 8, v28);
  }

  else
  {
    v29 = 0;
  }

  v66[0] = v26;
  v66[1] = v29;
  v30 = v5[1];
  if (v30)
  {
    v31 = *v30;
    v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
  }

  else
  {
    v33 = 0;
  }

  v65[0] = v30;
  v65[1] = v33;
  v34 = (**(v29 + 24))();
  if (v34 != (**(v33 + 24))())
  {
    goto LABEL_107;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v82, v66);
  mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v78, v65);
  v35 = BYTE8(v83);
  if ((BYTE8(v83) & 1) == 0)
  {
    if (v81 & 1) == 0 || (v78[0])
    {
      goto LABEL_107;
    }

    v9 = 0;
    v36 = v79;
    goto LABEL_98;
  }

  if ((v81 & 1) == 0)
  {
    v9 = 0;
LABEL_101:
    if ((v82 & 1) == 0 && *(&v82 + 1))
    {
      (*(**(&v82 + 1) + 8))(*(&v82 + 1));
    }

    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v62) = v82;
  if (v82 == 1)
  {
    v63 = *(&v82 + 1);
  }

  else
  {
    (*(**(&v82 + 1) + 16))(&v63);
  }

  v64 = v83;
  v59[0] = v78[0];
  v37 = v78[0];
  v59[1] = v78[1];
  v36 = v79;
  if (v78[0] == 1)
  {
    v60 = v79;
  }

  else
  {
    (*(*v79 + 16))(&v60, v79);
  }

  v61 = v80;
  *&v72 = &v73;
  *(&v72 + 1) = 0x400000000;
  v38 = (*(v29 + 16))(v29, v26);
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

  if (v43 > HIDWORD(v72))
  {
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v72, v43);
  }

  v45 = (*(v29 + 16))(v29, v26);
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
LABEL_89:
      v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
      v9 = mlir::DenseElementsAttr::get(v53, v54, v72, DWORD2(v72));
      goto LABEL_91;
    }
  }

  else
  {
    v50 = 1;
  }

  v52 = v64;
  while (1)
  {
    mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v69, &v62, v52);
    mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v68, v59, v61);
    llvm::maxnum(&v88, v69, v68);
    if (v88 == &llvm::semPPCDoubleDouble)
    {
      v70[0] = &llvm::semPPCDoubleDouble;
      v70[1] = v89;
      v88 = &llvm::semBogus;
      v89 = 0;
    }

    else
    {
      v70[0] = &llvm::semBogus;
      llvm::detail::IEEEFloat::operator=(v70, &v88);
    }

    v71 = 1;
    llvm::APFloat::Storage::~Storage(&v88);
    llvm::APFloat::Storage::~Storage(v68);
    llvm::APFloat::Storage::~Storage(v69);
    if (v71 != 1)
    {
      break;
    }

    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v72, v70);
    if (v71)
    {
      llvm::APFloat::Storage::~Storage(v70);
    }

    v52 = ++v64;
    ++v61;
    if (!--v50)
    {
      goto LABEL_89;
    }
  }

  v9 = 0;
LABEL_91:
  llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v72);
  if ((v59[0] & 1) == 0)
  {
    v55 = v60;
    v60 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }
  }

  if ((v62 & 1) == 0)
  {
    v56 = v63;
    v63 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }
  }

  if ((v37 & 1) == 0)
  {
LABEL_98:
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  if (v35)
  {
    goto LABEL_101;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}