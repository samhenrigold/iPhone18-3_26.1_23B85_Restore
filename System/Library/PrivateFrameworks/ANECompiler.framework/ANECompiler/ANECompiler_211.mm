void *mlir::ElementsAttr::value_begin<mlir::Attribute>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<mlir::Attribute>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<mlir::Attribute>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::ElementsAttr::try_value_begin<mlir::Attribute>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id);
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

void *_ZZNK4mlir12ElementsAttr9getValuesINS_9TypedAttrEvEENS_6detail17ElementsAttrRangeIN4llvm15mapped_iteratorINS3_20ElementsAttrIteratorINS_9AttributeEEEPFT_S8_EDTclclsr3stdE7declvalISC_EEdeclL_ZNSt3__17declvalB8nn200100IS9_EEDTclsr3stdE9__declvalISA_ELi0EEEvEEEEEEEEvENUlS8_E_8__invokeES8_(void *result)
{
  if (result)
  {
    v1 = result;
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*result + 8);
    return v1;
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::BoolAttr::operator mlir::TypedAttr();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mps::DequantizeOp::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeQuantizeOp<mlir::mps::QuantizeOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v19 = a2;
  v18[0] = a3;
  v18[1] = &v19;
  v17 = 0;
  v16 = v4;
  v15 = v5;
  if (HIBYTE(v17) == 1 && v17 == 1)
  {
    v6 = 0;
    v7 = v19;
  }

  else
  {
    v7 = v19;
    v6 = *(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 64);
  }

  v14 = v6;
  v8 = *(v7 + 72);
  if (v8[7] == v4 && v8[11] == v5 && v6 == *(v7 + 80))
  {
    return 0;
  }

  v9 = v8[3];
  v12 = *(v7 + 88);
  v13 = v9;
  v10 = mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(a3 + 1, *(v7 + 24), &v13, &v16, &v15, &v12, &v14);
  (*(*a3 + 1))(a3, v7, v10);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::QuantizeOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeCastOp>::externalCanonicalize(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v38 = a2;
  v4 = *(*(a2 + 72) + 24);
  v37 = v4;
  v5 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v36[0] = v5;
  v36[1] = v6;
  isSplat = mlir::ElementsAttr::isSplat(v36);
  Type = mlir::pdl_interp::CheckTypeOp::getType(&v38);
  if (isSplat == Type)
  {
    if (*(v38 + 36))
    {
      v8 = v38 - 16;
    }

    else
    {
      v8 = 0;
    }

    v9 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    if (v9)
    {
      do
      {
        v11 = *v9;
        v12 = v9[2];
        (*(*a3 + 5))(a3, v12);
        v13 = v9[1];
        if (v13)
        {
          v14 = *v9;
          *v13 = *v9;
          if (v14)
          {
            v14[1] = v9[1];
          }
        }

        v9[3] = v4;
        v9[1] = v4;
        v15 = *v4;
        *v9 = *v4;
        if (v15)
        {
          v15[1] = v9;
        }

        *v4 = v9;
        (*(*a3 + 6))(a3, v12);
        v9 = v11;
      }

      while (v11);
    }

    return 1;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v37);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
    {
      v34 = *(*(DefiningOp + 72) + 24);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v34);
      {
        ElementBitWidth = mlir::mps::getElementBitWidth(ElementTypeOrSelf);
        if (ElementBitWidth <= mlir::mps::getElementBitWidth(isSplat))
        {
          v28 = v38;
          v29 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a3 + 1, *(v38 + 24), &v34, &Type);
          goto LABEL_34;
        }
      }
    }
  }

  v19 = mlir::Value::getDefiningOp(&v37);
  if (v19)
  {
    v20 = *(*(v19 + 48) + 16);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id;
    v22 = v20 == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id ? v19 : 0;
    v34 = v22;
    if (v21)
    {
      if (*v37)
      {
        if (!**v37)
        {
          v23 = v19;
          {
            v24 = mlir::mps::getElementBitWidth(Type);
            if (v24 < mlir::mps::getElementBitWidth(isSplat))
            {
              v25 = *(v38 + 24);
              v32 = *(*(v23 + 72) + 88);
              v33 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a3 + 1, v25, &v32, &Type);
              v26 = *(v38 + 24);
              v31 = *(*(v23 + 72) + 24);
              v27 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a3 + 1, v26, &v31, &Type);
              v28 = v38;
              v31 = *(*(v23 + 72) + 56);
              v32 = v27;
              PaddingMode = mlir::mps::PadOp::getPaddingMode(&v34);
              v29 = mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::CastOp &,mlir::Value,mlir::mps::CastOp &,mlir::mps::PaddingMode>(a3 + 1, *(v28 + 24), &v32, &v31, &v33, &PaddingMode);
LABEL_34:
              (*(*a3 + 1))(a3, v28, v29);
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::mps::anonymous namespace::CanonicalizeCastOp::externalCanonicalize(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(mlir::Type,mlir::Type)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  if ((v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    return 0;
  }

  v30[3] = v2;
  v30[4] = v3;
  v29 = a2;
  v30[0] = a1;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v28 = v6;
  if (v6)
  {
    v7 = a2;
    Value = mlir::AffineMapAttr::getValue(&v28);
    v30[0] = Value;
    v27 = v7;
    a2 = mlir::AffineMapAttr::getValue(&v27);
    a1 = Value;
    v29 = a2;
  }

  v9 = *(*a1 + 136);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  }

  v26 = *(*a2 + 136);
  if (v26 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v26 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  }

  if (mlir::Type::isF16(v30) && mlir::Type::isBF16(&v29))
  {
    return 0;
  }

  if (mlir::Type::isBF16(v30))
  {
    return !mlir::Type::isF16(&v29);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::CastOp &,mlir::Value,mlir::mps::CastOp &,mlir::mps::PaddingMode>(mlir::MLIRContext **a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, unsigned int *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::CastOp &,mlir::Value,mlir::mps::CastOp &,mlir::mps::PaddingMode>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::PadOp::build(a1, v21, *a3 - 16, *a4, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeStridedSliceOp>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v44 = a2;
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v43[0] = v5;
  v43[1] = v6;
  v41 = 0;
  v42 = 0;
  result = mlir::ElementsAttr::getShapedType(v43);
  if (!result)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v43);
  if (!v9)
  {
LABEL_9:
    v11 = *(*(a2 + 72) + 88);
    v49 = &v41;
    v52 = v11;
    result = mlir::Value::getDefiningOp(&v52);
    if (!result)
    {
      return result;
    }

    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v49, result);
    if (!result)
    {
      return result;
    }

    v39 = 0;
    v40 = 0;
    v12 = *(*(a2 + 72) + 120);
    v49 = &v39;
    v52 = v12;
    result = mlir::Value::getDefiningOp(&v52);
    if (!result)
    {
      return result;
    }

    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v49, result);
    if (!result)
    {
      return result;
    }

    v52 = v54;
    v53 = 0x400000000;
    mlir::getIntValues<int>(v41, v42, &v52, 1);
    v49 = v51;
    v50 = 0x400000000;
    mlir::getIntValues<int>(v39, v40, &v49, 1);
    v13 = v53;
    v46 = v48;
    v47 = 0x400000000;
    if (v53 < 5)
    {
      if (!v53)
      {
        goto LABEL_20;
      }

      v15 = 4 * v53;
      v14 = v48;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v53, 4);
      v14 = v46;
      v15 = 4 * v13;
    }

    bzero(v14, v15);
LABEL_20:
    LODWORD(v47) = v13;
    if (mlir::mps::StridedSliceOp::getEndIsSize(&v44))
    {
      v37 = 0;
      v38 = 0;
      v16 = *(*(v44 + 72) + 56);
      v36 = &v37;
      v45 = v16;
      DefiningOp = mlir::Value::getDefiningOp(&v45);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) == 0)
      {
        goto LABEL_37;
      }

      LODWORD(v47) = 0;
      mlir::getIntValues<int>(v37, v38, &v46, 1);
    }

    v18 = mlir::ShapedType::getShape(v43);
    EndMask = mlir::mps::StridedSliceOp::getEndMask(&v44);
    v35 = EndMask;
    if (v53)
    {
      v20 = EndMask;
      v21 = 0;
      v22 = EndMask;
      do
      {
        v23 = v52[v21];
        if ((mlir::pdl::ResultOp::getIndex(&v44) & (1 << v21)) == 0)
        {
          v23 += mlir::getPositiveAxis(*(v46 + v21), *(v18 + 8 * v21));
        }

        v24 = v21 >= v50 || *(v49 + v21) > 0;
        if (v23 > *(v18 + 8 * v21) && v24)
        {
          v22 |= 1 << v21;
          v35 = v22;
        }

        ++v21;
      }

      while (v21 < v53);
      if (v20 == v22)
      {
        result = 0;
      }

      else
      {
        v26 = v44;
        v27 = *(v44 + 72);
        v28 = v27[3];
        v45 = v27[7];
        v36 = v27[11];
        v37 = v28;
        v34 = v27[15];
        Index = mlir::pdl::ResultOp::getIndex(&v44);
        Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v44);
        IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v44);
        v29 = mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,unsigned int,unsigned int &,unsigned int,BOOL>(a3 + 1, *(v26 + 24), &v37, &v45, &v36, &v34, &Index, &v35, &Groups, &IsSize);
        ((*a3)[1])(a3, v26, v29);
        result = 1;
      }

      goto LABEL_41;
    }

LABEL_37:
    result = 0;
LABEL_41:
    v30 = result;
    if (v46 != v48)
    {
      free(v46);
      result = v30;
    }

    if (v49 != v51)
    {
      free(v49);
      result = v30;
    }

    if (v52 != v54)
    {
      free(v52);
      return v30;
    }

    return result;
  }

  v10 = 8 * v9;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,unsigned int,unsigned int &,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::StridedSliceOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,unsigned int,unsigned int &,unsigned int,BOOL>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::StridedSliceOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeReshapeOp>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v32 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v32);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) || *(result + 16 * ((*(result + 44) >> 23) & 1) + 64))
    {
      return 0;
    }

    else
    {
      v8 = result;
      if (*(a2 + 36))
      {
        v9 = a2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v10)
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      }

      else
      {
        v11 = 0;
      }

      v31[0] = v10;
      v31[1] = v11;
      if (mlir::ElementsAttr::getShapedType(v31))
      {
        Shape = mlir::ShapedType::getShape(v31);
        v14 = v13;
        v32 = v34;
        v33 = 0x400000000;
        v15 = (8 * v13) >> 3;
        if (v15 < 5)
        {
          v16 = 0;
          v17 = v34;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v15, 8);
          v16 = v33;
          v17 = v32;
        }

        if (v14)
        {
          memcpy(v17 + 8 * v16, Shape, 8 * v14);
          v16 = v33;
          v17 = v32;
        }

        v19 = v16 + v14;
        LODWORD(v33) = v16 + v14;
        if (v16 + v14)
        {
          v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v21 = v17;
          if (v20 < 3)
          {
            goto LABEL_39;
          }

          v22 = v20 + 1;
          v21 = &v17->i64[v22 & 0x3FFFFFFFFFFFFFFCLL];
          v23 = v17 + 1;
          v24 = vnegq_f64(0);
          v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v26 = vmovn_s64(vceqq_s64(v23[-1], v24));
            if (v26.i8[0])
            {
              v23[-1].i64[0] = -1;
            }

            if (v26.i8[4])
            {
              v23[-1].i64[1] = -1;
            }

            v27 = vmovn_s64(vceqq_s64(*v23, v24));
            if (v27.i8[0])
            {
              v23->i64[0] = -1;
            }

            if (v27.i8[4])
            {
              v23->i64[1] = -1;
            }

            v23 += 2;
            v25 -= 4;
          }

          while (v25);
          if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_39:
            v29 = &v17->i64[v19];
            do
            {
              if (*v21 == 0x8000000000000000)
              {
                *v21 = -1;
              }

              ++v21;
            }

            while (v21 != v29);
          }
        }

        v30 = *(*(v7 + 72) + 24);
        v28 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::SmallVector<long long,4u> &>(a3 + 1, *(a2 + 24), &v30, &v32);
        ((*a3)[1])(a3, a2, v28);
        if (v32 != v34)
        {
          free(v32);
        }
      }

      else
      {
        v32 = *(*(v8 + 72) + 24);
        v30 = *(*(a2 + 72) + 56);
        v18 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value>(a3 + 1, *(a2 + 24), &v32, &v30);
        ((*a3)[1])(a3, a2, v18);
      }

      return 1;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ReshapeOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSelectOp>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v94 = *MEMORY[0x1E69E9840];
  ShapedType = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&ShapedType);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v89 = v8;
    if (!v7)
    {
      return 0;
    }

    v88[0] = mlir::mps::ConstantOp::getAsAttribute(&v89);
    v88[1] = v9;
    ShapedType = mlir::ElementsAttr::getShapedType(v88);
    v83 = v10;
    v11 = *(*mlir::ElementsAttr::isSplat(&ShapedType) + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v11 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        return 0;
      }

      mlir::ElementsAttr::getValues<llvm::APFloat>(v88, &ShapedType);
      LOWORD(v79) = ShapedType;
      if (ShapedType == 1)
      {
        v80 = v83;
      }

      else
      {
        (*(*v83 + 16))(&v80);
      }

      v28 = v84;
      v81 = v84;
      LOWORD(v76) = v85;
      if (v85 == 1)
      {
        v77 = v86;
      }

      else
      {
        (*(*v86 + 16))(&v77);
        v28 = v81;
      }

      v78 = v87;
      if (v28 == v87)
      {
        v29 = 0;
LABEL_69:
        v30 = 0;
        if (v76)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (BYTE1(v79))
        {
          v31 = 0;
        }

        else
        {
          v31 = v28;
        }

        if (v79)
        {
          v32 = v80 + 32 * v31;
          v34 = *(v32 + 1);
          v33 = (v32 + 8);
          v35 = llvm::APFloatBase::PPCDoubleDouble(v80);
          if (v35 == v34)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v33);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&v91, v33);
          }
        }

        else
        {
          v40 = (*(*v80 + 24))(&isSplat);
          v35 = llvm::APFloatBase::PPCDoubleDouble(v40);
        }

        v41 = v92;
        if (v35 != v91)
        {
          v41 = &isSplat;
        }

        v42 = *(v41 + 28) & 7;
        v29 = v42 != 3;
        if (v35 == v91)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v91);
        }

        while (1)
        {
          v44 = v81 + 1;
          v81 = v44;
          if (v44 == v78)
          {
            break;
          }

          if (BYTE1(v79))
          {
            v45 = 0;
          }

          else
          {
            v45 = v44;
          }

          if (v79 == 1)
          {
            v46 = v80 + 32 * v45;
            v48 = *(v46 + 1);
            v47 = (v46 + 8);
            if (v35 == v48)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v47);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v91, v47);
            }
          }

          else
          {
            (*(*v80 + 24))(&isSplat);
          }

          if (v35 == v91)
          {
            v43 = (v42 != 3) ^ ((*(v92 + 28) & 7) == 3);
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
            if ((v43 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v49 = (v42 != 3) ^ ((v93 & 7) == 3);
            llvm::detail::IEEEFloat::~IEEEFloat(&v91);
            if ((v49 & 1) == 0)
            {
              goto LABEL_69;
            }
          }
        }

        v30 = 1;
        if (v76)
        {
LABEL_115:
          if ((v79 & 1) == 0)
          {
            v51 = v80;
            v80 = 0;
            if (v51)
            {
              (*(*v51 + 8))(v51);
            }
          }

          if ((v85 & 1) == 0)
          {
            v52 = v86;
            v86 = 0;
            if (v52)
            {
              (*(*v52 + 8))(v52);
            }
          }

          if ((ShapedType & 1) == 0)
          {
            v53 = v83;
            v83 = 0;
            if (v53)
            {
              (*(*v53 + 8))(v53);
            }
          }

          if (!v30)
          {
            return 0;
          }

LABEL_146:
          v61 = 88;
          if (v29)
          {
            v61 = 56;
          }

          v79 = *(*(a2 + 72) + v61);
          if (*(a2 + 36))
          {
            v62 = a2 - 16;
          }

          else
          {
            v62 = 0;
          }

          v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v63)
          {
            v64 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
          }

          else
          {
            v64 = 0;
          }

          ShapedType = v63;
          v83 = v64;
          if (mlir::ElementsAttr::getShapedType(&ShapedType))
          {
            Shape = mlir::ShapedType::getShape(&ShapedType);
            if (!v66)
            {
LABEL_159:
              v68 = *(a2 + 24);
              isSplat = mlir::ShapedType::getShape(&ShapedType);
              v91 = v69;
              v76 = mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::ArrayRef<long long>>(a3 + 1, v68, &isSplat);
              v70 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 1), *(a2 + 24), &ShapedType, &v79, &v76);
LABEL_161:
              ((*a3)[1])(a3, a2, v70);
              return 1;
            }

            v67 = 8 * v66;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v67 -= 8;
              if (!v67)
              {
                goto LABEL_159;
              }
            }
          }

          isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
          v70 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::ShapedType &,mlir::Value &,mlir::Type>((a3 + 1), *(a2 + 24), &ShapedType, &v79, &isSplat);
          goto LABEL_161;
        }
      }

      v50 = v77;
      v77 = 0;
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }

      goto LABEL_115;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v88, &ShapedType);
    LOWORD(isSplat) = ShapedType;
    if (ShapedType == 1)
    {
      v91 = v83;
    }

    else
    {
      (*(*v83 + 16))(&v91);
    }

    v36 = v84;
    v92 = v84;
    LOWORD(v79) = v85;
    if (v85 == 1)
    {
      v80 = v86;
    }

    else
    {
      (*(*v86 + 16))(&v80);
      v36 = v92;
    }

    v81 = v87;
    if (v36 == v87)
    {
      v29 = 0;
    }

    else
    {
      if (BYTE1(isSplat))
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      if (isSplat)
      {
        v39 = v91 + 16 * v38;
        LODWORD(v77) = *(v39 + 2);
        if (v77 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v76, v39);
        }

        v76 = *v39;
      }

      else
      {
        (*(*v91 + 24))(&v76);
      }

      v54 = &v76;
      if (v77 >= 0x41)
      {
        v54 = v76;
      }

      v55 = *v54;
      v29 = *v54 != 0;
      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x1AC55A040]();
      }

      v56 = v92 + 1;
      v92 = v56;
      if (v56 == v81)
      {
LABEL_133:
        v37 = 1;
        if (v79)
        {
          goto LABEL_136;
        }

LABEL_134:
        v57 = v80;
        v80 = 0;
        if (v57)
        {
          (*(*v57 + 8))(v57);
        }

LABEL_136:
        if ((isSplat & 1) == 0)
        {
          v58 = v91;
          v91 = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        if ((v85 & 1) == 0)
        {
          v59 = v86;
          v86 = 0;
          if (v59)
          {
            (*(*v59 + 8))(v59);
          }
        }

        if ((ShapedType & 1) == 0)
        {
          v60 = v83;
          v83 = 0;
          if (v60)
          {
            (*(*v60 + 8))(v60);
          }
        }

        if ((v37 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_146;
      }

      while (1)
      {
        v71 = BYTE1(isSplat) ? 0 : v56;
        if (isSplat == 1)
        {
          v72 = v91 + 16 * v71;
          LODWORD(v77) = *(v72 + 2);
          if (v77 > 0x40)
          {
            llvm::APInt::initSlowCase(&v76, v72);
          }

          v76 = *v72;
        }

        else
        {
          (*(*v91 + 24))(&v76);
        }

        v73 = v77 >= 0x41 ? v76 : &v76;
        v74 = (v55 != 0) ^ (*v73 == 0);
        v75 = !v76 || v77 < 0x41;
        if ((v74 & 1) == 0)
        {
          break;
        }

        if (!v75)
        {
          MEMORY[0x1AC55A040]();
        }

        v56 = v92 + 1;
        v92 = v56;
        if (v56 == v81)
        {
          goto LABEL_133;
        }
      }

      if (!v75)
      {
        MEMORY[0x1AC55A040]();
      }
    }

    v37 = 0;
    if (v79)
    {
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ConstantOp::build(a1, v15, *a3, a3[1]);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::CastOp,mlir::ShapedType &,mlir::Value &,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::CastOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.reciprocal_square_root";
    v444 = 26;
    goto LABEL_521;
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v2 + 8);
    Values = mlir::SparseElementsAttr::getValues(v651);
    v5 = *(v4 + 16);
  }

  else
  {
    Values = *(v2 + 24);
  }

  {
    v445 = v5;
    v446 = Values;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    Values = v446;
    v5 = v445;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = v7;
  {
    v583 = v7;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v8 = v583;
  }

  mlir::detail::InterfaceMap::insert(v4 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v650 = 1283;
    v447 = "mps.reciprocal";
LABEL_465:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v447;
    v444 = 14;
    goto LABEL_521;
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v9 + 8);
    v13 = mlir::SparseElementsAttr::getValues(v651);
    v12 = *(v11 + 16);
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *(v9 + 24);
    {
      goto LABEL_12;
    }
  }

  v461 = v13;
  v522 = v12;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v13 = v461;
  v12 = v522;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v14 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v15 = v14;
  {
    v584 = v14;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v15 = v584;
  }

  mlir::detail::InterfaceMap::insert(v11 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.negative";
LABEL_520:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v448;
    v444 = 12;
LABEL_521:
    v649 = v444;
    v645 = ".";
    v646 = 259;
    llvm::operator+(&v647, &v645, v651);
    llvm::report_fatal_error(v651, 1);
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v16 + 8);
    v20 = mlir::SparseElementsAttr::getValues(v651);
    v19 = *(v18 + 16);
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = *(v16 + 24);
    {
      goto LABEL_17;
    }
  }

  v462 = v20;
  v523 = v19;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v20 = v462;
  v19 = v523;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v21 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v22 = v21;
  {
    v585 = v21;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v22 = v585;
  }

  mlir::detail::InterfaceMap::insert(v18 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.not";
LABEL_494:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v449;
    v444 = 7;
    goto LABEL_521;
  }

  v25 = v23;
  v26 = *(v23 + 16);
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v23 + 8);
    v27 = mlir::SparseElementsAttr::getValues(v651);
    v26 = *(v25 + 16);
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = *(v23 + 24);
    {
      goto LABEL_22;
    }
  }

  v463 = v27;
  v524 = v26;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v27 = v463;
  v26 = v524;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v28 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v29 = v28;
  {
    v586 = v28;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v29 = v586;
  }

  mlir::detail::InterfaceMap::insert(v25 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.ceil";
LABEL_502:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v450;
    v444 = 8;
    goto LABEL_521;
  }

  v32 = v30;
  v33 = *(v30 + 16);
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v30 + 8);
    v34 = mlir::SparseElementsAttr::getValues(v651);
    v33 = *(v32 + 16);
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = *(v30 + 24);
    {
      goto LABEL_27;
    }
  }

  v464 = v34;
  v525 = v33;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v34 = v464;
  v33 = v525;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v35 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v36 = v35;
  {
    v587 = v35;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v36 = v587;
  }

  mlir::detail::InterfaceMap::insert(v32 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.floor";
LABEL_499:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v451;
    v444 = 9;
    goto LABEL_521;
  }

  v39 = v37;
  v40 = *(v37 + 16);
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v37 + 8);
    v41 = mlir::SparseElementsAttr::getValues(v651);
    v40 = *(v39 + 16);
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = *(v37 + 24);
    {
      goto LABEL_32;
    }
  }

  v465 = v41;
  v526 = v40;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v41 = v465;
  v40 = v526;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v42 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v43 = v42;
  {
    v588 = v42;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v43 = v588;
  }

  mlir::detail::InterfaceMap::insert(v39 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.round";
    goto LABEL_499;
  }

  v46 = v44;
  v47 = *(v44 + 16);
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v44 + 8);
    v48 = mlir::SparseElementsAttr::getValues(v651);
    v47 = *(v46 + 16);
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = *(v44 + 24);
    {
      goto LABEL_37;
    }
  }

  v466 = v48;
  v527 = v47;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v48 = v466;
  v47 = v527;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v49 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v50 = v49;
  {
    v589 = v49;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v50 = v589;
  }

  mlir::detail::InterfaceMap::insert(v46 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.square_root";
    v444 = 15;
    goto LABEL_521;
  }

  v53 = v51;
  v54 = *(v51 + 16);
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v51 + 8);
    v55 = mlir::SparseElementsAttr::getValues(v651);
    v54 = *(v53 + 16);
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = *(v51 + 24);
    {
      goto LABEL_42;
    }
  }

  v467 = v55;
  v528 = v54;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v55 = v467;
  v54 = v528;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v56 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v57 = v56;
  {
    v590 = v56;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v57 = v590;
  }

  mlir::detail::InterfaceMap::insert(v53 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.add";
    goto LABEL_494;
  }

  v60 = v58;
  v61 = *(v58 + 16);
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v58 + 8);
    v62 = mlir::SparseElementsAttr::getValues(v651);
    v61 = *(v60 + 16);
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = *(v58 + 24);
    {
      goto LABEL_47;
    }
  }

  v468 = v62;
  v529 = v61;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v62 = v468;
  v61 = v529;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v63 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v64 = v63;
  {
    v591 = v63;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v64 = v591;
  }

  mlir::detail::InterfaceMap::insert(v60 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.subtract";
    goto LABEL_520;
  }

  v67 = v65;
  v68 = *(v65 + 16);
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v65 + 8);
    v69 = mlir::SparseElementsAttr::getValues(v651);
    v68 = *(v67 + 16);
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = *(v65 + 24);
    {
      goto LABEL_52;
    }
  }

  v469 = v69;
  v530 = v68;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v69 = v469;
  v68 = v530;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v70 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v71 = v70;
  {
    v592 = v70;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v71 = v592;
  }

  mlir::detail::InterfaceMap::insert(v67 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v71);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, a1);
  if ((v73 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.multiply";
    goto LABEL_520;
  }

  v74 = v72;
  v75 = *(v72 + 16);
  if (v75 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v72 + 8);
    v76 = mlir::SparseElementsAttr::getValues(v651);
    v75 = *(v74 + 16);
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = *(v72 + 24);
    {
      goto LABEL_57;
    }
  }

  v470 = v76;
  v531 = v75;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v76 = v470;
  v75 = v531;
LABEL_57:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v76, v75, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v77 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v78 = v77;
  {
    v593 = v77;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v78 = v593;
  }

  mlir::detail::InterfaceMap::insert(v74 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v78);
  v79 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, a1);
  if ((v80 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.divide";
LABEL_489:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v452;
    v444 = 10;
    goto LABEL_521;
  }

  v81 = v79;
  v82 = *(v79 + 16);
  if (v82 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v79 + 8);
    v83 = mlir::SparseElementsAttr::getValues(v651);
    v82 = *(v81 + 16);
    {
      goto LABEL_62;
    }
  }

  else
  {
    v83 = *(v79 + 24);
    {
      goto LABEL_62;
    }
  }

  v471 = v83;
  v532 = v82;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v83 = v471;
  v82 = v532;
LABEL_62:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v83, v82, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v84 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v85 = v84;
  {
    v594 = v84;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v85 = v594;
  }

  mlir::detail::InterfaceMap::insert(v81 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v85);
  v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id, a1);
  if ((v87 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.modulo";
    goto LABEL_489;
  }

  v88 = v86;
  v89 = *(v86 + 16);
  if (v89 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v86 + 8);
    v90 = mlir::SparseElementsAttr::getValues(v651);
    v89 = *(v88 + 16);
    {
      goto LABEL_67;
    }
  }

  else
  {
    v90 = *(v86 + 24);
    {
      goto LABEL_67;
    }
  }

  v472 = v90;
  v533 = v89;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v90 = v472;
  v89 = v533;
LABEL_67:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v90, v89, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v91 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v92 = v91;
  {
    v595 = v91;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v92 = v595;
  }

  mlir::detail::InterfaceMap::insert(v88 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v92);
  v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, a1);
  if ((v94 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.minimum";
LABEL_511:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v453;
    v444 = 11;
    goto LABEL_521;
  }

  v95 = v93;
  v96 = *(v93 + 16);
  if (v96 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v93 + 8);
    v97 = mlir::SparseElementsAttr::getValues(v651);
    v96 = *(v95 + 16);
    {
      goto LABEL_72;
    }
  }

  else
  {
    v97 = *(v93 + 24);
    {
      goto LABEL_72;
    }
  }

  v473 = v97;
  v534 = v96;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v97 = v473;
  v96 = v534;
LABEL_72:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v97, v96, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v98 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v99 = v98;
  {
    v596 = v98;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v99 = v596;
  }

  mlir::detail::InterfaceMap::insert(v95 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v99);
  v100 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, a1);
  if ((v101 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.maximum";
    goto LABEL_511;
  }

  v102 = v100;
  v103 = *(v100 + 16);
  if (v103 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v100 + 8);
    v104 = mlir::SparseElementsAttr::getValues(v651);
    v103 = *(v102 + 16);
    {
      goto LABEL_77;
    }
  }

  else
  {
    v104 = *(v100 + 24);
    {
      goto LABEL_77;
    }
  }

  v474 = v104;
  v535 = v103;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v104 = v474;
  v103 = v535;
LABEL_77:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v104, v103, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v105 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v106 = v105;
  {
    v597 = v105;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v106 = v597;
  }

  mlir::detail::InterfaceMap::insert(v102 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v106);
  v107 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id, a1);
  if ((v108 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.equal";
    goto LABEL_499;
  }

  v109 = v107;
  v110 = *(v107 + 16);
  if (v110 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v107 + 8);
    v111 = mlir::SparseElementsAttr::getValues(v651);
    v110 = *(v109 + 16);
    {
      goto LABEL_82;
    }
  }

  else
  {
    v111 = *(v107 + 24);
    {
      goto LABEL_82;
    }
  }

  v475 = v111;
  v536 = v110;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v111 = v475;
  v110 = v536;
LABEL_82:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v111, v110, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v112 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v113 = v112;
  {
    v598 = v112;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v113 = v598;
  }

  mlir::detail::InterfaceMap::insert(v109 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v113);
  v114 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id, a1);
  if ((v115 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.not_equal";
LABEL_518:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v454;
    v444 = 13;
    goto LABEL_521;
  }

  v116 = v114;
  v117 = *(v114 + 16);
  if (v117 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v114 + 8);
    v118 = mlir::SparseElementsAttr::getValues(v651);
    v117 = *(v116 + 16);
    {
      goto LABEL_87;
    }
  }

  else
  {
    v118 = *(v114 + 24);
    {
      goto LABEL_87;
    }
  }

  v476 = v118;
  v537 = v117;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v118 = v476;
  v117 = v537;
LABEL_87:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v118, v117, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v119 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v120 = v119;
  {
    v599 = v119;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v120 = v599;
  }

  mlir::detail::InterfaceMap::insert(v116 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v120);
  v121 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, a1);
  if ((v122 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.greater";
    goto LABEL_511;
  }

  v123 = v121;
  v124 = *(v121 + 16);
  if (v124 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v121 + 8);
    v125 = mlir::SparseElementsAttr::getValues(v651);
    v124 = *(v123 + 16);
    {
      goto LABEL_92;
    }
  }

  else
  {
    v125 = *(v121 + 24);
    {
      goto LABEL_92;
    }
  }

  v477 = v125;
  v538 = v124;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v125 = v477;
  v124 = v538;
LABEL_92:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v125, v124, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v126 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v127 = v126;
  {
    v600 = v126;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v127 = v600;
  }

  mlir::detail::InterfaceMap::insert(v123 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v127);
  v128 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, a1);
  if ((v129 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.greater_equal";
LABEL_486:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v455;
    v444 = 17;
    goto LABEL_521;
  }

  v130 = v128;
  v131 = *(v128 + 16);
  if (v131 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v128 + 8);
    v132 = mlir::SparseElementsAttr::getValues(v651);
    v131 = *(v130 + 16);
    {
      goto LABEL_97;
    }
  }

  else
  {
    v132 = *(v128 + 24);
    {
      goto LABEL_97;
    }
  }

  v478 = v132;
  v539 = v131;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v132 = v478;
  v131 = v539;
LABEL_97:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v132, v131, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v133 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v134 = v133;
  {
    v601 = v133;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v134 = v601;
  }

  mlir::detail::InterfaceMap::insert(v130 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v134);
  v135 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOp,void>::id, a1);
  if ((v136 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.less";
    goto LABEL_502;
  }

  v137 = v135;
  v138 = *(v135 + 16);
  if (v138 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v135 + 8);
    v139 = mlir::SparseElementsAttr::getValues(v651);
    v138 = *(v137 + 16);
    {
      goto LABEL_102;
    }
  }

  else
  {
    v139 = *(v135 + 24);
    {
      goto LABEL_102;
    }
  }

  v479 = v139;
  v540 = v138;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v139 = v479;
  v138 = v540;
LABEL_102:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v139, v138, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v140 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v141 = v140;
  {
    v602 = v140;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v141 = v602;
  }

  mlir::detail::InterfaceMap::insert(v137 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v141);
  v142 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id, a1);
  if ((v143 & 1) == 0)
  {
    v650 = 1283;
    v447 = "mps.less_equal";
    goto LABEL_465;
  }

  v144 = v142;
  v145 = *(v142 + 16);
  if (v145 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v142 + 8);
    v146 = mlir::SparseElementsAttr::getValues(v651);
    v145 = *(v144 + 16);
    {
      goto LABEL_107;
    }
  }

  else
  {
    v146 = *(v142 + 24);
    {
      goto LABEL_107;
    }
  }

  v480 = v146;
  v541 = v145;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v146 = v480;
  v145 = v541;
LABEL_107:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v146, v145, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v147 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v148 = v147;
  {
    v603 = v147;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v148 = v603;
  }

  mlir::detail::InterfaceMap::insert(v144 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v148);
  v149 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, a1);
  if ((v150 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reduction_and";
    goto LABEL_486;
  }

  v151 = v149;
  v152 = *(v149 + 16);
  if (v152 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v149 + 8);
    v153 = mlir::SparseElementsAttr::getValues(v651);
    v152 = *(v151 + 16);
    {
      goto LABEL_112;
    }
  }

  else
  {
    v153 = *(v149 + 24);
    {
      goto LABEL_112;
    }
  }

  v481 = v153;
  v542 = v152;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v153 = v481;
  v152 = v542;
LABEL_112:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v153, v152, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v154 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v155 = v154;
  {
    v604 = v154;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v155 = v604;
  }

  mlir::detail::InterfaceMap::insert(v151 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v155);
  v156 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, a1);
  if ((v157 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.reduction_argmax";
LABEL_497:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v456;
    v444 = 20;
    goto LABEL_521;
  }

  v158 = v156;
  v159 = *(v156 + 16);
  if (v159 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v156 + 8);
    v160 = mlir::SparseElementsAttr::getValues(v651);
    v159 = *(v158 + 16);
    {
      goto LABEL_117;
    }
  }

  else
  {
    v160 = *(v156 + 24);
    {
      goto LABEL_117;
    }
  }

  v482 = v160;
  v543 = v159;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v160 = v482;
  v159 = v543;
LABEL_117:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v160, v159, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v161 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v162 = v161;
  {
    v605 = v161;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v162 = v605;
  }

  mlir::detail::InterfaceMap::insert(v158 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v162);
  v163 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, a1);
  if ((v164 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.reduction_argmin";
    goto LABEL_497;
  }

  v165 = v163;
  v166 = *(v163 + 16);
  if (v166 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v163 + 8);
    v167 = mlir::SparseElementsAttr::getValues(v651);
    v166 = *(v165 + 16);
    {
      goto LABEL_122;
    }
  }

  else
  {
    v167 = *(v163 + 24);
    {
      goto LABEL_122;
    }
  }

  v483 = v167;
  v544 = v166;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v167 = v483;
  v166 = v544;
LABEL_122:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v167, v166, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v168 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v169 = v168;
  {
    v606 = v168;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v169 = v606;
  }

  mlir::detail::InterfaceMap::insert(v165 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v169);
  v170 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id, a1);
  if ((v171 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.reduction_logsumexp";
    v444 = 23;
    goto LABEL_521;
  }

  v172 = v170;
  v173 = *(v170 + 16);
  if (v173 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v170 + 8);
    v174 = mlir::SparseElementsAttr::getValues(v651);
    v173 = *(v172 + 16);
    {
      goto LABEL_127;
    }
  }

  else
  {
    v174 = *(v170 + 24);
    {
      goto LABEL_127;
    }
  }

  v484 = v174;
  v545 = v173;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v174 = v484;
  v173 = v545;
LABEL_127:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v174, v173, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v175 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v176 = v175;
  {
    v607 = v175;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v176 = v607;
  }

  mlir::detail::InterfaceMap::insert(v172 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v176);
  v177 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, a1);
  if ((v178 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reduction_max";
    goto LABEL_486;
  }

  v179 = v177;
  v180 = *(v177 + 16);
  if (v180 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v177 + 8);
    v181 = mlir::SparseElementsAttr::getValues(v651);
    v180 = *(v179 + 16);
    {
      goto LABEL_132;
    }
  }

  else
  {
    v181 = *(v177 + 24);
    {
      goto LABEL_132;
    }
  }

  v485 = v181;
  v546 = v180;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v181 = v485;
  v180 = v546;
LABEL_132:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v181, v180, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v182 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v183 = v182;
  {
    v608 = v182;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v183 = v608;
  }

  mlir::detail::InterfaceMap::insert(v179 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v183);
  v184 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, a1);
  if ((v185 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.reduction_mean";
LABEL_516:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v457;
    v444 = 18;
    goto LABEL_521;
  }

  v186 = v184;
  v187 = *(v184 + 16);
  if (v187 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v184 + 8);
    v188 = mlir::SparseElementsAttr::getValues(v651);
    v187 = *(v186 + 16);
    {
      goto LABEL_137;
    }
  }

  else
  {
    v188 = *(v184 + 24);
    {
      goto LABEL_137;
    }
  }

  v486 = v188;
  v547 = v187;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v188 = v486;
  v187 = v547;
LABEL_137:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v188, v187, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v189 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v190 = v189;
  {
    v609 = v189;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v190 = v609;
  }

  mlir::detail::InterfaceMap::insert(v186 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v190);
  v191 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, a1);
  if ((v192 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reduction_min";
    goto LABEL_486;
  }

  v193 = v191;
  v194 = *(v191 + 16);
  if (v194 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v191 + 8);
    v195 = mlir::SparseElementsAttr::getValues(v651);
    v194 = *(v193 + 16);
    {
      goto LABEL_142;
    }
  }

  else
  {
    v195 = *(v191 + 24);
    {
      goto LABEL_142;
    }
  }

  v487 = v195;
  v548 = v194;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v195 = v487;
  v194 = v548;
LABEL_142:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v195, v194, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v196 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v197 = v196;
  {
    v610 = v196;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v197 = v610;
  }

  mlir::detail::InterfaceMap::insert(v193 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v197);
  v198 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, a1);
  if ((v199 & 1) == 0)
  {
    v650 = 1283;
    v458 = "mps.reduction_or";
LABEL_507:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v458;
    v444 = 16;
    goto LABEL_521;
  }

  v200 = v198;
  v201 = *(v198 + 16);
  if (v201 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v198 + 8);
    v202 = mlir::SparseElementsAttr::getValues(v651);
    v201 = *(v200 + 16);
    {
      goto LABEL_147;
    }
  }

  else
  {
    v202 = *(v198 + 24);
    {
      goto LABEL_147;
    }
  }

  v488 = v202;
  v549 = v201;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v202 = v488;
  v201 = v549;
LABEL_147:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v202, v201, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v203 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v204 = v203;
  {
    v611 = v203;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v204 = v611;
  }

  mlir::detail::InterfaceMap::insert(v200 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v204);
  v205 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, a1);
  if ((v206 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.reduction_sum";
    goto LABEL_486;
  }

  v207 = v205;
  v208 = *(v205 + 16);
  if (v208 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v205 + 8);
    v209 = mlir::SparseElementsAttr::getValues(v651);
    v208 = *(v207 + 16);
    {
      goto LABEL_152;
    }
  }

  else
  {
    v209 = *(v205 + 24);
    {
      goto LABEL_152;
    }
  }

  v489 = v209;
  v550 = v208;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v209 = v489;
  v208 = v550;
LABEL_152:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v209, v208, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v210 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v211 = v210;
  {
    v612 = v210;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v211 = v612;
  }

  mlir::detail::InterfaceMap::insert(v207 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v211);
  v212 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, a1);
  if ((v213 & 1) == 0)
  {
    v650 = 1283;
    v459 = "mps.reduction_variance";
LABEL_505:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v459;
    v444 = 22;
    goto LABEL_521;
  }

  v214 = v212;
  v215 = *(v212 + 16);
  if (v215 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v212 + 8);
    v216 = mlir::SparseElementsAttr::getValues(v651);
    v215 = *(v214 + 16);
    {
      goto LABEL_157;
    }
  }

  else
  {
    v216 = *(v212 + 24);
    {
      goto LABEL_157;
    }
  }

  v490 = v216;
  v551 = v215;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v216 = v490;
  v215 = v551;
LABEL_157:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v216, v215, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v217 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v218 = v217;
  {
    v613 = v217;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v218 = v613;
  }

  mlir::detail::InterfaceMap::insert(v214 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v218);
  v219 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id, a1);
  if ((v220 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.batch_to_space";
    goto LABEL_516;
  }

  v221 = v219;
  v222 = *(v219 + 16);
  if (v222 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v219 + 8);
    v223 = mlir::SparseElementsAttr::getValues(v651);
    v222 = *(v221 + 16);
    {
      goto LABEL_162;
    }
  }

  else
  {
    v223 = *(v219 + 24);
    {
      goto LABEL_162;
    }
  }

  v491 = v223;
  v552 = v222;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v223 = v491;
  v222 = v552;
LABEL_162:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v223, v222, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v224 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v225 = v224;
  {
    v614 = v224;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v225 = v614;
  }

  mlir::detail::InterfaceMap::insert(v221 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v225);
  v226 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, a1);
  if ((v227 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.space_to_batch";
    goto LABEL_516;
  }

  v228 = v226;
  v229 = *(v226 + 16);
  if (v229 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v226 + 8);
    v230 = mlir::SparseElementsAttr::getValues(v651);
    v229 = *(v228 + 16);
    {
      goto LABEL_167;
    }
  }

  else
  {
    v230 = *(v226 + 24);
    {
      goto LABEL_167;
    }
  }

  v492 = v230;
  v553 = v229;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v230 = v492;
  v229 = v553;
LABEL_167:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v230, v229, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v231 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v232 = v231;
  {
    v615 = v231;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v232 = v615;
  }

  mlir::detail::InterfaceMap::insert(v228 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v232);
  v233 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, a1);
  if ((v234 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.select";
    goto LABEL_489;
  }

  v235 = v233;
  v236 = *(v233 + 16);
  if (v236 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v233 + 8);
    v237 = mlir::SparseElementsAttr::getValues(v651);
    v236 = *(v235 + 16);
    {
      goto LABEL_172;
    }
  }

  else
  {
    v237 = *(v233 + 24);
    {
      goto LABEL_172;
    }
  }

  v493 = v237;
  v554 = v236;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v237 = v493;
  v236 = v554;
LABEL_172:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v237, v236, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v238 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v239 = v238;
  {
    v616 = v238;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v239 = v616;
  }

  mlir::detail::InterfaceMap::insert(v235 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v239);
  v240 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, a1);
  if ((v241 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.power";
    goto LABEL_499;
  }

  v242 = v240;
  v243 = *(v240 + 16);
  if (v243 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v240 + 8);
    v244 = mlir::SparseElementsAttr::getValues(v651);
    v243 = *(v242 + 16);
    {
      goto LABEL_177;
    }
  }

  else
  {
    v244 = *(v240 + 24);
    {
      goto LABEL_177;
    }
  }

  v494 = v244;
  v555 = v243;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v244 = v494;
  v243 = v555;
LABEL_177:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v244, v243, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v245 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v246 = v245;
  {
    v617 = v245;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v246 = v617;
  }

  mlir::detail::InterfaceMap::insert(v242 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v246);
  v247 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, a1);
  if ((v248 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.transpose";
    goto LABEL_518;
  }

  v249 = v247;
  v250 = *(v247 + 16);
  if (v250 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v247 + 8);
    v251 = mlir::SparseElementsAttr::getValues(v651);
    v250 = *(v249 + 16);
    {
      goto LABEL_182;
    }
  }

  else
  {
    v251 = *(v247 + 24);
    {
      goto LABEL_182;
    }
  }

  v495 = v251;
  v556 = v250;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v251 = v495;
  v250 = v556;
LABEL_182:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v251, v250, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v252 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v253 = v252;
  {
    v618 = v252;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v253 = v618;
  }

  mlir::detail::InterfaceMap::insert(v249 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v253);
  v254 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, a1);
  if ((v255 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.permute";
    goto LABEL_511;
  }

  v256 = v254;
  v257 = *(v254 + 16);
  if (v257 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v254 + 8);
    v258 = mlir::SparseElementsAttr::getValues(v651);
    v257 = *(v256 + 16);
    {
      goto LABEL_187;
    }
  }

  else
  {
    v258 = *(v254 + 24);
    {
      goto LABEL_187;
    }
  }

  v496 = v258;
  v557 = v257;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v258 = v496;
  v257 = v557;
LABEL_187:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v258, v257, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v259 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v260 = v259;
  {
    v619 = v259;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v260 = v619;
  }

  mlir::detail::InterfaceMap::insert(v256 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v260);
  v261 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, a1);
  if ((v262 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.scatter";
    goto LABEL_511;
  }

  v263 = v261;
  v264 = *(v261 + 16);
  if (v264 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v261 + 8);
    v265 = mlir::SparseElementsAttr::getValues(v651);
    v264 = *(v263 + 16);
    {
      goto LABEL_192;
    }
  }

  else
  {
    v265 = *(v261 + 24);
    {
      goto LABEL_192;
    }
  }

  v497 = v265;
  v558 = v264;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v265 = v497;
  v264 = v558;
LABEL_192:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v265, v264, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v266 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v267 = v266;
  {
    v620 = v266;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v267 = v620;
  }

  mlir::detail::InterfaceMap::insert(v263 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v267);
  v268 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, a1);
  if ((v269 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.gather";
    goto LABEL_489;
  }

  v270 = v268;
  v271 = *(v268 + 16);
  if (v271 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v268 + 8);
    v272 = mlir::SparseElementsAttr::getValues(v651);
    v271 = *(v270 + 16);
    {
      goto LABEL_197;
    }
  }

  else
  {
    v272 = *(v268 + 24);
    {
      goto LABEL_197;
    }
  }

  v498 = v272;
  v559 = v271;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v272 = v498;
  v271 = v559;
LABEL_197:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v272, v271, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v273 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v274 = v273;
  {
    v621 = v273;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v274 = v621;
  }

  mlir::detail::InterfaceMap::insert(v270 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v274);
  v275 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, a1);
  if ((v276 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.slice";
    goto LABEL_499;
  }

  v277 = v275;
  v278 = *(v275 + 16);
  if (v278 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v275 + 8);
    v279 = mlir::SparseElementsAttr::getValues(v651);
    v278 = *(v277 + 16);
    {
      goto LABEL_202;
    }
  }

  else
  {
    v279 = *(v275 + 24);
    {
      goto LABEL_202;
    }
  }

  v499 = v279;
  v560 = v278;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v279 = v499;
  v278 = v560;
LABEL_202:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v279, v278, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v280 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v281 = v280;
  {
    v622 = v280;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v281 = v622;
  }

  mlir::detail::InterfaceMap::insert(v277 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v281);
  v282 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, a1);
  if ((v283 & 1) == 0)
  {
    v650 = 1283;
    v455 = "mps.strided_slice";
    goto LABEL_486;
  }

  v284 = v282;
  v285 = *(v282 + 16);
  if (v285 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v282 + 8);
    v286 = mlir::SparseElementsAttr::getValues(v651);
    v285 = *(v284 + 16);
    {
      goto LABEL_207;
    }
  }

  else
  {
    v286 = *(v282 + 24);
    {
      goto LABEL_207;
    }
  }

  v500 = v286;
  v561 = v285;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v286 = v500;
  v285 = v561;
LABEL_207:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v286, v285, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v287 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v288 = v287;
  {
    v623 = v287;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v288 = v623;
  }

  mlir::detail::InterfaceMap::insert(v284 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v288);
  v289 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, a1);
  if ((v290 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.crop";
    goto LABEL_502;
  }

  v291 = v289;
  v292 = *(v289 + 16);
  if (v292 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v289 + 8);
    v293 = mlir::SparseElementsAttr::getValues(v651);
    v292 = *(v291 + 16);
    {
      goto LABEL_212;
    }
  }

  else
  {
    v293 = *(v289 + 24);
    {
      goto LABEL_212;
    }
  }

  v501 = v293;
  v562 = v292;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v293 = v501;
  v292 = v562;
LABEL_212:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v293, v292, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v294 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v295 = v294;
  {
    v624 = v294;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v295 = v624;
  }

  mlir::detail::InterfaceMap::insert(v291 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v295);
  v296 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, a1);
  if ((v297 & 1) == 0)
  {
    v650 = 1283;
    v452 = "mps.concat";
    goto LABEL_489;
  }

  v298 = v296;
  v299 = *(v296 + 16);
  if (v299 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v296 + 8);
    v300 = mlir::SparseElementsAttr::getValues(v651);
    v299 = *(v298 + 16);
    {
      goto LABEL_217;
    }
  }

  else
  {
    v300 = *(v296 + 24);
    {
      goto LABEL_217;
    }
  }

  v502 = v300;
  v563 = v299;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v300 = v502;
  v299 = v563;
LABEL_217:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v300, v299, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v301 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v302 = v301;
  {
    v625 = v301;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v302 = v625;
  }

  mlir::detail::InterfaceMap::insert(v298 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v302);
  v303 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, a1);
  if ((v304 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.reshape";
    goto LABEL_511;
  }

  v305 = v303;
  v306 = *(v303 + 16);
  if (v306 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v303 + 8);
    v307 = mlir::SparseElementsAttr::getValues(v651);
    v306 = *(v305 + 16);
    {
      goto LABEL_222;
    }
  }

  else
  {
    v307 = *(v303 + 24);
    {
      goto LABEL_222;
    }
  }

  v503 = v307;
  v564 = v306;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v307 = v503;
  v306 = v564;
LABEL_222:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v307, v306, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v308 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v309 = v308;
  {
    v626 = v308;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v309 = v626;
  }

  mlir::detail::InterfaceMap::insert(v305 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v309);
  v310 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, a1);
  if ((v311 & 1) == 0)
  {
    v650 = 1283;
    v460 = "mps.get_coordinates";
LABEL_513:
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = v460;
    v444 = 19;
    goto LABEL_521;
  }

  v312 = v310;
  v313 = *(v310 + 16);
  if (v313 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v310 + 8);
    v314 = mlir::SparseElementsAttr::getValues(v651);
    v313 = *(v312 + 16);
    {
      goto LABEL_227;
    }
  }

  else
  {
    v314 = *(v310 + 24);
    {
      goto LABEL_227;
    }
  }

  v504 = v314;
  v565 = v313;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v314 = v504;
  v313 = v565;
LABEL_227:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v314, v313, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v315 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v316 = v315;
  {
    v627 = v315;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v316 = v627;
  }

  mlir::detail::InterfaceMap::insert(v312 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v316);
  v317 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::InitRandomPhiloxStateOp,void>::id, a1);
  if ((v318 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.init_random_philox_state";
    v444 = 28;
    goto LABEL_521;
  }

  v319 = v317;
  v320 = *(v317 + 16);
  if (v320 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v317 + 8);
    v321 = mlir::SparseElementsAttr::getValues(v651);
    v320 = *(v319 + 16);
    {
      goto LABEL_232;
    }
  }

  else
  {
    v321 = *(v317 + 24);
    {
      goto LABEL_232;
    }
  }

  v505 = v321;
  v566 = v320;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v321 = v505;
  v320 = v566;
LABEL_232:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v321, v320, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v322 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v323 = v322;
  {
    v628 = v322;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v323 = v628;
  }

  mlir::detail::InterfaceMap::insert(v319 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v323);
  v324 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, a1);
  if ((v325 & 1) == 0)
  {
    v650 = 1283;
    v449 = "mps.pad";
    goto LABEL_494;
  }

  v326 = v324;
  v327 = *(v324 + 16);
  if (v327 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v324 + 8);
    v328 = mlir::SparseElementsAttr::getValues(v651);
    v327 = *(v326 + 16);
    {
      goto LABEL_237;
    }
  }

  else
  {
    v328 = *(v324 + 24);
    {
      goto LABEL_237;
    }
  }

  v506 = v328;
  v567 = v327;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v328 = v506;
  v327 = v567;
LABEL_237:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v328, v327, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v329 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v330 = v329;
  {
    v629 = v329;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v330 = v629;
  }

  mlir::detail::InterfaceMap::insert(v326 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v330);
  v331 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, a1);
  if ((v332 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.cast";
    goto LABEL_502;
  }

  v333 = v331;
  v334 = *(v331 + 16);
  if (v334 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v331 + 8);
    v335 = mlir::SparseElementsAttr::getValues(v651);
    v334 = *(v333 + 16);
    {
      goto LABEL_242;
    }
  }

  else
  {
    v335 = *(v331 + 24);
    {
      goto LABEL_242;
    }
  }

  v507 = v335;
  v568 = v334;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v335 = v507;
  v334 = v568;
LABEL_242:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v335, v334, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v336 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v337 = v336;
  {
    v630 = v336;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v337 = v630;
  }

  mlir::detail::InterfaceMap::insert(v333 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v337);
  v338 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, a1);
  if ((v339 & 1) == 0)
  {
    v650 = 1283;
    v456 = "mps.reinterpret_cast";
    goto LABEL_497;
  }

  v340 = v338;
  v341 = *(v338 + 16);
  if (v341 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v338 + 8);
    v342 = mlir::SparseElementsAttr::getValues(v651);
    v341 = *(v340 + 16);
    {
      goto LABEL_247;
    }
  }

  else
  {
    v342 = *(v338 + 24);
    {
      goto LABEL_247;
    }
  }

  v508 = v342;
  v569 = v341;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v342 = v508;
  v341 = v569;
LABEL_247:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v342, v341, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v343 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v344 = v343;
  {
    v631 = v343;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v344 = v631;
  }

  mlir::detail::InterfaceMap::insert(v340 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v344);
  v345 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ShapeOp,void>::id, a1);
  if ((v346 & 1) == 0)
  {
    v650 = 1283;
    v451 = "mps.shape";
    goto LABEL_499;
  }

  v347 = v345;
  v348 = *(v345 + 16);
  if (v348 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v345 + 8);
    v349 = mlir::SparseElementsAttr::getValues(v651);
    v348 = *(v347 + 16);
    {
      goto LABEL_252;
    }
  }

  else
  {
    v349 = *(v345 + 24);
    {
      goto LABEL_252;
    }
  }

  v509 = v349;
  v570 = v348;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v349 = v509;
  v348 = v570;
LABEL_252:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v349, v348, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v350 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v351 = v350;
  {
    v632 = v350;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v351 = v632;
  }

  mlir::detail::InterfaceMap::insert(v347 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v351);
  v352 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RankOp,void>::id, a1);
  if ((v353 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.rank";
    goto LABEL_502;
  }

  v354 = v352;
  v355 = *(v352 + 16);
  if (v355 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v352 + 8);
    v356 = mlir::SparseElementsAttr::getValues(v651);
    v355 = *(v354 + 16);
    {
      goto LABEL_257;
    }
  }

  else
  {
    v356 = *(v352 + 24);
    {
      goto LABEL_257;
    }
  }

  v510 = v356;
  v571 = v355;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v356 = v510;
  v355 = v571;
LABEL_257:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v356, v355, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v357 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v358 = v357;
  {
    v633 = v357;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v358 = v633;
  }

  mlir::detail::InterfaceMap::insert(v354 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v358);
  v359 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SizeOp,void>::id, a1);
  if ((v360 & 1) == 0)
  {
    v650 = 1283;
    v450 = "mps.size";
    goto LABEL_502;
  }

  v361 = v359;
  v362 = *(v359 + 16);
  if (v362 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v359 + 8);
    v363 = mlir::SparseElementsAttr::getValues(v651);
    v362 = *(v361 + 16);
    {
      goto LABEL_262;
    }
  }

  else
  {
    v363 = *(v359 + 24);
    {
      goto LABEL_262;
    }
  }

  v511 = v363;
  v572 = v362;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v363 = v511;
  v362 = v572;
LABEL_262:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v363, v362, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v364 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v365 = v364;
  {
    v634 = v364;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v365 = v634;
  }

  mlir::detail::InterfaceMap::insert(v361 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v365);
  v366 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id, a1);
  if ((v367 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.dimension_size";
    goto LABEL_516;
  }

  v368 = v366;
  v369 = *(v366 + 16);
  if (v369 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v366 + 8);
    v370 = mlir::SparseElementsAttr::getValues(v651);
    v369 = *(v368 + 16);
    {
      goto LABEL_267;
    }
  }

  else
  {
    v370 = *(v366 + 24);
    {
      goto LABEL_267;
    }
  }

  v512 = v370;
  v573 = v369;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v370 = v512;
  v369 = v573;
LABEL_267:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v370, v369, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v371 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v372 = v371;
  {
    v635 = v371;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v372 = v635;
  }

  mlir::detail::InterfaceMap::insert(v368 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v372);
  v373 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id, a1);
  if ((v374 & 1) == 0)
  {
    v650 = 1283;
    v459 = "mps.dynamic_shape_cast";
    goto LABEL_505;
  }

  v375 = v373;
  v376 = *(v373 + 16);
  if (v376 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v373 + 8);
    v377 = mlir::SparseElementsAttr::getValues(v651);
    v376 = *(v375 + 16);
    {
      goto LABEL_272;
    }
  }

  else
  {
    v377 = *(v373 + 24);
    {
      goto LABEL_272;
    }
  }

  v513 = v377;
  v574 = v376;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v377 = v513;
  v376 = v574;
LABEL_272:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v377, v376, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v378 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v379 = v378;
  {
    v636 = v378;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v379 = v636;
  }

  mlir::detail::InterfaceMap::insert(v375 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v379);
  v380 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, a1);
  if ((v381 & 1) == 0)
  {
    v650 = 1283;
    v458 = "mps.broadcast_to";
    goto LABEL_507;
  }

  v382 = v380;
  v383 = *(v380 + 16);
  if (v383 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v380 + 8);
    v384 = mlir::SparseElementsAttr::getValues(v651);
    v383 = *(v382 + 16);
    {
      goto LABEL_277;
    }
  }

  else
  {
    v384 = *(v380 + 24);
    {
      goto LABEL_277;
    }
  }

  v514 = v384;
  v575 = v383;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v384 = v514;
  v383 = v575;
LABEL_277:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v384, v383, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v385 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v386 = v385;
  {
    v637 = v385;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v386 = v637;
  }

  mlir::detail::InterfaceMap::insert(v382 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v386);
  v387 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id, a1);
  if ((v388 & 1) == 0)
  {
    v650 = 1283;
    v647 = "Attempting to attach an interface to an unregistered operation ";
    v648 = "mps.broadcast_gradient_args";
    v444 = 27;
    goto LABEL_521;
  }

  v389 = v387;
  v390 = *(v387 + 16);
  if (v390 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v387 + 8);
    v391 = mlir::SparseElementsAttr::getValues(v651);
    v390 = *(v389 + 16);
    {
      goto LABEL_282;
    }
  }

  else
  {
    v391 = *(v387 + 24);
    {
      goto LABEL_282;
    }
  }

  v515 = v391;
  v576 = v390;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v391 = v515;
  v390 = v576;
LABEL_282:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v391, v390, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v392 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v393 = v392;
  {
    v638 = v392;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v393 = v638;
  }

  mlir::detail::InterfaceMap::insert(v389 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v393);
  v394 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, a1);
  if ((v395 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.reduction_prod";
    goto LABEL_516;
  }

  v396 = v394;
  v397 = *(v394 + 16);
  if (v397 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v394 + 8);
    v398 = mlir::SparseElementsAttr::getValues(v651);
    v397 = *(v396 + 16);
    {
      goto LABEL_287;
    }
  }

  else
  {
    v398 = *(v394 + 24);
    {
      goto LABEL_287;
    }
  }

  v516 = v398;
  v577 = v397;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v398 = v516;
  v397 = v577;
LABEL_287:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v398, v397, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v399 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v400 = v399;
  {
    v639 = v399;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v400 = v639;
  }

  mlir::detail::InterfaceMap::insert(v396 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v400);
  v401 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, a1);
  if ((v402 & 1) == 0)
  {
    v650 = 1283;
    v453 = "mps.conv_2d";
    goto LABEL_511;
  }

  v403 = v401;
  v404 = *(v401 + 16);
  if (v404 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v401 + 8);
    v405 = mlir::SparseElementsAttr::getValues(v651);
    v404 = *(v403 + 16);
    {
      goto LABEL_292;
    }
  }

  else
  {
    v405 = *(v401 + 24);
    {
      goto LABEL_292;
    }
  }

  v517 = v405;
  v578 = v404;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v405 = v517;
  v404 = v578;
LABEL_292:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v405, v404, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v406 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v407 = v406;
  {
    v640 = v406;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v407 = v640;
  }

  mlir::detail::InterfaceMap::insert(v403 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v407);
  v408 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id, a1);
  if ((v409 & 1) == 0)
  {
    v650 = 1283;
    v460 = "mps.type_constraint";
    goto LABEL_513;
  }

  v410 = v408;
  v411 = *(v408 + 16);
  if (v411 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v408 + 8);
    v412 = mlir::SparseElementsAttr::getValues(v651);
    v411 = *(v410 + 16);
    {
      goto LABEL_297;
    }
  }

  else
  {
    v412 = *(v408 + 24);
    {
      goto LABEL_297;
    }
  }

  v518 = v412;
  v579 = v411;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v412 = v518;
  v411 = v579;
LABEL_297:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v412, v411, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v413 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v414 = v413;
  {
    v641 = v413;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v414 = v641;
  }

  mlir::detail::InterfaceMap::insert(v410 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v414);
  v415 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id, a1);
  if ((v416 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.real_part";
    goto LABEL_518;
  }

  v417 = v415;
  v418 = *(v415 + 16);
  if (v418 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v415 + 8);
    v419 = mlir::SparseElementsAttr::getValues(v651);
    v418 = *(v417 + 16);
    {
      goto LABEL_302;
    }
  }

  else
  {
    v419 = *(v415 + 24);
    {
      goto LABEL_302;
    }
  }

  v519 = v419;
  v580 = v418;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v419 = v519;
  v418 = v580;
LABEL_302:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v419, v418, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v420 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v421 = v420;
  {
    v642 = v420;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v421 = v642;
  }

  mlir::detail::InterfaceMap::insert(v417 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v421);
  v422 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id, a1);
  if ((v423 & 1) == 0)
  {
    v650 = 1283;
    v457 = "mps.imaginary_part";
    goto LABEL_516;
  }

  v424 = v422;
  v425 = *(v422 + 16);
  if (v425 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v422 + 8);
    v426 = mlir::SparseElementsAttr::getValues(v651);
    v425 = *(v424 + 16);
    {
      goto LABEL_307;
    }
  }

  else
  {
    v426 = *(v422 + 24);
    {
      goto LABEL_307;
    }
  }

  v520 = v426;
  v581 = v425;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v426 = v520;
  v425 = v581;
LABEL_307:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v426, v425, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v427 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v428 = v427;
  {
    v643 = v427;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v428 = v643;
  }

  mlir::detail::InterfaceMap::insert(v424 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v428);
  v429 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id, a1);
  if ((v430 & 1) == 0)
  {
    v650 = 1283;
    v454 = "mps.conjugate";
    goto LABEL_518;
  }

  v431 = v429;
  v432 = *(v429 + 16);
  if (v432 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v429 + 8);
    v433 = mlir::SparseElementsAttr::getValues(v651);
    v432 = *(v431 + 16);
    {
      goto LABEL_312;
    }
  }

  else
  {
    v433 = *(v429 + 24);
    {
      goto LABEL_312;
    }
  }

  v521 = v433;
  v582 = v432;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v433 = v521;
  v432 = v582;
LABEL_312:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v433, v432, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v434 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v435 = v434;
  {
    v644 = v434;
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v435 = v644;
  }

  mlir::detail::InterfaceMap::insert(v431 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v435);
  v436 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id, a1);
  if ((v437 & 1) == 0)
  {
    v650 = 1283;
    v448 = "mps.non_zero";
    goto LABEL_520;
  }

  v438 = v436;
  v439 = *(v436 + 16);
  if (v439 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v651[0] = *(v436 + 8);
    v440 = mlir::SparseElementsAttr::getValues(v651);
    v439 = *(v438 + 16);
    {
      goto LABEL_317;
    }
  }

  else
  {
    v440 = *(v436 + 24);
    {
      goto LABEL_317;
    }
  }

  v442 = v439;
  v443 = v440;
  mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v440 = v443;
  v439 = v442;
LABEL_317:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v440, v439, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id);
  v441 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  {
    mlir::mps::registerExternalFoldExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  }

  mlir::detail::InterfaceMap::insert(v438 + 32, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v441);
}

const char *llvm::getTypeName<mlir::ExternalFoldInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExternalFoldInterface]";
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

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::ReciprocalSquareRootOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v14 = v3;
      v15 = v4;
      if (v3)
      {
        Type = mlir::ElementsAttr::getType(&v14);
        v6 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v12 = v6;
        v13 = Type;
        if (mlir::ElementsAttr::getShapedType(&v12))
        {
          mlir::mps::CPUNDArray::CPUNDArray(&v11, v14, v15);
          v10[0] = 0;
          v10[1] = 0;
          mlir::mps::CPUNDArray::tryMakeAliasedArray(v12, v13, v10, v9);
          mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v8, 6, 0.0);
          operator new();
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return 0;
}

void *llvm::dyn_cast_or_null<mlir::ElementsAttr,mlir::Attribute>(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v1 + 8))
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::ReciprocalOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v14 = v3;
      v15 = v4;
      if (v3)
      {
        Type = mlir::ElementsAttr::getType(&v14);
        v6 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v12 = v6;
        v13 = Type;
        if (mlir::ElementsAttr::getShapedType(&v12))
        {
          mlir::mps::CPUNDArray::CPUNDArray(&v11, v14, v15);
          v10[0] = 0;
          v10[1] = 0;
          mlir::mps::CPUNDArray::tryMakeAliasedArray(v12, v13, v10, v9);
          mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v8, 12, 0.0);
          operator new();
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::NegativeOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v14 = v3;
      v15 = v4;
      if (v3)
      {
        Type = mlir::ElementsAttr::getType(&v14);
        v6 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v12 = v6;
        v13 = Type;
        if (mlir::ElementsAttr::getShapedType(&v12))
        {
          mlir::mps::CPUNDArray::CPUNDArray(&v11, v14, v15);
          v10[0] = 0;
          v10[1] = 0;
          mlir::mps::CPUNDArray::tryMakeAliasedArray(v12, v13, v10, v9);
          mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v8, 9, 0.0);
          operator new();
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::NotOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v14 = v3;
      v15 = v4;
      if (v3)
      {
        Type = mlir::ElementsAttr::getType(&v14);
        v6 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v12 = v6;
        v13 = Type;
        if (mlir::ElementsAttr::getShapedType(&v12))
        {
          mlir::mps::CPUNDArray::CPUNDArray(&v11, v14, v15);
          v10[0] = 0;
          v10[1] = 0;
          mlir::mps::CPUNDArray::tryMakeAliasedArray(v12, v13, v10, v9);
          mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v8, 10, 0.0);
          operator new();
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return 0;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::CeilOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(*(a2 + 72) + 24) | 4;
  }

  v5 = *a3;
  if (v5)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v16 = v5;
      v17 = v6;
      Type = mlir::ElementsAttr::getType(&v16);
      v9 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v14 = v9;
      v15 = Type;
      if (mlir::ElementsAttr::getShapedType(&v14))
      {
        mlir::mps::CPUNDArray::CPUNDArray(&v13, v16, v17);
        v12[0] = 0;
        v12[1] = 0;
        mlir::mps::CPUNDArray::tryMakeAliasedArray(v14, v15, v12, v11);
        mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v10, 7, 0.0);
        operator new();
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return 0;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::FloorOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(*(a2 + 72) + 24) | 4;
  }

  v5 = *a3;
  if (v5)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v16 = v5;
      v17 = v6;
      Type = mlir::ElementsAttr::getType(&v16);
      v9 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v14 = v9;
      v15 = Type;
      if (mlir::ElementsAttr::getShapedType(&v14))
      {
        mlir::mps::CPUNDArray::CPUNDArray(&v13, v16, v17);
        v12[0] = 0;
        v12[1] = 0;
        mlir::mps::CPUNDArray::tryMakeAliasedArray(v14, v15, v12, v11);
        mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v10, 8, 0.0);
        operator new();
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return 0;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::RoundOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(*(a2 + 72) + 24) | 4;
  }

  v5 = *a3;
  if (v5)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v16 = v5;
      v17 = v6;
      Type = mlir::ElementsAttr::getType(&v16);
      v9 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v14 = v9;
      v15 = Type;
      if (mlir::ElementsAttr::getShapedType(&v14))
      {
        mlir::mps::CPUNDArray::CPUNDArray(&v13, v16, v17);
        v12[0] = 0;
        v12[1] = 0;
        mlir::mps::CPUNDArray::tryMakeAliasedArray(v14, v15, v12, v11);
        mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v10, 11, 0.0);
        operator new();
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseUnaryArithmeticOp<mlir::mps::SquareRootOp>>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v14 = v3;
      v15 = v4;
      if (v3)
      {
        Type = mlir::ElementsAttr::getType(&v14);
        v6 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v12 = v6;
        v13 = Type;
        if (mlir::ElementsAttr::getShapedType(&v12))
        {
          mlir::mps::CPUNDArray::CPUNDArray(&v11, v14, v15);
          v10[0] = 0;
          v10[1] = 0;
          mlir::mps::CPUNDArray::tryMakeAliasedArray(v12, v13, v10, v9);
          mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v8, 17, 0.0);
          operator new();
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return 0;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::AddOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 0);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::getElementTypeWithLargestPrecision(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = 8 * a2;
    while (1)
    {
      v5 = *(*mlir::getElementTypeOrSelf(a1[v3 / 8]) + 136);
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v3 += 8;
      if (v4 == v3)
      {
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(*a1);
        goto LABEL_9;
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*a1);
    if (*(*mlir::getElementTypeOrSelf(ElementTypeOrSelf) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
LABEL_9:
      while (1)
      {
        v8 = mlir::getElementTypeOrSelf(*a1);
        if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && ElementTypeOrSelf != v8)
        {
          break;
        }

        v10 = v8;
        if ((v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (*(*mlir::getElementTypeOrSelf(v8) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
        {
          break;
        }

        ElementBitWidth = mlir::mps::getElementBitWidth(v10);
        if (ElementBitWidth > mlir::mps::getElementBitWidth(ElementTypeOrSelf))
        {
          ElementTypeOrSelf = v10;
        }

        ++a1;
        v4 -= 8;
        if (!v4)
        {
          return ElementTypeOrSelf;
        }
      }
    }
  }

  return 0;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::SubtractOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 1);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::MultiplyOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 2);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::DivideOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 3);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::ModuloOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 5);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::MinimumOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 15);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryArithmeticOp<mlir::mps::MaximumOp>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[12] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    if (v6)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v35 = v5;
  v36 = v6;
  v7 = *(a3 + 8);
  if (v7)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      goto LABEL_11;
    }

    v7 = 0;
  }

  v8 = 0;
LABEL_11:
  result = 0;
  v33 = v7;
  v34 = v8;
  if (v5 && v7)
  {
    v10 = *(a2 + 36) ? a2 - 16 : 0;
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
    v31 = v11;
    v32 = v12;
    v37[0] = mlir::ElementsAttr::getType(&v35);
    v37[1] = mlir::ElementsAttr::getType(&v33);
    if (result)
    {
      v13 = result;
      mlir::mps::CPUNDArray::CPUNDArray(v37, v35, v36);
      mlir::mps::CPUNDArray::CPUNDArray(v30, v33, v34);
      v29[0] = 0;
      v29[1] = 0;
      if (mlir::ElementsAttr::getShapedType(&v31))
      {
        Shape = mlir::ShapedType::getShape(&v31);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = 8 * v15;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_28;
          }
        }
      }

      Type = mlir::ElementsAttr::getType(&v35);
      v18 = mlir::ElementsAttr::getType(&v33);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(Type, v18, 0);
      if (BroadcastedType)
      {
        v20 = BroadcastedType;
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
        v31 = v20;
        v32 = v21;
LABEL_28:
        if (v13 == mlir::ElementsAttr::isSplat(&v31))
        {
          v22 = v31;
          v23 = v32;
        }

        else
        {
          v24 = mlir::ShapedType::getShape(&v31);
          v22 = mlir::RankedTensorType::get(v24, v25, v13, 0);
          if (v22)
          {
            v26 = v22;
            v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
            v22 = v26;
          }

          else
          {
            v23 = 0;
          }

          v31 = v22;
          v32 = v23;
        }

        mlir::mps::CPUNDArray::tryMakeAliasedArray(v22, v23, v29, v28);
        mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(v27, 16);
        operator new();
      }

      v31 = 0;
      v32 = 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v30);
      mlir::mps::CPUNDArray::~CPUNDArray(v37);
      return 0;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::EqualToOp,std::equal_to<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v71[0] = v5;
  v71[1] = v6;
  v80 = v82;
  v81 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v69 = v7;
  v70 = v8;
  v9 = *(a3 + 8);
  if (v9)
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

  ElementTypeWithLargestPrecision = 0;
  v67 = v9;
  v68 = v10;
  if (v69 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v69);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v76 = v13;
    v77 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v76);
    v76 = mlir::ElementsAttr::getType(&v69);
    v77 = mlir::ElementsAttr::getType(&v67);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      v16 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, v62);
        if (v17)
        {
          v32 = 0;
          v33 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v76, v32, &v60);
            LODWORD(v73[0]) = v61;
            v72 = v60;
            v61 = 0;
            BYTE4(v73[0]) = v33;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](v62, v32, &v55);
            v58 = v56;
            v57 = v55;
            v56 = 0;
            v59 = v33;
            if (LODWORD(v73[0]) > 0x40)
            {
              v34 = llvm::APInt::equalSlowCase(&v72, &v57);
            }

            else
            {
              v34 = v72 == v55;
            }

            LODWORD(v75[0]) = 1;
            v74 = v34;
            v35 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v74 && &v80[16 * v81] > &v74)
              {
                v38 = &v74 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v35 = v80;
                v36 = &v80[v38];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v36 = &v74;
                v35 = v80;
              }
            }

            else
            {
              v36 = &v74;
            }

            v37 = &v35[16 * v81];
            *(v37 + 2) = *(v36 + 2);
            *v37 = *v36;
            *(v36 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (LODWORD(v75[0]) >= 0x41 && v74)
            {
              MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
            }

            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
            }

            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            ++v32;
          }

          while (v17 != v32);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, v62);
        v74 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v74);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v76, i, &v74);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](v62, i, &v72);
            LOBYTE(v60) = 0;
            llvm::APFloat::convert(&v74, v20, 1u, &v60);
            LOBYTE(v60) = 0;
            v22 = llvm::APFloat::convert(&v72, v20, 1u, &v60);
            v23 = v75[0];
            v26 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v26 == v23)
            {
              v27 = llvm::detail::DoubleAPFloat::compare(v75, v73, v24, v25);
            }

            else
            {
              v27 = llvm::detail::IEEEFloat::compare(v75, v73, v24, v25);
            }

            v61 = 1;
            v60 = v27 == 1;
            v28 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v60 && &v80[16 * v81] > &v60)
              {
                v31 = &v60 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v28 = v80;
                v29 = &v80[v31];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v29 = &v60;
                v28 = v80;
              }
            }

            else
            {
              v29 = &v60;
            }

            v30 = &v28[16 * v81];
            *(v30 + 2) = *(v29 + 2);
            *v30 = *v29;
            *(v29 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            if (v26 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }

            if (v26 == v75[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v75);
            }
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        v39 = v65;
        v65 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v62[0] & 1) == 0)
      {
        v40 = v63;
        v63 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      if ((v78 & 1) == 0)
      {
        v41 = v79;
        v79 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if ((v76 & 1) == 0)
      {
        v42 = v77;
        v77 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      Shape = mlir::ShapedType::getShape(v71);
      v45 = v44;
      v46 = mlir::ElementsAttr::isSplat(v71);
      v47 = mlir::RankedTensorType::get(Shape, v45, v46, 0);
      ElementTypeWithLargestPrecision = mlir::createElementsAttr(v47, v80, v81) & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

LABEL_105:
  v48 = v80;
  if (v81)
  {
    v49 = &v80[16 * v81 - 8];
    v50 = -16 * v81;
    v51 = v49;
    do
    {
      v52 = *v51;
      v51 -= 4;
      if (v52 >= 0x41)
      {
        v53 = *(v49 - 1);
        if (v53)
        {
          MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
        }
      }

      v49 = v51;
      v50 += 16;
    }

    while (v50);
    v48 = v80;
  }

  if (v48 != v82)
  {
    free(v48);
  }

  return ElementTypeWithLargestPrecision;
}

void *mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[]@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v13 = *result;
  v5 = *(result + 1);
  v14 = v5;
  if (*result == 1)
  {
    v6 = result[2] + a2;
    v15 = result[1];
    v16 = v6;
    goto LABEL_4;
  }

  v7 = result;
  result = (*(*result[1] + 16))(&v15, result[1]);
  v5 = v14;
  v6 = v7[2] + a2;
  v16 = v6;
  if (v13)
  {
LABEL_4:
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v15[2 * v8];
    v10 = *(v9 + 2);
    *(a3 + 2) = v10;
    if (v10 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, v9);
    }

    *a3 = *v9;
    if (v13)
    {
      return result;
    }

LABEL_15:
    result = v15;
    v15 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  v11 = v15;
  v15 = 0;
  if (v14)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  (*(*v11 + 24))(v11, v12);
  result = (*(*v11 + 8))(v11);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

void *mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *a1;
  v5 = *(a1 + 1);
  v16 = v5;
  if (*a1 == 1)
  {
    v6 = a1[2] + a2;
    v17 = a1[1];
    v18 = v6;
    goto LABEL_4;
  }

  v7 = a1;
  a1 = (*(*a1[1] + 16))(&v17, a1[1]);
  v5 = v16;
  v6 = v7[2] + a2;
  v18 = v6;
  if (v15)
  {
LABEL_4:
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v17[4 * v8];
    v11 = v9[1];
    v10 = (v9 + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
    {
      result = llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v10);
      if (v15)
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v10);
      if (v15)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  v13 = v17;
  v17 = 0;
  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6;
  }

  (*(*v13 + 24))(v13, v14);
  result = (*(*v13 + 8))(v13);
  if ((v15 & 1) == 0)
  {
LABEL_16:
    result = v17;
    v17 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v18);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v4 + 8;
    v8 = 16 * v6;
    v9 = v5 + 2;
    do
    {
      *v7 = *v9;
      *(v7 - 1) = *(v9 - 1);
      *v9 = 0;
      v9 += 4;
      v7 += 4;
      v8 -= 16;
    }

    while (v8);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 16 * v10;
      v12 = &v5[4 * v10 - 2];
      v13 = -v11;
      v14 = v12;
      do
      {
        v15 = *v14;
        v14 -= 4;
        if (v15 >= 0x41)
        {
          v16 = *(v12 - 8);
          if (v16)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
          }
        }

        v12 = v14;
        v13 += 16;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v17 = v18;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v17;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::NotEqualToOp,std::not_equal_to<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v71[0] = v5;
  v71[1] = v6;
  v80 = v82;
  v81 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v69 = v7;
  v70 = v8;
  v9 = *(a3 + 8);
  if (v9)
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

  ElementTypeWithLargestPrecision = 0;
  v67 = v9;
  v68 = v10;
  if (v69 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v69);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v76 = v13;
    v77 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v76);
    v76 = mlir::ElementsAttr::getType(&v69);
    v77 = mlir::ElementsAttr::getType(&v67);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      v16 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v62);
        if (v17)
        {
          v32 = 0;
          v33 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v76, v32, &v60);
            LODWORD(v73[0]) = v61;
            v72 = v60;
            v61 = 0;
            BYTE4(v73[0]) = v33;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v62, v32, &v55);
            v58 = v56;
            v57 = v55;
            v56 = 0;
            v59 = v33;
            if (LODWORD(v73[0]) > 0x40)
            {
              v34 = llvm::APInt::equalSlowCase(&v72, &v57);
            }

            else
            {
              v34 = v72 == v55;
            }

            LODWORD(v75[0]) = 1;
            v74 = !v34;
            v35 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v74 && &v80[16 * v81] > &v74)
              {
                v38 = &v74 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v35 = v80;
                v36 = &v80[v38];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v36 = &v74;
                v35 = v80;
              }
            }

            else
            {
              v36 = &v74;
            }

            v37 = &v35[16 * v81];
            *(v37 + 2) = *(v36 + 2);
            *v37 = *v36;
            *(v36 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (LODWORD(v75[0]) >= 0x41 && v74)
            {
              MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
            }

            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
            }

            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            ++v32;
          }

          while (v17 != v32);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v62);
        v74 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v74);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v76, i, &v74);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v62, i, &v72);
            LOBYTE(v60) = 0;
            llvm::APFloat::convert(&v74, v20, 1u, &v60);
            LOBYTE(v60) = 0;
            v22 = llvm::APFloat::convert(&v72, v20, 1u, &v60);
            v23 = v75[0];
            v26 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v26 == v23)
            {
              v27 = llvm::detail::DoubleAPFloat::compare(v75, v73, v24, v25);
            }

            else
            {
              v27 = llvm::detail::IEEEFloat::compare(v75, v73, v24, v25);
            }

            v61 = 1;
            v60 = v27 != 1;
            v28 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v60 && &v80[16 * v81] > &v60)
              {
                v31 = &v60 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v28 = v80;
                v29 = &v80[v31];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v29 = &v60;
                v28 = v80;
              }
            }

            else
            {
              v29 = &v60;
            }

            v30 = &v28[16 * v81];
            *(v30 + 2) = *(v29 + 2);
            *v30 = *v29;
            *(v29 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            if (v26 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }

            if (v26 == v75[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v75);
            }
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        v39 = v65;
        v65 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v62 & 1) == 0)
      {
        v40 = v63;
        v63 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      if ((v78 & 1) == 0)
      {
        v41 = v79;
        v79 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if ((v76 & 1) == 0)
      {
        v42 = v77;
        v77 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      Shape = mlir::ShapedType::getShape(v71);
      v45 = v44;
      v46 = mlir::ElementsAttr::isSplat(v71);
      v47 = mlir::RankedTensorType::get(Shape, v45, v46, 0);
      ElementTypeWithLargestPrecision = mlir::createElementsAttr(v47, v80, v81) & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

LABEL_105:
  v48 = v80;
  if (v81)
  {
    v49 = &v80[16 * v81 - 8];
    v50 = -16 * v81;
    v51 = v49;
    do
    {
      v52 = *v51;
      v51 -= 4;
      if (v52 >= 0x41)
      {
        v53 = *(v49 - 1);
        if (v53)
        {
          MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
        }
      }

      v49 = v51;
      v50 += 16;
    }

    while (v50);
    v48 = v80;
  }

  if (v48 != v82)
  {
    free(v48);
  }

  return ElementTypeWithLargestPrecision;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::GreaterThanOp,std::greater<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v71[0] = v5;
  v71[1] = v6;
  v80 = v82;
  v81 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v69 = v7;
  v70 = v8;
  v9 = *(a3 + 8);
  if (v9)
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

  ElementTypeWithLargestPrecision = 0;
  v67 = v9;
  v68 = v10;
  if (v69 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v69);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v76 = v13;
    v77 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v76);
    v76 = mlir::ElementsAttr::getType(&v69);
    v77 = mlir::ElementsAttr::getType(&v67);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      v16 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v62);
        if (v17)
        {
          v32 = 0;
          v33 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v76, v32, &v60);
            LODWORD(v73[0]) = v61;
            v72 = v60;
            v61 = 0;
            BYTE4(v73[0]) = v33;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v62, v32, &v55);
            v58 = v56;
            v57 = v55;
            v56 = 0;
            v59 = v33;
            if (BYTE4(v73[0]) == 1)
            {
              v34 = llvm::APInt::compare(&v72, &v57);
            }

            else
            {
              v34 = llvm::APInt::compareSigned(&v72, &v57);
            }

            LODWORD(v75[0]) = 1;
            v74 = v34 > 0;
            v35 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v74 && &v80[2 * v81] > &v74)
              {
                v38 = &v74 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v35 = v80;
                v36 = (v80 + v38);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v36 = &v74;
                v35 = v80;
              }
            }

            else
            {
              v36 = &v74;
            }

            v37 = &v35[2 * v81];
            *(v37 + 2) = *(v36 + 2);
            *v37 = *v36;
            *(v36 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (LODWORD(v75[0]) >= 0x41 && v74)
            {
              MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
            }

            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
            }

            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            ++v32;
          }

          while (v17 != v32);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v62);
        v74 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v74);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v76, i, &v74);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v62, i, &v72);
            LOBYTE(v60) = 0;
            llvm::APFloat::convert(&v74, v20, 1u, &v60);
            LOBYTE(v60) = 0;
            v22 = llvm::APFloat::convert(&v72, v20, 1u, &v60);
            v23 = v75[0];
            v26 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v26 == v23)
            {
              v27 = llvm::detail::DoubleAPFloat::compare(v75, v73, v24, v25);
            }

            else
            {
              v27 = llvm::detail::IEEEFloat::compare(v75, v73, v24, v25);
            }

            v61 = 1;
            v60 = v27 == 2;
            v28 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v60 && &v80[2 * v81] > &v60)
              {
                v31 = &v60 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v28 = v80;
                v29 = (v80 + v31);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v29 = &v60;
                v28 = v80;
              }
            }

            else
            {
              v29 = &v60;
            }

            v30 = &v28[2 * v81];
            *(v30 + 2) = *(v29 + 2);
            *v30 = *v29;
            *(v29 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            if (v26 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }

            if (v26 == v75[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v75);
            }
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        v39 = v65;
        v65 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v62 & 1) == 0)
      {
        v40 = v63;
        v63 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      if ((v78 & 1) == 0)
      {
        v41 = v79;
        v79 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if ((v76 & 1) == 0)
      {
        v42 = v77;
        v77 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      Shape = mlir::ShapedType::getShape(v71);
      v45 = v44;
      v46 = mlir::ElementsAttr::isSplat(v71);
      v47 = mlir::RankedTensorType::get(Shape, v45, v46, 0);
      ElementTypeWithLargestPrecision = mlir::createElementsAttr(v47, v80, v81) & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

LABEL_105:
  v48 = v80;
  if (v81)
  {
    v49 = &v80[2 * v81 - 1];
    v50 = -16 * v81;
    v51 = v49;
    do
    {
      v52 = *v51;
      v51 -= 4;
      if (v52 >= 0x41)
      {
        v53 = *(v49 - 1);
        if (v53)
        {
          MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
        }
      }

      v49 = v51;
      v50 += 16;
    }

    while (v50);
    v48 = v80;
  }

  if (v48 != v82)
  {
    free(v48);
  }

  return ElementTypeWithLargestPrecision;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::GreaterThanOrEqualToOp,std::greater_equal<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v71[0] = v5;
  v71[1] = v6;
  v80 = v82;
  v81 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v69 = v7;
  v70 = v8;
  v9 = *(a3 + 8);
  if (v9)
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

  ElementTypeWithLargestPrecision = 0;
  v67 = v9;
  v68 = v10;
  if (v69 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v69);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v76 = v13;
    v77 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v76);
    v76 = mlir::ElementsAttr::getType(&v69);
    v77 = mlir::ElementsAttr::getType(&v67);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      v16 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v62);
        if (v17)
        {
          v32 = 0;
          v33 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v76, v32, &v60);
            LODWORD(v73[0]) = v61;
            v72 = v60;
            v61 = 0;
            BYTE4(v73[0]) = v33;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v62, v32, &v55);
            v58 = v56;
            v57 = v55;
            v56 = 0;
            v59 = v33;
            if (BYTE4(v73[0]) == 1)
            {
              v34 = llvm::APInt::compare(&v72, &v57);
            }

            else
            {
              v34 = llvm::APInt::compareSigned(&v72, &v57);
            }

            LODWORD(v75[0]) = 1;
            v74 = v34 >= 0;
            v35 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v74 && &v80[2 * v81] > &v74)
              {
                v38 = &v74 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v35 = v80;
                v36 = (v80 + v38);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v36 = &v74;
                v35 = v80;
              }
            }

            else
            {
              v36 = &v74;
            }

            v37 = &v35[2 * v81];
            *(v37 + 2) = *(v36 + 2);
            *v37 = *v36;
            *(v36 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (LODWORD(v75[0]) >= 0x41 && v74)
            {
              MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
            }

            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
            }

            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            ++v32;
          }

          while (v17 != v32);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v62);
        v74 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v74);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v76, i, &v74);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v62, i, &v72);
            LOBYTE(v60) = 0;
            llvm::APFloat::convert(&v74, v20, 1u, &v60);
            LOBYTE(v60) = 0;
            v22 = llvm::APFloat::convert(&v72, v20, 1u, &v60);
            v23 = v75[0];
            v26 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v26 == v23)
            {
              v27 = llvm::detail::DoubleAPFloat::compare(v75, v73, v24, v25);
            }

            else
            {
              v27 = llvm::detail::IEEEFloat::compare(v75, v73, v24, v25);
            }

            v61 = 1;
            v60 = (v27 - 1) < 2;
            v28 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v60 && &v80[2 * v81] > &v60)
              {
                v31 = &v60 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v28 = v80;
                v29 = (v80 + v31);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v29 = &v60;
                v28 = v80;
              }
            }

            else
            {
              v29 = &v60;
            }

            v30 = &v28[2 * v81];
            *(v30 + 2) = *(v29 + 2);
            *v30 = *v29;
            *(v29 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            if (v26 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }

            if (v26 == v75[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v75);
            }
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        v39 = v65;
        v65 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v62 & 1) == 0)
      {
        v40 = v63;
        v63 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      if ((v78 & 1) == 0)
      {
        v41 = v79;
        v79 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if ((v76 & 1) == 0)
      {
        v42 = v77;
        v77 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      Shape = mlir::ShapedType::getShape(v71);
      v45 = v44;
      v46 = mlir::ElementsAttr::isSplat(v71);
      v47 = mlir::RankedTensorType::get(Shape, v45, v46, 0);
      ElementTypeWithLargestPrecision = mlir::createElementsAttr(v47, v80, v81) & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

LABEL_105:
  v48 = v80;
  if (v81)
  {
    v49 = &v80[2 * v81 - 1];
    v50 = -16 * v81;
    v51 = v49;
    do
    {
      v52 = *v51;
      v51 -= 4;
      if (v52 >= 0x41)
      {
        v53 = *(v49 - 1);
        if (v53)
        {
          MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
        }
      }

      v49 = v51;
      v50 += 16;
    }

    while (v50);
    v48 = v80;
  }

  if (v48 != v82)
  {
    free(v48);
  }

  return ElementTypeWithLargestPrecision;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::LessThanOp,std::less<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v71[0] = v5;
  v71[1] = v6;
  v80 = v82;
  v81 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v69 = v7;
  v70 = v8;
  v9 = *(a3 + 8);
  if (v9)
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

  ElementTypeWithLargestPrecision = 0;
  v67 = v9;
  v68 = v10;
  if (v69 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v69);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v76 = v13;
    v77 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v76);
    v76 = mlir::ElementsAttr::getType(&v69);
    v77 = mlir::ElementsAttr::getType(&v67);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      v16 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v62);
        if (v17)
        {
          v32 = 0;
          v33 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v76, v32, &v60);
            LODWORD(v73[0]) = v61;
            v72 = v60;
            v61 = 0;
            BYTE4(v73[0]) = v33;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v62, v32, &v55);
            v58 = v56;
            v57 = v55;
            v56 = 0;
            v59 = v33;
            if (BYTE4(v73[0]) == 1)
            {
              v34 = llvm::APInt::compare(&v72, &v57);
            }

            else
            {
              v34 = llvm::APInt::compareSigned(&v72, &v57);
            }

            LODWORD(v75[0]) = 1;
            v74 = v34 >> 31;
            v35 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v74 && &v80[16 * v81] > &v74)
              {
                v38 = &v74 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v35 = v80;
                v36 = &v80[v38];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v36 = &v74;
                v35 = v80;
              }
            }

            else
            {
              v36 = &v74;
            }

            v37 = &v35[16 * v81];
            *(v37 + 2) = *(v36 + 2);
            *v37 = *v36;
            *(v36 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (LODWORD(v75[0]) >= 0x41 && v74)
            {
              MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
            }

            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
            }

            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            ++v32;
          }

          while (v17 != v32);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v62);
        v74 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v74);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v76, i, &v74);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v62, i, &v72);
            LOBYTE(v60) = 0;
            llvm::APFloat::convert(&v74, v20, 1u, &v60);
            LOBYTE(v60) = 0;
            v22 = llvm::APFloat::convert(&v72, v20, 1u, &v60);
            v23 = v75[0];
            v26 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v26 == v23)
            {
              v27 = llvm::detail::DoubleAPFloat::compare(v75, v73, v24, v25);
            }

            else
            {
              v27 = llvm::detail::IEEEFloat::compare(v75, v73, v24, v25);
            }

            v61 = 1;
            v60 = v27 == 0;
            v28 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v60 && &v80[16 * v81] > &v60)
              {
                v31 = &v60 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v28 = v80;
                v29 = &v80[v31];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v29 = &v60;
                v28 = v80;
              }
            }

            else
            {
              v29 = &v60;
            }

            v30 = &v28[16 * v81];
            *(v30 + 2) = *(v29 + 2);
            *v30 = *v29;
            *(v29 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            if (v26 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }

            if (v26 == v75[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v75);
            }
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        v39 = v65;
        v65 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v62 & 1) == 0)
      {
        v40 = v63;
        v63 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      if ((v78 & 1) == 0)
      {
        v41 = v79;
        v79 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if ((v76 & 1) == 0)
      {
        v42 = v77;
        v77 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      Shape = mlir::ShapedType::getShape(v71);
      v45 = v44;
      v46 = mlir::ElementsAttr::isSplat(v71);
      v47 = mlir::RankedTensorType::get(Shape, v45, v46, 0);
      ElementTypeWithLargestPrecision = mlir::createElementsAttr(v47, v80, v81) & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

LABEL_105:
  v48 = v80;
  if (v81)
  {
    v49 = &v80[16 * v81 - 8];
    v50 = -16 * v81;
    v51 = v49;
    do
    {
      v52 = *v51;
      v51 -= 4;
      if (v52 >= 0x41)
      {
        v53 = *(v49 - 1);
        if (v53)
        {
          MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
        }
      }

      v49 = v51;
      v50 += 16;
    }

    while (v50);
    v48 = v80;
  }

  if (v48 != v82)
  {
    free(v48);
  }

  return ElementTypeWithLargestPrecision;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::LessThanOrEqualToOp,std::less_equal<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v71[0] = v5;
  v71[1] = v6;
  v80 = v82;
  v81 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v69 = v7;
  v70 = v8;
  v9 = *(a3 + 8);
  if (v9)
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

  ElementTypeWithLargestPrecision = 0;
  v67 = v9;
  v68 = v10;
  if (v69 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v69);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v76 = v13;
    v77 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v76);
    v76 = mlir::ElementsAttr::getType(&v69);
    v77 = mlir::ElementsAttr::getType(&v67);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v69, v70);
      v16 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v62);
        if (v17)
        {
          v32 = 0;
          v33 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v76, v32, &v60);
            LODWORD(v73[0]) = v61;
            v72 = v60;
            v61 = 0;
            BYTE4(v73[0]) = v33;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v62, v32, &v55);
            v58 = v56;
            v57 = v55;
            v56 = 0;
            v59 = v33;
            if (BYTE4(v73[0]) == 1)
            {
              v34 = llvm::APInt::compare(&v72, &v57);
            }

            else
            {
              v34 = llvm::APInt::compareSigned(&v72, &v57);
            }

            LODWORD(v75[0]) = 1;
            v74 = v34 < 1;
            v35 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v74 && &v80[2 * v81] > &v74)
              {
                v38 = &v74 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v35 = v80;
                v36 = (v80 + v38);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v36 = &v74;
                v35 = v80;
              }
            }

            else
            {
              v36 = &v74;
            }

            v37 = &v35[2 * v81];
            *(v37 + 2) = *(v36 + 2);
            *v37 = *v36;
            *(v36 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (LODWORD(v75[0]) >= 0x41 && v74)
            {
              MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
            }

            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
            }

            if (v56 >= 0x41 && v55)
            {
              MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
            }

            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            ++v32;
          }

          while (v17 != v32);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v69, &v76);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v62);
        v74 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v74);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v76, i, &v74);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v62, i, &v72);
            LOBYTE(v60) = 0;
            llvm::APFloat::convert(&v74, v20, 1u, &v60);
            LOBYTE(v60) = 0;
            v22 = llvm::APFloat::convert(&v72, v20, 1u, &v60);
            v23 = v75[0];
            v26 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v26 == v23)
            {
              v27 = llvm::detail::DoubleAPFloat::compare(v75, v73, v24, v25);
            }

            else
            {
              v27 = llvm::detail::IEEEFloat::compare(v75, v73, v24, v25);
            }

            v61 = 1;
            v60 = v27 < 2;
            v28 = v80;
            if (v81 >= HIDWORD(v81))
            {
              if (v80 <= &v60 && &v80[2 * v81] > &v60)
              {
                v31 = &v60 - v80;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v28 = v80;
                v29 = (v80 + v31);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v80, v81 + 1);
                v29 = &v60;
                v28 = v80;
              }
            }

            else
            {
              v29 = &v60;
            }

            v30 = &v28[2 * v81];
            *(v30 + 2) = *(v29 + 2);
            *v30 = *v29;
            *(v29 + 2) = 0;
            LODWORD(v81) = v81 + 1;
            if (v61 >= 0x41 && v60)
            {
              MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
            }

            if (v26 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }

            if (v26 == v75[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v75);
            }
          }
        }
      }

      if ((v64 & 1) == 0)
      {
        v39 = v65;
        v65 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v62 & 1) == 0)
      {
        v40 = v63;
        v63 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      if ((v78 & 1) == 0)
      {
        v41 = v79;
        v79 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if ((v76 & 1) == 0)
      {
        v42 = v77;
        v77 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }

      Shape = mlir::ShapedType::getShape(v71);
      v45 = v44;
      v46 = mlir::ElementsAttr::isSplat(v71);
      v47 = mlir::RankedTensorType::get(Shape, v45, v46, 0);
      ElementTypeWithLargestPrecision = mlir::createElementsAttr(v47, v80, v81) & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

LABEL_105:
  v48 = v80;
  if (v81)
  {
    v49 = &v80[2 * v81 - 1];
    v50 = -16 * v81;
    v51 = v49;
    do
    {
      v52 = *v51;
      v51 -= 4;
      if (v52 >= 0x41)
      {
        v53 = *(v49 - 1);
        if (v53)
        {
          MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
        }
      }

      v49 = v51;
      v50 += 16;
    }

    while (v50);
    v48 = v80;
  }

  if (v48 != v82)
  {
    free(v48);
  }

  return ElementTypeWithLargestPrecision;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBatchToSpaceAndBack<mlir::mps::BatchToSpaceOp>>::externalFold(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v7 = v9;
  v8 = 0x600000000;
  if (mlir::matchConstantWithIntVector<long long>(*(*(a2 + 72) + 120), &v7))
  {
    if (!v8)
    {
LABEL_6:
      v5 = *(*(a2 + 72) + 24) | 4;
      if (v7 == v9)
      {
        return v5;
      }

      goto LABEL_9;
    }

    v3 = 8 * v8;
    v4 = v7;
    while (*v4 == 1)
    {
      ++v4;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  v5 = 0;
  if (v7 != v9)
  {
LABEL_9:
    free(v7);
  }

  return v5;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBatchToSpaceAndBack<mlir::mps::SpaceToBatchOp>>::externalFold(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v7 = v9;
  v8 = 0x600000000;
  if (mlir::matchConstantWithIntVector<long long>(*(*(a2 + 72) + 120), &v7))
  {
    if (!v8)
    {
LABEL_6:
      v5 = *(*(a2 + 72) + 24) | 4;
      if (v7 == v9)
      {
        return v5;
      }

      goto LABEL_9;
    }

    v3 = 8 * v8;
    v4 = v7;
    while (*v4 == 1)
    {
      ++v4;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  v5 = 0;
  if (v7 != v9)
  {
LABEL_9:
    free(v7);
  }

  return v5;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldSelectOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v210 = *MEMORY[0x1E69E9840];
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

  v188[0] = v6;
  v188[1] = v7;
  v185 = &v187;
  v186 = xmmword_1A7598A10;
  v8 = *a3;
  if (!*a3)
  {
    v183 = 0;
    v184 = 0;
    goto LABEL_251;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v183 = 0;
    v184 = 0;
    goto LABEL_251;
  }

  v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
  v183 = v8;
  v184 = v9;
  if (!v8)
  {
    goto LABEL_251;
  }

  ShapedType = mlir::ElementsAttr::getShapedType(&v183);
  Type = v10;
  if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!v183)
    {
      goto LABEL_251;
    }

    ShapedType = mlir::ElementsAttr::getShapedType(&v183);
    Type = v11;
    v12 = *(*mlir::ElementsAttr::isSplat(&ShapedType) + 136);
    if (v12 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      goto LABEL_251;
    }

    mlir::ElementsAttr::getValues<llvm::APFloat>(&v183, &ShapedType);
    LOWORD(v196) = ShapedType;
    if (ShapedType == 1)
    {
      v197 = Type;
    }

    else
    {
      (*(*Type + 16))(&v197);
    }

    v13 = v202;
    j = v202;
    LOWORD(v192) = v203;
    if (v203 == 1)
    {
      v193 = v204;
    }

    else
    {
      (*(*v204 + 16))(&v193);
      v13 = j;
    }

    i = v205;
    if (v13 == v205)
    {
      v14 = 0;
LABEL_42:
      v15 = 0;
      if (v192)
      {
        goto LABEL_160;
      }
    }

    else
    {
      if (BYTE1(v196))
      {
        v16 = 0;
      }

      else
      {
        v16 = v13;
      }

      if (v196)
      {
        v17 = v197 + 32 * v16;
        v19 = *(v17 + 1);
        v18 = (v17 + 8);
        v20 = llvm::APFloatBase::PPCDoubleDouble(v197);
        if (v20 == v19)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v18);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v207, v18);
        }
      }

      else
      {
        v25 = (*(*v197 + 24))(&v206);
        v20 = llvm::APFloatBase::PPCDoubleDouble(v25);
      }

      v46 = v208;
      if (v20 != v207)
      {
        v46 = &v206;
      }

      v47 = *(v46 + 28) & 7;
      v14 = v47 != 3;
      if (v20 == v207)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v207);
      }

      while (1)
      {
        v49 = j + 1;
        j = v49;
        if (v49 == i)
        {
          break;
        }

        if (BYTE1(v196))
        {
          v50 = 0;
        }

        else
        {
          v50 = v49;
        }

        if (v196 == 1)
        {
          v51 = v197 + 32 * v50;
          v53 = *(v51 + 1);
          v52 = (v51 + 8);
          if (v20 == v53)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v52);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&v207, v52);
          }
        }

        else
        {
          (*(*v197 + 24))(&v206);
        }

        if (v20 == v207)
        {
          v48 = (v47 != 3) ^ ((*(v208 + 28) & 7) == 3);
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
          if ((v48 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v54 = (v47 != 3) ^ ((v209 & 7) == 3);
          llvm::detail::IEEEFloat::~IEEEFloat(&v207);
          if ((v54 & 1) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      v15 = 1;
      if (v192)
      {
LABEL_160:
        if ((v196 & 1) == 0)
        {
          v56 = v197;
          v197 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        if ((v203 & 1) == 0)
        {
          v57 = v204;
          v204 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

        if ((ShapedType & 1) == 0)
        {
          v58 = Type;
          Type = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        if (v15)
        {
LABEL_170:
          v59 = 1;
          goto LABEL_191;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v183, &ShapedType);
        LOWORD(v196) = ShapedType;
        if (ShapedType == 1)
        {
          v197 = Type;
        }

        else
        {
          (*(*Type + 16))(&v197);
        }

        v60 = v202;
        j = v202;
        LOWORD(v192) = v203;
        if (v203 == 1)
        {
          v193 = v204;
        }

        else
        {
          (*(*v204 + 16))(&v193);
          v60 = j;
        }

        for (i = v205; v60 != i; j = v60)
        {
          if (BYTE1(v196))
          {
            v78 = 0;
          }

          else
          {
            v78 = v60;
          }

          if (v196 == 1)
          {
            v79 = v197 + 32 * v78;
            v81 = *(v79 + 1);
            v80 = (v79 + 8);
            v82 = llvm::APFloatBase::PPCDoubleDouble(v197);
            if (v82 == v81)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v80);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v207, v80);
            }
          }

          else
          {
            v83 = (*(*v197 + 24))(&v206);
            v82 = llvm::APFloatBase::PPCDoubleDouble(v83);
          }

          if (v82 == v207)
          {
            v84 = v208;
          }

          else
          {
            v84 = &v206;
          }

          v85 = *(v84 + 28);
          v86 = v186;
          if ((v186 + 1) > *(&v186 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v185, &v187, v186 + 1, 1);
            v86 = v186;
          }

          *(v185 + v86) = (v85 & 7) != 3;
          *&v186 = v186 + 1;
          if (v82 == v207)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v207);
          }

          v60 = j + 1;
        }

        if ((v192 & 1) == 0)
        {
          v61 = v193;
          v193 = 0;
          if (v61)
          {
            (*(*v61 + 8))(v61);
          }
        }

        if ((v196 & 1) == 0)
        {
          v40 = v197;
          v197 = 0;
          if (v40)
          {
            goto LABEL_183;
          }
        }

        goto LABEL_184;
      }
    }

    v55 = v193;
    v193 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    goto LABEL_160;
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(&v183, &ShapedType);
  LOWORD(v206) = ShapedType;
  if (ShapedType == 1)
  {
    v207 = Type;
  }

  else
  {
    (*(*Type + 16))(&v207);
  }

  v21 = v202;
  v208 = v202;
  LOWORD(v196) = v203;
  if (v203 == 1)
  {
    v197 = v204;
  }

  else
  {
    (*(*v204 + 16))(&v197);
    v21 = v208;
  }

  j = v205;
  if (v21 == v205)
  {
    v14 = 0;
    goto LABEL_56;
  }

  if (BYTE1(v206))
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  if (v206)
  {
    v24 = v207 + 16 * v23;
    LODWORD(v193) = *(v24 + 2);
    if (v193 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v192, v24);
    }

    v192 = *v24;
  }

  else
  {
    (*(*v207 + 24))(&v192);
  }

  v26 = &v192;
  if (v193 >= 0x41)
  {
    v26 = v192;
  }

  v27 = *v26;
  v14 = *v26 != 0;
  if (v193 >= 0x41 && v192)
  {
    MEMORY[0x1AC55A040]();
  }

  v28 = v208 + 1;
  v208 = v28;
  if (v28 != j)
  {
    while (1)
    {
      v33 = BYTE1(v206) ? 0 : v28;
      if (v206 == 1)
      {
        v34 = v207 + 16 * v33;
        LODWORD(v193) = *(v34 + 2);
        if (v193 > 0x40)
        {
          llvm::APInt::initSlowCase(&v192, v34);
        }

        v192 = *v34;
      }

      else
      {
        (*(*v207 + 24))(&v192);
      }

      v35 = v193 >= 0x41 ? v192 : &v192;
      v36 = (v27 != 0) ^ (*v35 == 0);
      v37 = !v192 || v193 < 0x41;
      if ((v36 & 1) == 0)
      {
        break;
      }

      if (!v37)
      {
        MEMORY[0x1AC55A040]();
      }

      v28 = v208 + 1;
      v208 = v28;
      if (v28 == j)
      {
        goto LABEL_73;
      }
    }

    if (!v37)
    {
      MEMORY[0x1AC55A040]();
    }

LABEL_56:
    v22 = 0;
    if (v196)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_73:
  v22 = 1;
  if (v196)
  {
    goto LABEL_76;
  }

LABEL_74:
  v29 = v197;
  v197 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

LABEL_76:
  if ((v206 & 1) == 0)
  {
    v30 = v207;
    v207 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  if ((v203 & 1) == 0)
  {
    v31 = v204;
    v204 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  if ((ShapedType & 1) == 0)
  {
    v32 = Type;
    Type = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  if (v22)
  {
    goto LABEL_170;
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(&v183, &ShapedType);
  LOWORD(v206) = ShapedType;
  if (ShapedType == 1)
  {
    v207 = Type;
  }

  else
  {
    (*(*Type + 16))(&v207);
  }

  v38 = v202;
  v208 = v202;
  LOWORD(v196) = v203;
  if (v203 == 1)
  {
    v197 = v204;
  }

  else
  {
    (*(*v204 + 16))(&v197);
    v38 = v208;
  }

  for (j = v205; v38 != j; v208 = v38)
  {
    if (BYTE1(v206))
    {
      v41 = 0;
    }

    else
    {
      v41 = v38;
    }

    if (v206 == 1)
    {
      v42 = v207 + 16 * v41;
      LODWORD(v193) = *(v42 + 2);
      if (v193 > 0x40)
      {
        llvm::APInt::initSlowCase(&v192, v42);
      }

      v192 = *v42;
    }

    else
    {
      (*(*v207 + 24))(&v192);
    }

    if (v193 >= 0x41)
    {
      v43 = v192;
    }

    else
    {
      v43 = &v192;
    }

    v44 = *v43;
    v45 = v186;
    if ((v186 + 1) > *(&v186 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v185, &v187, v186 + 1, 1);
      v45 = v186;
    }

    *(v185 + v45) = v44 != 0;
    *&v186 = v186 + 1;
    if (v193 >= 0x41 && v192)
    {
      MEMORY[0x1AC55A040](v192, 0x1000C8000313F17);
    }

    v38 = v208 + 1;
  }

  if ((v196 & 1) == 0)
  {
    v39 = v197;
    v197 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }
  }

  if ((v206 & 1) == 0)
  {
    v40 = v207;
    v207 = 0;
    if (v40)
    {
LABEL_183:
      (*(*v40 + 8))(v40);
    }
  }

LABEL_184:
  if ((v203 & 1) == 0)
  {
    v62 = v204;
    v204 = 0;
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }
  }

  if ((ShapedType & 1) == 0)
  {
    v63 = Type;
    Type = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }
  }

  v59 = 0;
LABEL_191:
  v64 = *(a2 + 72);
  v65 = (*(*(v64 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v65)
  {
    v66 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
    v64 = *(a2 + 72);
  }

  else
  {
    v66 = 0;
  }

  v182[0] = v65;
  v182[1] = v66;
  v67 = (*(*(v64 + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v67)
  {
    v68 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
  }

  else
  {
    v68 = 0;
  }

  v181[0] = v67;
  v181[1] = v68;
  if (!mlir::ElementsAttr::getShapedType(v181) || !mlir::ElementsAttr::getShapedType(v182))
  {
    goto LABEL_251;
  }

  if (!v59)
  {
    v87 = *(a3 + 8);
    if (v87)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v87 + 8);
      if (v88)
      {
        v88 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v87 + 8);
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      v88 = 0;
    }

    v179 = v87;
    v180 = v88;
    v89 = *(a3 + 16);
    if (v89)
    {
      v90 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v89 + 8);
      if (v90)
      {
        v90 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v89 + 8);
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v90 = 0;
    }

    ElementTypeWithLargestPrecision = 0;
    v177 = v89;
    v178 = v90;
    if (!v179)
    {
      goto LABEL_252;
    }

    if (!v89)
    {
      goto LABEL_252;
    }

    ShapedType = mlir::ElementsAttr::getType(&v179);
    Type = mlir::ElementsAttr::getType(&v177);
    if (!ElementTypeWithLargestPrecision)
    {
      goto LABEL_252;
    }

    NumElements = mlir::ElementsAttr::getNumElements(v179, v180);
    if (NumElements != v186 && !mlir::ElementsAttr::isSplat(&v179))
    {
      goto LABEL_251;
    }

    v92 = mlir::ElementsAttr::getNumElements(v177, v178);
    if (v92 != v186 && !mlir::ElementsAttr::isSplat(&v177))
    {
      goto LABEL_251;
    }

    if (*(*mlir::ElementsAttr::isSplat(v188) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      ShapedType = mlir::ElementsAttr::isSplat(v188);
      if (!llvm::isa<mlir::FloatType,mlir::Type>(&ShapedType))
      {
        goto LABEL_251;
      }

      ShapedType = &v202;
      Type = 0x400000000;
      LOBYTE(v196) = 0;
      v199 = 0;
      LOBYTE(v192) = 0;
      v195 = 0;
      if (mlir::ElementsAttr::isSplat(&v179))
      {
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v179, &v206);
        LOWORD(v174) = v206;
        if (v206 == 1)
        {
          v175 = v207;
        }

        else
        {
          (*(*v207 + 16))(&v175);
        }

        v176 = v208;
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v174, &v189);
        std::optional<llvm::APFloat>::operator=[abi:nn200100]<llvm::APFloat,void>(&v196, &v189);
        llvm::APFloat::~APFloat(&v189);
        if ((v174 & 1) == 0)
        {
          v129 = v175;
          v175 = 0;
          if (v129)
          {
            (*(*v129 + 8))(v129);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      }

      if (mlir::ElementsAttr::isSplat(&v177))
      {
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v177, &v206);
        LOWORD(v174) = v206;
        if (v206 == 1)
        {
          v175 = v207;
        }

        else
        {
          (*(*v207 + 16))(&v175);
        }

        v176 = v208;
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v174, &v189);
        std::optional<llvm::APFloat>::operator=[abi:nn200100]<llvm::APFloat,void>(&v192, &v189);
        llvm::APFloat::~APFloat(&v189);
        if ((v174 & 1) == 0)
        {
          v130 = v175;
          v175 = 0;
          if (v130)
          {
            (*(*v130 + 8))(v130);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      }

      mlir::ElementsAttr::getValues<llvm::APFloat>(&v179, &v206);
      LOWORD(v174) = v206;
      if (v206 == 1)
      {
        v175 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v175);
      }

      v176 = v208;
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      mlir::ElementsAttr::getValues<llvm::APFloat>(&v177, &v206);
      LOWORD(v171) = v206;
      if (v206 == 1)
      {
        v172 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v172);
      }

      v173 = v208;
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      v131 = v186;
      v132 = mlir::ElementsAttr::getNumElements(v179, v180);
      v133 = mlir::ElementsAttr::getNumElements(v177, v178);
      if (v132 <= v133)
      {
        v134 = v133;
      }

      else
      {
        v134 = v132;
      }

      if (v131 <= v134)
      {
        v135 = v134;
      }

      else
      {
        v135 = v131;
      }

      v206 = ElementTypeWithLargestPrecision;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v206);
      if (!v135)
      {
LABEL_446:
        Shape = mlir::ShapedType::getShape(v188);
        v163 = mlir::RankedTensorType::get(Shape, v162, ElementTypeWithLargestPrecision, 0);
        ElementsAttr = mlir::createElementsAttr(v163, ShapedType, Type);
        if ((v171 & 1) == 0)
        {
          v165 = v172;
          v172 = 0;
          if (v165)
          {
            v166 = ElementsAttr;
            (*(*v165 + 8))(v165);
            ElementsAttr = v166;
          }
        }

        ElementTypeWithLargestPrecision = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
        if ((v174 & 1) == 0)
        {
          v167 = v175;
          v175 = 0;
          if (v167)
          {
            (*(*v167 + 8))(v167);
          }
        }

        std::optional<llvm::APFloat>::~optional(&v192);
        std::optional<llvm::APFloat>::~optional(&v196);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ShapedType);
        goto LABEL_252;
      }

      v137 = FloatSemantics;
      v138 = 0;
      while (1)
      {
        if (v199 == 1)
        {
          v139 = v197;
          if (llvm::APFloatBase::PPCDoubleDouble(FloatSemantics) == v139)
          {
            v140 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, &v197);
          }

          else
          {
            v140 = llvm::detail::IEEEFloat::IEEEFloat(&v207, &v197);
          }

          goto LABEL_419;
        }

        LOWORD(v189) = v174;
        if (v174)
        {
          v141 = v175;
          v142 = v176;
          v190 = v175;
          v191 = v176++;
          if (BYTE1(v174))
          {
            v143 = 0;
          }

          else
          {
            v143 = v142;
          }
        }

        else
        {
          (*(*v175 + 16))(&v190);
          v141 = v190;
          v144 = v176;
          v191 = v176++;
          if ((v189 & 0x100) != 0)
          {
            v143 = 0;
          }

          else
          {
            v143 = v144;
          }

          if ((v189 & 1) == 0)
          {
            v140 = (*(*v190 + 24))(&v206);
            goto LABEL_416;
          }
        }

        v145 = v141 + 32 * v143;
        v147 = *(v145 + 1);
        v146 = (v145 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v141) == v147)
        {
          v140 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v146);
        }

        else
        {
          v140 = llvm::detail::IEEEFloat::IEEEFloat(&v207, v146);
        }

LABEL_416:
        if ((v189 & 1) == 0)
        {
          v140 = v190;
          v190 = 0;
          if (v140)
          {
            v140 = (*(*v140 + 8))(v140);
          }
        }

LABEL_419:
        if (v195 != 1)
        {
          LOWORD(v168) = v171;
          if (v171)
          {
            v149 = v172;
            v150 = v173;
            v169 = v172;
            v170 = v173++;
            if (BYTE1(v171))
            {
              v151 = 0;
            }

            else
            {
              v151 = v150;
            }

            goto LABEL_430;
          }

          (*(*v172 + 16))(&v169);
          v149 = v169;
          v152 = v173;
          v170 = v173++;
          if (BYTE1(v168))
          {
            v151 = 0;
          }

          else
          {
            v151 = v152;
          }

          if (v168)
          {
LABEL_430:
            v153 = v149 + 32 * v151;
            v155 = *(v153 + 1);
            v154 = (v153 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v149) == v155)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v190, v154);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v190, v154);
            }
          }

          else
          {
            (*(*v169 + 24))(&v189);
          }

          if ((v168 & 1) == 0)
          {
            v156 = v169;
            v169 = 0;
            if (v156)
            {
              (*(*v156 + 8))(v156);
            }
          }

          goto LABEL_438;
        }

        v148 = v193;
        if (llvm::APFloatBase::PPCDoubleDouble(v140) == v148)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v190, &v193);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v190, &v193);
        }

LABEL_438:
        LOBYTE(v168) = 0;
        llvm::APFloat::convert(&v206, v137, 1u, &v168);
        LOBYTE(v168) = 0;
        llvm::APFloat::convert(&v189, v137, 1u, &v168);
        if (*(v185 + v138))
        {
          v157 = &v206;
        }

        else
        {
          v157 = &v189;
        }

        v158 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&ShapedType, v157);
        v159 = v190;
        v160 = llvm::APFloatBase::PPCDoubleDouble(v158);
        if (v160 == v159)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v190);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v190);
        }

        if (v160 == v207)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v207);
        }

        if (v135 == ++v138)
        {
          goto LABEL_446;
        }
      }
    }

    ShapedType = &v202;
    Type = 0x400000000;
    LOBYTE(v196) = 0;
    LOBYTE(j) = 0;
    LOBYTE(v192) = 0;
    LOBYTE(i) = 0;
    if (mlir::ElementsAttr::isSplat(&v179))
    {
      mlir::ElementsAttr::getValues<llvm::APInt>(&v179, &v206);
      LOWORD(v189) = v206;
      if (v206 == 1)
      {
        v190 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v190);
      }

      v191 = v208;
      mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v189, &v174);
      if (j == 1)
      {
        if (v197 >= 0x41 && v196)
        {
          MEMORY[0x1AC55A040](v196, 0x1000C8000313F17);
        }

        v196 = v174;
        LODWORD(v197) = v175;
        LODWORD(v175) = 0;
      }

      else
      {
        LODWORD(v197) = v175;
        v196 = v174;
        LODWORD(v175) = 0;
        LOBYTE(j) = 1;
      }

      if ((v189 & 1) == 0)
      {
        v96 = v190;
        v190 = 0;
        if (v96)
        {
          (*(*v96 + 8))(v96);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    }

    if (mlir::ElementsAttr::isSplat(&v177))
    {
      mlir::ElementsAttr::getValues<llvm::APInt>(&v177, &v206);
      LOWORD(v189) = v206;
      if (v206 == 1)
      {
        v190 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v190);
      }

      v191 = v208;
      mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v189, &v174);
      if (i == 1)
      {
        if (v193 >= 0x41 && v192)
        {
          MEMORY[0x1AC55A040](v192, 0x1000C8000313F17);
        }

        v192 = v174;
        LODWORD(v193) = v175;
        LODWORD(v175) = 0;
      }

      else
      {
        LODWORD(v193) = v175;
        v192 = v174;
        LODWORD(v175) = 0;
        LOBYTE(i) = 1;
      }

      if ((v189 & 1) == 0)
      {
        v97 = v190;
        v190 = 0;
        if (v97)
        {
          (*(*v97 + 8))(v97);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(&v179, &v206);
    LOWORD(v189) = v206;
    if (v206 == 1)
    {
      v190 = v207;
    }

    else
    {
      (*(*v207 + 16))(&v190);
    }

    v191 = v208;
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v177, &v206);
    LOWORD(v174) = v206;
    if (v206 == 1)
    {
      v175 = v207;
    }

    else
    {
      (*(*v207 + 16))(&v175);
    }

    v176 = v208;
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    v98 = v186;
    v99 = mlir::ElementsAttr::getNumElements(v179, v180);
    v100 = mlir::ElementsAttr::getNumElements(v177, v178);
    if (v99 <= v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = v99;
    }

    if (v98 <= v101)
    {
      v102 = v101;
    }

    else
    {
      v102 = v98;
    }

    if (!v102)
    {
LABEL_356:
      v123 = mlir::ShapedType::getShape(v188);
      v125 = mlir::RankedTensorType::get(v123, v124, ElementTypeWithLargestPrecision, 0);
      v126 = mlir::createElementsAttr(v125, ShapedType, Type);
      if ((v174 & 1) == 0)
      {
        v127 = v175;
        v175 = 0;
        if (v127)
        {
          (*(*v127 + 8))(v127);
        }
      }

      if ((v189 & 1) == 0)
      {
        v128 = v190;
        v190 = 0;
        if (v128)
        {
          (*(*v128 + 8))(v128);
        }
      }

      if (i == 1 && v193 >= 0x41 && v192)
      {
        MEMORY[0x1AC55A040](v192, 0x1000C8000313F17);
      }

      ElementTypeWithLargestPrecision = v126 & 0xFFFFFFFFFFFFFFFBLL;
      if (j == 1 && v197 >= 0x41 && v196)
      {
        MEMORY[0x1AC55A040](v196, 0x1000C8000313F17);
      }

      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&ShapedType);
      goto LABEL_252;
    }

    v103 = 0;
    while (1)
    {
      if (j == 1)
      {
        LODWORD(v172) = v197;
        if (v197 > 0x40)
        {
          llvm::APInt::initSlowCase(&v171, &v196);
        }

        v171 = v196;
        goto LABEL_318;
      }

      LOWORD(v206) = v189;
      if (v189 == 1)
      {
        break;
      }

      (*(*v190 + 16))(&v207);
      v104 = v207;
      v107 = v191;
      v208 = v191++;
      if ((v206 & 0x100) != 0)
      {
        v106 = 0;
      }

      else
      {
        v106 = v107;
      }

      if (v206)
      {
        goto LABEL_311;
      }

      (*(*v207 + 24))(&v171);
LABEL_315:
      if ((v206 & 1) == 0)
      {
        v109 = v207;
        v207 = 0;
        if (v109)
        {
          (*(*v109 + 8))(v109);
        }
      }

LABEL_318:
      if (i != 1)
      {
        LOWORD(v206) = v174;
        if (v174 == 1)
        {
          v110 = v175;
          v111 = v176;
          v207 = v175;
          v208 = v176++;
          if (BYTE1(v174))
          {
            v112 = 0;
          }

          else
          {
            v112 = v111;
          }

          goto LABEL_330;
        }

        (*(*v175 + 16))(&v207);
        v110 = v207;
        v113 = v176;
        v208 = v176++;
        if ((v206 & 0x100) != 0)
        {
          v112 = 0;
        }

        else
        {
          v112 = v113;
        }

        if (v206)
        {
LABEL_330:
          v114 = v110 + 16 * v112;
          LODWORD(v169) = *(v114 + 2);
          if (v169 > 0x40)
          {
            llvm::APInt::initSlowCase(&v168, v114);
          }

          v168 = *v114;
        }

        else
        {
          (*(*v207 + 24))(&v168);
        }

        if ((v206 & 1) == 0)
        {
          v115 = v207;
          v207 = 0;
          if (v115)
          {
            (*(*v115 + 8))(v115);
          }
        }

        goto LABEL_337;
      }

      LODWORD(v169) = v193;
      if (v193 > 0x40)
      {
        llvm::APInt::initSlowCase(&v168, &v192);
      }

      v168 = v192;
LABEL_337:
      if (*(v185 + v103))
      {
        v116 = &v171;
      }

      else
      {
        v116 = &v168;
      }

      v117 = ShapedType;
      if (Type >= HIDWORD(Type))
      {
        v120 = v116;
        if (ShapedType <= v116 && &ShapedType[2 * Type] > v116)
        {
          v122 = v116 - ShapedType;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ShapedType, Type + 1);
          v117 = ShapedType;
          v116 = (ShapedType + v122);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ShapedType, Type + 1);
          v117 = ShapedType;
          v116 = v120;
        }
      }

      v118 = &v117[2 * Type];
      v119 = *(v116 + 2);
      *(v118 + 2) = v119;
      if (v119 > 0x40)
      {
        llvm::APInt::initSlowCase(v118, v116);
      }

      *v118 = *v116;
      LODWORD(Type) = Type + 1;
      if (v169 >= 0x41 && v168)
      {
        MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
      }

      if (v172 >= 0x41 && v171)
      {
        MEMORY[0x1AC55A040](v171, 0x1000C8000313F17);
      }

      if (v102 == ++v103)
      {
        goto LABEL_356;
      }
    }

    v104 = v190;
    v105 = v191;
    v207 = v190;
    v208 = v191++;
    if (BYTE1(v189))
    {
      v106 = 0;
    }

    else
    {
      v106 = v105;
    }

LABEL_311:
    v108 = v104 + 16 * v106;
    LODWORD(v172) = *(v108 + 2);
    if (v172 > 0x40)
    {
      llvm::APInt::initSlowCase(&v171, v108);
    }

    v171 = *v108;
    goto LABEL_315;
  }

  if (!mlir::ElementsAttr::getShapedType(v188))
  {
    goto LABEL_251;
  }

  v69 = mlir::ShapedType::getShape(v188);
  if (v70)
  {
    v71 = 8 * v70;
    while (*v69 != 0x8000000000000000)
    {
      ++v69;
      v71 -= 8;
      if (!v71)
      {
        goto LABEL_205;
      }
    }

    goto LABEL_251;
  }

LABEL_205:
  v72 = mlir::ShapedType::getShape(v188);
  v74 = v73;
  if (v14)
  {
    v75 = mlir::ShapedType::getShape(v182);
    if (v74 == v76 && !memcmp(v72, v75, 8 * v74))
    {
      ElementTypeWithLargestPrecision = *(*(a2 + 72) + 56) | 4;
      goto LABEL_252;
    }

    goto LABEL_251;
  }

  v93 = mlir::ShapedType::getShape(v181);
  if (v74 != v94 || memcmp(v72, v93, 8 * v74))
  {
LABEL_251:
    ElementTypeWithLargestPrecision = 0;
    goto LABEL_252;
  }

  ElementTypeWithLargestPrecision = *(*(a2 + 72) + 88) | 4;
LABEL_252:
  if (v185 != &v187)
  {
    free(v185);
  }

  return ElementTypeWithLargestPrecision;
}