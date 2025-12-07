BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps40(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x1AC55A040](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 9)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 8)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 9)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: PaddingMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

BOOL mlir::anec::__mlir_ods_local_type_constraint_ANECOps10(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v50[0] = a2;
    v50[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v50);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 8))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v43 = a2;
      v44 = v11;
      if (mlir::ElementsAttr::getShapedType(&v43))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v48 = a2;
        v49 = v12;
        mlir::ShapedType::getShape(&v48);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v46[0] = a2;
        v46[1] = v14;
        mlir::ShapedType::getShape(v46);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v45 = 261;
  v43 = a3;
  v44 = a4;
  mlir::Operation::emitOpError(a1, &v43, v50);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v48) = 5;
    v49 = a5;
    v19 = *(v17 + 32);
    v20 = &v48;
    if (v19 >= *(v17 + 36))
    {
      if (v18 <= &v48 && v18 + 24 * v19 > &v48)
      {
        v40 = &v48 - v18;
        v41 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v19 + 1, 24);
        v17 = v41;
        v18 = *(v41 + 24);
        v20 = &v40[v18];
      }

      else
      {
        v39 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, (v17 + 40), v19 + 1, 24);
        v17 = v39;
        v18 = *(v39 + 24);
        v20 = &v48;
      }
    }

    v21 = v18 + 24 * *(v17 + 32);
    v22 = *v20;
    *(v21 + 16) = v20[2];
    *v21 = v22;
    ++*(v17 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v17, " must be 4D/5D memref of 16-bit float or 8-bit unsigned integer or 8-bit signed integer values, but got ");
  if (*v23)
  {
    v24 = &v48;
    v25 = v23;
    mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
    v23 = v25;
    v26 = *(v25 + 24);
    v27 = *(v25 + 32);
    if (v27 >= *(v25 + 36))
    {
      if (v26 <= &v48 && v26 + 24 * v27 > &v48)
      {
        v42 = &v48 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, (v25 + 40), v27 + 1, 24);
        v23 = v25;
        v26 = *(v25 + 24);
        v24 = &v42[v26];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, (v25 + 40), v27 + 1, 24);
        v23 = v25;
        v26 = *(v25 + 24);
        v24 = &v48;
      }
    }

    v28 = v26 + 24 * *(v23 + 32);
    v29 = *v24;
    *(v28 + 16) = v24[2];
    *v28 = v29;
    ++*(v23 + 32);
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v56;
      v32 = __p;
      if (v56 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v56 = v30;
      operator delete(v32);
    }

    v33 = v53;
    if (v53)
    {
      v34 = v54;
      v35 = v53;
      if (v54 != v53)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v53;
      }

      v54 = v33;
      operator delete(v35);
    }

    if (v51 != &v52)
    {
      free(v51);
    }
  }

  return v16;
}

uint64_t mlir::anec::Resize::getScaleFactorXAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Resize::getScaleFactorYAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resize>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::Resize::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::Resize::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v41 = a3;
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  v16 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v16, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  v19 = *(*(*(a2 + 8) + 96) + 40);
  v20 = mlir::Builder::getIntegerType(a1, 64, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v19, v21);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  v22 = *(*(*(a2 + 8) + 96) + 24);
  F32Type = mlir::Builder::getF32Type(a1, v23);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v22, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  v26 = *(*(*(a2 + 8) + 96) + 32);
  v28 = mlir::Builder::getF32Type(a1, v27);
  v29 = mlir::Builder::getFloatAttr(a1, v28, a7);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v26, v29);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 8), a8);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 16), a9);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v45);
  __src = v46;
  v45 = 0x200000000;
  v30 = *a1;
  v31 = *a2;
  mlir::ValueRange::ValueRange(v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v34 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v42, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resize>::inferReturnTypes(v30, v31, 1, v43[0], v43[1], Dictionary, v34, v35, v42[0], v42[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v36);
  }

  v37 = __src;
  v38 = v45;
  v39 = *(a2 + 72);
  v40 = v39 + v45;
  if (v40 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v40, 8);
    LODWORD(v39) = *(a2 + 72);
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v39), v37, 8 * v38);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + v38;
  if (__src != v46)
  {
    free(__src);
  }
}

uint64_t mlir::anec::Resize::populateDefaultAttrs(mlir::anec::Resize *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[3]))
  {
    v6 = v4[3];
    F32Type = mlir::Builder::getF32Type(&Context, v5);
    v8.n128_u64[0] = -1.0;
    FloatAttr = mlir::Builder::getFloatAttr(v8, &Context, F32Type);
    ZinMirCacheTensors::ZinMirCacheTensors(&v17, v6, FloatAttr);
    mlir::NamedAttrList::push_back(a2, v17, v18);
  }

  result = mlir::NamedAttrList::get(a2, v4[4]);
  if (!result)
  {
    v12 = v4[4];
    v13 = mlir::Builder::getF32Type(&Context, v11);
    v14.n128_u64[0] = -1.0;
    v15 = mlir::Builder::getFloatAttr(v14, &Context, v13);
    ZinMirCacheTensors::ZinMirCacheTensors(&v17, v12, v15);
    return mlir::NamedAttrList::push_back(a2, v17, v18);
  }

  return result;
}

BOOL mlir::anec::Resize::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x1E69E9840];
  v47[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v47);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (v5)
    {
      v15 = *(v4 + 1);
      while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
      {
        v4 = (v4 + 16);
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      v22 = 0;
      v23 = *(v4 + 1);
      while (1)
      {
        v24 = (v4 + v22);
        if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v22)) == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        v22 += 16;
        if (v5 == v22)
        {
          v45[0] = "requires attribute 'sampling_modes'";
          v46 = 259;
          mlir::OpState::emitOpError(this, v45, v47);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v6;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v25 = __p;
          if (__p)
          {
            v26 = v53;
            v27 = __p;
            if (v53 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v53 = v25;
            operator delete(v27);
          }

          v10 = v50;
          if (!v50)
          {
            goto LABEL_86;
          }

          v28 = v51;
          v12 = v50;
          if (v51 == v50)
          {
            goto LABEL_85;
          }

          do
          {
            v30 = *--v28;
            v29 = v30;
            *v28 = 0;
            if (v30)
            {
              MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
            }
          }

          while (v28 != v10);
          goto LABEL_84;
        }
      }

      v31 = v5 - v22;
      if (v5 != v22)
      {
        v32 = 0;
        v33 = 0;
        v34 = *(v24 + 1);
        while (ZinCompressedFootprintInfo::GetCompressedBytes(v24) != *(*(*(*this + 6) + 96) + 40))
        {
          if (ZinCompressedFootprintInfo::GetCompressedBytes(v24) == *(*(*(*this + 6) + 96) + 24))
          {
            v32 = *(v24 + 1);
          }

          else if (ZinCompressedFootprintInfo::GetCompressedBytes(v24) == *(*(*(*this + 6) + 96) + 32))
          {
            v33 = *(v24 + 1);
          }

          v24 = (v24 + 16);
          v31 -= 16;
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        v42 = *(v24 + 1);
        if (!mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v15, "height", 6) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v42, "width", 5) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v32, "scale_factor_x", 0xE) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v33, "scale_factor_y", 0xE) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(*this, v23, "sampling_methods", 16) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps41(*this, v34, "sampling_modes", 14) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v43 = *this - 16;
        }

        else
        {
          v43 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
        return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
      }

LABEL_68:
      v45[0] = "requires attribute 'width'";
      v46 = 259;
      mlir::OpState::emitOpError(this, v45, v47);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v55 != 1)
      {
        return v6;
      }

      if (v54 != &v55)
      {
        free(v54);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v53;
        v37 = __p;
        if (v53 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v53 = v35;
        operator delete(v37);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v38 = v51;
      v12 = v50;
      if (v51 == v50)
      {
        goto LABEL_85;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
        }
      }

      while (v38 != v10);
      goto LABEL_84;
    }

LABEL_25:
    v45[0] = "requires attribute 'sampling_methods'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v53;
        v18 = __p;
        if (v53 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v53 = v16;
        operator delete(v18);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v19 = v51;
      v12 = v50;
      if (v51 == v50)
      {
        goto LABEL_85;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v10);
      goto LABEL_84;
    }
  }

  else
  {
LABEL_5:
    v45[0] = "requires attribute 'height'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v53;
        v9 = __p;
        if (v53 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v53 = v7;
        operator delete(v9);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v11 = v51;
      v12 = v50;
      if (v51 == v50)
      {
LABEL_85:
        v51 = v10;
        operator delete(v12);
LABEL_86:
        if (v48 != &v49)
        {
          free(v48);
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
          MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
        }
      }

      while (v11 != v10);
LABEL_84:
      v12 = v50;
      goto LABEL_85;
    }
  }

  return v6;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps41(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x1AC55A040](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 6)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 5)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 6)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: SamplingGridMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

void mlir::anec::RingBufferReader::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a9, a10);
  ZinMirCacheTensors::ZinMirCacheTensors(&v17, *(*(*(a2 + 8) + 96) + 8), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  ZinMirCacheTensors::ZinMirCacheTensors(&v17, **(*(a2 + 8) + 96), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  ZinMirCacheTensors::ZinMirCacheTensors(&v17, *(*(*(a2 + 8) + 96) + 16), a7);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferReader>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = v36;
  v35 = 0x600000000;
  v32 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v32, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v35;
      if (v35 >= HIDWORD(v35))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v35;
      }

      *(v34 + v19) = RankPromotionTypeForANE;
      v20 = (v35 + 1);
      LODWORD(v35) = v35 + 1;
      v15 = v33 + 1;
      v33 = v15;
      if (v15 == a5)
      {
        v23 = v34;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v23 = v36;
LABEL_13:
    v24 = mlir::ValueRange::ValueRange(&v32, v23, v20);
    result = mlir::anec::RingBufferReader::inferPromotedReturnTypes(v24, v25, v26, v27, v28, a6, v29, v30, v32, v33, a11);
  }

  if (v34 != v36)
  {
    v31 = result;
    free(v34);
    return v31;
  }

  return result;
}

BOOL mlir::anec::RingBufferReader::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x1E69E9840];
  v51[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v51);
  if (!v3)
  {
LABEL_5:
    v49[0] = "requires attribute 'is_dynamic_offsets'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v57;
      v9 = __p;
      if (v57 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v57 = v7;
      operator delete(v9);
    }

    v10 = v54;
    if (!v54)
    {
      goto LABEL_63;
    }

    v11 = v55;
    v12 = v54;
    if (v55 == v54)
    {
      goto LABEL_62;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
    goto LABEL_61;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v49[0] = "requires attribute 'offsets'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v57;
      v20 = __p;
      if (v57 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v57 = v18;
      operator delete(v20);
    }

    v10 = v54;
    if (!v54)
    {
      goto LABEL_63;
    }

    v21 = v55;
    v12 = v54;
    if (v55 == v54)
    {
      goto LABEL_62;
    }

    do
    {
      v23 = *--v21;
      v22 = v23;
      *v21 = 0;
      if (v23)
      {
        MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
      }
    }

    while (v21 != v10);
LABEL_61:
    v12 = v54;
    goto LABEL_62;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v49[0] = "requires attribute 'slice_size'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v57;
      v28 = __p;
      if (v57 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v57 = v26;
      operator delete(v28);
    }

    v10 = v54;
    if (v54)
    {
      v29 = v55;
      v12 = v54;
      if (v55 != v54)
      {
        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v10);
        goto LABEL_61;
      }

LABEL_62:
      v55 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v52 != &v53)
    {
      free(v52);
    }

    return v6;
  }

  v25 = *(v17 + 1);
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 = (v17 + 16);
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  v33 = *(v17 + 1);
  if (!mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v25, "offsets", 7) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v16, "is_dynamic_offsets", 0x12) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v33, "slice_size", 10))
  {
    return 0;
  }

  ODSOperands = mlir::anec::RingBufferReader::getODSOperands(this, 0, v34, v35);
  if (v37)
  {
    v40 = v37;
    v41 = 0;
    v42 = ODSOperands + 24;
    while (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*v42 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41))
    {
      ++v41;
      v42 += 32;
      if (v40 == v41)
      {
        goto LABEL_76;
      }
    }

    return 0;
  }

  LODWORD(v41) = 0;
LABEL_76:
  v43 = mlir::anec::RingBufferReader::getODSOperands(this, 1u, v38, v39);
  if (v44)
  {
    v45 = v44;
    v46 = v43 + 24;
    while (mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(*this, (*(*v46 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41))
    {
      LODWORD(v41) = v41 + 1;
      v46 += 32;
      if (!--v45)
      {
        goto LABEL_80;
      }
    }

    return 0;
  }

LABEL_80:
  if (*(*this + 9))
  {
    v47 = *this - 16;
  }

  else
  {
    v47 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::ShapedType::getShape(v38);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::ShapedType::getShape(v34);
  if (v15 == 1)
  {
LABEL_36:
    v30 = a2;
    v31[0] = mlir::ArrayAttr::getValue(&v30);
    v31[1] = v16;
    isSplat = mlir::ElementsAttr::isSplat(v31);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_11:
  v37 = 257;
  mlir::Operation::emitOpError(a1, &v35, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, "' failed to satisfy constraint: ui64 elements attribute of rank 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v44;
      v23 = __p;
      if (v44 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v44 = v21;
      operator delete(v23);
    }

    v24 = v41;
    if (v41)
    {
      v25 = v42;
      v26 = v41;
      if (v42 != v41)
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
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v17;
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v40 = a2;
  v41 = v8;
  Type = mlir::ElementsAttr::getType(&v40);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v44[0] = v10;
  v44[1] = Type;
  mlir::ShapedType::getShape(v44);
  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v38[0] = a2;
  v38[1] = v12;
  v13 = mlir::ElementsAttr::getType(v38);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v39[0] = v14;
  v39[1] = v13;
  mlir::ShapedType::getShape(v39);
  if (v15 == 1)
  {
LABEL_42:
    v35 = a2;
    v36[0] = mlir::ArrayAttr::getValue(&v35);
    v36[1] = v16;
    isSplat = mlir::ElementsAttr::isSplat(v36);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      return 1;
    }
  }

LABEL_11:
  v43 = 257;
  mlir::Operation::emitOpError(a1, &v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "attribute '");
  if (*v18)
  {
    v43 = 261;
    v40 = a3;
    v41 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<(v18 + 8, &v40);
    v18 = v19;
    if (*v19)
    {
      v20 = *(v19 + 24);
      LODWORD(v40) = 3;
      v41 = "' failed to satisfy constraint: ui8 elements attribute of rank 0/1";
      v42 = 66;
      v21 = *(v19 + 32);
      v22 = &v40;
      if (v21 >= *(v19 + 36))
      {
        if (v20 <= &v40 && v20 + 24 * v21 > &v40)
        {
          v34 = &v40 - v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
          v18 = v19;
          v20 = *(v19 + 24);
          v22 = &v34[v20];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
          v18 = v19;
          v20 = *(v19 + 24);
          v22 = &v40;
        }
      }

      v23 = v20 + 24 * *(v18 + 32);
      v24 = *v22;
      *(v23 + 16) = v22[2];
      *v23 = v24;
      ++*(v18 + 32);
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v28 = v47;
    if (v47)
    {
      v29 = v48;
      v30 = v47;
      if (v48 != v47)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v47;
      }

      v48 = v28;
      operator delete(v30);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v17;
}

BOOL mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
    {
      v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v38;
      if (mlir::ElementsAttr::getShapedType(&v51))
      {
        v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v39;
        mlir::ShapedType::getShape(&v56);
        if (v40 == 4)
        {
          return 1;
        }

        v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v41;
        mlir::ShapedType::getShape(v54);
        if (v42 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v11)
  {
    v13 = v11 + 24;
    v12 = *(v11 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v14 = *(v11 + 32);
    v15 = &v56;
    if (v14 >= *(v11 + 36))
    {
      if (v12 <= &v56 && v12 + 24 * v14 > &v56)
      {
        v46 = &v56 - v12;
        v47 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v14 + 1, 24);
        v11 = v47;
        v12 = *(v47 + 24);
        v15 = &v46[v12];
      }

      else
      {
        v44 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v14 + 1, 24);
        v11 = v44;
        v12 = *(v44 + 24);
        v15 = &v56;
      }
    }

    v16 = v12 + 24 * *(v11 + 32);
    v17 = *v15;
    *(v16 + 16) = v15[2];
    *v16 = v17;
    v18 = (*(v11 + 32) + 1);
    *(v11 + 32) = v18;
    if (*v11)
    {
      LODWORD(v56) = 3;
      v57 = " must be variadic of 4D/5D memref of 32-bit signed integer or 64-bit signed integer values, but got ";
      v58 = 100;
      v19 = *(v11 + 24);
      v20 = &v56;
      if (v18 >= *(v11 + 36))
      {
        if (v19 <= &v56 && v19 + 24 * v18 > &v56)
        {
          v48 = &v56 - v19;
          v49 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 40), v18 + 1, 24);
          v11 = v49;
          v19 = *(v49 + 24);
          v20 = &v48[v19];
        }

        else
        {
          v45 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 40), v18 + 1, 24);
          v11 = v45;
          v19 = *(v45 + 24);
          v20 = &v56;
        }
      }

      v21 = v19 + 24 * *(v11 + 32);
      v22 = *v20;
      *(v21 + 16) = v20[2];
      *v21 = v22;
      ++*(v11 + 32);
      if (*v11)
      {
        v23 = &v56;
        v24 = v11;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v11 = v24;
        v25 = *(v24 + 32);
        v26 = *(v24 + 24);
        if (v25 >= *(v24 + 36))
        {
          if (v26 <= &v56 && v26 + 24 * v25 > &v56)
          {
            v50 = &v56 - v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v24 + 40), v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v50[v26];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v24 + 40), v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v56;
          }
        }

        v27 = v26 + 24 * *(v11 + 32);
        v28 = *v23;
        *(v27 + 16) = v23[2];
        *v27 = v28;
        ++*(v11 + 32);
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v65;
      v32 = __p;
      if (v65 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v65 = v30;
      operator delete(v32);
    }

    v33 = v62;
    if (v62)
    {
      v34 = v63;
      v35 = v62;
      if (v63 != v62)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v62;
      }

      v63 = v33;
      operator delete(v35);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v29;
}

void mlir::anec::RingBufferReader::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v7 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v7;
  }

  v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
  }

  else
  {
    v3 = *a2 + 40 * v2;
    v4 = v10;
    v5 = v9;
    *v3 = v11;
    *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v4;
    *(v3 + 36) = v5;
    ++*(a2 + 8);
  }
}

uint64_t mlir::anec::RingBufferWriter::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = a4;
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  ZinMirCacheTensors::ZinMirCacheTensors(&v16, *(*(*(a2 + 8) + 96) + 8), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  ZinMirCacheTensors::ZinMirCacheTensors(&v16, **(*(a2 + 8) + 96), a6);
  return mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferWriter>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = v22;
  v21 = 0x600000000;
  v18 = a4;
  if (a5)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(mlir::ValueRange::dereference_iterator(&v18, v8) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
      {
        break;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      if (!v9)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v10);
      v12 = v21;
      if (v21 >= HIDWORD(v21))
      {
        v14 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v21 + 1, 8);
        RankPromotionTypeForANE = v14;
        v12 = v21;
      }

      *(v20 + v12) = RankPromotionTypeForANE;
      v13 = (v21 + 1);
      LODWORD(v21) = v21 + 1;
      v8 = v19 + 1;
      v19 = v8;
      if (v8 == a5)
      {
        v16 = v20;
        goto LABEL_13;
      }
    }

    v15 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v13 = 0;
    v16 = v22;
LABEL_13:
    mlir::ValueRange::ValueRange(&v18, v16, v13);
    v15 = 1;
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v15;
}

uint64_t mlir::anec::RingBufferWriter::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v32[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v32);
  if (!v3)
  {
LABEL_5:
    v30[0] = "requires attribute 'is_dynamic_offsets'";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, v32);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return v6;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v38;
      v9 = __p;
      if (v38 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v38 = v7;
      operator delete(v9);
    }

    v10 = v35;
    if (v35)
    {
      v11 = v36;
      v12 = v35;
      if (v36 != v35)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v35;
      }

LABEL_42:
      v36 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v33 != &v34)
    {
      free(v33);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v30[0] = "requires attribute 'offsets'";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, v32);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return v6;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v38;
      v18 = __p;
      if (v38 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v38 = v16;
      operator delete(v18);
    }

    v10 = v35;
    if (v35)
    {
      v19 = v36;
      v12 = v35;
      if (v36 != v35)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v4[1], "offsets", 7) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v15, "is_dynamic_offsets", 0x12) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    ODSOperands = mlir::anec::RingBufferWriter::getODSOperands(this, 2u, v22, v23);
    if (!v26)
    {
      return 1;
    }

    v27 = v26;
    v28 = ODSOperands + 24;
    v29 = 2;
    while (mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(*this, (*(*v28 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v29))
    {
      ++v29;
      v28 += 32;
      v6 = 1;
      if (!--v27)
      {
        return v6;
      }
    }
  }

  return 0;
}

void mlir::anec::RingBufferWriter::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::anec::RingBufferWriter::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v7 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v7;
  }

  v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
  }

  else
  {
    v3 = *a2 + 40 * v2;
    v4 = v10;
    v5 = v9;
    *v3 = v11;
    *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v4;
    *(v3 + 36) = v5;
    ++*(a2 + 8);
  }
}

void mlir::anec::Rsqrt::build(mlir::Float16Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v7 = **(*(a2 + 8) + 96);
  F16Type = mlir::Builder::getF16Type(a1, v8);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F16Type, a4);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, v7, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  __src = v27;
  v26 = 0x200000000;
  v11 = *a1;
  v12 = *a2;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v11, v12, 1, v24[0], v24[1], Dictionary, v15, v16, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v17);
  }

  v18 = __src;
  v19 = v26;
  v20 = *(a2 + 72);
  v21 = v20 + v26;
  if (v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v21, 8);
    LODWORD(v20) = *(a2 + 72);
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v20), v18, 8 * v19);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v27)
  {
    free(__src);
  }
}

void mlir::anec::ScaledDotProductAttention::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v23 = a4;
  v24 = a3;
  v21 = a6;
  v22 = a5;
  v20 = a7;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  __src = v29;
  v28 = 0x200000000;
  v9 = *a1;
  v10 = *a2;
  mlir::ValueRange::ValueRange(v26, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledDotProductAttention>::inferReturnTypes(v9, v10, 1, v26[0], v26[1], Dictionary, v13, v14, v25[0], v25[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v15);
  }

  v16 = __src;
  v17 = v28;
  v18 = *(a2 + 72);
  v19 = v18 + v28;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v29)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledDotProductAttention>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = v36;
  v35 = 0x600000000;
  v32 = a4;
  if (a5)
  {
    v14 = 0;
    while (1)
    {
      v15 = (*(mlir::ValueRange::dereference_iterator(&v32, v14) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8))
      {
        break;
      }

      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      if (!v15)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v16);
      v18 = v35;
      if (v35 >= HIDWORD(v35))
      {
        v20 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v35 + 1, 8);
        RankPromotionTypeForANE = v20;
        v18 = v35;
      }

      *(v34 + v18) = RankPromotionTypeForANE;
      v19 = (v35 + 1);
      LODWORD(v35) = v35 + 1;
      v14 = v33 + 1;
      v33 = v14;
      if (v14 == a5)
      {
        v22 = v34;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v22 = v36;
LABEL_13:
    v23 = mlir::ValueRange::ValueRange(&v32, v22, v19);
    result = mlir::anec::ScaledDotProductAttention::inferPromotedReturnTypes(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, a11);
  }

  if (v34 != v36)
  {
    v31 = result;
    free(v34);
    return v31;
  }

  return result;
}

BOOL mlir::anec::ScaledDotProductAttention::verifyInvariantsImpl(uint64_t **this)
{
  if (!mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*((*this)[9] + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::anec::ScaledElementWise::getPreScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::getScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::getBiasAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void *mlir::anec::ScaledElementWise::getNegateSrc1Attr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    v6 = result;
    if (mlir::BoolAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *mlir::anec::ScaledElementWise::getNegateSrc2Attr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    v6 = result;
    if (mlir::BoolAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::anec::ScaledElementWise::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = a5;
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&v19, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  if (a7)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&v19, *(*(*(a2 + 8) + 96) + 32), a7);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a8)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&v19, *(*(*(a2 + 8) + 96) + 40), a8);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a9)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&v19, **(*(a2 + 8) + 96), a9);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a10)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&v19, *(*(*(a2 + 8) + 96) + 16), a10);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a11)
  {
    ZinMirCacheTensors::ZinMirCacheTensors(&v19, *(*(*(a2 + 8) + 96) + 24), a11);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v16 + 1, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v16) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledElementWise>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = v37;
  v36 = 0x600000000;
  v33 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v33, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v36;
      if (v36 >= HIDWORD(v36))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v36;
      }

      *(v35 + v19) = RankPromotionTypeForANE;
      v20 = (v36 + 1);
      LODWORD(v36) = v36 + 1;
      v15 = v34 + 1;
      v34 = v15;
      if (v15 == a5)
      {
        v23 = v35;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v23 = v37;
LABEL_13:
    v24 = mlir::ValueRange::ValueRange(&v33, v23, v20);
    result = mlir::anec::ScaledElementWise::inferPromotedReturnTypes(v24, v25, v26, a4, a5, v27, v28, v29, v31, v32, a11);
  }

  if (v35 != v37)
  {
    v30 = result;
    free(v35);
    return v30;
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::populateDefaultAttrs(mlir::anec::ScaledElementWise *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[4]))
  {
    v6 = v4[4];
    F32Type = mlir::Builder::getF32Type(&Context, v5);
    v8.n128_u64[0] = 1.0;
    FloatAttr = mlir::Builder::getFloatAttr(v8, &Context, F32Type);
    ZinMirCacheTensors::ZinMirCacheTensors(&v28, v6, FloatAttr);
    mlir::NamedAttrList::push_back(a2, v28, v29);
  }

  if (!mlir::NamedAttrList::get(a2, v4[5]))
  {
    v11 = v4[5];
    v12 = mlir::Builder::getF32Type(&Context, v10);
    v13.n128_u64[0] = 1.0;
    v14 = mlir::Builder::getFloatAttr(v13, &Context, v12);
    ZinMirCacheTensors::ZinMirCacheTensors(&v28, v11, v14);
    mlir::NamedAttrList::push_back(a2, v28, v29);
  }

  if (!mlir::NamedAttrList::get(a2, *v4))
  {
    v16 = *v4;
    v17 = mlir::Builder::getF32Type(&Context, v15);
    v18.n128_u64[0] = 0;
    v19 = mlir::Builder::getFloatAttr(v18, &Context, v17);
    ZinMirCacheTensors::ZinMirCacheTensors(&v28, v16, v19);
    mlir::NamedAttrList::push_back(a2, v28, v29);
  }

  if (!mlir::NamedAttrList::get(a2, v4[2]))
  {
    v21 = v4[2];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0, v20);
    ZinMirCacheTensors::ZinMirCacheTensors(&v28, v21, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v28, v29);
  }

  result = mlir::NamedAttrList::get(a2, v4[3]);
  if (!result)
  {
    v25 = v4[3];
    v26 = mlir::Builder::getBoolAttr(&Context, 0, v24);
    ZinMirCacheTensors::ZinMirCacheTensors(&v28, v25, v26);
    return mlir::NamedAttrList::push_back(a2, v28, v29);
  }

  return result;
}

BOOL mlir::anec::ScaledElementWise::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v32[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v32);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v8 = *this;
      if (CompressedBytes == *(*(*(*this + 6) + 96) + 8))
      {
        break;
      }

      if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v18 = *(v4 + 1);
    if (v6)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
        v8 = *this;
        if (v23 == *(*(*(*this + 6) + 96) + 16))
        {
          v19 = *(v4 + 1);
        }

        else
        {
          v24 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
          v8 = *this;
          if (v24 == *(*(*(*this + 6) + 96) + 24))
          {
            v20 = *(v4 + 1);
          }

          else
          {
            v25 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
            v8 = *this;
            if (v25 == *(*(*(*this + 6) + 96) + 32))
            {
              v21 = *(v4 + 1);
            }

            else
            {
              v26 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
              v8 = *this;
              if (v26 == *(*(*(*this + 6) + 96) + 40))
              {
                v22 = *(v4 + 1);
              }
            }
          }
        }

        v4 = (v4 + 16);
        v6 -= 16;
      }

      while (v6);
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 0;
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(v8, v18, "mode", 4) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v21, "pre_scale", 9) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v22, "scale", 5) && mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v5, "bias", 4) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v19, "negate_src1", 0xB) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v20, "negate_src2", 0xB) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v27 = *this - 16;
      }

      else
      {
        v27 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v30 = "requires attribute 'mode'";
    v31 = 259;
    mlir::OpState::emitOpError(this, &v30, v32);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v38;
        v12 = __p;
        if (v38 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v38 = v10;
        operator delete(v12);
      }

      v13 = v35;
      if (v35)
      {
        v14 = v36;
        v15 = v35;
        if (v36 != v35)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v35;
        }

        v36 = v13;
        operator delete(v15);
      }

      if (v33 != &v34)
      {
        free(v33);
      }
    }
  }

  return v9;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Softmax>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = v30;
  v29 = 0x600000000;
  v31 = a4;
  v32 = 0;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v31, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v29;
      if (v29 >= HIDWORD(v29))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v29;
      }

      *(v28 + v19) = RankPromotionTypeForANE;
      v20 = (v29 + 1);
      LODWORD(v29) = v29 + 1;
      v15 = v32 + 1;
      v32 = v15;
      if (v15 == a5)
      {
        v23 = v28;
        goto LABEL_13;
      }
    }

    v22 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v23 = v30;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v23, v20);
    v31 = a4;
    v32 = a5;
    v24 = (*(mlir::ValueRange::dereference_iterator(&v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v25 + 1, 8);
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = v24;
    ++*(a11 + 8);
    v22 = 1;
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v22;
}

void mlir::anec::Softmax::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  if (a5)
  {
    v10 = *(*(*(a2 + 8) + 96) + 8);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    ZinMirCacheTensors::ZinMirCacheTensors(&__src, v10, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v27);
  }

  __src = v28;
  v27 = 0x200000000;
  v12 = *a1;
  v13 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Softmax>::inferReturnTypes(v12, v13, 1, v25[0], v25[1], Dictionary, v16, v17, v24[0], v24[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v18);
  }

  v19 = __src;
  v20 = v27;
  v21 = *(a2 + 72);
  v22 = v21 + v27;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::anec::Softmax::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x1E69E9840];
  v25[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v25);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v21 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (v21 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(v7, v17, "axes", 4) && mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, i, "subtractMax", 0xB) && mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v19 = *this - 16;
      }

      else
      {
        v19 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v23 = "requires attribute 'axes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v9 = __p;
      if (__p)
      {
        v10 = v31;
        v11 = __p;
        if (v31 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v31 = v9;
        operator delete(v11);
      }

      v12 = v28;
      if (v28)
      {
        v13 = v29;
        v14 = v28;
        if (v29 != v28)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v28;
        }

        v29 = v12;
        operator delete(v14);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v8;
}

void mlir::anec::SpaceToBatch::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToBatch>::inferReturnTypes(v7, v8, 1, v20[0], v20[1], Dictionary, v11, v12, v19[0], v19[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v13);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToBatch>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::SpaceToBatch::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

void mlir::anec::SpaceToChannel::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToChannel>::inferReturnTypes(v7, v8, 1, v20[0], v20[1], Dictionary, v11, v12, v19[0], v19[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v13);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToChannel>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::SpaceToChannel::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

uint64_t mlir::anec::TensorBufferToTensor::getStrides(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::TensorBufferToTensor::getInterleave(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
}

void mlir::anec::TensorBufferToTensor::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&v12, *(*(*(a2 + 8) + 96) + 8), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v13);
  ZinMirCacheTensors::ZinMirCacheTensors(&v12, **(*(a2 + 8) + 96), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v13);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::TensorBufferToTensor>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v28, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v31;
      }

      *(v30 + v19) = RankPromotionTypeForANE;
      v20 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v15 = v29 + 1;
      v29 = v15;
      if (v15 == a5)
      {
        v23 = v30;
        goto LABEL_13;
      }
    }

    v22 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v23 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v23, v20);
    PromotedReturnTypeForTensorBuffer = mlir::anec::getPromotedReturnTypeForTensorBuffer(v28, v29, a6, 1);
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      v27 = PromotedReturnTypeForTensorBuffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v25 + 1, 8);
      PromotedReturnTypeForTensorBuffer = v27;
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = PromotedReturnTypeForTensorBuffer;
    ++*(a11 + 8);
    v22 = 1;
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v22;
}

BOOL mlir::anec::TensorBufferToTensor::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'interleave'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v30;
      }

LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'strides'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if (!mlir::anec::__mlir_ods_local_attr_constraint_ANECOps45(*this, v4[1], "strides", 7) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v15, "interleave", 0xA) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::anec::__mlir_ods_local_attr_constraint_ANECOps45(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::ShapedType::getShape(v38);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::ShapedType::getShape(v34);
  if (v15 == 1)
  {
LABEL_36:
    v30 = a2;
    v31[0] = mlir::ArrayAttr::getValue(&v30);
    v31[1] = v16;
    isSplat = mlir::ElementsAttr::isSplat(v31);
    if (mlir::Type::isSignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_11:
  v37 = 257;
  mlir::Operation::emitOpError(a1, &v35, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, "' failed to satisfy constraint: ui64 elements attribute of rank 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v44;
      v23 = __p;
      if (v44 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v44 = v21;
      operator delete(v23);
    }

    v24 = v41;
    if (v41)
    {
      v25 = v42;
      v26 = v41;
      if (v42 != v41)
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
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v17;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::TensorToTensorBuffer>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v28, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v31;
      }

      *(v30 + v19) = RankPromotionTypeForANE;
      v20 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v15 = v29 + 1;
      v29 = v15;
      if (v15 == a5)
      {
        v23 = v30;
        goto LABEL_13;
      }
    }

    v22 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v23 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v23, v20);
    PromotedReturnTypeForTensorBuffer = mlir::anec::getPromotedReturnTypeForTensorBuffer(v28, v29, a6, 0);
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      v27 = PromotedReturnTypeForTensorBuffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v25 + 1, 8);
      PromotedReturnTypeForTensorBuffer = v27;
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = PromotedReturnTypeForTensorBuffer;
    ++*(a11 + 8);
    v22 = 1;
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v22;
}

void mlir::anec::Tile::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Tile>::inferReturnTypes(v7, v8, 1, v20[0], v20[1], Dictionary, v11, v12, v19[0], v19[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v13);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Tile>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[6] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = v33;
  v32 = 0x600000000;
  v29 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v29, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v32;
      }

      *(v31 + v21) = RankPromotionTypeForANE;
      v22 = (v32 + 1);
      LODWORD(v32) = v32 + 1;
      v17 = v30 + 1;
      v30 = v17;
      if (v17 == a5)
      {
        v25 = v31;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v33;
LABEL_13:
    mlir::ValueRange::ValueRange(&v29, v25, v22);
    result = mlir::anec::Tile::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v31 != v33)
  {
    v26 = result;
    free(v31);
    return v26;
  }

  return result;
}

BOOL mlir::anec::Tile::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v44);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_27;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      v41 = v17;
      v42 = v18;
      Type = mlir::ElementsAttr::getType(&v41);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v44[0] = v20;
      v44[1] = Type;
      mlir::ShapedType::getShape(v44);
      if (v21 != 1 || (v38 = v17, v39[0] = mlir::ArrayAttr::getValue(&v38), v39[1] = v22, isSplat = mlir::ElementsAttr::isSplat(v39), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_27:
        v43 = 257;
        mlir::Operation::emitOpError(v7, &v41, v44);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "attribute '");
        if (*v23)
        {
          v43 = 261;
          v41 = "multipliers";
          v42 = 11;
          v24 = v23;
          mlir::Diagnostic::operator<<((v23 + 1), &v41);
          v23 = v24;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: ui64 elements attribute of rank 1");
        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
        if (v44[0])
        {
          mlir::InFlightDiagnostic::report(v44);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v50;
            v29 = __p;
            if (v50 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v50 = v27;
            operator delete(v29);
          }

          v30 = v47;
          if (v47)
          {
            v31 = v48;
            v32 = v47;
            if (v48 != v47)
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
              v32 = v47;
            }

            v48 = v30;
            operator delete(v32);
          }

          if (v45 != v46)
          {
            free(v45);
          }
        }

        if (!v26)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v35 = *this - 16;
      }

      else
      {
        v35 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v41 = "requires attribute 'multipliers'";
    v43 = 259;
    mlir::OpState::emitOpError(this, &v41, v44);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v50 = v9;
        operator delete(v11);
      }

      v12 = v47;
      if (v47)
      {
        v13 = v48;
        v14 = v47;
        if (v48 != v47)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v47;
        }

        v48 = v12;
        operator delete(v14);
      }

      if (v45 != v46)
      {
        free(v45);
      }
    }
  }

  return v8;
}

void mlir::anec::Transpose::build(uint64_t **this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x500000000;
  if ((2 * a5) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, 2 * a5, 8);
  }

  if (a5)
  {
    v10 = &a4[2 * a5];
    v11 = v22;
    do
    {
      v12 = *a4;
      if (v11 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v11 + 1, 8);
        v11 = v22;
      }

      *(v21 + v11) = v12;
      v13 = (v22 + 1);
      LODWORD(v22) = v13;
      v14 = a4[1];
      if (v13 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v13 + 1, 8);
        LODWORD(v13) = v22;
      }

      *(v21 + v13) = v14;
      v11 = v22 + 1;
      LODWORD(v22) = v22 + 1;
      a4 += 2;
    }

    while (a4 != v10);
  }

  v20[0] = a5;
  v20[1] = 2;
  IntegerType = mlir::Builder::getIntegerType(this, 64, 0);
  v16 = mlir::RankedTensorType::get(v20, 2, IntegerType, 0);
  if (v16)
  {
    v17 = v16;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v18, v21, 8 * v22);
  mlir::anec::Transpose::build(this, a2, a3, v19);
  if (v21 != v23)
  {
    free(v21);
  }
}

void mlir::anec::Transpose::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Transpose>::inferReturnTypes(v7, v8, 1, v20[0], v20[1], Dictionary, v11, v12, v19[0], v19[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v13);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

void mlir::anec::Transpose::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = a4;
  v5[1] = a5;
  v5[2] = a5;
  v5[3] = a4;
  mlir::anec::Transpose::build(a1, a2, a3, v5, 2);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Transpose>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::Transpose::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

BOOL mlir::anec::Transpose::verifyInvariantsImpl(mlir::Operation **this)
{
  v63 = *MEMORY[0x1E69E9840];
  v54[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v54);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_30;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      v50 = v17;
      v51 = v18;
      Type = mlir::ElementsAttr::getType(&v50);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v54[0] = v20;
      v54[1] = Type;
      mlir::ShapedType::getShape(v54);
      if (v21 != 2)
      {
        goto LABEL_30;
      }

      v48 = v17;
      v22 = mlir::ArrayAttr::getValue(&v48);
      v23 = v22;
      if (v22)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
      }

      v49[0] = v23;
      v49[1] = v22;
      if (*(mlir::ShapedType::getShape(v49) + 8) != 2 || (v45 = v17, v46[0] = mlir::ArrayAttr::getValue(&v45), v46[1] = v24, isSplat = mlir::ElementsAttr::isSplat(v46), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_30:
        v53 = 257;
        mlir::Operation::emitOpError(v7, &v50, v54);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, "attribute '");
        if (*v25)
        {
          v53 = 261;
          v50 = "transpose_list";
          v51 = 14;
          v26 = v25;
          mlir::Diagnostic::operator<<(v25 + 8, &v50);
          v25 = v26;
          if (*v26)
          {
            v27 = *(v26 + 24);
            LODWORD(v50) = 3;
            v51 = "' failed to satisfy constraint: list of 64-bits unsigned integer pairs";
            v52 = 70;
            v28 = *(v26 + 32);
            v29 = &v50;
            if (v28 >= *(v26 + 36))
            {
              if (v27 <= &v50 && v27 + 24 * v28 > &v50)
              {
                v44 = &v50 - v27;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 24, (v26 + 40), v28 + 1, 24);
                v25 = v26;
                v27 = *(v26 + 24);
                v29 = &v44[v27];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 24, (v26 + 40), v28 + 1, 24);
                v25 = v26;
                v27 = *(v26 + 24);
                v29 = &v50;
              }
            }

            v30 = v27 + 24 * *(v25 + 32);
            v31 = *v29;
            *(v30 + 16) = v29[2];
            *v30 = v31;
            ++*(v25 + 32);
          }
        }

        v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

          v33 = __p;
          if (__p)
          {
            v34 = v60;
            v35 = __p;
            if (v60 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v60 = v33;
            operator delete(v35);
          }

          v36 = v57;
          if (v57)
          {
            v37 = v58;
            v38 = v57;
            if (v58 != v57)
            {
              do
              {
                v40 = *--v37;
                v39 = v40;
                *v37 = 0;
                if (v40)
                {
                  MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
                }
              }

              while (v37 != v36);
              v38 = v57;
            }

            v58 = v36;
            operator delete(v38);
          }

          if (v55 != v56)
          {
            free(v55);
          }
        }

        if (!v32)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v41 = *this - 16;
      }

      else
      {
        v41 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v50 = "requires attribute 'transpose_list'";
    v53 = 259;
    mlir::OpState::emitOpError(this, &v50, v54);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
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

      v9 = __p;
      if (__p)
      {
        v10 = v60;
        v11 = __p;
        if (v60 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v60 = v9;
        operator delete(v11);
      }

      v12 = v57;
      if (v57)
      {
        v13 = v58;
        v14 = v57;
        if (v58 != v57)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v57;
        }

        v58 = v12;
        operator delete(v14);
      }

      if (v55 != v56)
      {
        free(v55);
      }
    }
  }

  return v8;
}

void mlir::anec::Unflatten::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, *(*(*(a2 + 8) + 96) + 8), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v24);
  ZinMirCacheTensors::ZinMirCacheTensors(&__src, **(*(a2 + 8) + 96), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v24);
  __src = v25;
  v24 = 0x200000000;
  v9 = *a1;
  v10 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Unflatten>::inferReturnTypes(v9, v10, 1, v22[0], v22[1], Dictionary, v13, v14, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v15);
  }

  v16 = __src;
  v17 = v24;
  v18 = *(a2 + 72);
  v19 = v18 + v24;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Unflatten>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v30;
      }

      *(v29 + v21) = RankPromotionTypeForANE;
      v22 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v25 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v25 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v27, v25, v22);
    result = mlir::anec::Unflatten::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v27, v28, a11);
  }

  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

BOOL mlir::anec::Unflatten::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'destination_size'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v30;
      }

LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'flatten_mode'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if (!mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(*this, v4[1], "flatten_mode", 0xC) || !mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v15, "destination_size", 16) || !mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::anec::UnrealizedConversionCast::verifyInvariantsImpl(uint64_t **this)
{
  v56 = *MEMORY[0x1E69E9840];
  if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(*this + 9))
    {
      v2 = *this - 2;
    }

    else
    {
      v2 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
    v4 = *this;
    v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
      v47[0] = v5;
      v47[1] = v6;
      mlir::ElementsAttr::isSplat(v47);
      return 1;
    }

    v43 = 261;
    v42[0] = "result";
    v42[1] = 6;
    mlir::Operation::emitOpError(v4, v42, v47);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v47, " #");
    if (*v7)
    {
      v9 = v7 + 24;
      v8 = *(v7 + 24);
      v44 = 5;
      v45 = 0;
      v10 = *(v7 + 32);
      v11 = &v44;
      if (v10 >= *(v7 + 36))
      {
        if (v8 <= &v44 && v8 + 24 * v10 > &v44)
        {
          v37 = &v44 - v8;
          v38 = v7;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v10 + 1, 24);
          v7 = v38;
          v8 = *(v38 + 24);
          v11 = &v37[v8];
        }

        else
        {
          v35 = v7;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v10 + 1, 24);
          v7 = v35;
          v8 = *(v35 + 24);
          v11 = &v44;
        }
      }

      v12 = v8 + 24 * *(v7 + 32);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v14 = (*(v7 + 32) + 1);
      *(v7 + 32) = v14;
      if (*v7)
      {
        v44 = 3;
        v45 = " must be shaped of any type values, but got ";
        v46 = 44;
        v15 = *(v7 + 24);
        v16 = &v44;
        if (v14 >= *(v7 + 36))
        {
          if (v15 <= &v44 && v15 + 24 * v14 > &v44)
          {
            v39 = &v44 - v15;
            v40 = v7;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 40), v14 + 1, 24);
            v7 = v40;
            v15 = *(v40 + 24);
            v16 = &v39[v15];
          }

          else
          {
            v36 = v7;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 40), v14 + 1, 24);
            v7 = v36;
            v15 = *(v36 + 24);
            v16 = &v44;
          }
        }

        v17 = v15 + 24 * *(v7 + 32);
        v18 = *v16;
        *(v17 + 16) = *(v16 + 2);
        *v17 = v18;
        ++*(v7 + 32);
        if (*v7)
        {
          v19 = &v44;
          v20 = v7;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v5);
          v21 = *(v20 + 32);
          v22 = *(v20 + 24);
          if (v21 >= *(v20 + 36))
          {
            if (v22 <= &v44 && v22 + 24 * v21 > &v44)
            {
              v41 = &v44 - v22;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v20 + 40), v21 + 1, 24);
              v7 = v20;
              v22 = *(v20 + 24);
              v19 = &v41[v22];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v20 + 40), v21 + 1, 24);
              v7 = v20;
              v22 = *(v20 + 24);
              v19 = &v44;
            }
          }

          else
          {
            v7 = v20;
          }

          v23 = v22 + 24 * *(v7 + 32);
          v24 = *v19;
          *(v23 + 16) = *(v19 + 2);
          *v23 = v24;
          ++*(v7 + 32);
        }
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v7);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v53;
        v28 = __p;
        if (v53 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v53 = v26;
        operator delete(v28);
      }

      v29 = v50;
      if (v50)
      {
        v30 = v51;
        v31 = v50;
        if (v51 != v50)
        {
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
          v31 = v50;
        }

        v51 = v29;
        operator delete(v31);
      }

      if (v48 != &v49)
      {
        free(v48);
      }
    }

    if (v25)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::anec::calcStrides(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v92 = *MEMORY[0x1E69E9840];
  v82 = a1;
  mlir::ArrayAttr::getValue(&v82);
  if (v7)
  {
    v83[0] = mlir::DenseElementsAttr::getRawStringData(&v82);
    v83[1] = v8;
    FunctionType = mlir::FunctionOpInterface::getFunctionType(v83);
    Results = mlir::AffineMap::getResults(&FunctionType);
    v10 = *Results;
    if (*Results && (v83[0] = *Results, mlir::arith::FastMathFlagsAttr::getValue(v83) < 5))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v11);
    FunctionType = v83[0];
    if (v83[0] && !mlir::arith::FastMathFlagsAttr::getValue(&FunctionType))
    {
      RHS = mlir::AffineBinaryOpExpr::getRHS(&FunctionType);
      if (RHS && (v23 = RHS, v83[0] = RHS, mlir::arith::FastMathFlagsAttr::getValue(v83) < 5))
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v24);
      v80 = v83[0];
      if (v83[0])
      {
        if (mlir::arith::FastMathFlagsAttr::getValue(&v80) == 2)
        {
          mlir::ArrayAttr::getValue(&v82);
          v34 = v33;
          v35 = *(a2 + 8);
          if (v33 != v35)
          {
            if (v33 >= v35)
            {
              if (v33 > *(a2 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v33, 8);
                v35 = *(a2 + 8);
              }

              if (v34 != v35)
              {
                bzero((*a2 + 8 * v35), 8 * (v34 - v35));
              }
            }

            *(a2 + 8) = v34;
          }

          if (v10 && (v83[0] = v10, mlir::arith::FastMathFlagsAttr::getValue(v83) < 5))
          {
            v36 = v10;
          }

          else
          {
            v36 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v36);
          FunctionType = v83[0];
          LHS = mlir::AffineBinaryOpExpr::getLHS(&FunctionType);
          if (LHS && (v41 = LHS, v83[0] = LHS, mlir::arith::FastMathFlagsAttr::getValue(v83) < 5))
          {
            v42 = v41;
          }

          else
          {
            v42 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v42);
          FunctionType = v83[0];
          v43 = v34 - 1;
          if (v34 - 1 >= 1)
          {
            v44 = v43 & 0x7FFFFFFF;
            do
            {
              v47 = mlir::AffineBinaryOpExpr::getRHS(&FunctionType);
              if (v47 && (v48 = v47, v83[0] = v47, mlir::arith::FastMathFlagsAttr::getValue(v83) < 5))
              {
                v49 = v48;
              }

              else
              {
                v49 = 0;
              }

              ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v49);
              v80 = v83[0];
              v50 = mlir::AffineBinaryOpExpr::getRHS(&v80);
              if (v50 && (v51 = v50, v83[0] = v50, mlir::arith::FastMathFlagsAttr::getValue(v83) == 5))
              {
                v52 = v51;
              }

              else
              {
                v52 = 0;
              }

              ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v52);
              v79 = v83[0];
              *(*a2 + 8 * v44) = mlir::AffineBinaryOpExpr::getLHS(&v79);
              v53 = mlir::AffineBinaryOpExpr::getLHS(&FunctionType);
              if (v53 && (v54 = v53, v83[0] = v53, mlir::arith::FastMathFlagsAttr::getValue(v83) < 5))
              {
                v45 = v54;
              }

              else
              {
                v45 = 0;
              }

              ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v45);
              FunctionType = v83[0];
            }

            while (v44-- > 1);
          }

          v55 = mlir::AffineBinaryOpExpr::getRHS(&FunctionType);
          if (v55 && (v56 = v55, v83[0] = v55, mlir::arith::FastMathFlagsAttr::getValue(v83) == 5))
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(v83, v57);
          v80 = v83[0];
          **a2 = mlir::AffineBinaryOpExpr::getLHS(&v80);
          v83[0] = mlir::AffineBinaryOpExpr::getRHS(&v82);
          if (mlir::Type::getIntOrFloatBitWidth(v83) == 4)
          {
            if (v34 >= 2)
            {
              v58 = *a2;
              if (v34 > 4)
              {
                v59 = v43 & 0xFFFFFFFFFFFFFFFCLL;
                v69 = v58 + 1;
                v70 = v43 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v71 = vshrq_n_s64(vsraq_n_u64(*v69, *v69, 0x3FuLL), 1uLL);
                  v69[-1] = vshrq_n_s64(vsraq_n_u64(v69[-1], v69[-1], 0x3FuLL), 1uLL);
                  *v69 = v71;
                  v69 += 2;
                  v70 -= 4;
                }

                while (v70);
                if (v43 == v59)
                {
                  return 1;
                }
              }

              else
              {
                v59 = 0;
              }

              v72 = &v58->i64[v59];
              v73 = ~v59 + v34;
              do
              {
                *v72++ /= 2;
                --v73;
              }

              while (v73);
            }
          }

          else
          {
            ElementTypeBitWidth = mlir::detail::ShapedTypeTrait<mlir::MemRefType>::getElementTypeBitWidth(&v82);
            if (v34 >= 2)
            {
              v66 = ElementTypeBitWidth >> 3;
              v67 = *a2;
              if (v34 == 2)
              {
                v68 = 0;
              }

              else
              {
                v68 = v43 & 0xFFFFFFFFFFFFFFFELL;
                v74 = &v67->i64[1];
                v75 = v43 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  v76 = *v74 * v66;
                  *(v74 - 1) *= v66;
                  *v74 = v76;
                  v74 += 2;
                  v75 -= 2;
                }

                while (v75);
                if (v43 == v68)
                {
                  return 1;
                }
              }

              v77 = &v67->i64[v68];
              v78 = ~v68 + v34;
              do
              {
                *v77++ *= v66;
                --v78;
              }

              while (v78);
            }
          }

          return 1;
        }
      }
    }

    if (mlir::getStrideInBytes(v82, a2, 1))
    {
      if (*(a2 + 8))
      {
        return 1;
      }

      mlir::ArrayAttr::getValue(&v82);
      v26 = *(a2 + 8);
      if (v25 != v26)
      {
        if (v25 >= v26)
        {
          if (v25 > *(a2 + 12))
          {
            v27 = v25;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v25, 8);
            v25 = v27;
            v26 = *(a2 + 8);
          }

          if (v25 != v26)
          {
            v28 = v25;
            bzero((*a2 + 8 * v26), 8 * (v25 - v26));
            LODWORD(v25) = v28;
          }
        }

        *(a2 + 8) = v25;
      }

      Value = mlir::ArrayAttr::getValue(&v82);
      v31 = v30;
      v83[0] = mlir::AffineBinaryOpExpr::getRHS(&v82);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v83);
      if (IntOrFloatBitWidth == 4 || (IntOrFloatBitWidth & 7) == 0)
      {
        v37 = IntOrFloatBitWidth >> 3;
        mlir::ArrayAttr::getValue(&v82);
        v38 = *a2;
        if (v39 == 1)
        {
          *v38 = v37;
          return 1;
        }

        else
        {
          v60 = &v38[v31];
          *(v60 - 1) = v37;
          v61 = v31 - 2;
          if (v31 != 2)
          {
            v62 = *(v60 - 1);
            do
            {
              v63 = *(Value - 8 + 8 * v31) * v62;
              v62 = (v63 - (v63 != 0) + ((v63 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
              v38[v31-- - 2] = v62;
            }

            while (v31 != 2);
          }

          v64 = *(Value + 8) * v38[1];
          *v38 = (v64 - (v64 != 0) + ((v64 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
          if ((v38[v61] & 0x3F) == 0)
          {
            return 1;
          }

          return mlir::emitOptionalError<char const(&)[39]>(a3, a4, "Row stride should follow 64 byte alignment");
        }
      }

      else
      {
        return mlir::emitOptionalError<char const(&)[41]>(a3, a4, "Type's bitwidth not byte aligned");
      }
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[41]>(a3, a4, "Unable to get the stride in bytes!");
    }
  }

  else
  {
    if (a4)
    {
      mlir::emitError(a3, v83);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v83, "calcStrides MemRef rank should not be 0");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
      if (v83[0])
      {
        mlir::InFlightDiagnostic::report(v83);
      }

      if (v91 == 1)
      {
        if (v90 != &v91)
        {
          free(v90);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v89;
          v16 = __p;
          if (v89 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v89 = v14;
          operator delete(v16);
        }

        v17 = v86;
        if (v86)
        {
          v18 = v87;
          v19 = v86;
          if (v87 != v86)
          {
            do
            {
              v21 = *--v18;
              v20 = v21;
              *v18 = 0;
              if (v21)
              {
                MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
              }
            }

            while (v18 != v17);
            v19 = v86;
          }

          v87 = v17;
          operator delete(v19);
        }

        if (v84 != &v85)
        {
          free(v84);
        }
      }
    }

    return 0;
  }
}

void mlir::anec::calcANEIOInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v23 = v25;
  v24 = 0x400000000;
  v26 = v28;
  v27 = 0x400000000;
  v29 = 1;
  if (!mlir::anec::calcStrides(a1, &v26, 0, 0))
  {
LABEL_18:
    v17 = 0;
    *a4 = 0;
    goto LABEL_25;
  }

  Value = mlir::ArrayAttr::getValue(&v19);
  v9 = v7;
  RHS = v22;
  v21 = 0x400000000;
  v10 = (8 * v7) >> 3;
  if (v10 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&RHS, v22, v10, 8);
    v11 = v21;
    v12 = 8 * v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v12 = 8 * v7;
  if (v7)
  {
LABEL_6:
    memcpy(RHS + 8 * v11, Value, v12);
    v11 = v21;
  }

LABEL_7:
  LODWORD(v21) = v11 + (v12 >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v23, &RHS);
  if (RHS != v22)
  {
    free(RHS);
  }

  if (v27)
  {
    v13 = (v26 + 8);
    v14 = 16;
    while (8 * v27 + v14 != 24)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v14 -= 8;
      ++v13;
      if (v15 < v16)
      {
        if (v14 + 8 * v27 == 8)
        {
          break;
        }

        if (v27 != 4)
        {
          mlir::emitOptionalError<char const(&)[41]>(a2, a3, "incorrect number of strides");
          goto LABEL_18;
        }

        if (v14)
        {
          mlir::emitOptionalError<char const(&)[41]>(a2, a3, "incorrect strides");
          goto LABEL_18;
        }

        v18 = *(v26 + v27 - 1);
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v19);
        v29 = v18 / (mlir::Type::getIntOrFloatBitWidth(&RHS) >> 3);
        *v26 = vextq_s8(*v26, *v26, 8uLL);
        break;
      }
    }
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x400000000;
  if (v24)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a4, &v23);
  }

  *(a4 + 48) = a4 + 64;
  *(a4 + 56) = 0x400000000;
  if (v27)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a4 + 48, &v26);
  }

  *(a4 + 96) = v29;
  v17 = 1;
LABEL_25:
  *(a4 + 104) = v17;
  if (v26 != v28)
  {
    free(v26);
  }

  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::anec::RegionReturn::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    mlir::anec::RegionReturn::addOpToNetwork(this, &__str);
    return __str.__r_.__value_.__s.__data_[0];
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v4 + 17))
  {
    while (1)
    {
      v6 = v4[2];
      if (!v6)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v6);
      if (!ParentOp)
      {
        break;
      }

      v4 = ParentOp;
      if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
      {
        mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
        break;
      }
    }

    v8 = *this;
    if ((*(*this + 46) & 0x80) == 0 || !*(v8 + 17))
    {
      return 1;
    }

    v9 = *(v8[9] + 24);
    v30 = v9;
    v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v10 = 0;
    }

    v29 = v10;
    if (v10)
    {
      if ((mlir::anec::getANECIRDataType(v9) & 0x100000000) != 0)
      {
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v28))
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v28))
          {
            __str.__r_.__value_.__s.__data_[0] = 0;
            LOBYTE(v36) = 0;
            std::__throw_bad_optional_access[abi:nn200100]();
            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          v11 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v28);
          if (!v11)
          {
            abort();
          }

          if (*(v11 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, v11[5], v11[6]);
          }

          else
          {
            __str = *(v11 + 5);
          }

          LOBYTE(v36) = 1;
          std::string::operator=(&v28, &__str);
          if (v36 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v31 = 0;
        __p[0] = "";
        __p[1] = 0;
        v33 = "__out:";
        v34 = 773;
        __str.__r_.__value_.__r.__words[0] = __p;
        __str.__r_.__value_.__r.__words[2] = &v31;
        LOWORD(v37) = 3330;
        llvm::Twine::str(&__str, &v27);
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        HIBYTE(v33) = 0;
        LOBYTE(__p[0]) = 0;
        operator new();
      }

      v34 = 257;
      mlir::OpState::emitError(this, __p, &__str);
      if (__str.__r_.__value_.__r.__words[0])
      {
        mlir::anec::RegionReturn::addOpToNetwork(&__str);
      }

      if (v44 != 1)
      {
        return 0;
      }

      if (v43 != &v44)
      {
        free(v43);
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
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = v41;
        }

        v42 = v21;
        operator delete(v23);
      }

      v16 = v39;
      if (!v39)
      {
        goto LABEL_61;
      }

      v24 = v40;
      v18 = v39;
      if (v40 == v39)
      {
        goto LABEL_60;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
        }
      }

      while (v24 != v16);
    }

    else
    {
      v34 = 257;
      mlir::OpState::emitError(this, __p, &__str);
      if (__str.__r_.__value_.__r.__words[0])
      {
        mlir::anec::RegionReturn::addOpToNetwork(&__str);
      }

      if (v44 != 1)
      {
        return 0;
      }

      if (v43 != &v44)
      {
        free(v43);
      }

      v13 = v41;
      if (v41)
      {
        v14 = v42;
        v15 = v41;
        if (v42 != v41)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v41;
        }

        v42 = v13;
        operator delete(v15);
      }

      v16 = v39;
      if (!v39)
      {
        goto LABEL_61;
      }

      v17 = v40;
      v18 = v39;
      if (v40 == v39)
      {
LABEL_60:
        v40 = v16;
        operator delete(v18);
LABEL_61:
        if (v36 != &v38)
        {
          free(v36);
        }

        return 0;
      }

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
    }

    v18 = v39;
    goto LABEL_60;
  }

  mlir::anec::RegionReturn::addOpToNetwork(this);
  return 0;
}

void mlir::anec::getANEIOInfoFromTensorBuffer<mlir::anec::TensorToTensorBuffer,true>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v35 = 1;
  v26 = v28;
  v27 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), **(*(a1 + 48) + 96));
  mlir::getValues<long long>(v7, &v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v11 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v8 + 16), (v9 + 16 * v10), *(*(*(a1 + 48) + 96) + 8));
  mlir::getValues<long long>(v11, &v32);
  if (!v27 || !v33)
  {
    v15 = 0;
    *a2 = 0;
    goto LABEL_22;
  }

  v35 = *v26;
  if (*(a1 + 36))
  {
    v12 = a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v22[0] = v13;
  v22[1] = v14;
  Shape = mlir::ShapedType::getShape(v22);
  v18 = v16;
  AttrDictionary = v25;
  v24 = 0x600000000;
  v19 = (8 * v16) >> 3;
  if (v19 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v25, v19, 8);
    v20 = v24;
    v21 = 8 * v18;
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = 0;
  v21 = 8 * v16;
  if (v16)
  {
LABEL_14:
    memcpy(AttrDictionary + 8 * v20, Shape, v21);
    v20 = v24;
  }

LABEL_15:
  LODWORD(v24) = v20 + (v21 >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v29, &AttrDictionary);
  if (AttrDictionary != v25)
  {
    free(AttrDictionary);
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  if (v30)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v29);
  }

  *(a2 + 48) = a2 + 64;
  *(a2 + 56) = 0x400000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2 + 48, &v32);
  }

  *(a2 + 96) = v35;
  v15 = 1;
LABEL_22:
  *(a2 + 104) = v15;
  if (v26 != v28)
  {
    free(v26);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v16 == v8)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v38 + v32 + v29;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v30 + v38 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v44 + v31 + v33;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v65 + v56 + v54 + v55;
      v47 = __ROR8__(v65 + v56 + v54, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

void ZinIrEWUnitInfo::~ZinIrEWUnitInfo(ZinIrEWUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void ZinIrUnitInfo::~ZinIrUnitInfo(ZinIrUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t *llvm::formatv<long long &,long long &>@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s@<X1>, char a3@<W0>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (__s)
  {
    result = strlen(__s);
  }

  else
  {
    result = 0;
  }

  *a1 = __s;
  a1[1] = result;
  a1[9] = (a1 + 5);
  a1[2] = (a1 + 9);
  a1[3] = 2;
  *(a1 + 32) = a3;
  a1[5] = &unk_1F1A177C0;
  a1[6] = a4;
  a1[7] = &unk_1F1A177C0;
  a1[8] = a5;
  a1[10] = (a1 + 7);
  return result;
}

uint64_t *llvm::formatv<long long const&,long long &,long long &>@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s@<X1>, char a3@<W0>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  if (__s)
  {
    result = strlen(__s);
  }

  else
  {
    result = 0;
  }

  *a1 = __s;
  a1[1] = result;
  a1[11] = (a1 + 5);
  a1[2] = (a1 + 11);
  a1[3] = 3;
  *(a1 + 32) = a3;
  a1[5] = &unk_1F1A2EA50;
  a1[6] = a4;
  a1[7] = &unk_1F1A177C0;
  a1[8] = a5;
  a1[9] = &unk_1F1A177C0;
  a1[10] = a6;
  a1[12] = (a1 + 7);
  a1[13] = (a1 + 9);
  return result;
}

BOOL mlir::anec::anonymous namespace::handleWeights(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, void *a6, BOOL *a7)
{
  v44 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v44);
  v14 = *(*(DefiningOp + 6) + 16);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    *a5 = mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, DefiningOp);
    if (*(a3 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *(a3 + 80), *(a3 + 88));
    }

    else
    {
      __dst = *(a3 + 80);
    }

    WeightFileIndex = mlir::anec::ANECIRNetwork::getWeightFileIndex(a2, &__dst, a6, a4);
    v22 = WeightFileIndex;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v22)
      {
LABEL_22:
        *a7 = 0;
        return 1;
      }
    }

    else if (WeightFileIndex)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v15 = DefiningOp;
  }

  else
  {
    v15 = 0;
  }

  v43 = v15;
  if (!*(v15 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v15, "offset", 6), (v17 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v15 + 56, "offset", 6uLL);
  }

  v42 = InherentAttr;
  *a5 = mlir::IntegerAttr::getUInt(&v42);
  mlir::pdl::OperationOp::getOpName(&v43, &__dst);
  if (__dst.__r_.__value_.__s.__data_[16] != 1 || (mlir::pdl::OperationOp::getOpName(&v43, &__len), !__len.__r_.__value_.__r.__words[0]))
  {
    v19 = 0;
    LODWORD(v20) = 0;
LABEL_26:
    v23 = 0;
    v20 = v20;
    goto LABEL_27;
  }

  size = __len.__r_.__value_.__l.__size_;
  if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_80;
  }

  if (__len.__r_.__value_.__l.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
  if (__len.__r_.__value_.__l.__size_)
  {
    memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
  }

  __dst.__r_.__value_.__s.__data_[size] = 0;
  v19 = __dst.__r_.__value_.__r.__words[0];
  LODWORD(v20) = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  v20 = __dst.__r_.__value_.__l.__size_;
  v23 = 1;
LABEL_27:
  *a7 = v20 != 0;
  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v43);
  if (!Name)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_36;
  }

  v26 = v25;
  if (v25 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_80:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v25;
  if (v25)
  {
    memmove(&__dst, Name, v25);
  }

  __dst.__r_.__value_.__s.__data_[v26] = 0;
  v29 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v27 = __dst.__r_.__value_.__l.__size_;
  v28 = __dst.__r_.__value_.__r.__words[0];
LABEL_36:
  memset(&__len, 0, sizeof(__len));
  if ((v29 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = v28;
  }

  if ((v29 & 0x80u) == 0)
  {
    v27 = v29;
  }

  std::string::append[abi:nn200100]<char const*,0>(&__len, p_dst, (p_dst + v27));
  if (std::__fs::filesystem::path::__root_directory(&__len).__size_)
  {
    goto LABEL_53;
  }

  if (*(a2 + 567) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 544), *(a2 + 552));
  }

  else
  {
    __p = *(a2 + 544);
  }

  v31 = *&__p.__r_.__value_.__l.__data_;
  v38[0] = __p.__r_.__value_.__r.__words[2];
  *(v38 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
  v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  if (v32 < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v31, *(&v31 + 1));
  }

  else
  {
    *&v39.__r_.__value_.__l.__data_ = v31;
    LODWORD(v39.__r_.__value_.__r.__words[2]) = v38[0];
    *(&v39.__r_.__value_.__r.__words[2] + 3) = *(v38 + 3);
    *(&v39.__r_.__value_.__s + 23) = v32;
  }

  if (!std::__fs::filesystem::path::__root_directory(&__len).__size_)
  {
    if (std::__fs::filesystem::path::__filename(&v39).__size_)
    {
      std::string::push_back(&v39, 47);
    }

    if ((__len.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_len = &__len;
    }

    else
    {
      p_len = __len.__r_.__value_.__r.__words[0];
    }

    if ((__len.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(__len.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = __len.__r_.__value_.__l.__size_;
    }

    std::string::append(&v39, p_len, v34);
    if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  std::string::operator=(&v39, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_50:
    operator delete(__len.__r_.__value_.__l.__data_);
  }

LABEL_51:
  __len = v39;
  *(&v39.__r_.__value_.__s + 23) = 0;
  v39.__r_.__value_.__s.__data_[0] = 0;
  if ((v32 & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_66:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_67;
  }

  operator delete(v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_53:
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_54:
    v39 = __len;
    goto LABEL_68;
  }

LABEL_67:
  std::string::__init_copy_ctor_external(&v39, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
LABEL_68:
  v35 = mlir::anec::ANECIRNetwork::getWeightFileIndex(a2, &v39, a6, a4);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_70:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_76;
    }
  }

  else if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_71:
    if (v23)
    {
      goto LABEL_72;
    }

    return (v35 & 1) != 0;
  }

LABEL_76:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v23)
  {
    return (v35 & 1) != 0;
  }

LABEL_72:
  operator delete(v19);
  return (v35 & 1) != 0;
}

uint64_t mlir::anec::anonymous namespace::fillPalettizedKernelInfo(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v27[0] = a2;
  v27[1] = a3;
  *&v26 = a4;
  *(&v26 + 1) = a5;
  Shape = mlir::ShapedType::getShape(&v26);
  if (v14 < 2 || (v15 = *Shape, *Shape == 1))
  {
    *&__src = a7;
    std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>(a1 + 19, &__src, &__src + 8, 1uLL);
    LODWORD(__src) = a6;
    std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(a1 + 16, &__src, &__src + 4, 1uLL);
  }

  else
  {
    v21 = *(mlir::ShapedType::getShape(v27) + 8 * a9);
    if (v21)
    {
      if (!(v21 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (v15 >= 1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (0 / v15 >= 1)
        {
          operator new();
        }

        a7 += a8 / v15;
      }
    }

    std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(a1 + 19, 0, 0, 0);
    v25 = a1[16];
    if (v25)
    {
      a1[17] = v25;
      operator delete(v25);
    }

    a1[16] = 0;
    a1[17] = 0;
    a1[18] = 0;
  }

  *&__src = mlir::ElementsAttr::isSplat(v27);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&__src);
  __src = v26;
  isSplat = mlir::ElementsAttr::isSplat(&__src);
  v18 = *(*isSplat + 136);
  if (v18 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v18 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v19 = 4;
    }

    else if (v18 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v19 = 6;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_21;
  }

  v28 = isSplat;
  Width = mlir::IntegerType::getWidth(&v28);
  if (Width == 16)
  {
    if (mlir::IntegerType::getSignedness(&v28) == 1)
    {
      v19 = 3;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (Width != 8)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  if (mlir::IntegerType::getSignedness(&v28) == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

LABEL_21:
  result = 0;
  if (IntOrFloatBitWidth > 5)
  {
    if (IntOrFloatBitWidth == 6)
    {
      switch(v19)
      {
        case 4:
          v19 = 7;
          v23 = 25;
          goto LABEL_57;
        case 2:
          v19 = 7;
          v23 = 24;
          goto LABEL_57;
        case 1:
          v19 = 7;
          v23 = 23;
          goto LABEL_57;
      }
    }

    else
    {
      if (IntOrFloatBitWidth != 8)
      {
        return result;
      }

      if (v19 == 4)
      {
        v19 = 8;
        v23 = 27;
        goto LABEL_57;
      }
    }

    return 0;
  }

  if (IntOrFloatBitWidth == 2)
  {
    switch(v19)
    {
      case 4:
        v23 = 13;
        goto LABEL_57;
      case 2:
        v19 = 4;
        v23 = 12;
        goto LABEL_57;
      case 1:
        v19 = 4;
        v23 = 11;
        goto LABEL_57;
    }

    return 0;
  }

  if (IntOrFloatBitWidth != 4)
  {
    return result;
  }

  if (v19 == 4)
  {
    v19 = 6;
    v23 = 21;
    goto LABEL_57;
  }

  if (v19 == 2)
  {
    v19 = 6;
    v23 = 20;
    goto LABEL_57;
  }

  if (v19 != 1)
  {
    return 0;
  }

  v19 = 6;
  v23 = 19;
LABEL_57:
  *(a1 + 20) = v19;
  *(a1 + 21) = v23;
  return 1;
}

std::string *std::string::append[abi:nn200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
LABEL_12:
    if (v6 - size < v5)
    {
      v10 = a3;
      v11 = a2;
      std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
      a3 = v10;
      a2 = v11;
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    }

    v12 = this;
    if ((v7 & 0x80) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    v13 = v12 + size;
    if (a3 != a2)
    {
      memmove(v12 + size, a2, v5);
    }

    v13[v5] = 0;
    v14 = v5 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v14;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
    }

    return this;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v19 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v15 = __dst;
  }

  else
  {
    v15 = __dst[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __dst[1];
  }

  std::string::append(this, v15, v16);
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void ZinIrKernelUnitInfo::~ZinIrKernelUnitInfo(ZinIrKernelUnitInfo *this)
{
  *this = &unk_1F1A2EAA0;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_1F1A2EA30;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EAA0;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_1F1A2EA30;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F1A2EAA0;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_1F1A2EA30;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 != v8)
    {
      result = memmove(*result, __src, v15);
    }

    v17 = v6[1];
    v20 = v17;
    if (v16 == a3)
    {
      goto LABEL_25;
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v20 = v6[1];
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v20 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v20 = v6[1];
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v20 = v28;
      v20 += 8;
    }

    while (v16 != a3);
LABEL_25:
    v19 = v20;
    goto LABEL_26;
  }

  v18 = a3 - __src;
  if (v18)
  {
    result = memmove(*result, __src, v18);
  }

  v19 = v8 + v18;
LABEL_26:
  v6[1] = v19;
  return result;
}

void *std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 != v8)
    {
      result = memmove(*result, __src, v15);
    }

    v17 = v6[1];
    v20 = v17;
    if (v16 == a3)
    {
      goto LABEL_25;
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v20 = v6[1];
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v20 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v20 = v6[1];
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v20 = v28;
      v20 += 4;
    }

    while (v16 != a3);
LABEL_25:
    v19 = v20;
    goto LABEL_26;
  }

  v18 = a3 - __src;
  if (v18)
  {
    result = memmove(*result, __src, v18);
  }

  v19 = v8 + v18;
LABEL_26:
  v6[1] = v19;
  return result;
}

char *std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

void std::__shared_ptr_emplace<mlir::anec::ANECIRUnit>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A2EAC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::MatMul,mlir::detail::TypedValue<mlir::MemRefType>,mlir::mps::ConstantOp &,mlir::FloatAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::MatMul::build(a1, v19, *a3, *a4 - 16, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::GOC::build(v15, v22, *a3, *a4, *a5, *a6);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::GOC::build(v15, v22, *a3, *a4, *a5, *a6 - 16);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::GOC::build(v15, v22, *a3, *a4, *a5 - 16, *a6);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

void mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[6] = *MEMORY[0x1E69E9840];
  v8 = (a4 + 16);
  *a4 = a4 + 16;
  *(a4 + 12) = 6;
  if (a3 < 7)
  {
    if (!a3)
    {
      *(a4 + 8) = 0;
      if (!a2)
      {
        return;
      }

LABEL_15:
      v19[0] = v20;
      v19[1] = 0xC00000000;
      mlir::anec::getANEDefaultLayout(a2, v19);
    }
  }

  else
  {
    *(a4 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, v8, a3, 8);
    v8 = *a4;
  }

  memset_pattern16(v8, &unk_1A75989B0, 8 * a3);
  *(a4 + 8) = a3;
  if (a2 != a3)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    v9 = 0;
    if (a3 < 4)
    {
      goto LABEL_11;
    }

    if (v8 - a1 < 0x20)
    {
      goto LABEL_11;
    }

    v9 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (a1 + 16);
    v11 = v8 + 1;
    v12 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v9 != a3)
    {
LABEL_11:
      v14 = a3 - v9;
      v15 = 8 * v9;
      v16 = (a1 + 8 * v9);
      v17 = (v8 + v15);
      do
      {
        v18 = *v16++;
        *v17++ = v18;
        --v14;
      }

      while (v14);
    }
  }
}

void mlir::anec::ANECIRUnit::~ANECIRUnit(mlir::anec::ANECIRUnit *this)
{
  *this = &unk_1F1A34568;
  v2 = *(this + 14);
  if (v2 != this + 128)
  {
    free(v2);
  }

  v3 = *(this + 8);
  v4 = *(this + 18);
  if (v4)
  {
    v5 = 32 * v4;
    v6 = &v3[32 * v4 - 9];
    v7 = -v5;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 -= 32;
      if (v9 < 0)
      {
        operator delete(*(v6 - 23));
      }

      v6 = v8;
      v7 += 32;
    }

    while (v7);
    v3 = *(this + 8);
  }

  if (v3 != this + 80)
  {
    free(v3);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *this = &unk_1F1A2EAF8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  mlir::anec::ANECIRUnit::~ANECIRUnit(this);

  JUMPOUT(0x1AC55A070);
}

double mlir::anec::PrependProcNameToNameAndShorten(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a3, a1);
  mlir::anec::PrependProcNameToName(a1, a2);
  if (!v5)
  {
    if (*(a1 + 23) < 0)
    {
      v7 = *(a1 + 8);
      if (v7 < 0x40)
      {
        std::string::__init_copy_ctor_external(&v8, *a1, v7);
        if (*(a1 + 23) < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else if (*(a1 + 23) <= 0x3Fu)
    {
      v8 = *a1;
      if (*(a1 + 23) < 0)
      {
LABEL_10:
        operator delete(*a1);
      }

LABEL_11:
      result = *&v8.__r_.__value_.__l.__data_;
      *a1 = v8;
      return result;
    }

    operator new();
  }

  return result;
}

void mlir::anec::PrependProcNameToName(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  std::operator+<char>();
  v3 = std::string::append(&v11, "__");
  v4 = v3->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::string::append(&v12, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[0];
  v13[0] = v8->__r_.__value_.__l.__size_;
  *(v13 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
  v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v9;
  *(a1 + 8) = v13[0];
  *(a1 + 15) = *(v13 + 7);
  *(a1 + 23) = v10;
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

uint64_t **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = *(v2 + 23);
    if (v14 >= 0)
    {
      v15 = *(v2 + 23);
    }

    else
    {
      v15 = v2[1];
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v8 == v16)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_25:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = v9[1];
      }

      if (v12 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v13 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v7, v14, v15);
      v17 = v6 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_25;
      }
    }

    v18 = memcmp(v14, v7, v15);
    v19 = v13 < v6;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      return v8;
    }

    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRPoolUnit *,std::shared_ptr<mlir::anec::ANECIRPoolUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRPoolUnit,mlir::anec::ANECIRPoolUnit>,std::allocator<mlir::anec::ANECIRPoolUnit>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

mlir::anec::ANECIRUnit *std::__shared_ptr_pointer<mlir::anec::ANECIRPoolUnit *,std::shared_ptr<mlir::anec::ANECIRPoolUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRPoolUnit,mlir::anec::ANECIRPoolUnit>,std::allocator<mlir::anec::ANECIRPoolUnit>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    mlir::anec::ANECIRUnit::~ANECIRUnit(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void ZinIrReductionUnitInfo::~ZinIrReductionUnitInfo(ZinIrReductionUnitInfo *this)
{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F1A2EA30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRGOCUnit *,std::shared_ptr<mlir::anec::ANECIRGOCUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRGOCUnit,mlir::anec::ANECIRGOCUnit>,std::allocator<mlir::anec::ANECIRGOCUnit>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

mlir::anec::ANECIRUnit *std::__shared_ptr_pointer<mlir::anec::ANECIRGOCUnit *,std::shared_ptr<mlir::anec::ANECIRGOCUnit>::__shared_ptr_default_delete<mlir::anec::ANECIRGOCUnit,mlir::anec::ANECIRGOCUnit>,std::allocator<mlir::anec::ANECIRGOCUnit>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    mlir::anec::ANECIRUnit::~ANECIRUnit(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v17);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[32 * v6];
    v8 = v4;
    do
    {
      v9 = *v5;
      v8[2] = *(v5 + 2);
      *v8 = v9;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      *(v8 + 6) = *(v5 + 6);
      v8 += 4;
      v5 += 32;
    }

    while (v5 != v7);
    v5 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 32 * v10;
      v12 = &v5[32 * v10 - 9];
      v13 = -v11;
      v14 = v12;
      do
      {
        v15 = *v14;
        v14 -= 32;
        if (v15 < 0)
        {
          operator delete(*(v12 - 23));
        }

        v12 = v14;
        v13 += 32;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v16 = v17;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v16;
}

void *llvm::format_provider<unsigned long,void>::format(unint64_t *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v14);
  if ((v6 & 0x100000000) == 0)
  {
    if (v15)
    {
      v7 = 0;
      v8 = *v14;
      if (v8 <= 0x63)
      {
        if (v8 != 68)
        {
          if (v8 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v7 = 0;
        ++v14;
        goto LABEL_19;
      }

      if (v8 == 100)
      {
        goto LABEL_18;
      }

      if (v8 == 110)
      {
LABEL_17:
        ++v14;
        v7 = 1;
LABEL_19:
        --v15;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    v16 = 0;
    if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    return llvm::write_integer(a2, *a1, v13, v7);
  }

  v9 = v6;
  v16 = 0;
  if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

  if (ZinHWEnumsUtils::IsHWKernelFormatFloat(v9))
  {
    v11 = v10 + 2;
  }

  else
  {
    v11 = v10;
  }

  return llvm::write_hex(a2, *a1, v9, v11, 1);
}

void std::vector<ZinIrCoordinateInfo>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = 12 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, a2, v7);
  v9 = v8;
  v10 = *(a1 + 2);
  if (!*&v10)
  {
    goto LABEL_33;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_33:
    operator new();
  }

  v16 = *(v4 + 23);
  if (v16 >= 0)
  {
    v17 = *(v4 + 23);
  }

  else
  {
    v17 = v4[1];
  }

  if (v16 < 0)
  {
    v4 = *v4;
  }

  while (1)
  {
    v18 = v15[1];
    if (v18 == v9)
    {
      break;
    }

    if (v12 <= 1)
    {
      v18 &= *&v10 - 1;
    }

    else if (v18 >= *&v10)
    {
      v18 %= *&v10;
    }

    if (v18 != v13)
    {
      goto LABEL_33;
    }

LABEL_20:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_33;
    }
  }

  v19 = *(v15 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v15[3];
  }

  if (v19 != v17)
  {
    goto LABEL_20;
  }

  v21 = v20 >= 0 ? (v15 + 2) : v15[2];
  if (memcmp(v21, v4, v17))
  {
    goto LABEL_20;
  }

  return v15;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t mlir::anec::ANECIROutput::ANECIROutput(uint64_t a1, __int128 *a2, __int128 *a3, int a4, __int128 *a5, __int128 *a6)
{
  *a1 = &unk_1F1A2EAF8;
  v11 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v11, *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    v11->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v11->__r_.__value_.__l.__data_ = v12;
  }

  *(a1 + 32) = 1;
  *(a1 + 40) = &unk_1F1A2EC58;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a5, *(a5 + 1));
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *a5;
    *(a1 + 64) = *(a5 + 2);
    *(a1 + 48) = v13;
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
LABEL_6:
      v14 = *a6;
      *(a1 + 88) = *(a6 + 2);
      *(a1 + 72) = v14;
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 72), *a6, *(a6 + 1));
LABEL_9:
  *a1 = &unk_1F1A2EC10;
  *(a1 + 40) = &unk_1F1A2EC38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    *(a1 + 128) = *(a3 + 2);
    *(a1 + 112) = v15;
  }

  *(a1 + 136) = a4;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void mlir::anec::ANECIROutput::~ANECIROutput(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  this[5] = &unk_1F1A2EC58;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[6]);
LABEL_5:
  *this = &unk_1F1A2EAF8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  this[5] = &unk_1F1A2EC58;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[6]);
LABEL_5:
  *this = &unk_1F1A2EAF8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::ANECIROutput::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4)
{
  v8 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v8;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToName(v8, a2);
  mlir::anec::PrependProcNameToNameAndShorten(a1 + 112, a2, a4);
  v11 = v8;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v8, &std::piecewise_construct, &v11);
  std::string::operator=((v9 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void non-virtual thunk tomlir::anec::ANECIROutput::~ANECIROutput(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_1F1A2EC58;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[1]);
LABEL_5:
  *(this - 5) = &unk_1F1A2EAF8;
  if (*(this - 9) < 0)
  {
    v2 = *(this - 4);

    operator delete(v2);
  }
}

{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  *this = &unk_1F1A2EC58;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(this[1]);
LABEL_5:
  *(this - 5) = &unk_1F1A2EAF8;
  if (*(this - 9) < 0)
  {
    operator delete(*(this - 4));
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::ANECIRProcedureAttributes::~ANECIRProcedureAttributes(void **this)
{
  *this = &unk_1F1A2EC58;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[4]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_1F1A2EC58;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1]);
LABEL_3:

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIROutput *,std::shared_ptr<mlir::anec::ANECIROutput>::__shared_ptr_default_delete<mlir::anec::ANECIROutput,mlir::anec::ANECIROutput>,std::allocator<mlir::anec::ANECIROutput>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<mlir::anec::ANECIROutput *,std::shared_ptr<mlir::anec::ANECIROutput>::__shared_ptr_default_delete<mlir::anec::ANECIROutput,mlir::anec::ANECIROutput>,std::allocator<mlir::anec::ANECIROutput>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 135) < 0)
    {
      operator delete(*(v1 + 112));
    }

    *(v1 + 40) = &unk_1F1A2EC58;
    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(v1 + 48));
LABEL_6:
    *v1 = &unk_1F1A2EAF8;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::RegionPerformanceInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.A11Legacy", 0xEuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A2ECB0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9A11LegacyEJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS13_ILS14_4EE4ImplENS13_ILS14_5EE4ImplENS13_ILS14_6EE4ImplENS13_ILS14_7EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1O_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9A11LegacyEJNS3_7OpTrait9OneRegionENSI_11ZeroResultsENSI_14ZeroSuccessorsENSI_12ZeroOperandsENSI_12OpInvariantsENS3_17SymbolOpInterface5TraitENS3_19CallableOpInterface5TraitENS3_19FunctionOpInterface5TraitENSI_19IsIsolatedFromAboveENSI_8RegionOpENS3_24TargetLegalizerInterface5TraitENS3_25FormableRegionOpInterface5TraitENSG_26RegionPerformanceInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE0EE4ImplENS13_ILS14_1EE4ImplENS13_ILS14_2EE4ImplENS13_ILS14_3EE4ImplENS13_ILS14_4EE4ImplENS13_ILS14_5EE4ImplENS13_ILS14_6EE4ImplENS13_ILS14_7EE4ImplENS3_24ExecutionCostOpInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1O_vE9CallbacksE(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENSU_ILSV_4EE4ImplENSU_ILSV_5EE4ImplENSU_ILSV_6EE4ImplENSU_ILSV_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1F_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENS9_11ZeroResultsENS9_14ZeroSuccessorsENS9_12ZeroOperandsENS9_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENS9_19IsIsolatedFromAboveENS9_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENS7_26RegionPerformanceInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE0EE4ImplENSU_ILSV_1EE4ImplENSU_ILSV_2EE4ImplENSU_ILSV_3EE4ImplENSU_ILSV_4EE4ImplENSU_ILSV_5EE4ImplENSU_ILSV_6EE4ImplENSU_ILSV_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS1F_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENSY_ILSZ_4EE4ImplENSY_ILSZ_5EE4ImplENSY_ILSZ_6EE4ImplENSY_ILSZ_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1J_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9A11LegacyEJNS2_7OpTrait9OneRegionENSD_11ZeroResultsENSD_14ZeroSuccessorsENSD_12ZeroOperandsENSD_12OpInvariantsENS2_17SymbolOpInterface5TraitENS2_19CallableOpInterface5TraitENS2_19FunctionOpInterface5TraitENSD_19IsIsolatedFromAboveENSD_8RegionOpENS2_24TargetLegalizerInterface5TraitENS2_25FormableRegionOpInterface5TraitENSB_26RegionPerformanceInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE0EE4ImplENSY_ILSZ_1EE4ImplENSY_ILSZ_2EE4ImplENSY_ILSZ_3EE4ImplENSY_ILSZ_4EE4ImplENSY_ILSZ_5EE4ImplENSY_ILSZ_6EE4ImplENSY_ILSZ_7EE4ImplENS2_24ExecutionCostOpInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1J_vE9CallbacksE(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::A11Legacy,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::A11Legacy,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::A11Legacy>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getArgAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 32), **(*(this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 16));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

BOOL mlir::detail::FunctionOpInterfaceTrait<mlir::anec::A11Legacy>::verifyBody(mlir::Operation **a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = (((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
  if (*v3 == v3)
  {
    return 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v2);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*a1 + 6) + 96) + 8));
  AttrDictionary = mlir::AffineMapAttr::getValue(&AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&AttrDictionary);
  v9 = v8;
  v10 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 48;
  v12 = *(v11 + 48);
  if (((*(v13 + 8) - v12) >> 3) != v8)
  {
    v56[0] = "entry block must have ";
    v57 = 259;
    mlir::OpState::emitOpError(a1, v56, &AttrDictionary);
    if (AttrDictionary)
    {
      v58 = 5;
      v59 = v9;
      v17 = &v58;
      v18 = v62;
      if (v63 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v63 > &v58)
        {
          v53 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v18 = v62;
          v17 = (v62 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
          v17 = &v58;
          v18 = v62;
        }
      }

      v19 = &v18[24 * v63];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      ++v63;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " arguments to match function signature");
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v71 != 1)
    {
      return v16;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v69;
      v24 = __p;
      if (v69 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v69 = v22;
      operator delete(v24);
    }

    v25 = v66;
    if (v66)
    {
      v26 = v67;
      v27 = v66;
      if (v67 != v66)
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

        while (v26 != v25);
        v27 = v66;
      }

      v67 = v25;
      operator delete(v27);
    }

    v51 = v62;
    if (v62 == v65)
    {
      return v16;
    }

LABEL_57:
    free(v51);
    return v16;
  }

  if (!v8)
  {
    return 1;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(*(v12 + 8 * v14) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v15)
    {
      break;
    }

    ++v14;
    ++Inputs;
    if (v8 == v14)
    {
      return 1;
    }
  }

  v30 = Inputs;
  v56[0] = "type of entry block argument #";
  v57 = 259;
  mlir::OpState::emitOpError(a1, v56, &AttrDictionary);
  if (AttrDictionary)
  {
    v58 = 5;
    v59 = v14;
    v31 = &v58;
    v32 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v54 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v32 = v62;
        v31 = (v62 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v31 = &v58;
        v32 = v62;
      }
    }

    v33 = &v32[24 * v63];
    v34 = *v31;
    *(v33 + 2) = *(v31 + 2);
    *v33 = v34;
    ++v63;
    if (AttrDictionary)
    {
      mlir::Diagnostic::operator<<(&v61, 40);
      if (AttrDictionary)
      {
        v35 = &v58;
        mlir::DiagnosticArgument::DiagnosticArgument(&v58, v15);
        v36 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v63 > &v58)
          {
            v55 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v36 = v62;
            v35 = (v62 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v63;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v40, v30);
  if (*v41)
  {
    v42 = v41;
    mlir::Diagnostic::operator<<((v41 + 1), 41);
    v41 = v42;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v71)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v69;
      v45 = __p;
      if (v69 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v69 = v43;
      operator delete(v45);
    }

    v46 = v66;
    if (v66)
    {
      v47 = v67;
      v48 = v66;
      if (v67 != v66)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
          }
        }

        while (v47 != v46);
        v48 = v66;
      }

      v67 = v46;
      operator delete(v48);
    }

    v51 = v62;
    if (v62 != v65)
    {
      goto LABEL_57;
    }
  }

  return v16;
}